import 'package:flutter/material.dart';

import '../contents/circle.dart';
import '../contents/square.dart';

class Tab_content_computer extends StatelessWidget {
  Tab_content_computer({super.key});

  final List _post = [
    Image.asset('images/desktop.jpeg', fit: BoxFit.fill,),
    Image.asset('images/electronic.jpg', fit: BoxFit.fill,),
    Image.asset('images/laptop_mock_up.jpeg', fit: BoxFit.fill,),
    Image.asset('images/desktop.jpeg', fit: BoxFit.fill,),
    Image.asset('images/desktop.jpeg', fit: BoxFit.fill,),
    Image.asset('images/electronic.jpg', fit: BoxFit.fill,),
    Image.asset('images/laptop_mock_up.jpeg', fit: BoxFit.fill,),
    Image.asset('images/desktop.jpeg', fit: BoxFit.fill,),
  ];

  final List _story = [
    Image.asset('images/desktop.jpeg'),
    Image.asset('images/electronic.jpg'),
    Image.asset('images/laptop_mock_up.jpeg'),
    Image.asset('images/desktop.jpeg'),
    Image.asset('images/electronic.jpg'),
    Image.asset('images/laptop_mock_up.jpeg'),
    Image.asset('images/electronic.jpg'),
    Image.asset('images/laptop_mock_up.jpeg'),
  ];

  final List _price = [
    '\$23000',
    '\$60000',
    '\$25000',
    '\$13000',
    '\$23000',
    '\$60000',
    '\$25000',
    '\$13000',
  ];

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        children: [
          Card(
            elevation: 6,
            child: Container(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _story.length,
                  itemBuilder: (context, index) {
                    return Circle(st: _story[index]);
                  }),
            ),
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                  itemCount: _post.length,
                  itemBuilder: (context, index) {
                    return Square(
                      txt: _post[index],
                      price: _price[index],
                    );
                  }),
            ),
        ],
      ),
    );
  }
}
