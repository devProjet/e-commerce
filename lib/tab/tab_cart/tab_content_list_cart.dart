import 'package:flutter/material.dart';

class Tab_content_list_cart extends StatelessWidget {
  final Image image;
  final String price;
  final String title;
  Tab_content_list_cart(
      {super.key,
      required this.image,
      required this.title,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 0,
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Row(
          children: [
            //Content image
            Container(height: 100, width: 100, child: ClipRRect(borderRadius: BorderRadius.circular(6),child: image)),

            //Content info
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                        'Working with tabs is a common pattern in apps that follow the Material Design guidelines.'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      price,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
            ),

            //Content action
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delete,
                      color: Colors.grey,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.payment,
                      color: Colors.grey,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
