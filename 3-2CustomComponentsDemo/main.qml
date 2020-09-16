import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Custom Elements Demo")

    /*
    Column {
        spacing: 20
        Rectangle {
            width: 300
            height: 100
            color: "red"
        }
        Rectangle {
            width: 300
            height: 100
            color: "blue"
        }
    }
    */

    /*
    Row {
        spacing: 20
        Rectangle {
            width: 300
            height: 100
            color: "red"
        }
        Rectangle {
            width: 300
            height: 100
            color: "blue"
        }
    }
    */

    /*
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
                console.log("Clicked on " + buttonTextId.text)
            }
        }
    }
    */


    MButton {
        buttonText: "Button 1"
        onButtonClicked: {
            console.log("Clicked on button 1 from main file")
        }

    }

    MButton {
        x: 100
        buttonText: "Button 2"
        onButtonClicked: {
            console.log("Clicked on button 2 from main file")
        }
    }

}
