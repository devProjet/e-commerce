import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("images/phone.jpg"),
          SizedBox(height: 40,),
          Text(
            'What beautiful Phone!',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white54,
            ),
          ),
          SizedBox(height: 60,),
          GestureDetector(
            onTap: GoToAcceuil,
            child: Container(
              height: 50,
              width: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //Function go to next page
  void GoToAcceuil(){
    setState(() {
      Navigator.of(context).pushNamed("/accueil");
    });
  }
}
