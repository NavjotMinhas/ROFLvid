<h3 class="thin-header module-header">The Most FUNNIEST Videos</h3>
<div class="row-fluid">
    <div class="span5 col">
        <div class="col6 boxmargin">
            <div id="main-carousel" class="carousel slide">
                <ol class="carousel-indicators">
                    <li data-target="#main-carousel" data-slide-to="0" class="active"></li>
                    <?php for ($i = 1; $i < count($trendingVideos); $i++): ?>
                        <li data-target="#main-carousel" data-slide-to="<?php print $i; ?>"></li>
                    <?php endfor ?>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <a href="<?php print 'frame_view_video/' . $trendingVideos[0]['video']; ?>" class="play-video">
                            <div class="img-wrapper">
                                <img src="<?php print 'images/thumbnails/h/' . $trendingVideos[0]['thumbnail']; ?>" />
                            </div>
                            <div class="carousel-caption">
                                <h4><?php print $trendingVideos[0]['title']; ?></h4>
                            </div>
                        </a>
                    </div>
                    <?php for ($i = 1; $i < count($trendingVideos); $i++): ?>
                        <div class="item">
                            <a href="<?php print 'frame_view_video/' . $trendingVideos[$i]['video']; ?>" class="play-video">
                                <div class="img-wrapper">
                                    <img src="<?php print 'images/thumbnails/h/' . $trendingVideos[$i]['thumbnail']; ?>" />
                                </div>
                                <div class="carousel-caption">
                                    <h4><?php print $trendingVideos[$i]['title']; ?></h4>
                                </div>
                            </a>
                        </div>
                    <?php endfor; ?>
                </div>
                <a class="carousel-control left" href="#main-carousel" data-slide="prev">&lsaquo;</a>
                <a class="carousel-control right" href="#main-carousel" data-slide="next">&rsaquo;</a>
            </div>
        </div>
        <div class="col3 row-fluid">
            <div class="span6 col5 boxmargin">
                <a href="<?php print 'frame_view_video/' . $trendingVideos[1]['video']; ?>" class="box play-video">
                    <div class="thumbnail-wrapper">
                        <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[1]['thumbnail']; ?>" />
                    </div>
                    <div class="textLayer">
                        <h5><?php print $trendingVideos[1]['title']; ?></h5>
                    </div>
                    <div class="play-btn"></div>
                    <div class="score">
                        <div class="score-img"></div>
                        <?php print $trendingVideos[1]['score']; ?>
                    </div>
                    <div class="border-overlay"></div>
                </a> 
            </div>
            <div class="span6 col5 boxmargin">
                <a href="<?php print 'frame_view_video/' . $trendingVideos[3]['video']; ?>" class="box play-video">
                    <div class="thumbnail-wrapper">
                        <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[3]['thumbnail']; ?>" />
                    </div>
                    <div class="textLayer">
                        <h5><?php print $trendingVideos[3]['title']; ?></h5>
                    </div>
                    <div class="play-btn"></div>
                    <div class="score">
                        <div class="score-img"></div>
                        <?php print $trendingVideos[3]['score']; ?>
                    </div>
                    <div class="border-overlay"></div>
                </a>
            </div>
        </div>
    </div>
    <div class="span4 col">
        <div class="col3 boxmargin">
            <a href="<?php print 'frame_view_video/' . $trendingVideos[2]['video']; ?>" class="box play-video">
                <div class="thumbnail-wrapper">
                    <img class="large-img" src="<?php print 'images/thumbnails/h/' . $trendingVideos[2]['thumbnail']; ?>" />
                </div>
                <div class="textLayer">
                    <h5><?php print $trendingVideos[2]['title']; ?></h5>
                </div>
                <div class="play-btn"></div>
                <div class="score">
                    <div class="score-img"></div>
                    <?php print $trendingVideos[2]['score']; ?>
                </div>
                <div class="border-overlay"></div>
            </a>
        </div>
        <div class="sub-block">
            <div class="col4 row-fluid">
                <div class="span6 col5">
                    <a href="<?php print 'frame_view_video/' . $trendingVideos[4]['video']; ?>" class="box play-video">
                        <div class="thumbnail-wrapper">
                            <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[4]['thumbnail']; ?>" />
                        </div>
                        <div class="textLayer">
                            <h5><?php print $trendingVideos[4]['title']; ?></h5>
                        </div>
                        <div class="play-btn"></div>
                        <div class="score">
                            <div class="score-img"></div>
                            <?php print $trendingVideos[4]['score']; ?>
                        </div>
                        <div class="border-overlay"></div>
                    </a> 
                </div>
                <div class="span6 col5">
                    <a href="<?php print 'frame_view_video/' . $trendingVideos[5]['video']; ?>" class="box play-video">
                        <div class="thumbnail-wrapper">
                            <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[5]['thumbnail']; ?>" />
                        </div>
                        <div class="textLayer">
                            <h5><?php print $trendingVideos[5]['title']; ?></h5>
                        </div>
                        <div class="play-btn"></div>
                        <div class="score">
                            <div class="score-img"></div>
                            <?php print $trendingVideos[5]['score']; ?>
                        </div>
                        <div class="border-overlay"></div>
                    </a>  
                </div>
            </div>
            <div class="col4-2 row-fluid">
                <div class="span6 col5">
                    <a href="<?php print 'frame_view_video/' . $trendingVideos[6]['video']; ?>" class="box play-video">
                        <div class="thumbnail-wrapper">
                            <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[6]['thumbnail']; ?>" />
                        </div>
                        <div class="textLayer">
                            <h5><?php print $trendingVideos[6]['title']; ?></h5>
                        </div>
                        <div class="play-btn"></div>
                        <div class="score">
                            <div class="score-img"></div>
                            <?php print $trendingVideos[6]['score']; ?>
                        </div>
                        <div class="border-overlay"></div>
                    </a>
                </div>
                <div class="span6 col5">
                    <a href="<?php print 'frame_view_video/' . $trendingVideos[7]['video']; ?>" class="box play-video">
                        <div class="thumbnail-wrapper">
                            <img class="video-thumbnail" src="<?php print 'images/thumbnails/m/' . $trendingVideos[7]['thumbnail']; ?>" />
                        </div>
                        <div class="textLayer">
                            <h5><?php print $trendingVideos[7]['title']; ?></h5>
                        </div>
                        <div class="play-btn"></div>
                        <div class="score">
                            <div class="score-img"></div>
                            <?php print $trendingVideos[7]['score']; ?>
                        </div>
                        <div class="border-overlay"></div>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="span3 col">
        <div class="col2 boxmargin">
            <div id="socialmedia-block">
                <div class="socialmedia-container paddingBottom">
                    <div id="facebook-block-wrapper" class="sm-container">
                        <div id="facebook-block">
                            <img class="fb-tw-logo" src="assets/images/icon/fb_logo.png" />
                            <div class="info-container">
                                <div class="underline">
                                    <p>Like us on Facebook :)</p>
                                </div>
                                <p>You know you want too ;)</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="socialmedia-container paddingTop">
                    <div id="twitter-block-wrapper" class="sm-container">
                        <div id="twitter-block">
                            <img class="fb-tw-logo" src="assets/images/icon/twitter-bird-dark-bgs.png" />
                            <div class="info-container">
                                <div class="underline">
                                    <p>Follow us on Twitter :)</p>
                                </div>
                                <p>Keep up to date</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>  
        </div>
        <div class="col2">
            <div class="money-make-block">
                <p>How to Make Money</p>
            </div>
        </div>
    </div>
</div>
<div class="clearfix"></div>
