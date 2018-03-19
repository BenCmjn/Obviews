$(document).ready(function() {
    $(".candidate_1 .picture").click(function(){
        console.log("Click sur picture 1 !");

        $(this).removeClass('ahead');
        $(this).addClass('behind');

        $(".candidate_1 .bio").removeClass('behind');
        $(".candidate_1 .bio").addClass('ahead');
    });
    $(".candidate_1 .bio").click(function(){
        console.log("Click sur bio 1!");

        $(this).removeClass('ahead');
        $(this).addClass('behind');

        $(".candidate_1 .picture").removeClass('behind');
        $(".candidate_1 .picture").addClass('ahead');
    });

    $(".candidate_2 .picture").click(function(){
        console.log("Click sur picture 2 !");

        $(this).removeClass('ahead');
        $(this).addClass('behind');

        $(".candidate_2 .bio").removeClass('behind');
        $(".candidate_2 .bio").addClass('ahead');
    });
    $(".candidate_2 .bio").click(function(){
        console.log("Click sur bio 2 !");

        $(this).removeClass('ahead');
        $(this).addClass('behind');

        $(".candidate_2 .picture").removeClass('behind');
        $(".candidate_2 .picture").addClass('ahead');
    });

    $(".candidate_1 .picture .lock").click(function(){
        console.log("Click sur lock !");

    });
});
