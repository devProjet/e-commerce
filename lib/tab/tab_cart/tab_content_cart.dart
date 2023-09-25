import 'package:android_studio_apk/tab/tab_cart/tab_content_list_cart.dart';
import 'package:flutter/material.dart';

class Tap_content_cart extends StatelessWidget {
  Tap_content_cart({super.key});

  final List _title = [
    'Iphone 13',
    'Samsung galaxi S13',
    'Iphone 13',
    'Samsung galaxi S13',
  ];

  final List _images = [
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
    Image.asset('images/blue.jpg', fit: BoxFit.fill,),
    Image.asset('images/phone.jpg', fit: BoxFit.fill,),
  ];

  final List _price = [
    '\$2300',
    '\$3000',
    '\$2000',
    '\$1300',
  ];

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: ListView.builder(
                itemCount: _images.length,
                itemBuilder: (context, index) {
                  return Tab_content_list_cart(
                    title: _title[index],
                    price: _price[index],
                    image: _images[index],
                  );
                }),
          );
  }
}
