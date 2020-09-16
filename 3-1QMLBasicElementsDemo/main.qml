import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Elements Demo")

    Item {
        id: containerItemId
        x: 50 ; y: 50
        width: 600
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle {
            x: 0
            y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 60
            y: 10
            width: 50
            height: 50
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 120
            y: 10
            width: 50
            height: 50
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Rectangle {
            x: 180
            y: 10
            width: 50
            height: 50
            color: "magenta"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }
            }
        }

        Text {
            id: mTextId
            text: "Hello World!"
            font.family: "Helvetica" ; font.pointSize: 24 ; font.bold: true
            /*
            font {
                family: "Helvetica"
                pointSize: 24
                bold: true
            }
            */

            /*
            font {
                family: "Helvetica" ; pointSize: 24 ; bold: true
            }
            */

            color: "red"
            // Give a x & y position for the text element
            x:100
            y:100
        }

        Image {
            x:10
            y:150
            width: 100
            height: 100
            // Loading image from the working directory
            source: "file:Pic.PNG"
        }


        Image {
            x:150
            y:150
            width: 100
            height: 100
            // Loading image from the resources folder of the project
            source: "images/Pic.PNG"
        }


        Image {
            x:300
            y:150
            width: 100
            height: 100
            // Specify the full path of the image
            source: "file:///C:/Users/Gigabyte/Pictures/Pic.PNG"
        }


        Image {
            x:450
            y:150
            width: 200
            height: 100
            // Loading the image from the internet. Specify the Url of the image.
            source: "data:image/jpeg;base64,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"
        }
    }
}
