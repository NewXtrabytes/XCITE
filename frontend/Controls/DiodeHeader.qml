import QtQuick 2.8
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Rectangle {
    property color cHeaderText: "#e2e2e2"
    readonly property color cHeaderLine: "#535353"

    property alias menuLabelText: menuLabel.text
    property alias text: label.text

    color: "transparent"
    height: 44.5
    width: parent.width

    Text {
        id: label
        anchors.left: parent.left
        anchors.leftMargin: 20.68
        anchors.verticalCenter: parent.verticalCenter
        color: cHeaderText
        font.family: "Roboto Regular"
        font.pixelSize: 15
    }

    Rectangle {
        width: parent.width
        anchors.top: parent.bottom
        height: 1
        color: cHeaderLine
    }

    RowLayout {
        id: currencyDropdownWidget
        visible: menuLabelText.length > 0
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        height: parent.height
        spacing: 0

        Text {
            id: menuLabel
            color: cHeaderText
            font.family: "Roboto"
            font.pixelSize: 12
            rightPadding: 10
        }

        Rectangle {
            color: cHeaderLine
            width: 1
            height: 22.06
            anchors.verticalCenter: parent.verticalCenter
        }

        IconButton {
            anchors.verticalCenter: parent.verticalCenter
            height: parent.height
            Layout.preferredWidth: 40

            icon.source: "../icons/dropdown-arrow.svg"
            icon.sourceSize.width: 10
        }
    }
}
