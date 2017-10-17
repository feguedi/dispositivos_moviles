import QtQuick 2.0
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.0
import "Operaciones.js" as Op

Page {
    id: root

    ColumnLayout {
        anchors.fill: parent
        spacing: 25

        RowLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Label {
                id: label
                text: qsTr("d = (")
            }

            Tumbler {
                id: tmb_a
                width: 40
                currentIndex: 1
                spacing: -1
                visibleItemCount: 3
                model: 1000
                onCurrentIndexChanged: chng_lbl()
            }

            Label {
                id: label1
                text: qsTr(", ")
            }

            Tumbler {
                id: tmb_b
                width: 40
                currentIndex: 1
                spacing: 0
                visibleItemCount: 3
                model: 1000
                onCurrentIndexChanged: chng_lbl()
            }

            Label {
                id: label2
                text: qsTr(")")
            }
        }

        GridLayout {
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            rows: 3
            columns: 3

            Label {
                id: label3
                text: qsTr("MCD = ")
                Layout.columnSpan: 2
            }

            Label {
                id: lbl_mcd
                Layout.preferredWidth: 35
                text: qsTr("0")
            }

            Label {
                id: label4
                text: qsTr("x = ")
            }

            Item {
                id: spacer
                Layout.preferredHeight: 14
                Layout.preferredWidth: 14
            }

            Label {
                id: lbl_x
                Layout.preferredWidth: 35
                text: qsTr("0")
            }

            Label {
                id: label5
                text: qsTr("y = ")
            }

            Item {
                id: spacer1
                Layout.preferredHeight: 14
                Layout.preferredWidth: 14
            }

            Label {
                id: lbl_y
                Layout.preferredWidth: 35
                text: qsTr("0")
            }
        }
    }

    function chng_lbl() {
        var mcd = Op.euc(tmb_a.currentIndex, tmb_b.currentIndex)[2]
        var x, y = []
        x = Op.euc(tmb_a.currentIndex, tmb_b.currentIndex)[3]
        y = Op.euc(tmb_a.currentIndex, tmb_b.currentIndex)[4]
        x.reverse(); y.reverse()
        if(x[1] === 1 && y[1] === 0 && x[2] === 1 && y[2] === 0) {
            x.length = x.length; y.length = y.length
            if(x[1] !== 0 && y[1] !== 0) {
                lbl_x.text = qsTr(x[0].toString() + ", " + x[1].toString())
                lbl_y.text = qsTr(y[0].toString() + ", " + y[1].toString())
            }
            else {
                lbl_x.text = qsTr(x[0].toString()); lbl_y.text = qsTr(y[0].toString())
            }
        }
        else {
            x.length = 3; y.length = 3
            lbl_x.text = qsTr(x[0].toString() + ", " + x[1].toString() + ", " + x[2].toString() + ", ...")
            lbl_y.text = qsTr(y[0].toString() + ", " + y[1].toString() + ", " + y[2].toString() + ", ...")
        }

        console.log("Tumbler a: ", tmb_a.currentIndex)
        console.log("Tumbler b: ", tmb_b.currentIndex)

        console.log("x: ", x)
        console.log("y: ", y)

        lbl_mcd.text = mcd.toString()
    }
}
