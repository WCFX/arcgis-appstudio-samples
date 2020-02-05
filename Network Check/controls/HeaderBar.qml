import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Layouts 1.1


import ArcGIS.AppFramework 1.0

RowLayout{
    anchors.fill: parent
    spacing: 0
    clip: true

    Rectangle{
        Layout.preferredWidth: units(50)
    }

    Text {
        text: app.info.title
        color: "white"
        font.pixelSize: app.baseFontSize * 1.1
        font.bold: true
        maximumLineCount: 2
        wrapMode: Text.Wrap
        elide: Text.ElideRight
        anchors{
            verticalCenter: parent.verticalCenter
            horizontalCenter: parent.horizontalCenter
        }
    }

    Rectangle{
        id: infoImageRect
        Layout.alignment: Qt.AlignRight
        Layout.preferredWidth: units(50)

        ToolButton {
            id:infoImage
            indicator: Image{
                width: units(30)
                height: units(30)
                anchors.centerIn: parent
                source: "../assets/info.png"
                fillMode: Image.PreserveAspectFit
                mipmap: true
            }
            anchors {
                right: parent.right
                verticalCenter: parent.verticalCenter
            }
            onClicked: {
                descPage.visible = 1
            }
        }
    }
}