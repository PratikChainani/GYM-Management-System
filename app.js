$(document).ready(function(){ 
    $("#login").click(function(){
        window.location.href="../fitness-club-1.0";
    });

    $("#joinnow").click(function(){
        var msg = "To Join Now, please fill the appointment booking form!"
        alert(msg);
    });
    $("#bookapn").click(function(){
        alert("Your appointment is booked successfully");
    });
    $(".crop-img").click(function(){
        $("#bigImage").attr('src', $(this).attr('src'))
    });


    function myFunction() {
  var x = document.getElementById("myDate").min;
}

    

    jQuery("#forms").validate({
        rules: {
         uname: {
             required: true,
             maxlength: 255,
         },

        email:{
            required: true,
        },

         phone:{
            required: true,
            minlength:10,
            maxlength: 10,
        },

        msg:{
            required: true,
            minlength:10,
            maxlength: 200,
        },

        date:{
            required: true,
        },

        time:{
            required: true,
        },


        },

         messages:{
            uname:'This Name field is required',
            email:'Please enter a valid email_id ',
            phone: 'Please Enter a valid phone number',
            msg: 'Please Enter a valid MESSAGE',
            date: 'Please Enter valid Date as per requirement',
            time: 'Please Enter a valid Time',
         },

         submitHandler:function(form) {
            form.submit();
        }
  });

});
