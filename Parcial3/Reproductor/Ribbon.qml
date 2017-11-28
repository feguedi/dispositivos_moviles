import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0

Item {
    id: root
    property alias buttonStop: btnStop
    property alias buttonPlayPause: btnPlayPause
    property bool playing
    property bool stopped

    RowLayout {
        anchors.fill: parent

        Button {
            id: btnPlayPause
            height: 45
            width: height
            text: qsTr("")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            flat: true
            background: Image {
                id: btnPlayPauseBck
                source: playing || !stopped ? "img/pause.png" : "img/play.png"
            }
            onHoveredChanged: btnPlayPauseBck.source = btnPlayPause.hovered ? (playing || stopped != true ? "img/pauseHovered.png" : "img/playHovered.png") : (playing || stopped != true ? "img/pause.png" : "img/play.png")
        }

        Button {
            id: btnStop
            height: 45
            width: height
            text: qsTr("")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            flat: true
            background: Image {
                id: btnStopBck
                source: "img/stop.png"
            }
            onHoveredChanged: btnStopBck.source = btnStop.hovered ? "img/stopHovered.png" : "img/stop.png"
        }
    }

    Component.onCompleted: {
        playing = false
        stopped = true
    }
}
