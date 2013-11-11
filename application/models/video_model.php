<?php

class video_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function getAllVideos() {
        $query = $this->db->query("SELECT `video`, `title`, `url`, `duration`, `thumbnail`, `score` FROM `video`");
        return $query->result_array();
    }

    public function getInitVideos() {
        //$query = $this->db->query("(SELECT * FROM `video` ORDER BY `score` DESC LIMIT 0, 12) UNION (SELECT * FROM `video` ORDER BY `date_added` DESC LIMIT 0, 12)");
        $query = $this->db->query('SELECT `video`, `title`, `url`, `duration`, 
            `thumbnail`, `score` FROM `video` WHERE `date_added`>ADDDATE(CURDATE(), INTERVAL -2 WEEK) 
            ORDER BY `score` DESC LIMIT 8, 72');
        return $query->result_array();
    }

    public function getVideos($offset) {
        $offset = $this->db->escape($offset) * 6 + 8;
        $query = $this->db->query("SELECT video, title, url, duration, thumbnail, score FROM `video` ORDER BY `score` DESC LIMIT $offset, 6");
        return $query->result_array();
    }

    public function getTrendingVideos() {
        $query = $this->db->query('SELECT `video`, `title`, `url`, `duration`, 
            `thumbnail`, `score` FROM `video` WHERE `date_added`>ADDDATE(CURDATE(), INTERVAL -2 WEEK) 
            ORDER BY `score` DESC LIMIT 8');
        if (count($query->result_array()) == 8) {
            return $query->result_array();
        } else {
            return false;
        }
    }

    public function getVideo($videoID) {
        $this->db->where('video', $videoID);
        $this->db->select('title,url,youtubeID,thumbnail');
        $query = $this->db->get('video', 1);
        return $query->next_row();
    }

    public function getRTSPVideo($videoID) {
        $this->db->where('video', $videoID);
        $this->db->select('rtsp');
        $query = $this->db->get('video', 1);
        return $query->next_row()->rtsp;
    }

    public function getSuggestedFacebookVideo() {
        $query = $this->db->query('SELECT `video`, `title`, `url`, `duration`, 
            `thumbnail`, `score` FROM `video` WHERE `date_added`>ADDDATE(CURDATE(), INTERVAL -2 WEEK) 
            ORDER BY `score` DESC LIMIT 8, 4');
        return $query->result();
    }

    public function getNewVideos() {
        $query = $this->db->query('SELECT `video`, `title`, `url`, `duration`, 
            `thumbnail`, `score` FROM `video` WHERE `date_added`>ADDDATE(CURDATE(), INTERVAL -2 DAY) 
            ORDER BY `date_added` DESC');
        return $query->result_array();
    }

    public function getViralVideos() {
        $query = $this->db->query('SELECT `video`, `title`, `url`, `duration`, 
            `thumbnail`, `score` FROM `video` WHERE `date_added`>ADDDATE(CURDATE(), INTERVAL -1 WEEK) 
            ORDER BY `score` DESC');
        return $query->result_array();
    }

    public function getHashTags() {
        $this->db->order_by('hashtag', 'ASC');
        $query = $this->db->get('hashtag');
        return $query->result_array();
    }

    public function getCategory() {
        $this->db->order_by('category', 'ASC');
        $query = $this->db->get('category');
        return $query->result_array();
    }

}

?>
