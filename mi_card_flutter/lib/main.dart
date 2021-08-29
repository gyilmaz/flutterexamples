import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue.shade400,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Spacer(flex: 1),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.red,
                backgroundImage: AssetImage(
                  'images/gyprofilepic.jpeg',
                ),
              ),
              // NetworkImage(
              //     'https://library.kissclipart.com/20181005/bee/kissclipart-white-person-icon-png-clipart-computer-icons-deskt-73f851694f2ebca8.jpg',
              //     scale: 10),
              Text(
                'Guven Yilmaz',
                style: TextStyle(
                    fontFamily: 'Aclonica',
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: 'AmaticoSC',
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(flex: 1),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.lightBlue.shade900,
                  ),
                  title: Text(
                    '+1 123 45 67',
                    style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontFamily: 'AmaticoSC',
                        fontSize: 20),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.lightBlue.shade900,
                  ),
                  title: Text(
                    'guvenyilmaz@gmail.com',
                    style: TextStyle(
                        color: Colors.lightBlue.shade900,
                        fontFamily: 'AmaticoSC',
                        fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
