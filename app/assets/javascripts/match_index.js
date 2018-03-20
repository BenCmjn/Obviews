/* On attend que la page soit prête */
$( document ).ready(function() {

	/* On surveille les cliques sur les liens du menu */
	$('.tab-nav .btn-matchmaker').click(function(e){
    $('.btn-selected').removeClass('tab-nav-active')
    $('#as-selected').removeClass('tab-active');
    $('.btn-matchmaker').addClass('tab-nav-active')
    $('#as-matchmaker').addClass('tab-active');

		// /* On désactive l'action par défaut des liens */
		// e.preventDefault();
    //
		// /* On récupère la valeur de l'onglet à activer */
		// /*var tab = jQuery(this).data('tabcontent');
    //
		// /* On masque tous les contenus */
		// /*jQuery('.tabcontent').removeClass('tab-active');
    //
		// /* On affiche le contenu qui doit l'être */
		// /*jQuery('.tabcontent').addClass('tab-active');
    //
		// /* On désactive tous les onglets */
		// /*jQuery('.tab-nav .tablinks').removeClass('tab-nav-active');
    //
		// /* On active l'onglet qui a été cliqué */
		// /*jQuery(this).addClass('tab-nav-active');*/
    // /*
  });

  $('.tab-nav .btn-selected').click(function(e){
    $('.btn-matchmaker').removeClass('tab-nav-active')
    $('#as-matchmaker').removeClass('tab-active');
    $('.btn-selected').addClass('tab-nav-active')
    $('#as-selected').addClass('tab-active');
  })
});


// $(document).ready(function() {
//
//             $(".candidate_1 .picture").removeClass('ahead');
//             $(".candidate_1 .picture").addClass('behind');
//
//             $(".candidate_1 .bio").removeClass('behind');
//             $(".candidate_1 .bio").addClass('ahead');
//         }
//     });
//     $(".candidate_1 #click-frame-bio").click(function(e) {
//         if (e.target.id == "click-frame-bio") {
//             console.log("BIO 1 clicked !");
//
//             $(".candidate_1 .bio").removeClass('ahead');
//             $(".candidate_1 .bio").addClass('behind');
//
//             $(".candidate_1 .picture").removeClass('behind');
//             $(".candidate_1 .picture").addClass('ahead');
//         }
//     });
//
//     $(".candidate_1 .lock").click(function() {
//         if($(".candidate_1 .lock").hasClass('active')){
//             $(".candidate_1 .lock").removeClass('active')
//             console.log("Candidate 1 is now UNLOCKED !");
//         } else {
//             $(".candidate_1 .lock").addClass('active')
//             console.log("Candidate 1 is now LOCKED !");
//         }
//     });
//
// //------------------------------------------------------
//     $(".candidate_2 #click-frame-pix").click(function(f) {
//         if (f.target.id == "click-frame-pix") {
//             console.log("PIX 2 clicked !");
//
//             $(".candidate_2 .picture").removeClass('ahead');
//             $(".candidate_2 .picture").addClass('behind');
//
//             $(".candidate_2 .bio").removeClass('behind');
//             $(".candidate_2 .bio").addClass('ahead');
//         }
//     });
//     $(".candidate_2 #click-frame-bio").click(function(f) {
//         if (f.target.id == "click-frame-bio") {
//             console.log("BIO 2 clicked !");
//
//             $(".candidate_2 .bio").removeClass('ahead');
//             $(".candidate_2 .bio").addClass('behind');
//
//             $(".candidate_2 .picture").removeClass('behind');
//             $(".candidate_2 .picture").addClass('ahead');
//         }
//     });
//
//     $(".candidate_2 .lock").click(function() {
//         if($(".candidate_2 .lock").hasClass('active')){
//             $(".candidate_2 .lock").removeClass('active')
//             console.log("Candidate 2 is now UNLOCKED !");
//         } else {
//             $(".candidate_2 .lock").addClass('active')
//             console.log("Candidate 2 is now LOCKED !");
//         }
//     });
//     $(".candidate_2 .fav").click(function() {
//         if($(".candidate_2 .fav").hasClass('active')){
//             $(".candidate_2 .fav").removeClass('active')
//             console.log("Candidate 2 is now FAVED !");
//         } else {
//             $(".candidate_2 .fav").addClass('active')
//             console.log("Candidate 2 is now FAVED !");
//         }
//     });
//
//
// });



// window.onload = function () {
//                 startTab();
//             };
//
//             function startTab() {
//                 document.getElementById("defaultOpen").click();
//             }
// function openTab(evt, actionName) {
//     // Declare all variables
//     var i, tabcontent, tablinks;
//
//     // Get all elements with class="tabcontent" and hide them
//     tabcontent = document.getElementsByClassName("tabcontent");
//     for (i = 0; i < tabcontent.length; i++) {
//         tabcontent[i].style.display = "none";
//     }
//
//     // Get all elements with class="tablinks" and remove the class "active"
//     tablinks = document.getElementsByClassName("tablinks");
//     for (i = 0; i < tablinks.length; i++) {
//         tablinks[i].className = tablinks[i].className.replace(" active", "");
//     }
//
//     // Show the current tab, and add an "active" class to the button that opened the tab
//     document.getElementById(actionName).style.display = "block";
//     evt.currentTarget.className += " active";
// }
