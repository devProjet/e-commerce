import 'package:flutter/material.dart';

class Square extends StatefulWidget {
  final Image txt;
  final price;
  Square({super.key, required this.txt, required this.price});

  @override
  State<Square> createState() => _SquareState();
}

class _SquareState extends State<Square> {

  bool _isLove = false;
  final IconData iconData_false = Icons.favorite_border;
  final IconData iconData_true = Icons.favorite_sharp;

  //Fuction inconButton favorite
  void _favorite(){
    if(_isLove){
      _isLove = false;
    }else{
      _isLove = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 10,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0),
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.grey[200],
                child:ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
                      child: widget.txt),
                ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListTile(
                  title: Text("SmartPhone"),
                  subtitle: Text(
                      "Working with tabs is a common pattern in apps that follow the Material Design guidelines. Flutter includes a convenient way Working with tabs is a common pattern in apps that follow the Material Design guidelines. Flutter includes a convenient way "),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Text(
                      'Price : ${widget.price}',
                      style: TextStyle(fontSize: 20, color: Colors.grey[600]),
                    )),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            _favorite();
                          });
                        },
                        icon: Icon( _isLove ?
                        iconData_true : iconData_false,
                          color: _isLove ? Colors.red : Colors.grey,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
