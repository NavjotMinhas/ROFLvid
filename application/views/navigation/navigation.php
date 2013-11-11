<div id="nav-menu" class="row-fluid">
    <div id="logo-block" class="span2">
        <div id="logo">
            <a href="<?php print base_url(); ?>" title="ROFLvid Home"><img src="<?php print base_url('assets/images/logo.png'); ?>" alt="logo" /></a>
        </div>
    </div>      
    <div class="span7">
        <div class="row-fluid">
            <a class="nav-menu-button span3" href="<?php print base_url(); ?>" >Home</a>
            <a class="nav-menu-button span3" href="<?php print base_url('viralvideo'); ?>" >Viral Videos</a>
            <a class="nav-menu-button span3" href="<?php print base_url('/newvideo'); ?>" >New Videos</a>
            <button id="add-video" class="orange-button span3">Add Video</button>
        </div>
    </div>
    <!-- register and login button -->
    <?php if (!$isAuthenticated): ?>
        <button id="register-button" class="span1">Register</button>
    <?php endif; ?>
    <?php if (!$isAuthenticated): ?>
        <button id="login-button" class="span1">Login</button>
    <?php else: ?>
        <ul id="user-drop-down-menu">
            <li class="menu"><button id="logout-button"><?php print $username; ?></button>
                <ul id="drop-down-menu">
                    <li class="drop-down-item">
                        <?php if ($oauth == 'fb'): ?>
                            <a href="fb_logout">Log out</a>
                        <?php elseif ($oauth == 'tw'): ?>
                            <a href="tw_logout">Log out</a>
                        <?php endif; ?>
                    </li>
                </ul>
            </li>
        </ul>
    <?php endif; ?>
</div>