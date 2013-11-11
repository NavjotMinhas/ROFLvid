<!DOCTYPE html>
<html>
    <head>

        <!--force IE into compatibility -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

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
                    <div id="funny_videos" class="clearfix">
                        <h3 class="thin-header module-header">Going VIRAL</h3>
                        <?php print $funnyVideoBlock; ?>
                    </div>
                </div>
            </div>
            <?php print $footer; ?>     
            <button id="back_to_top_btn">Back to Top</button>
            <!--Corner system-->
            <?php if ($oauth == 'fb'): ?>
                <div id="facebook-dropzone"></div>
            <?php elseif ($oauth == 'tw'): ?>
                <div id="tw-dropzone"></div>
            <?php endif; ?>
            <div id="pageslide"></div>
            <div id="activation-left-slide"></div>
        </div>
    </body>
</html>
