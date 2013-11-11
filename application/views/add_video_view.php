<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="<?php print base_url('/assets/css/bootstrap.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php print base_url('/assets/css/bootstrap-responsive.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php print base_url('/assets/css/addvideo.css'); ?>" />
    </head>
    <body>
        <div id="main" class="tableLayout">
            <form id="video-input-form" class="video-input-form">
                <div class="row-fluid test">
                    <div class="span3">
                        <h4>Youtube URL:</h4>
                    </div>
                    <div class="span6">
                        <input type="text" id="youtube-url" name="url" />
                    </div>
                    <div class="span3">
                        <button class="orange-button">Upload</button>
                    </div>
                </div>
            </form>
            <div class="hero-unit">
                <div id="metadata" class="row-fluid block">
                    <div class="offset1 span5 tableLayout">
                        <div class="ytmetadata">
                            <div class="thumbnail">
                                <img id ="thumbnail-preview" src="" />
                            </div>
                            <span>
                                <strong>Youtube URL:</strong>
                                <span id="url"></span>
                            </span>
                            <div>
                                <strong>Duration:</strong> <span id="duration"></span>
                            </div>
                        </div>
                    </div>
                    <div class="span6">
                        <div class="row-fluid">
                            <div class="span7">
                                <div id="msg" class="alert alert-block">
                                    Please fill in the following information :)
                                </div>
                            </div>
                        </div>
                        <div class="row-fluid">
                            <div class="span1">
                                <h4 id="title-label" title="You may change the video title if you like">Title:</h4>
                            </div>
                            <div class="span6">
                                <input type="text" id="title" />
                            </div>
                        </div>
                        <div class="row-fluid boxmargin">
                            <div class="span3 block">
                                <div class="module">
                                    <div class="text">
                                        <h4 title="Choose the #tags that best describe the video (maximum 3)">#Tags</h4>
                                        <h6>(Max 3)</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 block">
                                <select size="7" id="table-tags">
                                    <?php foreach ($tags as $tag): ?>
                                        <option class="tag" value="<?php print $tag['hashtag'] ?>">#<?php print $tag['hashtag'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div id="group-of-tags" class="span4">
                            </div>
                        </div>
                        <div class="row-fluid boxmargin">
                            <div class="span3 block">
                                <div class="module">
                                    <div class="text">
                                        <h4 title="Choose the category that best describes the video">Category</h4>
                                        <h6>(Max 1)</h6>
                                    </div>
                                </div>
                            </div>
                            <div class="span3 block">
                                <select size="7" id="table-category">
                                    <?php foreach ($categories as $category): ?>
                                        <option class="category" value="<?php print $category['category'] ?>">#<?php print $category['category'] ?></option>
                                    <?php endforeach; ?>
                                </select>
                            </div>
                            <div id="category-block" class="span4">
                            </div>
                        </div>
                        <button id="save-btn" class="btn btn-large btn-danger">Save</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
        <script type="text/javascript" src="<?php print base_url('/assets/js/bootstrap.js'); ?>"></script>
        <script type="text/javascript">
            window.www_base='<?php print base_url(); ?>';
            window.tags=new Array();
            window.tagError;
                    
            window.category;
            window.categoryError;
                    
                    
            $(document).ready(function(){
                   
                $('.text h4').tooltip();
                $('#title-label').tooltip();
               
                performYoutubeSearch();
                $('#save-btn').click(function(){
                    $.ajax({
                        type:'GET', 
                        url:www_base+'youtube/save?'+'v='+ window.vid+'&title='+encodeURIComponent($('#title').val())+'&category='+window.category+'&tag='+encodeURIComponent(window.tags.toString()),
                        success:function(jqXHR, textStatus){
                            $('#msg').removeClass('alert-block');
                            $('#msg').addClass('alert-success');
                            $('#msg').html('<h4>Yay</h4> you just added a video :)');
                        },
                        error:function(jqXHR, textStatus, errorThrown ){
                            $('#msg').removeClass('alert-block');
                            $('#msg').addClass('alert-error');
                            $('#msg').html('<h4>Error!</h4>Could not add the video :\'(');
                        }
                                
                    });
                });
                        
                $('.tag').click(function(){
                    if( window.tagError==true){
                        window.tagError=false;
                        $('#table-tags').popover('hide');
                    }
                });
                $('.tag').dblclick(function(){
                    if(window.tags.indexOf($(this).val())==-1){
                        if(window.tags.length<3){
                            window.tags.push($(this).val());
                            $('#group-of-tags').append('<div><span>#'+$(this).val()+'</span><button class="remove" onclick="removeTag(event,this)"></button></div>');
                        }else{
                            $('#table-tags').popover({content:'You can only have 3 tags :(',trigger:'manual',placement:'left'});
                            $('#table-tags').popover('show');
                            window.tagError=true;
                        }   
                    }else{
                        $('#table-tags').popover({content:'You already have that tag :(',trigger:'manual',placement:'left'});
                        $('#table-tags').popover('show');
                        window.tagError=true;
                    }
                });
                        
                $('.category').click(function(){
                    if( window.categoryError==true){
                        window.categoryError=false;
                        $('#table-category').popover('hide');
                    }
                });
                $('.category').dblclick(function(){
                    if(window.category==null){
                        window.category=$(this).val();
                        $('#category-block').append('<div><span>#'+$(this).val()+'</span><button class="remove" onclick="removeCategory(event,this)"></button></div>'); 
                    }else{
                        $('#table-category').popover({content:'You can have only one category tag :(',trigger:'manual',placement:'left'});
                        $('#table-category').popover('show');
                        window.categoryError=true;
                    }
                });
            });
            function removeTag(e, object){
                $(e.target).parent().remove();
                var value=$(e.target).val();
                window.tags.splice(window.tags.indexOf(value),1);
            }
            function removeCategory(e, object){
                $(e.target).parent().remove();
                window.category=null;
            }
                    
                    
                    
                    
            function performYoutubeSearch(){
                $('#video-input-form').submit(function(event){
                    event.preventDefault(); 
                    //console.log('youtube/getyoutubeMetadata?'+$('#youtube-url').serialize());
                    $.ajax({
                        type:'GET', 
                        url:www_base+'youtube/getyoutubeMetadata?'+$('#youtube-url').serialize(),
                        beforeSend:function(jqXHR,settings ){
                            console.log(www_base+'youtube/getyoutubeMetadata?'+$('#youtube-url').serialize());
                            $('#video-input-form').addClass('animate-form');

                        },
                        complete: function(jqXHR, textStatus){
                                    
                            if(textStatus=='success'){
                                $('.hero-unit').addClass('animate-hero-unit');      
                                var metadata=JSON.parse(jqXHR.responseText);
                                if(metadata.type=='success'){
                                    $('#title').val( metadata.title);
                                    var seconds=metadata.duration%60;
                                    var minutes=(metadata.duration-seconds)/60;
                                    $('#duration').html(minutes+':'+seconds);
                                    $('#url').html( 'http://www.youtube.com/watch?v'+metadata.vid);
                                    $('#thumbnail-preview').attr('src','http://i.ytimg.com/vi/' + metadata.vid + '/mqdefault.jpg');
                                    window.vid=metadata.vid;
                                }else if(metadata.type=='error'){
                                    $('#msg').removeClass('alert-block');
                                    $('#msg').addClass('alert-error');
                                    $('#msg').html('<h4>Error!</h4> Oh no! We are sorry something went wrong =\'[, perhaps the video is in the database already');
                                }else if(metadata.type=='Invalid URL'){
                                    $('#msg').removeClass('alert-block');
                                    $('#msg').addClass('alert-error');
                                    $('#msg').html('<h4>Error!</h4> Please Specify a valid URL </3');
                                }else if(metadata.type=='Please specify a URL'){
                                    $('#msg').removeClass('alert-block');
                                    $('#msg').addClass('alert-error');
                                    $('#msg').html('<h4>Error!</h4> Awwwwwwwww no URL was entered </3');

                                }                               
                            }
                                    
                        },
                        error:function(jqXHR, textStatus, errorThrown ){
                            $('#msg').removeClass('alert-block');
                            $('#msg').addClass('alert-error');
                            $('#msg').html('<h4>Error!</h4> OH no We are sorry went something wrong =\'[');
                                    
                        }
                    });
                });
                
            }
        </script>
    </body>
</html>
