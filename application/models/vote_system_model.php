<?php

class vote_system_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function downvote($vid) {
        header("content-type:application/json");
        $oauth = $this->session->userdata('oauth');
        if ($oauth == 'fb') {
            $this->load->model('fb_model');
            $userInfo = $this->fb_model->getUserInfo();
            if ($userInfo['id']) {
                $insert_params = Array('videoID' => $vid, 'twfbUserID' => $userInfo['id'], 'type' => 0);
                $this->db->insert('vote', $insert_params);
                if ($this->db->affected_rows() == 1) {
                    $this->db->query('UPDATE video SET downvote=downvote+1, score=score-1 WHERE video=?',Array($vid));
                    print json_encode(Array('type' => 'success'));
                } else {
                    print json_encode(Array('type' => 'already voted'));
                }
            } else {
                print json_encode(Array('type' => 'error'));
            }
        } else if ($oauth == 'tw') {
            $this->load->model('tw_model');
            $userInfo = $this->tw_model->getUserInfo();
            if (!isset($userInfo->error)) {
                $insert_params = Array('videoID' => $vid, 'twfbUserID' => $userInfo->id, 'type' => 0);
                $this->db->insert('vote', $insert_params);
                if ($this->db->affected_rows() == 1) {
                    $this->db->query('UPDATE video SET downvote=downvote+1, score=score-1 WHERE video=?',Array($vid));
                    print json_encode(Array('type' => 'success'));
                } else {
                    print json_encode(Array('type' => 'already voted'));
                }
            } else {
                print json_encode(Array('type' => 'error'));
            }
        } else {
            print json_encode(Array('type' => 'not registered'));
        }
    }

    public function upvote($vid) {
        header("content-type:application/json");
        $oauth = $this->session->userdata('oauth');
        if ($oauth == 'fb') {
            $this->load->model('fb_model');
            $userInfo = $this->fb_model->getUserInfo();
            if ($userInfo['id']) {
                $insert_params = Array('videoID' => $vid, 'twfbUserID' => $userInfo['id'], 'type' => 1);
                $this->db->insert('vote', $insert_params); 
                if ($this->db->affected_rows() == 1) {
                    $this->db->query('UPDATE video SET upvote=upvote+1, score=score+1 WHERE video=?',Array($vid));
                    print json_encode(Array('type' => 'success'));
                } else {
                    print json_encode(Array('type' => 'already voted'));
                }
            } else {
                print json_encode(Array('type' => 'error'));
            }
        } else if ($oauth == 'tw') {
            $this->load->model('tw_model');
            $userInfo = $this->tw_model->getUserInfo();
            if (!isset($userInfo->error)) {
                $insert_params = Array('videoID' => $vid, 'twfbUserID' => $userInfo->id, 'type' => 1);
                $this->db->insert('vote', $insert_params);
                if ($this->db->affected_rows() == 1) {
                    $this->db->query('UPDATE video SET upvote=upvote+1, score=score+1 WHERE video=?',Array($vid));
                    print json_encode(Array('type' => 'success'));
                } else {
                    print json_encode(Array('type' => 'already voted'));
                }
            } else {
                print json_encode(Array('type' => 'error'));
            }
        } else {
            print json_encode(Array('type' => 'not registered'));
        }
    }

    public function getFbShares($url) {
        $fbconfig = Array(
            'appId' => '549019755112038',
            'secret' => 'ff3c0924ce24b22e786b09c5413155a1');
        $this->load->library('facebook/facebook', $fbconfig);
        $resultSet = $this->facebook->api(array('method' => 'fql.query', 'query' => "SELECT share_count FROM link_stat WHERE url='$url'"));
        if (isset($resultSet[0]['share_count'])) {
            return $resultSet[0]['share_count'];
        }
    }

    public function getFbLikes($url) {
        $fbconfig = Array(
            'appId' => '549019755112038',
            'secret' => 'ff3c0924ce24b22e786b09c5413155a1');
        $this->load->library('facebook/facebook', $fbconfig);
        $resultSet = $this->facebook->api(array('method' => 'fql.query', 'query' => "SELECT like_count FROM link_stat WHERE url='$url'"));
        if (isset($resultSet[0]['like_count'])) {
            return $resultSet[0]['like_count'];
        }
    }
    
    public function getNumOfFbComments($url) {
        $fbconfig = Array(
            'appId' => '549019755112038',
            'secret' => 'ff3c0924ce24b22e786b09c5413155a1');
        $this->load->library('facebook/facebook', $fbconfig);
        $resultSet = $this->facebook->api(array('method' => 'fql.query', 'query' => "SELECT comment_count FROM link_stat WHERE url='$url'"));
        if (isset($resultSet[0]['comment_count'])) {
            return $resultSet[0]['comment_count'];
        }
    }

    public function getNumOfTweets($url) {
        //NEED to come up with a better way and more efficent
        $ch=  curl_init();
        curl_setopt($ch, CURLOPT_URL, "http://urls.api.twitter.com/1/urls/count.json");
        curl_setopt($ch, CURLOPT_POSTFIELDS, 'url='.$url);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch, CURLOPT_HEADER, 0);
        $output = curl_exec($ch);
        curl_close($ch);
        $numOfTweets = json_decode($output);
        return $numOfTweets->count;
    }

}

?>
