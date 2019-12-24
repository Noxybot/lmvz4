import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.1
import QtQuick.LocalStorage 2.0
import QtQuick.Controls.Material 2.4
import "backend.js" as Backend

Page {
    anchors.fill: parent
    id: logpage
    visible: true
    width: 420
    height: 680
    ///title: qsTr("Login Demo")

    property color backGroundColor :  Material.background//"#394454"
    property color mainAppColor:  Material.primary //"#6fda9c"//
    property color mainTextCOlor: Material.accent //"#f0f0f0"
    property color popupBackGroundColor: "#b44"
    property color popupTextCOlor: "#ffffff"
    property var dataBase

    property string cur_login;
    property string cur_pass;
    property string cur_street;
    FontLoader {
        id: fontAwesome
        name: "fontawesome"
        source: "qrc:/Login/fontawesome-webfont.ttf"
    }

    // Main stackview
    StackView{
        id: stackView
        focus: true
        anchors.fill: parent
    }

    // After loading show initial Login Page
    Component.onCompleted: {
        stackView.push("qrc:/Login/LogInPage.qml")   //initial page
        dataBase = userDataBase()
        console.log(dataBase.version)
    }

    //Popup to show messages or warnings on the bottom postion of the screen
    Popup {
        id: popup
        property alias popMessage: message.text

        background: Rectangle {
            implicitWidth: rootWindow.width
            implicitHeight: 60
            color: popupBackGroundColor
        }
        y: (rootWindow.height - 60)
        modal: true
        focus: true
        closePolicy: Popup.CloseOnPressOutside
        Text {
            id: message
            anchors.centerIn: parent
            font.pointSize: 12
            color: popupTextCOlor
        }
        onOpened: popupClose.start()
    }

    // Popup will be closed automatically in 2 seconds after its opened
    Timer {
        id: popupClose
        interval: 2000
        onTriggered: popup.close()
    }

    // Create and initialize the database
    function userDataBase()
    {
        var db = LocalStorage.openDatabaseSync("UserLoginApp", "1.0", "Login example!", 1000000);
        db.transaction(function(tx) {
            tx.executeSql('CREATE TABLE IF NOT EXISTS UserDetails(username TEXT, password TEXT, hint TEXT)');
        })

        return db;
    }

    // Register New user
    function registerNewUser(uname, pword, pword2, hint)
    {
        var ret  = Backend.validateRegisterCredentials(uname, pword, pword2, hint)
        var message = ""
        switch(ret)
        {
        case 0: message = "Регистрация успешна"
            break;
        case 1: message = "Не все поля заполнены!"
            break;
        case 2: message = "Неправильный повтор пароля!"
            break;
        }

        if(0 !== ret)
        {
            popup.popMessage = message
            popup.open()
            return
        }

        dataBase.transaction(function(tx) {
            var results = tx.executeSql('SELECT password FROM UserDetails WHERE username=?;', uname);
            console.log(results.rows.length)
            if(results.rows.length !== 0)
            {
                popup.popMessage = "Данное имя занято!"
                popup.open()
                return
            }
            tx.executeSql('INSERT INTO UserDetails VALUES(?, ?, ?)', [ uname, pword, hint ]);
            showUserInfo(uname) // goto user info page
        })
    }

    // Login users
    function loginUser(uname, pword)
    {
        var ret  = Backend.validateUserCredentials(uname, pword)
        var message = ""
        if(ret)
        {
            message = "Missing credentials!"
            popup.popMessage = message
            popup.open()
            return
        }

        dataBase.transaction(function(tx) {
            var results = tx.executeSql('SELECT password FROM UserDetails WHERE username=?;', uname);
            if(results.rows.length === 0)
            {
                message = "User not registered!"
                popup.popMessage = message
                popup.open()
            }
            else if(results.rows.item(0).password !== pword)
            {
                message = "Invalid credentials!"
                popup.popMessage = message
                popup.open()
            }
            else
            {
                cur_login = uname
                cur_pass = pword
                console.log("Login Success!")
                showUserInfo(uname, pword)
            }
        })
    }

    // Retrieve password using password hint
    function retrievePassword(uname, phint)
    {
        var ret  = Backend.validateUserCredentials(uname, phint)
        var message = ""
        var pword = ""
        if(ret)
        {
            message = "Недостаточно данных!"
            popup.popMessage = message
            popup.open()
            return ""
        }

        console.log(uname, phint)
        dataBase.transaction(function(tx) {
            var results = tx.executeSql('SELECT password FROM UserDetails WHERE username=? AND hint=?;', [uname, phint]);
            if(results.rows.length === 0)
            {
                message = "Пользователь не найден!"
                popup.popMessage = message
                popup.open()
            }
            else
            {
                pword = results.rows.item(0).password
            }
        })
        return pword
    }


    // Show UserInfo page
    function showUserInfo(uname, pass)
    {
        //stackView.replace("qrc:/Login/UserInfoPage.qml", {"userName": uname})
        stack.push ("qrc:/PersonalPage.qml", {"username.text": uname, "pass": pass})
    }

    // Logout and show login page
    function logoutSession()
    {
        stackView.replace("qrc:/Login/LogInPage.qml")
    }

    // Show Password reset page
    function forgotPassword()
    {
        stackView.replace("qrc:/Login/PasswordResetPage.qml")
    }

    // Show all users
    function showAllUsers()
    {
        dataBase.transaction(function(tx) {
            var rs = tx.executeSql('SELECT * FROM UserDetails');
            var data = ""
            for(var i = 0; i < rs.rows.length; i++) {
                data += rs.rows.item(i).username + "\n"
            }
            console.log(data)
        })

    }
}
