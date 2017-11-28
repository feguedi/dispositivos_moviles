import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.0
import QtMultimedia 5.9
import "qrc:/PlayerMethods.js" as Pm

Page {
    id: page
    property bool repr
    property bool detn
    height: 600
    width: 400

    header: RowLayout {
        Label {
            anchors.fill: parent
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 28
            // text: "Daft Punk - Get Lucky"
            text: player.metaData.title = "" ? "Unavailable" : player.metaData.albumArtist + " - " + player.metaData.albumTitle
        }
    }

    MediaPlayer {
        id: player
        // source: "http://gudin.io/DP/RandomAccessMemories/08 - Get lucky.mp3"
        source: "qrc:/src/08 - Get lucky.mp3"
        audioRole: MediaPlayer.MusicRole
        autoLoad: false
    }

    ColumnLayout {
        anchors.fill: parent

        Cover {
            id: cvr
            Layout.fillWidth: true
            Layout.fillHeight: true
        }

        RowLayout {
            Label {
                id: lbl_current
                text: qsTr(Pm.msToTime(player.position))
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.pointSize: 8
            }

            SlideBar {
                id: slider
                Layout.preferredHeight: 40
                Layout.fillWidth: true
                player: player
            }
            Label {
                id: lbl_total
                text: qsTr(Pm.msToTime(player.position))
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.fillWidth: false
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                font.pointSize: 8
            }
        }

        Ribbon {
            id: rbn
            Layout.fillWidth: true
            Layout.preferredHeight: 55

            buttonPlayPause.onPressed: {
                if(player.playing) {
                    player.pause()
                } else {
                    player.play()
                }
            }
            buttonStop.onPressed: {
                if(player.playing) {
                    player.stop()
                }
            }

            Connections {
                target: player

                onPaused: {
                    Pm.paused(slider, player)
                }

                onPlaying: {
                    Pm.playing(slider, player)
                }

                onStopped: {
                    Pm.stop(slider, player)
                }

                /*onSeeking: {
                    pm.seeking(slider, player)
                }*/
            }
        }
    }

    Component.onCompleted: {
        detn = true
        repr = false
    }
}
