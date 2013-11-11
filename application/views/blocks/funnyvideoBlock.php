<?php
$counter = 0; // This counter is used to determine the starting of each row
$secondCounter = 3; // This counter is used for the closing div element of the row
$isOpen=false; //This variable is used because the number of entries might not be divisible by 4 which would cause an unclosed row
foreach ($funnyVideos as $row):
    ?>
    <?php if (($counter % 4) == 0): ?>
        <div class="row-fluid boxmargin">
        <?php $isOpen=true; ?>
     <?php endif; ?>
        <div class="span3">
            <a href="frame_view_video/<?php print $row['video'] ?>"  class="video" draggable="true">
                <div class="video-thumbnail">
                    <img src="<?php print 'images/thumbnails/m/' . $row['thumbnail']; ?>" />
                    <div class="play-icon"></div>
                </div>
                <span class="text-wrapper">
                    <?php print $row['title']; ?>
                </span>
                <span class="top-score">
                    <?php print $row['score']; ?>
                </span>
                <span class="overlay"></span>
            </a>
        </div>
    <?php if ($counter==$secondCounter): ?>
        </div>
        <?php $secondCounter=$secondCounter+4; ?>
        <?php $isOpen=false; ?>
    <?php endif; ?>
    <?php $counter++; ?>
<?php endforeach; ?>

<?php if($isOpen){
    print '</div>';
}
?>