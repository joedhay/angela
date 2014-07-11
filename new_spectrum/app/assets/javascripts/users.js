
function close_error_alert(){
    setInterval(function(){
       $('#users_error').hide();
    },3000);
}

function whenJQueryIsReadyInitUsersView(){
        if(typeof $ === 'undefined'){
            setTimeout("whenJQueryIsReadyInitUsersView()", 250);
        } else {
            close_error_alert();
        }
}

whenJQueryIsReadyInitUsersView();
