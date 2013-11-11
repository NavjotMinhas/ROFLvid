<?php if (!$isAuthenticated): ?>
<html>
    <head>
        
        <link rel="stylesheet" type="text/css" href="<?php print base_url('assets/css/login_frame.css'); ?>" media="screen" />
        <title>Login-ROFLvid</title>
    </head>
    <body>
    <div id="login-message-block"><h4>Please login using a method that tickles your fancy</h4></div>
    <div id="fb-login-block">
        <div id="login-block-wrapper">
            <h2>Facebook</h2>
            <a id="fb-login" href="<?php print base_url('fb_login'); ?>">
                <div class="logo-wrapper fb-logo-right-border">
                    <span class="fb-logo"></span>
                </div>
                <span class="button-text fb-button-text-left-border">Login with Facebook</span>
            </a>
        </div>
    </div>
    <div id="tw-login-block">
        <div id="login-block-wrapper">
            <h2>Twitter</h2>
            <a id="twitter-login" href="<?php print base_url('tw_login');?>">
                <div class="logo-wrapper tw-logo-right-border">
                    <span class="tw-logo"></span>
                </div>
                <span class="button-text tw-button-text-left-border">Login with Twitter</span>
            </a>
        </div>
    </div>
    </body>
</html>
<?php endif; ?>