<!DOCTYPE html>
<html xmlns:fb="http://ogp.me/ns/fb#">
    <head>
        
        <!--force IE into compatibility -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        
        <title>ROFLvid</title>
        <?php print $headerInclude; ?>
    </head>
    <body>
        <div id="fb-root"></div>

        <div id="header">
            <div id="header_wrapper">
                <?php print $navigation; ?>
            </div>
        </div>
        <div id="main">
            <div id="content">
                <?php print $videoBlock; ?>
                <div id="search-results" class="clearfix"></div>
            </div>
            <?php print $footer; ?>
        </div>
        <button id="back_to_top_btn">Back to Top</button>
        <!--Corner system-->
        <?php if($oauth=='fb'):?>
            <div id="facebook-dropzone"></div>
         <?php elseif($oauth=='tw'): ?>
            <div id="tw-dropzone"></div>
        <?php endif; ?>
        <div id="pageslide"></div>
        <div id="activation-left-slide"></div>
    </body>
</html>
