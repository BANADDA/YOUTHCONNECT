import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class page3 extends StatefulWidget {
  @override
  _page3State createState() => _page3State();
}

class _page3State extends State<page3> {

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
        backgroundColor: Colors.cyan,
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
                  'CREATE FAMILY',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ),
                 Image.asset('assets/pic4.jpg'),
              //Chips
                Wrap(
                  direction: Axis.horizontal,
                  spacing:10.0,
                  runSpacing:5.0,
                  children: <Widget>[
                    myChips("Personal Details"),
                   // myChips("Discounts"),
                   // myChips("Clearance"),
                   // myChips("gifts"),
                   // myChips("summersale"),
                  ],
                ),

            //categoryDivider(),

            
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
