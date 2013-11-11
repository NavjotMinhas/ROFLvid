<?php

class Ranking_model extends CI_Model {

    public function __construct() {
        parent::__construct();
        $this->load->database();
    }

    public function getNetVotes($vid) {
        $this->db->select('type');
        $this->db->where(array('videoID' => $vid, 'type' => 1));
        $query = $this->db->query("SELECT `upvote`, `downvote` FROM video WHERE `video`='$vid' LIMIT 1");
        $resultSet = $query->result_array();
        if (count($resultSet) == 1) {
            return ($resultSet[0]['upvote'] - $resultSet[0]['downvote']);
        } else {
            //NEED to log VID if we reach here
            return 0;
        }
    }

    public function calculateScore($vid, $url) {
        $netVotes = $this->getNetVotes($vid);
        $this->load->model('vote_system_model');
        $this->load->helper('url');

        /**
         * Reconstruct orignal youtube link to get social media data for
         * the orignal youtube link
         */
        $url_params = parse_url($url);
        parse_str($url_params['query']);
        $youtubeUrl = 'http://www.youtube.com/watch?v=' . $v;

        /**
         * The stats for the youtube link
         */
        $numOfYtFbLikes = $this->vote_system_model->getFbLikes($youtubeUrl);
        $numOfYtFbShares = $this->vote_system_model->getFbShares($youtubeUrl);
        $numOfYtTweets = $this->vote_system_model->getNumOfTweets($youtubeUrl);

        /**
         * The stats for our link from our site
         */
        $url = base_url('/video') . '/'.$vid;
        $numOfFbLikes = $this->vote_system_model->getFbLikes($url);
        $numOfFbShares = $this->vote_system_model->getFbShares($url);
        $numOfTweets = $this->vote_system_model->getNumOfTweets($url);


        return (0.5 * $numOfYtFbLikes + 0.75 * $numOfYtFbShares + 0.75 * $numOfYtTweets
                + $netVotes + 1 * $numOfFbLikes + 2 * $numOfFbShares + 2 * $numOfTweets);
    }

    public function calculateTrendingScore($vid) {
        $netVotes = $this->getNetVotes($vid) / 3;
        $this->load->model('vote_system_model');
        $numOfFbLikes = $this->vote_system_model->getFbLikes($vid) / 3;
        $numOfFbShares = $this->vote_system_model->getFbShares($vid) / 3;
        $numOfTweets = $this->vote_system_model->getFbShares($vid) / 3;
        return $numOfFbLikes + $numOfFbShares + $numOfTweets + $netVotes;
    }

}

?>
