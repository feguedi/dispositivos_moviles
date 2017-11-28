import QtQuick 2.0
import QtQuick.Controls 2.2
import QtMultimedia 5.9

Slider {
    id: slider
    property MediaPlayer player
    // anchors.verticalCenterOffset: 3
    from: 0
    to: player.duration
    value: player.bufferProgress
    snapMode: Slider.SnapAlways


/*  MouseArea {
        anchors.fill: parent
        onClicked: {
            if(player.seekable) player.seek(player.duration * mouse.x / width)
        }
    }*/
}
