$(document).ready(function() {
    $(".candidate_1 #click-frame-pix").click(function(e) {
        if (e.target.id == "click-frame-pix") {
            console.log("FRAME clicked !");

            $(this).removeClass('ahead');
            $(this).addClass('behind');

            $(".candidate_1 .bio").removeClass('behind');
            $(".candidate_1 .bio").addClass('ahead');
        }
    });
    $(".candidate_1 #click-frame-bio").click(function(e) {
        if (e.target.id == "click-frame-bio") {
            console.log("FRAME clicked !");

            $(this).removeClass('ahead');
            $(this).addClass('behind');

            $(".candidate_1 .picture").removeClass('behind');
            $(".candidate_1 .picture").addClass('ahead');
        }
    });
    $(".candidate_1 .lock").click(function() {
        if($(".candidate_1 .lock").hasClass('active')){
            $(".candidate_1 .lock").removeClass('active')
            console.log("Candidate 1 is now UNLOCKED !");
        } else {
            $(".candidate_1 .lock").addClass('active')
            console.log("Candidate 1 is now LOCKED !");
        }
    });
    $(".candidate_1 .fav").click(function() {
        if($(".candidate_1 .fav").hasClass('active')){
            $(".candidate_1 .fav").removeClass('active')
            console.log("Candidate 1 is now FAVED !");
        } else {
            $(".candidate_1 .fav").addClass('active')
            console.log("Candidate 1 is now FAVED !");
        }
    });
//------------------------------------------------------
    $(".candidate_2 #click-frame-pix").click(function(f) {
        if (f.target.id == "click-frame-pix") {
            console.log("FRAME clicked !");

            $(this).removeClass('ahead');
            $(this).addClass('behind');

            $(".candidate_2 .bio").removeClass('behind');
            $(".candidate_2 .bio").addClass('ahead');
        }
    });
    $(".candidate_2 #click-frame-bio").click(function(f) {
        if (f.target.id == "click-frame-bio") {
            console.log("FRAME clicked !");

            $(this).removeClass('ahead');
            $(this).addClass('behind');

            $(".candidate_2 .picture").removeClass('behind');
            $(".candidate_2 .picture").addClass('ahead');
        }
    });
    $(".candidate_2 .lock").click(function() {
        if($(".candidate_2 .lock").hasClass('active')){
            $(".candidate_2 .lock").removeClass('active')
            console.log("Candidate 2 is now UNLOCKED !");
        } else {
            $(".candidate_2 .lock").addClass('active')
            console.log("Candidate 2 is now LOCKED !");
        }
    });
    $(".candidate_2 .fav").click(function() {
        if($(".candidate_2 .fav").hasClass('active')){
            $(".candidate_2 .fav").removeClass('active')
            console.log("Candidate 2 is now FAVED !");
        } else {
            $(".candidate_2 .fav").addClass('active')
            console.log("Candidate 2 is now FAVED !");
        }
    });


});