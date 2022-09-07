import QtQuick
import QtQuick.Controls

Item {
    id: catRoot
    property int catWidth: catRoot.width
    property int catheight: catRoot.height
    property int catSize: 30
    property var catValue: 0.2
    property var catPadding: 2
    property bool catIndeterminate: false
    property real catFrom: 0.0
    property real catTo: 1.0

    ProgressBar {
        id: catBar

        value: catValue
        padding: catPadding
        indeterminate: catIndeterminate
        from: catFrom
        to: catTo
        background: Rectangle {
            anchors.fill: parent
            color: "#e6e6e6"
            radius: 3
        }

        contentItem: Item {
            implicitWidth: catWidth
            implicitHeight: catheight

            Rectangle {
                width: catBar.visualPosition * parent.width
                height: parent.height
                radius: 2
                gradient: Gradient {
                    GradientStop {
                        position: 0.0
                        color: "red"
                    }
                    GradientStop {
                        position: 0.20
                        color: "orange"
                    }
                    GradientStop {
                        position: 0.40
                        color: "yellow"
                    }
                    GradientStop {
                        position: 0.60
                        color: "green"
                    }
                    GradientStop {
                        position: 0.80
                        color: "lightBlue"
                    }
                    GradientStop {
                        position: 1.0
                        color: "blue"
                    }
                }

                Image {

                    width: catSize
                    height: catSize
                    source: "../resources/cat3.webp"
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.topMargin: -10
                    anchors.rightMargin: -5
                }
            }
        }
    }
}
