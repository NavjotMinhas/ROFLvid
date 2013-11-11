<html>
    <head>
        <title>ROFLvid</title>
        <style>
            body{
                font-size: 16px;
            }
            #content{
                font-family:segoe ui;
                font-size:90%;
                width: 810px;
            }
            h3{
                font-size: 1.2em;
            }
            #mediaplayer{
                background-color: #000;
                float:left;
                height:375px;
                width:500px;
            }
            .orange-button{
                background-image: url('../assets/images/texture/login-button-texture.png');
                background-repeat: repeat-x;
                border-radius: 3px;
                border-color:#ffaa22;
                border-style:solid;
                border-width:1px;
                box-shadow: rgba(255, 255, 255, 0.059) 0px 1px 0px 0px, rgba(255, 255, 255, 0.028) 1px 1px 0px 0px, rgba(0, 0, 0, 0.02) -1px -1px 0px 0px, rgba(255, 255, 255, 0.048) 1px 1px 0px 0px inset;
                color:#333355;
                cursor: pointer;
                display:block;
                font-weight: bold;
                height:28px;
                text-align: center;
                text-decoration: none; 
                text-shadow: -1px 1px #fed87b;
                vertical-align: middle;
            }
            .orange-button:hover{
                background-image: url('../assets/images/texture/login-button-texture-rollover.png');
                border-color:#ed8c12;
                color:#343455;
                text-shadow: -1px 1px #ffd592;
            }
            #upload-form{
                display: block;
                margin-left: 10px;
                margin-right: 10px;
                width:670px;
            }
            #upload-input{
                border:1px solid #000;
                border-radius: 3px;
                float:left;
                height: 30px;
                width:90%;
            }
            #upload-btn{
                float:left;
                margin-left: 1%;
                height: 30px;
                width:9%;
            }
            .clearfix:after {
                content: ".";
                display: block;
                clear: both;
                visibility: hidden;
                line-height: 0;
                height: 0;
            }

            .clearfix {
                display: inline-block;
            }
            ul{
                float: left;
                list-style: none;
                margin: 0;
                padding: 0;
                width: 100px;
            }
            li{
                display: block;
                height:100px;
                margin-left: 10px;
                width:300px;
            }
            .title{
                color:#369;
                cursor: pointer;
                display: block;
                font-weight: bold;
            }
            .title:hover{
                text-decoration: underline;
            }
            .score{
                display: block;
                font-size: 0.8em;
                margin-top: 5px;
            }
            .thumbnail-wrapper{
                border: thin solid #7a7a7a;
                cursor: pointer;
                display: block;
                float:left;
                height:67px;
                margin-right:5px;
                overflow: hidden;
                position: relative;
                width: 120px;
            }
            .thumbnail{
                display: block;
                position: absolute;
                top:-11.5px;
                height:90px;
                width: 120px;
            }
        </style>
        <script type='text/javascript' src="<?php print base_url('assets/jwplayer/jwplayer.js'); ?>"></script>
    </head>
    <body>
        <div id="content" class="clearfix">
            <form id="upload-form" class="clearfix">
                <input id="upload-input" type="text" />
                <button id="upload-btn" class="orange-button" type="submit" onsubmit="return false">Upload</button>
            </form>
            <h3><?php print $video_data->title; ?></h3>
            <div id="mediaplayer">

            </div>
            <ul>
                <?php foreach ($sugessted_vid_data as $vid): ?>

                    <li>
                        <span class="thumbnail-wrapper">
                            <img  class="thumbnail" src="../../images/thumbnails/<?php print $vid->thumbnail; ?>" />
                        </span>
                        <span dir="ltr" class="title"><?php print $vid->title; ?></span>
                        <span dir="ltr" class="score" >XD <?php print $vid->score; ?></span>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </body>
</html>