import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string textToDisplay: "Hello"

    // To lay out all the elements in one row
    Row {
        id: row
        // Row is going to be in the center of the parent
        anchors.centerIn: parent
        // To have some spacing between the elements in the row
        spacing: 20


        Rectangle {
            id: redRectId
            width: 150
            height: 150
            color: "red"
            radius: 20
            // To make the Rectangle clickable
            MouseArea {
                anchors.fill: parent
                // Gets invoked when clicked
                onClicked: {
                    console.log("Clicked on the red rectangle")
                    textToDisplay = "red"
                }
            }
        }

        Rectangle {
            id: greenRectId
            width: 150
            height: 150
            color: "green"
            radius: 20
            // To make the Rectangle clickable
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green rectangle")
                    textToDisplay = "green"
                }
            }
        }

        Rectangle {
            id: blueRectId
            width: 150
            height: 150
            color: "blue"
            radius: 20
            // To make the Rectangle clickable
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue rectangle")
                    textToDisplay = "blue"
                }
            }
        }


        Rectangle {
            id: circleId
            width: 150
            height: 150
            color: "black"
            radius: 100
            // To make the Circle clickable
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the circle")
                    textToDisplay = "black"
                }
            }

            Text {
                anchors.centerIn: parent
                text: textToDisplay
                color: "white"
            }
        }
    }
}
