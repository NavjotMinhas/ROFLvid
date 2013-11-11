<?php if($oauth=='fb'): ?>
<div id="funny_videos" class="clearfix">
    <h2>Funny Videos</h2>
    <?php
    foreach($result as $row):
        ?>
        <a href="video/<?php print $row['video'] ?>" class="video facebook-draggable" data-id="<?php print $row['video']; ?>" draggable="true">
            <div class="video_img_border">
                <img src="<?php print $row['thumbnail']; ?>" />
            </div>
            <p><?php print $row['title']; ?></p>
            <button class="orange-button view_btn_position" data-id="<?php print $row['video']; ?>">View</button>
            <div class="share_bar_wrapper"><button class="upvote_btn" data-v="<?php print $row['video']; ?>">xD LOL</button><button class="downvote_btn" data-v="<?php print $row['video']; ?>">Dx DNL</button></div>
        </a>
    <?php endforeach; ?>
</div>
<?php elseif($oauth=='tw'): ?>
<div id="funny_videos" class="clearfix">
    <h2>Funny Videos</h2>
    <?php
    foreach($result as $row):
        ?>
        <a href="video/<?php print $row['video'] ?>" class="video tw-draggable" data-id="<?php print $row['video']; ?>" draggable="true">
            <div class="video_img_border">
                <img src="<?php print $row['thumbnail']; ?>" />
            </div>
            <p><?php print $row['title']; ?></p>
            <button class="orange-button view_btn_position" data-id="<?php print $row['video']; ?>">View</button>
            <div class="share_bar_wrapper"><button class="upvote_btn" data-v="<?php print $row['video']; ?>">xD LOL</button><button class="downvote_btn" data-v="<?php print $row['video']; ?>">Dx DNL</button></div>
        </a>
    <?php endforeach; ?>
</div>
<?php else: ?>
<div id="funny_videos" class="clearfix">
    <h2>Funny Videos</h2>
    <?php
    foreach($result as $row):
        ?>
        <a href="video/<?php print $row['video'] ?>" class="video" draggable="true">
            <div class="video_img_border">
                <img src="<?php print $row['thumbnail']; ?>" />
            </div>
            <p><?php print $row['title']; ?></p>
            <button class="orange-button view_btn_position" data-id="<?php print $row['video']; ?>">View</button>
            <div class="share_bar_wrapper"><button class="upvote_btn" data-v="<?php print $row['video']; ?>">xD LOL</button><button class="downvote_btn" data-v="<?php print $row['video']; ?>">Dx DNL</button></div>
        </a>
    <?php endforeach; ?>
</div>
<?php endif; ?>
