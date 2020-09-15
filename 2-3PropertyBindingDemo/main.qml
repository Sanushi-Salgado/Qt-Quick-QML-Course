import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Property Binding Demo")

    Rectangle {
        id : redRectId
        width: 50
        /* The height is bound to the width.
           So whenever the width is gng to chng, the heigh will also change accordingly.
           This is called property binding.
         */
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id : blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom

        // Create a clickable area
        MouseArea {
            anchors.fill: parent
            onClicked: {
                /* When the blue rectange is clicked, the width of the red rectangle will increase.
                   Also the height of the red rectangle will also increase, as it's bound to the width.
                   */
                redRectId.width = redRectId.width +10
            }
        }
    }

    Rectangle {
        id : greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right
        MouseArea {
            anchors.fill: parent
            onClicked: {
                // redRectId.height = 100
                redRectId.height = Qt.binding(function(){
                    return redRectId.width * 2
                })
            }
        }
    }
}
