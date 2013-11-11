<?php

class user_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->database();
    }

    function isUserAuthenticated() {
        $ref_key = $this->session->userdata('cr');
        if (!empty($ref_key)) {
            $this->db->select('username');
            $this->db->where('md5_skey', $ref_key);
            $query = $this->db->get('active_users');
            if ($query->num_rows() > 0) {
                return true;
            } else {
                $this->session->unset_userdata('cr');
                return false;
            }
        } else {
            return false;
        }
    }

    function getUsername() {
        $ref_key = $this->session->userdata('cr');
        if (!empty($ref_key)) {
            $this->db->select('username');
            $this->db->where('md5_skey', $ref_key);
            $query = $this->db->get('active_users');
            if ($query->num_rows() > 0) {
                return $query->next_row()->username;
            } else {
                $this->session->unset_userdata('cr');
                return false;
            }
        } else {
            return false;
        }
    }

    function checkUserExsits($twfbUserId, $login_type) {
        $this->db->select('userID');
        $this->db->where(array('twfbUserID' => $twfbUserId, 'login-type' => $login_type));
        $query = $this->db->get('social_media_user');
        if ($query->num_rows() == 1) {
            return true;
        } else {
            return false;
        }
    }

    function getTwFbUserID() {
        $ref_key = $this->session->userdata('cr');
        if (!empty($ref_key)) {
            $this->db->select('twfbUserID');
            $this->db->where('md5_skey', $ref_key);
            $query = $this->db->get('active_users');
            if ($query->num_rows() > 0) {
                $row = $query->next_row();
                return $row->twfbUserID;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }

    function setActiveTwUser() {
        $user_info = $this->tw_model->getUserInfo();
        $access_token = $this->session->userdata('oauth_token');
        $userID = $user_info->id;
        if (!$this->checkUserExsits($userID, 'tw')) {
            $this->register('tw');
        }
        $referenceKey = md5($access_token . $userID);

        $this->db->select('md5_skey');
        $this->db->where('md5_skey', $referenceKey);
        $query = $this->db->get('active_users');
        if ($query->num_rows() == 0) {
            $insert_vars = Array(
                'username' => $user_info->name,
                'auth_method' => 'tw',
                'access_token' => $access_token,
                'md5_skey' => $referenceKey,
                'twfbUserID' => $userID
            );
            $this->db->insert('active_users', $insert_vars);
            $this->session->set_Userdata('cr', $referenceKey);
            $this->session->set_Userdata('twfbUserID', $userID);
        } else {
            $this->deleteActiverUser($referenceKey);
            $this->setActiveTwUser();
        }
    }

    function setActiveFbUser() {
        $userInfo = $this->fb_model->getUserInfo();
        $userID = $userInfo['id'];
        if (!$this->checkUserExsits($userID, 'fb')) {
            $this->register('fb');
        }

        $referenceKey = md5($this->fb_model->getAccessToken() . $userID);

        $this->db->select('md5_skey');
        $this->db->where('md5_skey', $referenceKey);
        $query = $this->db->get('active_users');
        if ($query->num_rows() == 0) {
            $insert_vars = Array(
                'username' => $userInfo['name'],
                'auth_method' => 'fb',
                'access_token' => $this->fb_model->getAccessToken(),
                'md5_skey' => $referenceKey,
                'twfbUserID' => $userID
            );
            $this->db->insert('active_users', $insert_vars);
            $this->session->set_Userdata('cr', $referenceKey);
            $this->session->set_Userdata('twfbUserID', $userID);
        } else {
            $this->deleteActiverUser($referenceKey);
            $this->setActiveFbUser();
        }
    }

    function register($login_type) {
        $user_params = Array();
        if ($login_type == 'fb') {
            $user_info = $this->fb_model->getUserInfo();
            $user_params['name'] = $user_info['name'];
            $user_params['email'] = $user_info['email'];
            $user_params['birthday'] = date('Y-m-d', strtotime($user_info['birthday']));
            $user_params['image_url'] = "https://graph.facebook.com/" . $user_info['id'] . "/picture";
            $user_params['social_media_id'] = $user_info['id'];
        } else if ($login_type == 'tw') {
            $user_info = $this->tw_model->getUserInfo();
            $user_params['name'] = $user_info->name;

            //twitter does not provide any email variable
            $user_params['email'] = '';

            //twitter does not provide birthday variable
            $user_params['birthday'] = '';

            $user_params['image_url'] = $user_info->profile_image_url_https;
            $user_params['social_media_id'] = $user_info->id;
        }
        $insert_vars = Array(
            'userID' => NULL,
            'username' => $user_params['name'],
            'email' => $user_params['email'],
            'lastvisit' => 0,
            'birthday' => $user_params['birthday'],
            'ipaddress' => $_SERVER['REMOTE_ADDR'],
            'image-url' => $user_params['image_url'],
            'login-type' => $login_type,
            'post' => 0,
            'twfbUserID' => $user_params['social_media_id'],
            'joindate' => date('Y-m-d'),
            'reputation' => 0
        );
        $this->db->insert('social_media_user', $insert_vars);
    }

    function getActiverUserUniqueKey($cr_session_key) {
        $this->db->select('md5_skey');
        $this->db->where('md5_skey', $cr_session_key);
        $query = $this->db->get('active_users', 1);
        return $query->next_row();
    }

    function deleteActiverUser($cr_session_key) {
        $this->db->where('md5_skey', $cr_session_key);
        $this->db->delete('active_users');
    }

}

?>
