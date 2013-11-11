<?php

function getYoutubeFbLikes($url) {
    $ci_ins = & get_instance();
    $fbconfig = Array(
        'appId' => '549019755112038',
        'secret' => 'ff3c0924ce24b22e786b09c5413155a1');
    $ci_ins->load->library('facebook/facebook', $fbconfig);
    $resultSet = $ci_ins->facebook->api(array('method' => 'fql.query', 'query' => "SELECT like_count FROM link_stat WHERE url='$url'"));
    if (isset($resultSet[0]['like_count'])) {
        return $resultSet[0]['like_count'];
    }
}

function getYoutubeFbShares($url) {
    $ci_ins = & get_instance();
    $fbconfig = Array(
        'appId' => '549019755112038',
        'secret' => 'ff3c0924ce24b22e786b09c5413155a1');
    $ci_ins->load->library('facebook/facebook', $fbconfig);
    $resultSet = $ci_ins->facebook->api(array('method' => 'fql.query', 'query' => "SELECT share_count FROM link_stat WHERE url='$url'"));
    if (isset($resultSet[0]['share_count'])) {
        return $resultSet[0]['share_count'];
    }
}

function getNumOfYoutubeTweets($url) {
    //NEED to come up with a better way and more efficent
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, "http://urls.api.twitter.com/1/urls/count.json");
    curl_setopt($ch, CURLOPT_POSTFIELDS, 'url=' . $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    $output = curl_exec($ch);
    curl_close($ch);
    $numOfTweets = json_decode($output);
    return $numOfTweets->count;
}

function performYoutubeSearchByAuthor($author) {
    require_once ('Zend/Loader.php');
    Zend_Loader::loadClass('Zend_Gdata_YouTube');
    $yt = new Zend_Gdata_YouTube();
    $yt->setMajorProtocolVersion(2);
    $query = $yt->newVideoQuery();
    $query->author = urlencode($author);
    $query->maxResults = '1';
    $query->setOrderBy('published');
    return $yt->getVideoFeed($query);
}

?>
