function show_registration(){
    $('#user_reg').click(function(){
       $('#show_reg').show();
    });
}


function whenJQueryIsReadyInitUsersView(){
    $(document).ready(function(){
        if(typeof $ === 'undefined'){
            setTimeout("whenJQueryIsReadyInitUsersView()", 250);
        } else {
            show_registration();
        }
    });

}

whenJQueryIsReadyInitUsersView();
