$(document).ready(function() {
    $(".candidate_1").click(function(){
        console.log("Click")
        $(".picture").css("z-index", "0");

    });
});


// $('.childDiv').click(function() {
//   $(this).parent().find('.childDiv').css('background-color', '#ffffff');
//   $(this).css('background-color', '#ff0000');
// });