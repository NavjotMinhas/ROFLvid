<html>
    <head>
        <title>ROFLvid</title>
        <style>
            body{
                font-size: 16px;
            }
            a {
                color:#fff;
            }
            #content{
                font-family:segoe ui;
                font-size:90%;
                margin-left: auto;
                margin-right: auto;
                width: 690px;

            }
            .video_wrapper{
                box-sizing: border-box;
                float:left;
                height:200px;
                margin-left:10px;
                margin-right:10px;
                margin-top:20px;
                width: 320px;
            }
            .video_wrapper:hover{
                transform:scale(0.985,0.985);
                -ms-transform:scale(0.985,0.985); /* IE 9 */
                -moz-transform:scale(0.985,0.985); /* Firefox */
                -webkit-transform:scale(0.985,0.985); /* Safari and Chrome */
                -o-transform:scale(0.995,0.985); /* Opera */
            }
            .video{
                border: thin solid #7a7a7a;
                box-sizing: border-box;
                /*color:#333355;*/
                float:left;
                height:100%;   
                position: relative;
                overflow: hidden;
                text-decoration: none;
                width:100%;
            }
            .video:hover{

            }
            .video_img_border{
                background-color: #000;
                box-sizing: border-box;
                -moz-box-sizing:border-box;
                height:200px;
                width:100%;
            }
            .video img{
                display: block;
                height:200px;
                margin-left: auto;
                margin-right: auto;
                width:auto;
            }
            .video p{
                bottom:0;
                background-color: rgba(0,0,0,0.85);
                height: 50px;
                margin-bottom: 0;
                margin-top: 0;
                padding:5px;
                position: absolute;
                width:100%;
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
        </style>
        <script src="<?php print base_url('assets/js/jquery-1.9.0.min.js'); ?>"></script>
        <script>
            $(document).ready(function(){
               
                $('#upload-btn').click(function(){
                    $.ajax({
                        type:'GET',
                        url:'/addVideo/'+$('#upload-input').val(),
                        success:function(data){
                            
                        }
                    }); 
                });
            });
        </script>
    </head>
    <body>
        <div id="content">
            <form id="upload-form" class="clearfix">
                <input id="upload-input" type="text" />
                <button id="upload-btn" class="orange-button" type="submit" onsubmit="return false">Upload</button>
            </form>
            <div id="status-msg"></div>
            <?php foreach ($trendingVideos as $row): ?> 
                <div class="video_wrapper">
                    <a href="video/<?php print $row['video'] ?>" onclick="showVideoFrame(event,this);"  class="video">
                        <div class="video_img_border">
                            <img src="<?php print '../images/thumbnails/m/' . $row['thumbnail']; ?>" />
                        </div>
                        <p><?php print $row['title']; ?></p>
                    </a>
                </div>   
            <?php endforeach; ?>
        </div>
    </body>
</html>
