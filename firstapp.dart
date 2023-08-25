import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
const String appTitle = 'First Flutter App';
int count = 0;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text(appTitle, style: CustomTextStyle.title)),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              const Image(
                  width: 90,
                  image: NetworkImage(
                      'https://cdn3d.iconscout.com/3d/free/thumb/free-flutter-5562357-4642761.png')),
              Instruction(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () => {
                  print('button pressed'),
                  count++,
                  print(count)
                },
                child: const Text('+', style: CustomTextStyle.buttonText)
              )
              
            ])),
      ),
    );
  }
}

class CustomTextStyle {
  static const TextStyle title = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  
  static const TextStyle buttonText = TextStyle(
    fontSize: 14,
    color: Colors.white,
    fontWeight: FontWeight.bold
  );
}

class Instruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Press the Button',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
