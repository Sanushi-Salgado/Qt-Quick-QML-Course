import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Datatypes Demo")

    property string name: "Sanushi"
    property bool isFemale: false
    property int age: 22
    property double weight: 45.5
    property url githubUrl: "https://github.com/Sanushi-Salgado"


    // You can also use var to refer any data type
    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(17, 56, 46, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })] // You can mix data types
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "Seven"; })
    property var aFont  : Qt.font({family: "Consolas", pointSize: 30, bold: false})
    property date mDate: "2018-07-19"


    Rectangle {
        width: 200
        height: 100 + age
        anchors.centerIn: parent
        color: aColor

        Text {
            anchors.centerIn: parent
            text: name
            font : aFont
            //font.bold: true
            // Change the color of the text based on the gender
            color: isFemale? "pink": "blue"
        }
    }

    Component.onCompleted: {
        console.log("Component loaded...")
        print("Your name is: " + name)
        console.log("Your age is: " + age)
        console.log("Your weight is: " + weight)

        isFemale? console.log("Your gender is: Female"): console.log("Your gender is: Male")

        if(name === githubUrl)
            print("Both are same in value & data type")
        else if(name == githubUrl)
            print("Only same in value, but not in data type")
        else
            print("Not same both in value & data type")



        console.log("----------------Working with the var datatype------------")
        console.log("The value of aNumber is :"+ aNumber)
        console.log("The value of aBool is : " + aBool)
        console.log("The value of aString is : " + aString)
        console.log("The value of anotherString is : " + anotherString)

        console.log("The components of aRect are : x : "+ aRect.x
                    + " y :"+ aRect.y + " width :" + aRect.width + " height :"+ aRect.height)



        console.log("--------------------Working with arrays-------------------")
        console.log("The length of the array is :"+anArray.length)


        // Looping through the array
        anArray.forEach(function(value){
            console.log(value)
        })

        /*
        anArray.forEach(function(value,index){
          if( index ===5){
             console.log(value())
          }else {
            console.log(value)
        }})
        */

        for(var i = 0; i < anArray.length ; i++)
        {
            if ( i === 5)
            {
                console.log(anArray[i]())
            }else{
                console.log(anArray[i])
            }
        }


        console.log("------------------Working other data types----------------")

        console.log("The date is :"+ mDate)

        console.log("The function value is :"+aFunction)
        console.log("The function value is :"+aFunction())

    }

}
