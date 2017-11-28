function playing(slider, player) {
    slider.value = player.progress
    player.play()
}

function stop(slider, player) {
    slider.value = 0
    player.stop()
}

function paused(slider, player) {
    slider.value = player.bufferProgress
    player.pause()
}

function msToTime(duration) {
    var seconds = parseInt((duration / 1000) % 60)
    var minutes = parseInt((duration / (1000 * 60)) % 60)

    minutes = minutes < 10 ? "0" + minutes : minutes
    seconds = seconds < 10 ? "0" + seconds : seconds

    return minutes + ":" + seconds
}

/*function seeking(slider, player) {
    slider.value = mouse.x

}*/
