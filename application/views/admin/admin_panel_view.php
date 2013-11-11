<html>
    <head>
        <title>Admin Panel</title>
        <style>
            body {
                background-image: -webkit-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -moz-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -o-linear-gradient(rgb(231,231,231), #fff 100%);
                background-image: -ms-linear-gradient(rgb(231,231,231), #fff 100%);
                background-attachment:fixed;
                margin:0;
                padding:0;
                border:0;			/* This removes the border around the viewport in old versions of IE */
                width:100%;
                min-width:600px;		/* Minimum width of layout - remove line if not required */
                /* The min-width property does not work in old versions of Internet Explorer */
                font-family:segoe ui;
                font-size:90%;

                /*quick fix need to remove eventually*/
                overflow-x: hidden;
            }
            form{
                margin-left: 200px;
            }
            table{
                margin-left: 200px;
                margin-bottom: 35px;
            }
            td{
                padding-left: 20px;
            }
            #admin-nav{
                background-color: #333;
                border: 1px solid #000;
                float:left;
                height:100%;
                list-style-type: none;
                margin-top: 0;
                position: fixed;
                top:0;
            }
            #admin-nav li a{
                background-image:  -webkit-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -moz-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -ms-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -o-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                border: 1px solid rgb(20,20,20);
                border-radius: 2px;
                box-shadow: rgba(255, 255, 255, 0.059) 0px 1px 0px 0px, rgba(255, 255, 255, 0.028) 1px 1px 0px 0px, rgba(0, 0, 0, 0.02) -1px -1px 0px 0px, rgba(255, 255, 255, 0.048) 1px 1px 0px 0px inset;
                box-sizing: border-box;
                -moz-box-sizing: border-box;
                color: #ddd;
                display: block;
                font-size:17px;
                margin-bottom: 4px;
                margin-left: 2px;
                margin-right:2px;
                margin-top: 4px;
                padding-bottom: 3px;
                padding-left:20px;
                padding-right:20px;
                padding-top:3px;
                text-align: center;
                text-decoration: none;
                text-shadow: rgba(0, 0, 0, 0.498039) 0px -1px 0px;
                vertical-align: middle;
            }
            #admin-nav li a:hover{
                background-image:  -webkit-linear-gradient(top,rgb(52, 52, 52) 0%, rgb(45, 45, 45) 100%);
                background-image:  -moz-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -ms-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                background-image:  -o-linear-gradient(top,rgb(48, 48, 48) 0%, rgb(38, 38, 38) 100%);
                color:#fff;
            }
            .add_video_btn{
                background: -webkit-linear-gradient(top, #9DC262, #3F8C23);
                background: -moz-linear-gradient(top, #9DC262, #3F8C23);
                background: -ms-linear-gradient(top, #9DC262, #3F8C23);
                background: -o-linear-gradient(top, #9DC262, #3F8C23);
                background: -linear-gradient(top, #9DC262, #3F8C23);
                border-radius: 2px;
                border-color:#234F14;
                border-style:solid;
                border-width:1px;
                box-shadow: rgba(255, 255, 255, 0.059) 0px 1px 0px 0px, rgba(255, 255, 255, 0.028) 1px 1px 0px 0px, rgba(0, 0, 0, 0.02) -1px -1px 0px 0px, rgba(255, 255, 255, 0.048) 1px 1px 0px 0px inset;
                color:#fff;
                cursor: pointer;
                height:28px;
                margin-left:2px;
                margin-right:2px;
                padding-left: 10px;
                padding-right: 10px;
                text-align: center;
                text-decoration: none; 
                text-shadow: rgba(0,0,0,0.2) 0px 1px 0px;
                vertical-align: middle;
            }
            .add_video_btn:hover{
                background: -webkit-linear-gradient(top, #8DB86D, #34741D);
                background: -moz-linear-gradient(top, #8DB86D, #34741D);
                background: -ms-linear-gradient(top, #8DB86D, #34741D);
                background: -o-linear-gradient(top, #8DB86D, #34741D);
                background: -linear-gradient(top, #8DB86D, #34741D);
            }
        </style>
    </head>
    <body>
        <?php print $navigation ?>
        <form method="get" action="<?php print base_url('admin/search'); ?>">
            <label>Search</label>
            <input id="search" type="text" name="search_string">
            <button type="sumbit">Search</button>
        </form>
        <?php if (!empty($searchStr)): ?>
            <?php foreach ($videoFeed as $videoEntry): ?>
                <table>
                    <tr>
                        <td colspan="2"><img src="http://i.ytimg.com/vi/<?php print $videoEntry->getVideoId(); ?>/mqdefault.jpg" /></td>
                    </tr>
                    <tr>
                        <td>Title:</td>
                        <td><a href="<?php print $videoEntry->getVideoWatchPageUrl(); ?>"><?php print $videoEntry->getVideoTitle(); ?></a></td>
                    </tr>
                    <tr>
                        <td>Date</td>
                        <td><?php print $videoEntry->mediaGroup->uploaded->text; ?></td>
                    </tr>
                    <tr>
                        <td>Duration:</td>
                        <td><?php print gmdate('H:i:s', $videoEntry->getVideoDuration()); ?></td>
                    </tr>
                    <tr>
                        <td>Youtube Likes</td>
                        <td><?php print $this->yt_model->getLikes($videoEntry); ?></td>
                    </tr>
                    <tr>
                        <td>Youtube Dislikes</td>
                        <td><?php print $this->yt_model->getDislikes($videoEntry); ?></td>
                    </tr>
                    <tr>
                        <td>FB shares</td>
                        <td><?php print getYoutubeFbShares('http://www.youtube.com/watch?v=' . $videoEntry->getVideoId()); ?></td>
                    </tr>
                    <tr>
                        <td>FB Likes</td>
                        <td><?php print getYoutubeFbLikes('http://www.youtube.com/watch?v=' . $videoEntry->getVideoId()); ?></td>
                    </tr>
                    <tr>
                        <td>Num of Tweets</td>
                        <td><?php print getNumOfYoutubeTweets('http://www.youtube.com/watch?v=' . $videoEntry->getVideoId()); ?></td>
                    </tr>
                    <tr>
                        <td>Add Video</td>
                        <td><a class="add_video_btn" href="<?php print base_url('admin/action') . '?do=add_video&url=' . 'http://www.youtube.com/watch?v=' . $videoEntry->getVideoId(); ?>">Add Video</a></td>
                    </tr>
                </table>
                <?php
                ob_flush();
                flush();
                ?>
            <?php endforeach; ?>
        <?php endif; ?>
    </body>
</html>