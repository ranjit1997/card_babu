import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Container MyFruits(String imageValue,String friutName){
  
  return Container(
                    width: 96.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.asset(imageValue,width: 40,height: 40,),
                          ListTile(
                            title: Text(friutName),
                            
                           // subtitle: Text(subHeading),
                          )
                        ],
                      ),
                    ),
                  );
  }
  String _selectedItem = '';

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,
        home: Scaffold(
                       
            body:  ListView(
              padding: EdgeInsets.all(10.0),
              children:<Widget>[
              Container(
                alignment: Alignment.topCenter,
              margin: EdgeInsets.symmetric(vertical: 20.0),
              height: 700,
              child: Wrap(
                runSpacing: 2.0,
                spacing: 4.0,
                direction: Axis.horizontal,
                children: <Widget>[
             ///This is Card 1st
                  RaisedButton(
                   child: MyFruits('assets/fruits/image7.jpg', "Flutter1"),
                    onPressed: () => _onButtonPressed(),
                   ),
                  
                  Text(
                    _selectedItem,
                    style: TextStyle(fontSize: 30),
                    ),

             // This is card 2nd
                     RaisedButton(
                   child: MyFruits('assets/fruits/image7.jpg', "Flutter2"),
                    onPressed: () => _onButtonPressed(),
                   ),
                  
                  Text(
                    _selectedItem,
                    style: TextStyle(fontSize: 30),
                    ),
              // This is card 2nd
                     RaisedButton(
                   child: MyFruits('assets/fruits/image7.jpg', "Flutter2"),
                    onPressed: () => _onButtonPressed(),
                   ),
                  
                  Text(
                    _selectedItem,
                    style: TextStyle(fontSize: 30),
                    ),
                    
                ],
              ),
            ),

          
              ]
        
          ),
          ),
        );   
  
  }

  void _onButtonPressed() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.red,
            height: 180,
            child: Container(
              child: _buildBottomNavigationMenu(),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(10),
                  topRight: const Radius.circular(10),
                ),
              ),
            ),
          );
        });
  }

  Column _buildBottomNavigationMenu() {
    return Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.ac_unit),
          title: Text('Flutter1'),
          onTap: () => _selectItem('Cooling'),
        ),
        ListTile(
          leading: Icon(Icons.accessibility_new),
          title: Text('People'),
          onTap: () => _selectItem('People'),
        ),
        ListTile(
          leading: Icon(Icons.assessment),
          title: Text('Stats'),
          onTap: () => _selectItem('Stats'),
        ),
      ],
    );
  }

  void _selectItem(String name) {
    Navigator.pop(context);
    setState(() {
      _selectedItem = name;
    });
  }
}
