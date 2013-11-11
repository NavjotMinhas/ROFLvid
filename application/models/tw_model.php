<?php

class tw_model extends CI_Model {

    private $config = Array(
        'consumer_key' => 'iFIUxc77bJKVub9HKTp0jw',
        'consumer_secret' => 'QtfLuJWbF91H5QFTbEIdCXBl18VffvYDMwvRLh8NWXA',
        'oauth_token' => null,
        'oauth_token_secret' => null);

    public function __construct() {
        parent::__construct();
        $request_oauth_token = $this->session->userdata('request_oauth_token');
        $request_oauth_token_secret = $this->session->userdata('request_oauth_token_secret');

        $oauth_token = $this->session->userdata('oauth_token');
        $oauth_token_secret = $this->session->userdata('oauth_token_secret');

        if ($oauth_token && $oauth_token_secret) {
            $this->config['oauth_token'] = $oauth_token;
            $this->config['oauth_token_secret'] = $oauth_token_secret;
        } else if ($request_oauth_token && $request_oauth_token_secret) {
            $this->config['oauth_token'] = $request_oauth_token;
            $this->config['oauth_token_secret'] = $request_oauth_token_secret;
        }
        $this->load->library('twitter/twitteroauth', $this->config);
    }

    public function getAccessToken($oauth_verifier) {
        $access_token = $this->twitteroauth->getAccessToken($oauth_verifier);
        if (isset($access_token['oauth_token']) && isset($access_token['oauth_token_secret'])) {
            $this->session->unset_userdata('request_oauth_token');
            $this->session->unset_userdata('request_oauth_token_secret');
            $this->session->set_userdata($access_token);
            return true;
        } else {
            return false;
        }
    }

    public function authorizeApplication() {
        $oauth_token=$this->session->userdata('oauth_token');
        $oauth_token_secret=$this->session->userdata('oauth_token_secret');
        if (empty($oauth_token)&&empty($oauth_token_secret)&&!$this->session->userdata('request_oauth_token_secret') &&!$this->session->userdata('request_oauth_token')) {
            $request_token = $this->twitteroauth->getRequestToken(base_url('tw_authorize'));
            if ($this->twitteroauth->http_code == 200) {
                //register the variables in the session
                $this->session->set_userdata('request_oauth_token', $request_token['oauth_token']);
                $this->session->set_userdata('request_oauth_token_secret', $request_token['oauth_token_secret']);

                //Authorization URL to twitter
                $authorizationURL = $this->twitteroauth->getAuthorizeURL($request_token['oauth_token']);
                header('Location:' . $authorizationURL);
            } else {
                
            }
        } else {
            $this->session->unset_userdata('request_oauth_token');
            $this->session->unset_userdata('request_oauth_token_secret');
            $this->session->unset_userdata('oauth_token');
            $this->session->unset_userdata('oauth_token_secret');
            header('Location:' . base_url('/tw_login'));
        }
    }

    public function destroySession() {
        $this->session->unset_userdata('oauth_token');
        $this->session->unset_userdata('oauth_token_secret');
    }

    public function getUserInfo() {
        return $this->twitteroauth->get('account/verify_credentials');
    }

    public function isAuthenticated() {
        $twUserID = $this->twitteroauth->get('account/verify_credentials')->id;
        if (!empty($twUserID)) {
            return true;
        } else {
            false;
        }
    }
    public function createPost($message, $link=null){
        $this->twitteroauth->post('statuses/update', Array('status'=>$message));
    }

}

?>