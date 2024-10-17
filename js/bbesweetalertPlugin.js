var bbe_plugin = {
    initialize:function(){
    "use strict";
    
    var da=this;
    apex.debug.log('bbe_plugin.initialize',da);

    var message       = da.action.attribute01;
    var title         = da.action.attribute02;
    var icon          = da.action.attribute03;
    var iconColor     = da.action.attribute04;
    var iconHtml      = da.action.attribute05;
    var animation     = da.action.attribute06 === 'true';
    var showConfirmButton       = da.action.attribute08 === 'Y';
    var confirmButtonText       = da.action.attribute09;
    var confirmButtonColor      = da.action.attribute10;  
    var timer                   = da.action.attribute11 ;
    var timerProgressBar        = da.action.attribute12 === 'Y';
    var toast                   = da.action.attribute13 === 'Y';
    var position                = da.action.attribute14;  
    var background              = da.action.attribute15;  

    function bbeSweetAlert (p_title,p_message,p_icon,p_iconColor,p_iconHtml,p_animation,
                            p_showConfirmButton,p_confirmButtonText,p_confirmButtonColor,
                            p_timer,p_timerProgressBar,p_toast,p_position,p_background){
        Swal.fire({
                    title    :  p_title,
                    text     :  p_message,
                    icon     :  p_icon,
                    iconColor:  p_iconColor,
                    iconHtml :  p_iconHtml,
                    animation:  p_animation,
                    showConfirmButton  : p_showConfirmButton,
                    confirmButtonText  : p_confirmButtonText,
                    confirmButtonColor : p_confirmButtonColor,
                    timer              : p_timer,
                    timerProgressBar   : p_timerProgressBar,
                    toast              : p_toast,
                    position           : p_position,
                    background         : p_background,
                    });
    }

    bbeSweetAlert(title,message,icon,iconColor,iconHtml,animation,showConfirmButton,confirmButtonText,confirmButtonColor,timer,timerProgressBar,toast,position,background);
    }
}