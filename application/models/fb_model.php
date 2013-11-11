<?php

class fb_model extends CI_Model {

    private $config = Array(
        'appId' => '549019755112038',
        'secret' => 'ff3c0924ce24b22e786b09c5413155a1');

    public function __construct() {
        parent::__construct();
        $this->load->library('facebook/facebook', $this->config);
    }

    public function getLoginUrl() {
        return $this->facebook->getLoginUrl(Array('scope' => 'email,user_likes,user_birthday,publish_actions', 'display' => 'page', 'redirect_uri' => base_url('/fb_login')));
    }

    public function extendPermissions() {
        return $this->facebook->getLoginUrl(Array('scope' => 'email,user_likes,user_birthday,publish_actions', 'display' => 'page', 'redirect_uri' => base_url()));
    }

    public function getLogoutUrl() {
        return $this->facebook->getLogoutUrl(array('next' => base_url()));
    }

    public function createPost($message, $link = null) {
        try {
            $this->facebook->api('/me/feed', 'POST', array(
                'link' => $link,
                'message' => $message
            ));
        } catch (FacebookApiException $e) {
            
        }
    }

    public function getUserInfo() {
        return $this->facebook->api('/me');
    }

    public function isAuthenticated() {
        if ($this->facebook->getUser()) {
            return true;
        } else {
            return false;
        }
    }

    public function getAccessToken() {
        return $this->facebook->getAccessToken();
    }

    public function destroySession() {
        $this->facebook->destroySession();
    }

}

?>
