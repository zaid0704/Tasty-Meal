import 'package:flutter/material.dart';

class myDrawer extends StatefulWidget {
  myDrawer({Key key}) : super(key: key);

  _myDrawerState createState() => _myDrawerState();
}

class _myDrawerState extends State<myDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
    //   child:SingleChildScrollView(
        child: Column(
      children: <Widget>[
        Container(
          alignment: Alignment.bottomCenter,
          child: ListTile(

            leading: CircleAvatar(child: Icon(Icons.settings),),
            title: Text('Settings',style: TextStyle(fontSize: 18,fontStyle: FontStyle.normal,color: Colors.white),),
          ),
          width: double.infinity,
          height: 200,
          decoration:BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.pink.withOpacity(0.7),
                Colors.pink ],
          begin:Alignment.topLeft,
          end: Alignment.bottomRight
          ),
        ),
        ),
        Container(
          width: double.infinity,
          height: 400,
          child: ListView(
          children: <Widget>[
            
            ListTile(
              title: Text('Filters'),
              trailing: Icon(Icons.filter),
              onTap:(){
                Navigator.of(context).popAndPushNamed('filterScreen');
              } ,
              
            ),
            ListTile(
              title: Text('Categories'),
              trailing: Icon(Icons.category),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: Text('Help'),
              subtitle: Text('5120-689765'),
              trailing: Icon(Icons.help),
              onTap: (){
                Navigator.of(context).pop();
              },
            ),

          ],
        )
        )
        ,
        
        
      ],
    ),
       
    );
    }
}