<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class main_controller extends CI_Controller {

    public function index() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $this->load->model('video_model');
        $data['trendingVideos'] = $this->video_model->getTrendingVideos();
        $data['funnyVideos'] = $this->video_model->getInitVideos();

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);

        if (!empty($data['trendingVideos'])) {
            $view['trendingBlock'] = $this->load->view('blocks/trendingBlock', $data, true);
        } else {
            $view['trendingBlock'] = '';
        }
        $view['funnyVideoBlock'] = $this->load->view('blocks/funnyvideoBlock', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('home_view', $view);
    }

    public function video($id) {
        if (isset($_SERVER["HTTP_REFERER"])) {
            if (strrpos($_SERVER["HTTP_REFERER"], 'm.facebook') !== false) {
                $this->load->model('video_model');
                $data['rtsp'] = $this->video_model->getRTSPVideo($id);
                $this->load->view('jsredirect_view', $data);
                return;
            }
        }
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $this->load->model('video_model');
        $data['video_data'] = $this->video_model->getVideo($id);

        $data['headerInclude'] = $this->load->view('headerInclude', null, true);
        $data['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);

        if (!empty($data['video_data'])) {
            $this->load->view('video_view', $data);
        } else {
            //404 page
        }
    }

    public function viralVideo() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $this->load->model('video_model');
        $data['funnyVideos'] = $this->video_model->getViralVideos();

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);

        $view['funnyVideoBlock'] = $this->load->view('blocks/funnyvideoBlock', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('viral_video_view', $view);
    }

    public function newVideo() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $this->load->model('video_model');
        $data['funnyVideos'] = $this->video_model->getNewVideos();

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);

        $view['funnyVideoBlock'] = $this->load->view('blocks/funnyvideoBlock', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('new_video_view', $view);
    }

    public function downVote($vid) {
        $this->load->model('vote_system_model');
        $this->vote_system_model->downvote($vid);
    }

    public function upVote($vid) {
        $this->load->model('vote_system_model');
        $this->vote_system_model->upvote($vid);
    }

    public function login() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $this->load->view('login_view', $data);
    }

    public function video_frame($id) {
        $this->load->helper('url');
        $this->load->model('video_model');
        $data['title'] = $this->video_model->getVideo($id)->title;
        $data['url'] = $this->video_model->getVideo($id)->url;
        $data['vid'] = $id;
        $this->load->view('player_frame_view', $data);
    }

    public function fb_login() {
        $this->load->helper('url');
        if (empty($_GET['code'])) {
            $this->load->model('fb_model');
            echo("<script> top.location.href='" . $this->fb_model->getLoginUrl() . "'</script>");
        } else if (isset($_GET['code'])) {
            $this->load->model('fb_model');
            if ($this->fb_model->isAuthenticated()) {
                //Store in the active users table
                //$fb_data = $this->fb_model->getUserInfo();
                //Create all the session vars
                $this->session->set_userdata('access_token', $this->fb_model->getAccessToken());

                //Set wheather we used twitter or facebook
                $this->session->set_userdata('oauth', 'fb');

                $this->load->model('user_model');
                $this->user_model->setActiveFbUser();

                //extend our presmissions after basic authentication
                header('Location:' . $this->fb_model->extendPermissions());
            }
        } else {
            header('Location: ' . base_url());
        }
    }

    public function fb_logout() {
        $this->load->helper('url');
        $this->load->model('fb_model');
        if ($this->fb_model->isAuthenticated()) {
            file_get_contents($this->fb_model->getLogoutUrl());
            $this->fb_model->destroySession();
        }
        $this->load->model('user_model');
        $isAuthenticated = $this->user_model->isUserAuthenticated();
        if ($isAuthenticated) {
            $md5_skey = $this->user_model->getActiverUserUniqueKey($this->session->userdata('cr'));
            if ($md5_skey->md5_skey) {
                $this->user_model->deleteActiverUser($md5_skey->md5_skey);
                $this->session->sess_destroy();
            }
        }
        header('Location: ' . base_url());
    }

    public function tw_login() {
        $this->load->helper('url');
        $this->load->model('tw_model');
        $this->tw_model->authorizeApplication();
    }

    public function tw_authorize() {
        $this->load->helper('url');
        if (!empty($_GET['oauth_verifier']) && $this->session->userdata('request_oauth_token') && $this->session->userdata('request_oauth_token_secret')) {
            $this->load->model('tw_model');
            $isAuthoriezedFully = $this->tw_model->getAccessToken($_GET['oauth_verifier']);
        }
        if ($isAuthoriezedFully) {
            $user_info = $this->tw_model->getUserInfo();
            if (isset($user_info->errors)) {
                $this->load->helper('url');
                header('Location: ' . base_url('/tw_login'));
            }
            $this->session->set_userdata('oauth', 'tw');
            $this->load->model('user_model');
            $this->user_model->setActiveTwUser();
        }
        header('Location: ' . base_url());
    }

    public function tw_logout() {
        $this->load->helper('url');
        $this->load->model('tw_model');
        if ($this->tw_model->isAuthenticated()) {
            $this->tw_model->destroySession();
        }
        $this->load->model('user_model');
        $isAuthenticated = $this->user_model->isUserAuthenticated();
        if ($isAuthenticated) {
            $md5_skey = $this->user_model->getActiverUserUniqueKey($this->session->userdata('cr'));
            if ($md5_skey->md5_skey) {
                $this->user_model->deleteActiverUser($md5_skey->md5_skey);
                $this->session->sess_destroy();
            }
        }
        header('Location: ' . base_url());
    }

    public function add_video() {
        $this->load->helper('url');
        $this->load->model('user_model');
        if ($this->user_model->isUserAuthenticated()) {
            $this->load->model('video_model');
            $data['tags'] = $this->video_model->getHashTags();
            $data['categories'] = $this->video_model->getCategory();
            $this->load->view('add_video_view', $data);
        } else {
            $data['isAuthenticated'] = false;
            $this->load->view('login_view', $data);
        }
    }

    public function saveVideo() {
        if (isset($_GET['v']) && isset($_GET['title']) && isset($_GET['category']) && isset($_GET['tag'])) {
            $vid = $_GET['v'];
            $title = urldecode($_GET['title']);
            $category = $_GET['category'];
            $tags = urldecode($_GET['tag']);
            $this->load->model('yt_model');
            $response = $this->yt_model->saveVideo($vid, $title, $category, $tags);
            if ($response == true) {
                
            } else {
                header("HTTP/1.0 404 Not Found");
            }
        } else {
            header("HTTP/1.0 404 Not Found");
        }
    }

    public function getyoutubeMetadata() {
        if (!empty($_GET['url'])) {
            $url = $this->security->xss_clean($_GET['url']);
            $url_params = parse_url($url);
            if (empty($url_params['query'])) {
                $response = Array();
                $response['type'] = 'Invalid URL';
                print json_encode($response);
                return;
            }
            parse_str($url_params['query']);
            if (!empty($v)) {
                $this->load->model('yt_model');
                $response = $this->yt_model->getYoutubeVideoMetaData($v);
                header("content-type:application/json");
                if ($response) {
                    $response['type'] = 'success';
                    print json_encode($response);
                } else {
                    $response = Array();
                    $response['type'] = 'error';
                    print json_encode($response);
                }
            } else {
                $response = Array();
                $response['type'] = 'Invalid URL';
                print json_encode($response);
            }
        } else {
            $response = Array();
            $response['type'] = 'Please specify a URL';
            print json_encode($response);
        }
    }

    public function testFunction() {
        $this->load->model('video_model');
        $this->load->model('ranking_model');
        $this->load->database();
        $result = $this->video_model->getAllVideos();
        foreach ($result as $row) {
            $score = $this->ranking_model->calculateScore($row['video'], $row['url']);
            $this->db->query("UPDATE `video` SET score='$score' WHERE `video`='{$row['video']}'");
        }
    }

    public function adminAuthorPage() {
        $this->load->model('user_model');
        $this->load->model('fb_model');
        $isAuth = $this->user_model->isUserAuthenticated();
        $user_info = $this->fb_model->getUserInfo();
        $id = $user_info['id'];
        if ($isAuth && ($id == '100002539190958' || $id == '735559659')) {
            $this->load->helper('admin_helper');
            $this->load->helper('url');
            $this->load->model('yt_model');
            $data['navigation'] = $this->load->view('admin/navigation', null, true);

            $resultSet = Array();
            $this->load->database();
            $this->db->select('yt_username');
            $result = $this->db->get('youtube_user');
            foreach ($result->result_array() as $author) {
                $resultSet[] = performYoutubeSearchByAuthor($author['yt_username']);
            }
            $data['resultSet'] = $resultSet;
            $this->load->view('admin/admin_channel_view', $data);
        }
    }

    public function adminOptionsPage() {
        $this->load->model('user_model');
        $this->load->model('fb_model');
        $isAuth = $this->user_model->isUserAuthenticated();
        $user_info = $this->fb_model->getUserInfo();
        $id = $user_info['id'];
        if ($isAuth && ($id == '100002539190958' || $id == '735559659')) {
            $this->load->helper('admin_helper');
            $this->load->helper('url');
            $this->load->model('yt_model');
            $data['navigation'] = $this->load->view('admin/navigation', null, true);

            $this->load->database();
            $this->db->select('yt_username');
            $result = $this->db->get('youtube_user');
            $data['resultSet'] = $result->result();
            $this->load->view('admin/admin_options_view', $data);
        } else {
            $this->load->helper('url');
            header("location:" . base_url());
        }
    }

    public function adminOptionsAction() {
        $this->load->model('user_model');
        $this->load->model('fb_model');
        $isAuth = $this->user_model->isUserAuthenticated();
        $user_info = $this->fb_model->getUserInfo();
        $id = $user_info['id'];
        if ($isAuth && ($id == '100002539190958' || $id == '735559659')) {
            $this->load->helper('url');
            if (isset($_GET['do'])) {
                if ($_GET['do'] == 'delete') {
                    if (isset($_GET['username'])) {
                        $this->load->database();
                        $this->db->where('yt_username', $_GET['username']);
                        $this->db->delete('youtube_user');
                    }
                }
                if ($_GET['do'] == 'add') {
                    if (isset($_GET['username'])) {
                        $this->load->database();
                        $data = Array('yt_username' => $this->security->xss_clean($_GET['username']));
                        $this->db->insert('youtube_user', $data);
                    }
                }
                if ($_GET['do'] == 'add_video') {
                    if (!empty($_GET['url'])) {
                        $url = $this->security->xss_clean($_GET['url']);
                        $url_params = parse_url($url);
                        parse_str($url_params['query']);
                        $this->load->model('yt_model');
                        $this->yt_model->getYoutubeVideoMetaData($v);
                    }
                }
            }
            header('Location:' . base_url('admin/options'));
        }
    }

    public function adminAuthorView() {
        $this->load->model('user_model');
        $this->load->model('fb_model');
        $isAuth = $this->user_model->isUserAuthenticated();
        $user_info = $this->fb_model->getUserInfo();
        $id = $user_info['id'];
        if ($isAuth && ($id == '100002539190958' || $id == '735559659')) {
            $this->load->helper('admin_helper');
            $this->load->helper('url');
            $this->load->model('yt_model');
            $data['navigation'] = $this->load->view('admin/navigation', null, true);
            if (isset($_GET['author'])) {
                $author = $_GET['author'];
                $data['searchStr'] = $author;
                $data['videoFeed'] = performYoutubeSearchByAuthor($author);
                $this->load->view('admin/admin_panel_view', $data);
            }
        }
    }

    public function adminSearchPage() {
        $this->load->model('user_model');
        $this->load->model('fb_model');
        $isAuth = $this->user_model->isUserAuthenticated();
        $user_info = $this->fb_model->getUserInfo();
        $id = $user_info['id'];
        if ($isAuth && ($id == '100002539190958' || $id == '735559659')) {
            $this->load->helper('admin_helper');
            $this->load->helper('url');
            $this->load->model('yt_model');
            $data['navigation'] = $this->load->view('admin/navigation', null, true);
            if (isset($_GET['search_string'])) {
                $searchStr = $_GET['search_string'];
                $data['searchStr'] = $searchStr;
                $data['videoFeed'] = $this->yt_model->queryYoutube($searchStr);
                $this->load->view('admin/admin_panel_view', $data);
            } else {
                $this->load->view('admin/admin_panel_view', $data);
            }
        }
    }

    /**
     * Corner system share controllers
     */
    public function share($vid) {
        $this->load->helper('url');
        if ($this->session->userdata('oauth') == 'fb') {
            $this->load->model('fb_model');
            if ($this->fb_model->isAuthenticated()) {
                $vid = $this->security->xss_clean($vid);
                $message = base_url('/video/' . $vid);
                $this->fb_model->createPost($message);
            }
        } else if ($this->session->userdata('oauth') == 'tw') {
            $this->load->model('tw_model');
            if ($this->tw_model->isAuthenticated()) {
                $vid = $this->security->xss_clean($vid);
                $message = base_url('/video/' . $vid);
                $this->tw_model->createPost($message);
            }
        }
    }

    /**
     * ***************************************
     * ***************************************
     */
    public function about() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('about_view', $view);
    }

    public function advertise() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('advertise_view', $view);
    }

    public function contactUs() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('contact_us_view', $view);
    }

    public function faq() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('faq_view', $view);
    }

    public function tos() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('terms_view', $view);
    }

    public function privacy() {
        $this->load->helper('url');
        $this->load->model('user_model');
        $data['username'] = $this->user_model->getUsername();
        $data['isAuthenticated'] = $this->user_model->isUserAuthenticated();
        $data['oauth'] = $this->session->userdata('oauth');

        $view['headerInclude'] = $this->load->view('headerInclude', null, true);
        $view['navigation'] = $this->load->view('navigation/navigation', $data, true);
        $view['footer'] = $this->load->view('blocks/footer', null, true);
        $this->load->view('policy_view', $view);
    }

    public function help() {
        $this->load->helper('url');
    }

    public function getVideoDataFrameView($id, $type) {
        $this->load->helper('url');
        $this->load->model('video_model');
        $vidObj = $this->video_model->getVideo($id);
        $data['title'] = $vidObj->title;
        $data['url'] = $vidObj->url;
        $data['vid'] = $id;
        $data['type'] = $type;
        print "<iframe id=\"$type\" url=\"{$base_url('frame_view_video/' + $vid)}\" ></iframe>";
    }

    public function load() {
        $offsetMultiplier = $_GET['o'];
        $this->load->model('video_model');
        $data['result'] = $this->video_model->getVideos($offsetMultiplier);
        $this->load->view('blocks/funnyvideoBlock', $data);
    }

    public function startAlgorithm() {
        $this->load->model('video_model');
        $this->load->model('ranking_model');
        $result = $this->video_model->getAllVideos();
        foreach ($result as $row) {
            print $row['url'];
        }
    }

}

?>
