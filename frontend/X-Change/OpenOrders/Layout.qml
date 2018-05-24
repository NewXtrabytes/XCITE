import QtQuick 2.7
import QtQuick.Layouts 1.3

ColumnLayout {
    anchors.fill: parent
    spacing: layoutGridSpacing

    OpenOrdersDiode {
        Layout.fillWidth: true
        Layout.fillHeight: true
    }
}
