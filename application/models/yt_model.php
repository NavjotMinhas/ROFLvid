<?php

class yt_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function addVideo($videoParams) {
        $this->load->model('user_model');
        if ($this->user_model->isUserAuthenticated()) {
            $insert_vars = Array(
                'video' => null,
                'title' => $videoParams['title'],
                'category' => $videoParams['category'],
                'tag' => $videoParams['tags'],
                'url' => $videoParams['url'],
                'url_md5' => $videoParams['url-md5'],
                'rtsp'=> $videoParams['rtsp'],
                'youtubeID' => $videoParams['youtubeVID'],
                'score' => 0,
                'upvote' => 0,
                'downvote' => 0,
                'fb-shares' => 0,
                'fb-like' => 0,
                'fb-click-through' => 0,
                'tweets' => 0,
                'duration' => $videoParams['duration'],
                'thumbnail' => $videoParams['thumbnail'],
                'twfbUserID' => $videoParams['twfbUserID'],
                'date_added' => $videoParams['date']
            );
            return $this->db->insert('video', $insert_vars);
        } else {
            return false;
        }
    }

    function getYoutubeVideoMetaData($vID) {
        require_once ('Zend/Loader.php');
        Zend_Loader::loadClass('Zend_Gdata_YouTube');
        $yt = new Zend_Gdata_YouTube();
        try {
            $videoEntry = $yt->getVideoEntry($vID);
            if ($videoEntry) {
                $video = Array();
                $video['vid'] = $vID;
                $video['title'] = $videoEntry->getVideoTitle();
                $video['duration'] = $videoEntry->getVideoDuration();
                return $video;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    function saveVideo($vID, $title, $category, $tags) {
        require_once ('Zend/Loader.php');
        Zend_Loader::loadClass('Zend_Gdata_YouTube');
        $yt = new Zend_Gdata_YouTube();

        try {
            $videoEntry = $yt->getVideoEntry($vID);
        } catch (Exception $e) {
            return false;
        }
        if ($videoEntry) {
            $video = Array();
            $video['title'] = $title;
            $video['category'] = $category;
            $video['tags'] = $tags;
            $pictures = $videoEntry->getVideoThumbnails();

            //Thumbnail URL, dimensions are 480x360
            $video['thumbnail'] = $vID . '.jpg';
            $thumbnail = $this->downloadYoutubeImageThumbnail($vID, $pictures[3]['url']);
            $thumbnail_MQ = $this->downloadYoutubeImageThumbnail($vID, 'http://i.ytimg.com/vi/' . $vID . '/mqdefault.jpg', 'm/');
            $thumbnail_HQ = $this->downloadYoutubeImageThumbnail($vID, 'http://i.ytimg.com/vi/' . $vID . '/hqdefault.jpg', 'h/');
            if (empty($thumbnail) && empty($thumbnail_MQ) && empty($thumbnail_HQ)) {
                return false;
            }
            $video['url'] = $videoEntry->getVideoWatchPageUrl();
            $video['url-md5'] = md5($video['url']);
            $video['youtubeVID'] = $vID;
            $video['duration'] = $videoEntry->getVideoDuration();
            $video['date'] = date('Y-m-d H:i:s');

            foreach ($videoEntry->mediaGroup->content as $content) {
                if ($content->format === "6") {
                    $video['rtsp'] = $content->url;
                }
            }

            if ($this->session->userdata('twfbUserID')) {
                $video['twfbUserID'] = $this->session->userdata('twfbUserID');
            } else {
                return false;
            }
            $isVideoAdded = $this->addVideo($video);
            if ($isVideoAdded) {
                return true;
            } else {
                return false;
            }
        }
        return false;
    }

    public function downloadYoutubeImageThumbnail($videoID, $url, $qualityType = '') {
        $content = file_get_contents($url);
        if (!$content) {
            return false;
        }

        //Quality type variable determines which directory to download the file too
        $filepath = 'images/thumbnails/' . $qualityType . $videoID . '.jpg';
        $num_of_bytes = file_put_contents($filepath, $content);
        if ($num_of_bytes > 0) {
            return $filepath;
        } else {
            return false;
        }
    }

    public function queryYoutube($term) {
        require_once ('Zend/Loader.php');
        Zend_Loader::loadClass('Zend_Gdata_YouTube');
        $yt = new Zend_Gdata_YouTube();
        $yt->setMajorProtocolVersion(2);
        $query = $yt->newVideoQuery();
        $query->category = urlencode('Entertainment|Comedy|Animals|Film|People');
        $query->setOrderBy('viewCount');
        $query->setTime('today');
        $query->setVideoQuery($term);
        return $yt->getVideoFeed($query);
    }

    public function getVideoFeed($type_of_feed) {
        require_once ('Zend/Loader.php');
        Zend_Loader::loadClass('Zend_Gdata_YouTube');
        $yt = new Zend_Gdata_YouTube();
        //$yt->setMajorProtocolVersion(2);
        $this->printVideoFeed($yt->getVideoFeed($type_of_feed));
    }

    public function getLikes($videoEntry) {
        foreach ($videoEntry->getExtensionElements() as $extension) {
            if ($extension->rootElement == 'rating') {
                $attributes = $extension->getExtensionAttributes();
                return intval($attributes['numLikes']['value']);
            }
        }
    }

    public function getDislikes($videoEntry) {
        foreach ($videoEntry->getExtensionElements() as $extension) {
            if ($extension->rootElement == 'rating') {
                $attributes = $extension->getExtensionAttributes();
                return intval($attributes['numDislikes']['value']);
            }
        }
    }

    /*
     * Developer Functions
     */

    function printVideoFeed($videoFeed) {
        $count = 1;
        foreach ($videoFeed as $videoEntry) {
            echo "Entry # " . $count . "\n";
            $this->printVideoEntry($videoEntry);
            echo "\n";
            $count++;
        }
    }

    function printAllVideoEntryData($videoEntry) {
        echo 'Video: ' . $videoEntry->getVideoTitle() . "\n";
        echo 'Duration: ' . $videoEntry->getVideoDuration() . "\n";
        echo 'View count: ' . $videoEntry->getVideoViewCount() . "\n";
        echo 'Watch page: ' . $videoEntry->getVideoWatchPageUrl() . "\n";
    }

    function printVideoEntry($videoEntry) {
        // the videoEntry object contains many helper functions
        // that access the underlying mediaGroup object
        echo 'Video: ' . $videoEntry->getVideoTitle() . "\n";
        echo 'Video ID: ' . $videoEntry->getVideoId() . "\n";
        echo 'Updated: ' . $videoEntry->getUpdated() . "\n";
        echo 'Description: ' . $videoEntry->getVideoDescription() . "\n";
        echo 'Category: ' . $videoEntry->getVideoCategory() . "\n";
        echo 'Tags: ' . implode(", ", $videoEntry->getVideoTags()) . "\n";
        echo 'Watch page: ' . $videoEntry->getVideoWatchPageUrl() . "\n";
        echo 'Flash Player Url: ' . $videoEntry->getFlashPlayerUrl() . "\n";
        echo 'Duration: ' . $videoEntry->getVideoDuration() . "\n";
        echo 'View count: ' . $videoEntry->getVideoViewCount() . "\n";
        echo 'Rating: ' . $videoEntry->getVideoRatingInfo() . "\n";
        echo 'Geo Location: ' . $videoEntry->getVideoGeoLocation() . "\n";
        echo 'Recorded on: ' . $videoEntry->getVideoRecorded() . "\n";

        // see the paragraph above this function for more information on the 
        // 'mediaGroup' object. in the following code, we use the mediaGroup
        // object directly to retrieve its 'Mobile RSTP link' child
        foreach ($videoEntry->mediaGroup->content as $content) {
            if ($content->type === "video/3gpp") {
                echo 'Mobile RTSP link: ' . $content->url . "\n";
            }
        }

        echo "Thumbnails:\n";
        $videoThumbnails = $videoEntry->getVideoThumbnails();

        foreach ($videoThumbnails as $videoThumbnail) {
            echo $videoThumbnail['time'] . ' - ' . $videoThumbnail['url'];
            echo ' height=' . $videoThumbnail['height'];
            echo ' width=' . $videoThumbnail['width'] . "\n";
        }
    }

}

?>
