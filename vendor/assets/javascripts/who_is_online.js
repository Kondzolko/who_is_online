App.who_is_online.speak(true);

$(window).on("blur focus", function(e) {
    let prevType = $(this).data("prevType");
    if (prevType != e.type) {
        switch (e.type) {
            case "blur":
                App.who_is_online.speak(false);
                break;
            case "focus":
                App.who_is_online.speak(true);
                break;
        }
    }
});