﻿import QtQuick 2.14
import QtQuick.Layouts 1.14

import "../../items" as Items

Item {
    id: root

    property string text
    property color color

    readonly property bool current: (color.toString() === Theme.Colors.base)

    implicitWidth: mainLayout.implicitWidth
    implicitHeight: mainLayout.implicitHeight

    ColumnLayout {
        id: mainLayout

        anchors.fill: parent

        Items.YDText {
            Layout.fillWidth: true

            text: root.text
        }

        Rectangle {
            id: rect

            Layout.alignment: Qt.AlignHCenter
            Layout.preferredWidth: 100
            Layout.preferredHeight: 100

            color: root.color

            anchors.margins: Theme.Margins.tiny

            border {
                color: root.current ? Theme.Colors.second : Theme.Colors.base
                width: Theme.Size.border
            }

            Items.YDText {
                anchors.centerIn: rect
                text: qsTr("Current")
                font.pixelSize: Theme.FontSize.tiny
                visible: root.current
            }
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: Theme.changeBaseColor(color)
    }
}

