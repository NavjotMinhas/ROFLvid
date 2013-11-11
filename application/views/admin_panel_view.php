<html>
    <head>
        <title>Admin Panel</title>
    </head>
    <body>
        <form method="post">
            <label>Search</label>
            <input id="search" type="text">
        </form>
        <?php
        foreach ($videoFeed as $videoEntry):?>
            <table>
                <tr>
                    <td colspan="2"><img src="http://i.ytimg.com/vi/<?php print $videoEntry->getVideoId();  ?>/mqdefault.jpg" /></td>
                </tr>
                <tr>
                    <td>Title:</td>
                    <td><a href="<?php print $videoEntry->getVideoWatchPageUrl(); ?>"><?php print $videoEntry->getVideoTitle(); ?></a></td>
                </tr>
                <tr>
                    <td>Duration:</td>
                    <td><?php print $videoEntry->getVideoDuration(); ?></td>
                </tr>
                <tr>
                    <td>Youtube Net Likes</td>
                    <td><?php print $this->yt_model->getLikes($videoEntry); ?></td>
                </tr>
                <tr>
                    <td>FB shares</td>
                    <td><?php print $this->vote_system_model->getYoutubeFbShares('http://www.youtube.com/watch?v='.$videoEntry->getVideoId()); ?></td>
                </tr>
                <tr>
                    <td>FB Likes</td>
                    <td><?php print $this->vote_system_model->getYoutubeFbLikes('http://www.youtube.com//watch?v='.$videoEntry->getVideoId()); ?></td>
                </tr>
            </table>
            <?php 
                ob_flush();
                flush();   
            ?>
        <?php endforeach; ?>
    </body>
</html>