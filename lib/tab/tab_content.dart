import 'package:flutter/material.dart';

import '../contents/circle.dart';
import '../contents/square.dart';

class Tab_content extends StatelessWidget {
  Tab_content({super.key});

  final List _post = [
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
  ];

  final List _story = [
    Image.asset('images/blue.jpg'),
    Image.asset('images/phone.jpg'),
    Image.asset('images/blue.jpg'),
    Image.asset('images/phone.jpg'),
    Image.asset('images/blue.jpg'),
    Image.asset('images/phone.jpg'),
    Image.asset('images/blue.jpg'),
    Image.asset('images/phone.jpg'),
  ];

  final List _price = [
    '\$2300',
    '\$3000',
    '\$2000',
    '\$1300',
    '\$2300',
    '\$3000',
    '\$2000',
    '\$1300',
  ];

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Column(
        children: [
          //Story list content
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

          //Post list content
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
                shrinkWrap: true,
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
