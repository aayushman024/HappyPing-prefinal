// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
// import 'package:googleapis_auth/auth.io.dart' as auth;
// import 'package.googleapis/servicecontrol/v1.dart';
// class PushNotificationService{
//   static Future<String> getAccessToken() async
//   {
//     final serviceAccountJson =
//     {
//         "type": "service_account",
//         "project_id": "notificationhappyping",
//         "private_key_id": "862446e60329f52483fc59960702c65869cfe266",
//         "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCv/RyS8eGDF66e\nINGs3mwg95hErHHpQy0/dZtoErGPLykB8zXfi3EhrOpwuQujVtdg0ixLjSagP3ZH\nRApVcN0qKkEjVzFghSE1XyHLH1NbBJUBvnYpJfKZr4kXxPQOPO8jbwpenALxS54V\n1cfm9irDXp+Z8pV5qAKnJ0JgdGu3ZOqw7FzZ0XtRhf+cDurqiDc9pbr8ELbPFyBd\nYVn9Ct7aFaOqZ48ZZvEZZsmIOVDk9wsifveEc0nYYAydRLRLf519k+n0e4ihFuIx\n101I4gZajCu1KFMns5Ez9Wry2TmNSYwzPm1w3Uwd5kl5ML5o5kl+W71uZkl0N4Mh\n5NvzHl/ZAgMBAAECggEAL8KPkhtdeX+gTl6WuITGMG4xHxXzdfvamDm4+pX0JOkG\nBnbz/F4xzhNIrl2xmFrVaXuwNLKyNFP0q+N9sHFIPAyqj8Y2arzGZd8S4zZ1nyJP\ns+D13TXksCuQl2hGWWTU+zdDx6gsLkK4vLE/JmFQ+qM/yf4o7ZKYYbeITnfZ0bN4\ntyfMnxAYL1/KzQ0FJplFHQ6OodplGOaHWTA9IsSU50Kj0TQeo1GoB2K+WpnzTwUR\ndTOwy2rTEHcz8qznI3Z3SpmtjqjX2NdNokHq3nSxYr9Qn8hfKSfEYh3dNyEPlbAD\nwIMo19aWZkCNlX0HQ+Kd2+F6c8847NZxMtbv8MUz1wKBgQDZFy2GgBFa0YLeql1B\nF4XVfOrPg+mFipQeeHeY7h2dw+lMifZxHIjCbM6g1u2zd5exAL4e1RmL3P81iUbU\nSv+tGgZdSmw69TuFXfo+2qdM1WX1W2zMk2FSMvjhr1ZNzqc4khllpdJy0JzfM8bf\ncgGl/LeNi5wlxXIECISrB6trOwKBgQDPiAxScsGrs9Kl5OwQJ6cjBwMqn4qLx0jJ\nzkrFQQVltOKfJBHrTupL/mAvd5CbAJfvKSvQSN9fuj4jWFmJfYIJbtwSgcQTCv19\nlGaWORgPQ7g3lkP3AFjuc29OoYF8Ua+2tzRPvYU8Ro7yTHUqmP1xW89Koe3KEP02\n0vWm2D7n+wKBgQCxxXQnVwpfJ4AWnMX+vqd+2mtigXAiRgfjJ90wI5WnEr4iSjvA\nBpDLPdS7CyXduApFDQmjL/haex+WFJMm1z+l3dDmZkJYyWbzYLDC9cTYe0uh7zsa\nD3o7mLgL/8wZrSdsgN9BSNgb408CzGCHq9FDvr4EsBWvLI+gU+VoNMCf7wKBgBlU\ncqSRix/o59oFseZa4KR+050dMezTmwe+nROsVvtN86cW4PUGgcRavOSuREEW9nRj\nYwyeCF2HvtPTkcIdRoTeOhAsNIFagwwT092cBFrAmjh2p777FN+tyTUgs0w4MCkt\n/T2KVTvBJOtf96EGYVC3svpZ/0r9fdp2LzN5C1yHAoGBAIBCjiFfp5L2P1iUAWCe\nW3XJSuxdtbnMaIebtM9WOT5pd4aIOsumON9/VcQoluDBRqpW+2s4GctCT6xkT5Gp\nimqRwlmmTtul2431e8D5lsZKXqDOyZYnjAV/lugUGkoeNRoKVN9N4hakjJ58pKIK\nrKBHdGg8jQIgv7meOwdNq6Ry\n-----END PRIVATE KEY-----\n",
//         "client_email": "happy-ping-notification-app@notificationhappyping.iam.gserviceaccount.com",
//         "client_id": "104200120601536045551",
//         "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//         "token_uri": "https://oauth2.googleapis.com/token",
//         "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//         "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/happy-ping-notification-app%40notificationhappyping.iam.gserviceaccount.com",
//         "universe_domain": "googleapis.com"
//       };
//
//     List<String> scopes = [
//       "https://www.googleapis.com/auth/userinfo.email",
//       "https://www.googleapis.com/auth/firebase.database",
//       "https://www.googleapis.com/auth/firebase.messaging"
//     ];
//
//     http.Client client = await auth.clientViaServiceAccount(
//       auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
//       scopes,
//     );
//
//     auth.AccessCredentials credentials = await auth.obtainAccessCredentialsViaServiceAccount(
//       auth.ServiceAccountCredentials.fromJson(serviceAccountJson),
//       scopes,
//       client
//     );
//     client.close();
//     return credentials.accessToken.data;
//   }
//
//   static sendNotificationToSelectedDriver(String deviceToken, BuildContext context, String tripID) async{
//     final String serverAccessTokenKey = await getAccessToken();
//     String endpointFirebaseCloudMessaging = 'https://fcm.googleapis.com/v1/projects/notificationhappyping/messages:send';
//
//     final Map<String, dynamic> message = {
//       'message':{
//         'token': deviceToken,
//         'notification': {
//           'title': "Smile Reminder",
//           'body': "Smile its a new day"
//         },
//       }
//     };
//     final http.Response response = await http.post(
//       Uri.parse(endpointFirebaseCloudMessaging),
//       headers: <String,String> {
//         'Content-Type':'applications/json',
//         'Authorization': 'Bearer $serverAccessTokenKey'
//       },
//       body: jsonEncode(message),
//
//     );
//     if(response.statusCode == 200){
//       print("Sent");
//     }
//     else{
//       print("Unsent");
//     }
//   }
//
//   }