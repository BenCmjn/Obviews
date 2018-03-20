$(document).ready(function() {
    $(".candidate_1 #click-frame-pix").click(function(e) {
        if (e.target.id == "click-frame-pix") {
            console.log("PIX 1 clicked !");

            $(".candidate_1 .picture").removeClass('ahead');
            $(".candidate_1 .picture").addClass('behind');

            $(".candidate_1 .bio").removeClass('behind');
            $(".candidate_1 .bio").addClass('ahead');
        }
    });
    $(".candidate_1 #click-frame-bio").click(function(e) {
        if (e.target.id == "click-frame-bio") {
            console.log("BIO 1 clicked !");

            $(".candidate_1 .bio").removeClass('ahead');
            $(".candidate_1 .bio").addClass('behind');

            $(".candidate_1 .picture").removeClass('behind');
            $(".candidate_1 .picture").addClass('ahead');
        }
    });
///////////////// SWITCH DES LOCKS ////////////////////////////////////////////////////////
    $(".candidate_1 .lock").click(function() {
        if ($(".candidate_1 .lock").hasClass('inactive')
        && $(".candidate_2 .lock").hasClass('inactive')) {

            $(".candidate_1 .lock").removeClass('inactive');
            $(".candidate_1 .lock").addClass('active');     
            console.log("Lock_1 is now ACTIVE !");
        }
        else if ($(".candidate_1 .lock").hasClass('active')
        && $(".candidate_2 .lock").hasClass('inactive')) {

            $(".candidate_1 .lock").removeClass('active');
            $(".candidate_1 .lock").addClass('inactive'); 
            console.log("Lock_1 is now INactive !");
            // $(".candidate_2 .lock").removeClass('inactive'); 
            // $(".candidate_2 .lock").addClass('active');
            // console.log("Lock_2 is now INactive !"); 
            if ($(".candidate_2 .lock").hasClass('active')) {
            $(".candidate_2 .lock").removeClass('active');
            $(".candidate_2 .lock").addClass('inactive');
            console.log("Lock_2 is now INactive !");
            } 
        }
        // else if ($(".candidate_1 .lock").hasClass('inactive')
        // && $(".candidate_2 .lock").hasClass('active')) {

        //     $(".candidate_2 .lock").removeClass('active');
        //     $(".candidate_2 .lock").addClass('inactive');
        //     console.log("Lock_2 is now INactive !");
        //     // $(".candidate_1 .lock").removeClass('inactive');
        //     // $(".candidate_1 .lock").addClass('active');  
        // }
    });

    ////////////////////////////////////////////////////////////////////////////////
    // RENDRE CANDIDATE_1 FAVED
    $(".candidate_1 .fav").click(function() {
        if ($(".candidate_1 .fav").hasClass('active')) {
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
            console.log("PIX 2 clicked !");

            $(".candidate_2 .picture").removeClass('ahead');
            $(".candidate_2 .picture").addClass('behind');

            $(".candidate_2 .bio").removeClass('behind');
            $(".candidate_2 .bio").addClass('ahead');
        }
    });
    $(".candidate_2 #click-frame-bio").click(function(f) {
        if (f.target.id == "click-frame-bio") {
            console.log("BIO 2 clicked !");

            $(".candidate_2 .bio").removeClass('ahead');
            $(".candidate_2 .bio").addClass('behind');

            $(".candidate_2 .picture").removeClass('behind');
            $(".candidate_2 .picture").addClass('ahead');
        }
    });

    // $(".candidate_2 .lock").click(function() {
    //     if ($(".candidate_2 .lock").hasClass('active')) {
    //         $(".candidate_2 .lock").removeClass('active')
    //         console.log("Candidate 2 is now UNLOCKED !");
    //     } else {
    //         $(".candidate_2 .lock").addClass('active')
    //         console.log("Candidate 2 is now LOCKED !");
    //     }
    // });

    $(".candidate_2 .fav").click(function() {
        if ($(".candidate_2 .fav").hasClass('active')) {
            $(".candidate_2 .fav").removeClass('active')
            console.log("Candidate 2 is now FAVED !");
        } else {
            $(".candidate_2 .fav").addClass('active')
            console.log("Candidate 2 is now FAVED !");
        }
    });
});