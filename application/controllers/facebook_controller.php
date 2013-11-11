<?php

/**
 * The handler for the ROFLvid facebook page
 */
if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class facebook_controller extends CI_Controller {
    
    public function index(){
        $this->load->helper('url');
        $this->load->model('video_model');
        $data['trendingVideos'] = $this->video_model->getTrendingVideos();
        $this->load->view('misc/facebook_tab_page_view',$data);
    }
    public function video($id) {
        $this->load->helper('url');
        $this->load->model('video_model');
        $data['video_data'] = $this->video_model->getVideo($id);
        $data['sugessted_vid_data'] = $this->video_model->getSuggestedFacebookVideo();
        $this->load->view('misc/facebook_video_view',$data);
    }
    
}

?>
