
$(function () {
    function display(bool) {
        if (bool) {
            $("#menu").show();
        } else {
            $("#menu").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                display(true)
            } else {
                display(false)
            }
        }
    })
    document.querySelectorAll('a').forEach(element => {
        element.addEventListener('click', e => {
          e.preventDefault()
        
        window.invokeNative('openUrl', e.target.href)
      })
    })
    document.querySelectorAll('a').forEach(element => {
        element.addEventListener('click', e => {
          e.preventDefault()
        
        window.invokeNative('openUrl', e.target.href)
      })
    })

    $("#resume").click(function () {
        $.post('https://hs_pause/resume', JSON.stringify({}));
        return
    })
    $("#map").click(function () {
        $.post('https://hs_pause/map', JSON.stringify({}));
        return
    })
    $("#settings").click(function () {
        $.post('https://hs_pause/settings', JSON.stringify({}));
        return
    })
    $("#quit").click(function () {
        $.post('https://hs_pause/quit', JSON.stringify({}));
        return
    })

})