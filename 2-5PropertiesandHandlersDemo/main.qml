import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Properties and Handlers Demo")

    property string mFirstName: "Sanushi Salgado"
	
	/* This is the signal which was generated automatically, when the property mFirstName was defined.
	   So whenever the value of the property mFirstName gets changed, this will get invoked. */
    onMFirstNameChanged: {
        console.log("The firsname changed to :"+ mFirstName)
    }

    Rectangle {
        width : 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName = "Sanushi"
            }
        }
    }
    Component.onCompleted: {
        console.log("The firstname is :" + mFirstName)
    }
}
