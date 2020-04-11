import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Layouts 1.12

import "../items" as Items

Item {
    id: root

    implicitWidth: mainLayout.implicitWidth
    implicitHeight: mainLayout.implicitHeight

    ButtonGroup {
        id: buttonGroup
        buttons: mainLayout.children
        onClicked: Settings.fileFormat = button.text
    }

    RowLayout {
        id: mainLayout

        spacing: Theme.Margins.tiny

        Repeater {
            model: Settings.fileFormats

            Items.YDButton {
                checked: (text === Settings.fileFormat)
                checkable: true
                text: modelData
            }
        }
    }
}
