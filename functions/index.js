const functions = require('firebase-functions');
const admin = require('firebase-admin');
admin.initializeApp(functions.config().firebase);

exports.notificationTrigger = functions.database.ref('earthquakes/{id}').onWrite(
    evt => {
        const payload = {
            notification: {
                title: 'Get to safe zone',
                body: 'Might be an earthquake nearby',
                badge: '1',
                sound: 'default',
                click_action: "FLUTTER_NOTIFICATION_CLICK",
                screen: "notificationScreen",
            },
            data: {
                title: 'Get to safe zone',
                body: 'Might be an earthquake nearby',
                badge: '1',
                sound: 'default',
                click_action: "FLUTTER_NOTIFICATION_CLICK",
                screen: "notificationScreen",
            }

        };

        return admin.database().ref('fcm-token').once('value').then(
            allToken => {
                if (allToken.val()) {
                    console.log('token available');
                    const token = Object.keys(allToken.val());
                    admin.messaging().sendToDevice(token, payload);

                } else {
                    console.log("token not available")
                }
            }
        );
    }
);