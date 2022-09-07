import QtQuick
import "./src/"
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello Nyan Cat")

    NyanBar {
        id: catProgressBar
        width: 300
        height: 10
        catSize: 30
        catValue: .7
        anchors.centerIn: parent
    }

    //  Button {
    //    text: "Click me"
    // onClicked: catProgressBar.catValue += .1
    //  }
}
