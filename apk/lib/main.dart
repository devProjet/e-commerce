import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool d = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: d ? Brightness.dark : Brightness.light,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Theme demo'),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      if (d) {
                        d = false;
                      } else {
                        d = true;
                      }
                    });
                  },
                  icon: d
                      ? Icon(Icons.light_mode)
                      : Icon(Icons.dark_mode_outlined)),
            ],
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Container(
                height: MediaQuery.of(context).size.height/16,
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: TextField(
                  maxLength: 10,
                ),
              ),
            ),
          ),
        ));
  }
}
