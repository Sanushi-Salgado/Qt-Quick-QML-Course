import QtQuick 2.11


Item {
    id: itemId
    property alias buttonText: buttonTextId.text
    width: rectId.width
    height: rectId.height
    signal buttonClicked

    Rectangle {
        id: rectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: "red"
        border { color: "blue"; width: 3 }

        Text {
            id: buttonTextId
            text: "Button"
            anchors.centerIn: parent
        }

        // Create a clickable area
        MouseArea {
            anchors.fill: parent
            // anchors.fill: rectId
            onClicked: {
                console.log("Clicked on " + buttonTextId.text + " from MButton file")
                itemId.buttonClicked()
            }
        }
    }

}
