$(document).ready(function(){
    $('.tooltip').mouseover(function(){
        $('#tool_tip_container').html($(this).attr('data-tooltip-text'));
        $('#tool_tip_container').css({'display':'block'}).animate({'opacity':1},200);
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
         $('#tool_tip_container').animate({'opacity':0},200,function(){
             $('#tool_tip_container').css({'display':'none'}).html('');
         });
    });
});

