<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');
/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	http://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There area two reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router what URI segments to use if those provided
| in the URL cannot be matched to a valid route.
|
*/

$route['default_controller'] = "main_controller";
$route['newvideo'] = "main_controller/newvideo";
$route['viralvideo'] = "main_controller/viralvideo";
$route['video/(:num)'] = "main_controller/video/$1";
$route['login'] = "main_controller/login";
$route['frame_view_video/(:num)'] = "main_controller/video_frame/$1";
$route['fb_login'] = "main_controller/fb_login";
$route['tw_login'] = "main_controller/tw_login";
$route['tw_authorize'] = "main_controller/tw_authorize";
$route['tw_logout'] = "main_controller/tw_logout";
$route['fb_logout'] = "main_controller/fb_logout";
$route['youtube/addvideo'] = "main_controller/add_video";
$route['youtube/getyoutubeMetadata'] = "main_controller/getyoutubeMetadata";
$route['youtube/save'] = "main_controller/saveVideo";
$route['share/(:num)'] = "main_controller/share/$1";
$route['vote/up/(:num)'] = "main_controller/upvote/$1";
$route['vote/down/(:num)'] = "main_controller/downvote/$1";

/*Admin Pages*/
$route['admin/channel'] = "main_controller/adminAuthorPage";
$route['admin/search'] = "main_controller/adminSearchPage";
$route['admin/options'] = "main_controller/adminOptionsPage";
$route['admin/action'] = "main_controller/adminOptionsAction";
$route['admin/channel/view'] = "main_controller/adminAuthorView";

$route['about'] = "main_controller/about";
$route['advertise'] = "main_controller/advertise";
$route['contact'] = "main_controller/contactUs";
$route['faq'] = "main_controller/faq";
$route['privacy'] = "main_controller/privacy";
$route['tos'] = "main_controller/tos";


$route['test'] = "main_controller/testFunction";
$route['404_override'] = '';


/* End of file routes.php */
/* Location: ./application/config/routes.php */