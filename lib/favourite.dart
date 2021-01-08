import 'package:flutter/material.dart';
class favorite extends StatelessWidget {
  const favorite({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('Nothing is added to favourite!',style: TextStyle(fontSize: 20),)
      ],
    );
  }
}