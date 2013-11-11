<html>
    <head>
        <script>
            window.www_base='<?php print base_url(); ?>';
        </script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <script type="text/javascript" src="<?php print base_url('assets/colorbox/jquery.colorbox-min.js'); ?>"></script>
        <script type='text/javascript' src="<?php print base_url('assets/js/load.js'); ?>"></script>
        <script type='text/javascript' src="<?php print base_url('assets/jwplayer/jwplayer.js'); ?>"></script>
        <link rel="stylesheet" href= <?php print base_url('assets/colorbox/colorbox.css'); ?> type="text/css" media="screen" />
        <link rel="stylesheet" type="text/css" href="<?php print base_url('assets/css/playerFrameView.css'); ?>" media="screen" />
        <link rel="stylesheet" type="text/css" href="<?php print base_url('assets/css/login.css'); ?>" media="screen" />
    </head>
    <body>
        <div id="fb-root"></div>
        <script>(function(d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
            fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>



        <div id="current" class="frame_view">
            <div id="mediaplayer_block">
                <div id="mediaplayer"></div>
                <script type="text/javascript">
                jwplayer('mediaplayer').setup({
                    'flashplayer': 'jwplayer.flash.swf',
                    'id': 'playerID',
                    'width': '100%',
                    'height': '100%',
                    'file': '<?php print $url; ?>',
                    'controlbar': 'bottom'
                });
                </script>
            </div>
            <div class="fb_comments_frame_block">
                <h4 class="frame-title"><?php print $title; ?></h4>
                <div id="share-buttons" class="clearfix">
                    <div id="vote_btn_wrapper">
                        <div id="vote_btn">
                            <button class="upvote_btn" data-v="<?php print $vid; ?>" onclick="upvoteHandler(event,this);">
                                <img src="<?php print base_url('assets/images/icon/rolfbutton1.png') ?>" />
                                <span class="button-text">LOL</span>
                            </button>
                            <button class="downvote_btn" data-v="<?php print $vid; ?>" onclick="downvoteHandler(event,this);" >
                                <img src="<?php print base_url('assets/images/icon/rolfbutton2.png') ?>" />
                                <span class="button-text">DNL</span>
                            </button>
                        </div>
                    </div>
                    <div id="social_share_buttons_wrapper" class="clearfix">
                        <div id="social_share_buttons">      
                            <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
                            <div class="fb-like-btn"><div class="fb-like" data-send="false" data-layout="button_count" data-width="450" data-show-faces="true" data-font="segoe ui" data-href="<?php print base_url('/video/'.$vid); ?>"></div></div>
                            <div class="tw-btn"><a href="https://twitter.com/share" class="twitter-share-button">Tweet</a></div>
                        </div>
                    </div>
                </div>
                <div class="fb-comments" data-href="<?php print base_url('/video/' . $vid); ?>" data-width="400" data-num-posts="10"></div>
            </div>
        </div>        
    </body>
</html>
