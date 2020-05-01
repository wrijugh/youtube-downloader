﻿import QtQuick 2.14
import QtGraphicalEffects 1.14

import "../../items" as Items

Items.YDBusyIndicator {
    anchors.centerIn: parent
    running: true

    Items.YDImage {
        id: youtubeIcon
        anchors.centerIn: parent
        source: Resources.logo
        width: 32
        height: 32
    }
}
