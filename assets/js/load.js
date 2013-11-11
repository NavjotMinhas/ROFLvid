/*
 * ############################################################################
 * ###########################Loads FB javascript API##########################
 * ############################################################################
 */
//Boot Strap all the main functions required for all webpages
window.fbAsyncInit = function() {
    // init the FB JS SDK
    FB.init({
        appId      : '549019755112038', // App ID from the App Dashboard
        channelUrl : 'http://www.roflvid.com', // Channel File for x-domain communication
        status     : true, // check the login status upon init?
        cookie     : true, // set sessions cookies to allow your server to access the session?
        xfbml      : true  // parse XFBML tags on this page?
    });

// Additional initialization code such as adding Event Listeners goes here

};

// Load the SDK's source Asynchronously
// Note that the debug version is being actively developed and might 
// contain some type checks that are overly strict. 
// Please report such bugs using the bugs tool.
(function(d, debug){
    var js, id = 'facebook-jssdk', ref = d.getElementsByTagName('script')[0];
    if (d.getElementById(id)) {
        return;
    }
    js = d.createElement('script');
    js.id = id;
    js.async = true;
    js.src = "//connect.facebook.net/en_US/all" + (debug ? "/debug" : "") + ".js";
    ref.parentNode.insertBefore(js, ref);
}(document, /*debug*/ false));
   
/*
 * ############################################################################
 * #################################Tooltip####################################
 * ############################################################################
 */
$(document).ready(function(){
    $('.tooltip').mouseover(function(){
        $('#tool_tip_container').html($(this).attr('data-tooltip-text'));
        $('#tool_tip_container').css({
            'display':'block'
        }).animate({
            'opacity':1
        },200);
    }).mousemove(function(e){
        var pageWidth=$('body').outerWidth();
        var offset=10;
        if(e.pageX>pageWidth/2){
            $('#tool_tip_container').css('left',(e.pageX+offset-$('#tool_tip_container').outerWidth())+'px');
        }else{
            $('#tool_tip_container').css('left',(e.pageX-offset)+'px');
        }
        if(e.pageY>120){
            $('#tool_tip_container').css('top',e.pageY-offset-$('#tool_tip_container').outerHeight());
        }else{
            $('#tool_tip_container').css('top',e.pageY+offset); 
        }
    }).mouseout(function(){
        $('#tool_tip_container').animate({
            'opacity':0
        },200,function(){
            $('#tool_tip_container').css({
                'display':'none'
            }).html('');
        });
    });
});

$(document).ready(function(){
    window.offsetVid=4;
    dragAndDrop();
    bootstrapLoginBox();
    bootstrapRegister();
    addVideoBox();
    viewVideoHandler();
    $('.video,.play-video').click(function(event){
        event.preventDefault();
        $.colorbox({
            href:www_base+$(this).attr('href'),
            scrolling:false,
            fixed:true,
            width:'1190px',
            height:'500px',
            iframe:true
        });
       
    });
});

/*
 * ############################################################################
 * #################################Drag and Drop##############################
 * ############################################################################
 */

function isDragAndDropSupported(){
    if (navigator.appName == 'Microsoft Internet Explorer'){
        var ua = navigator.userAgent;
        var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");
        if (re.exec(ua) != null)
            var rv = parseFloat( RegExp.$1 );
        if(rv>='6.0'){
            return true; 
        }
        return false;
    }

    if('draggable' in document.createElement('span')){
        return true;
    }
    return false;
}
function dragAndDrop(){
    if(isDragAndDropSupported()){
        $('.facebook-draggable').on('dragstart',function(event){
            if( $('#facebook-dropzone').is(':hidden')){
                $('#facebook-dropzone').fadeIn(250);
            }
            event.originalEvent.dataTransfer.setData('vid',$(this).attr('data-id'));
        }).on('dragend',function(){
            if( !$('#facebook-dropzone').is(':hidden')){
                $('#facebook-dropzone').fadeOut(250);
            }
        });
        $('#facebook-dropzone').on('dragover',function(event){
            if(event.preventDefault){
                event.preventDefault();
            }
            return false;
        }).on('drop',function(event){
            var vid= event.originalEvent.dataTransfer.getData('vid');
            $.get('share/'+vID, function(data, textStatus){
                if(textStatus=='success'){
                //FeedPack Message
                }
            });
        });
        
        
        $('.tw-draggable').on('dragstart',function(event){
            if( $('#tw-dropzone').is(':hidden')){
                $('#tw-dropzone').fadeIn(250);
            }
            event.originalEvent.dataTransfer.setData('vid',$(this).attr('data-id'));
        }).on('dragend',function(){
            if( !$('#tw-dropzone').is(':hidden')){
                $('#tw-dropzone').fadeOut(250);
            }
        });
        $('#tw-dropzone').on('dragover',function(event){
            if(event.preventDefault){
                event.preventDefault();
            }
            return false;
        }).on('drop',function(event){
            var vid= event.originalEvent.dataTransfer.getData('vid');
            $.get('share/'+vid, function(data, textStatus){
                if(textStatus=='success'){
                //FeedPack Message
                }
            });
        });
        
        
    }
}

var counter=0;
function handler(){
    $('.middle-bottom').html(counter++);
}

/*
 * ############################################################################
 * ##########################Mouse Events for Trend block######################
 * ############################################################################
 */
$(document).ready(function(){
    $('.scale').mousedown(function(){
        $(this).animate({
            'padding':'5px'
        },150);
    }).mouseleave(function(){
        $(this).animate({
            'padding':'0px'
        },150);
    }).mouseup(function(){
        $(this).animate({
            'padding':'0px'
        },150);
    });
});

/*
 * ############################################################################
 * ####################Fancybox handler for uploading videos###################
 * ############################################################################
 */
 
// You must load this in the body because the #video-input-form does not exsist on load,
// it is created when the upload button is pressed, hence it is not binded with the action
// therefore we need to call this function within addvideo.php in order to bind the event handler
function performYoutubeSearch(){
    $('#video-input-form').submit(function(event){
        event.preventDefault(); 
        //console.log('youtube/getyoutubeMetadata?'+$('#youtube-url').serialize());
        $.ajax({
            type:'GET', 
            url:www_base+'youtube/getyoutubeMetadata?'+$('#youtube-url').serialize(),
            beforeSend:function(jqXHR,settings ){
                console.log(www_base+'youtube/getyoutubeMetadata?'+$('#youtube-url').serialize());
                if(!$('#status-msg').is(':hidden')){
                    $('#status-msg').html('');
                    $('#status-msg').removeAttr('class');
                }
                if($('#loading-icon-block').is(':hidden')){
                    $('#loading-icon-block').fadeIn(250);
                }
                if(!$('#metadata-block').is(':hidden')){
                    $('#metadata-block').fadeOut(250);
                }
                if(!$('#thumbnail-preview-block').is(':hidden')){
                    $('#thumbnail-preview-block').fadeOut(250);
                }

            },
            complete: function(jqXHR, textStatus){
                            
                if(textStatus=='success'){
                                            
                    var metadata=JSON.parse(jqXHR.responseText);
                    if(metadata.type=='success'){
                        $('#metadata-title').html( metadata.title);
                        var seconds=metadata.duration%60;
                        var minutes=(metadata.duration-seconds)/60;
                        $('#metadata-duration').html(minutes+':'+seconds);
                        $('#metadata-url').html( metadata.url);
                        $('#thumbnail-preview').attr('src',www_base+'images/thumbnails/'+metadata.thumbnail);
                        if($('#metadata-block').is(':hidden')){
                            $('#metadata-block').fadeIn(250);
                        }
                        if($('#thumbnail-preview-block').is(':hidden')){
                            $('#thumbnail-preview-block').fadeIn(250);
                        }
                        $('#status-msg').html("Successfully added "+metadata.url);
                        $('#status-msg').addClass('success-msg');
                        if(!$('#loading-icon-block').is(':hidden')){
                            $('#loading-icon-block').fadeOut(250);
                        } 
                    }else if(metadata.type=='error'){
                        $('#status-msg').html("Error: Oh no! We are sorry something went wrong ='[, perhaps the video is in the database already");
                        $('#status-msg').addClass('error-msg');
                        if(!$('#loading-icon-block').is(':hidden')){
                            $('#loading-icon-block').fadeOut(250);
                        }
                    }else if(metadata.type=='Invalid URL'){
                        $('#status-msg').html("Error: Please Specify a valid URL </3");
                        $('#status-msg').addClass('error-msg');
                        if(!$('#loading-icon-block').is(':hidden')){
                            $('#loading-icon-block').fadeOut(250);
                        } 
                    }else if(metadata.type=='Please specify a URL'){
                        $('#status-msg').html("Error: Awwwwwwwww no URL was entered </3");
                        $('#status-msg').addClass('error-msg');
                        if(!$('#loading-icon-block').is(':hidden')){
                            $('#loading-icon-block').fadeOut(250);
                        } 
                    }                               
                }
                if(!$('#loading-icon-block').is(':hidden')){
                    $('#loading-icon-block').fadeOut(250);
                }
                            
            },
            error:function(jqXHR, textStatus, errorThrown ){
                //console.log(textStatus, errorThrown);
                //console.log(textStatus, jqXHR.responseText);
                $('#status-msg').html("Error: OH no We are sorry went something wrong ='[");
                $('#status-msg').addClass('error-msg');
                if(!$('#loading-icon-block').is(':hidden')){
                    $('#loading-icon-block').fadeOut(250);
                }
                            
            }
        });
    });
        
}
/*
 * ############################################################################
 * ##############################Login Box fancybox handler#####################
 * ############################################################################
 */
function bootstrapLoginBox(){
    $('#login-button').click(function(){
        openLoginBox();
    });
}
/*
 * ############################################################################
 * #################################UpVote handler#############################
 * ############################################################################
 */
function upvoteHandler(e, object){
    e.preventDefault();
    var vid= object.getAttribute('data-v');
    var btn=$(object);
    $.ajax({
        url:www_base+'vote/up/'+vid,
        type:'GET',
        complete:function(jqXHR,textStatus){
            if(textStatus=='success'){
                var response=JSON.parse(jqXHR.responseText);
                if(response.type=='success'){
                    btn.animate({
                        'opacity':0.5
                    },250);
                }else if(response.type=='already voted'){
                    setFeedBackMsg('You already voted for this video my friend =p');
                }else if(response.type=='not registered'){
                    openLoginBox();
                }
            }
        }
                    
    });
}
/*
 * ############################################################################
 * ###############################DownVote handler#############################
 * ############################################################################
 */
function downvoteHandler(e, object){
    e.preventDefault();
    var vid= object.getAttribute('data-v');
    var btn=$(object);
    $.ajax({
        url:www_base+'vote/down/'+vid,
        type:'GET',
        complete:function(jqXHR,textStatus){
            if(textStatus=='success'){
                var response=JSON.parse(jqXHR.responseText);
                if(response.type=='success'){
                    btn.animate({
                        'opacity':0.5
                    },250);
                }else if(response.type=='already voted'){
                    setFeedBackMsg('You have already voted but thanks for telling us the truth <3');
                }else if(response.type=='not registered'){
                    openLoginBox();
                }
            }
        }
                    
    });
}
/*
 * ############################################################################
 * ##############################Register Box fancybox handler##################
 * ############################################################################
 */
function bootstrapRegister(){
    $('#register-button').click(function(){
        });
}
/*
 * ############################################################################
 * ###########################Dialog Message handler###########################
 * ############################################################################
 */
function dialogMessage(msg){
    $.fancybox(msg,{
        modal:false
    });
}
/*
 * ############################################################################
 * ################################Open Login Box##############################
 * ############################################################################
 */
function openLoginBox(){
    $.colorbox({
        href:www_base+'login',
        scrolling:false,
        fixed:true
    });
}
/*
 * ############################################################################
 * ##########################Add video box handler##############################
 * ############################################################################
 */
function addVideoBox(){
    $('#add-video').click(function(){
        $.colorbox({
            href:www_base+'youtube/addvideo',
            scrolling:false,
            fixed:true,
            width:'90%',
            height:'768px',
            iframe:true
        });

    });
}
/*
 * ############################################################################
 * #########################Video Popup handler################################
 * ############################################################################
 */
function viewVideoHandler(){
    $('.view_btn_position').click(function(event){
        event.preventDefault();
        var id= $(this).attr('data-id');
        console.log(www_base+'frame_view_video/'+id);
        $.colorbox({
            href:www_base+'frame_view_video/'+id,
            scrolling:false,
            fixed:true,
            width:'1190px',
            height:'500px',
            iframe:true
        });
    });
}
/*
 * ############################################################################
 * ##############################Side Navigation################################
 * ############################################################################
 */
/*$(document).ready(function(){
    var speed=200;
    $('#activation-left-slide').click(function(){
        if($('#pageslide').is(':hidden')){
            $('#pageslide').css('display','block');
            $('body').animate({
                'marginLeft':'200px'
            },speed);
            $('#header').animate({
                'left':'200px'
            },speed);
            $('#pageslide').animate({
                'left':'0'
            },speed);
        }else{
            $('body').animate({
                'marginLeft':'0'
            },speed);
            $('#header').animate({
                'left':'0'
            },speed);
            $('#pageslide').animate({
                'left':'-200px'
            },speed, function(){
                $('#pageslide').css('display','hidden');
            });           
        }
    });
});*/
/*
 * ############################################################################
 * ##############################Back to top button############################
 * ############################################################################
 */
$(document).ready(function(){
    $(document).scroll(function(){
        height=$(window).height();
        if($(this).scrollTop()>height){
            if($('#back_to_top_btn').is(':hidden')){
                $('#back_to_top_btn').fadeIn(250);
            }
        }else{
            if(!$('#back_to_top_btn').is(':hidden')){
                $('#back_to_top_btn').fadeOut(250);
            }
        }
    });
    $('#back_to_top_btn').click(function(){
        $('body, html').animate({
            'scrollTop':'0px'
        },'slow'); 
    });
});
/*
 * ############################################################################
 * ##############################Feedback MSG###################################
 * ############################################################################
 */
function setFeedBackMsg(statusMsg){
    $('#feedback-msg p').html(statusMsg);
    if($('#feedback-msg').is(':hidden')){
        $('#feedback-msg').fadeIn(500,function(){
            window.timerID= window.setTimeout(function(){
                $('#feedback-msg').fadeOut(500);
            }, 5000);
        });
    }else{
        window.clearTimeout(window.timerID);
        window.timerID= window.setTimeout(function(){
            $('#feedback-msg').fadeOut(500);
        }, 5000);
    }
}
/*
 * ############################################################################
 * ##############################Infite Scroll#################################
 * ############################################################################
 */
$(window).scroll(function(){
    if($(window).scrollTop() == $(document).height() - $(window).height()){
        $('#load-content').fadeIn(500);
        $.ajax({
            url:www_base+'loader?o='+(window.offsetVid+1),
            type:'GET',
            success:function(data){
                if(data){
                    $('#content').append(data);
                    $('#load-content').fadeOut(500);
                    window.offsetVid++;
                }else{
                    $('#load-content').fadeOut(500);
                }
            }
        });
    }
});