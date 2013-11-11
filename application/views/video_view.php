<html xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        <!--force IE into compatibility -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

        <meta property="fb:app_id" content="549019755112038" />

        <meta property="og:type" content="movie" /> 
        <meta property="og:video:height" content="480" /> 
        <meta property="og:video:width" content="640" /> 
        <meta property="og:video:type" content="application/x-shockwave-flash" />
        <meta property="og:video" content="http://www.youtube.com/v/<?php print $video_data->youtubeID; ?>" />
        <meta property="og:title" content="<?php print $video_data->title; ?>" /> 
        <meta property="og:description" content="Come join us at roflvid.com. We exist to make you ROFL xD. *Remember SHARING or LIKING the video = HIGHER page rank*" />
        <meta property="og:image" content="<?php print base_url('images/thumbnails/h/' . $video_data->thumbnail); ?>" />


        <title>ROFLvid</title>
        <?php print $headerInclude; ?>
    </head>
    <body>
        <?php include_once('google/analyticstracking.php'); ?>
        <div id="header">
            <div id="header_wrapper">
                <?php print $navigation; ?>
            </div>
        </div>
        <div id="main">
            <div id="main-content">
                <div id="content">
                    <h3 class="thin-header module-header"><?php print $video_data->title; ?></h3>

                    <div class="row-fluid">
                        <div class="span7">
                            <div class="video_container">
                                <div id="mediaplayer"></div>
                                <script>
                                    jwplayer('mediaplayer').setup({
                                        'flashplayer': 'jwplayer.flash.swf',
                                        'id': 'player',
                                        'width': '100%',
                                        'height': '100%',                                            
                                        'file': '<?php print $video_data->url; ?>',
                                        'controlbar': 'bottom'
                                    });
                                </script>
                            </div>
                        </div>
                        <div class="span5">
                            <div id="fb_comments_block">
                                <h4>Comments</h4>
                                <fb:comments href="<?php print "http://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI']; ?>" width="470" num_posts="2"></fb:comments>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>