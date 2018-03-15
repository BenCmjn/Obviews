window.onload = function() {
    switch_frame();
};

// function switch_frame() {
//     document.getElementById("defaultFront").click();
// }


function switch_frame() {
    var elem = document.getElementById("defaultFront");
    var pos = 1;
    // var id = setInterval(frame, 5);
    function frame() {
        if (pos == 1) {
            // clearInterval(id);
        } else {
            pos -= 1;
            // elem.style.top = pos + 'px';
            // elem.style.left = pos + 'px';

            elem.style.margin= 8'px' 0 0 8'px';
            elem.style.z-index= 0;
        }
    }
}