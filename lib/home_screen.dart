import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youth_connect/page2.dart';
import 'package:youth_connect/page3.dart';
import 'package:youth_connect/page4.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  //Colored Chips
  Container myColoredChips(String chipName) {
    return Container(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: RaisedButton(
              color: new Color(0xffeadffd),
              child: Text(chipName,
              style:TextStyle(
                color: new Color(0xff6200ee),
              ),),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30.0),)
          ),
        )
    );
  }

  //Grey Chips
  Container myChips(String chipName) {
    return Container(
          child: RaisedButton(
            color: const Color(0xffededed),
              child: Text(chipName,
                style:TextStyle(
                  color: new Color(0xff6200ee),
                ),),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      30.0))
          ),
    );
  }

  //Divider
  Container categoryDivider() {
    return Container(
      height: 1.0,
      width: MediaQuery
          .of(context)
          .size
          .width,
      color: Colors.grey,
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FontAwesomeIcons.connectdevelop,
          color: Colors.white,
        ),
        title: const Text("YOUTH CONNECT"),
        actions: <Widget>[
          IconButton(icon: const Icon(
            FontAwesomeIcons.ellipsisV), 
          onPressed: () {
            //
          }),
        ],
      ),
      body: Column(
        children: <Widget>[

          //Offer heading
            Container(
              child:const Padding(
                padding:EdgeInsets.all(16.0),
                child:Text(
                  'Entepreneurs home connect with your role models',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ),

              //Chips
                Wrap(
                  direction: Axis.horizontal,
                  spacing:10.0,
                  runSpacing:5.0,
                  children: <Widget>[
                    myChips("Employer"),
                    myChips("Employee"),
                    myChips("Student"),
                   // myChips("gifts"),
                   // myChips("summersale"),
                  ],
                ),

            categoryDivider(),
           
          FlatButton(
            color:  Colors.deepPurpleAccent,
  focusColor: Colors.red,
  hoverColor: Colors.green,
  splashColor: Colors.blue,
  onPressed: () {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page2()));
   },
  child: Text('Join Family'),
),

          FlatButton(
            color:  Colors.deepPurpleAccent,
  focusColor: Colors.red,
  hoverColor: Colors.green,
  splashColor: Colors.blue,
  onPressed: () { 
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page3()));
  },
  child: Text('Create Family',),
),

   FlatButton(
      color:  Colors.deepPurpleAccent,
 // focusColor: Colors.red,
  //hoverColor: Colors.green,
  //splashColor: Colors.blue,
  
  onPressed: () { 
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page4()));
  },
  child: Text('Financial Advisor'),
)
            
        ],
        
        
        ),
       bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.lightBlue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'group',
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
       // onTap: _onItemTapped,
      ),

         
    );
  }
}
