import 'package:flutter/material.dart';
import 'package:flutter_to_do_app/widget/Recent_chats.dart';
import 'package:flutter_to_do_app/widget/category_selector.dart';
import 'package:flutter_to_do_app/widget/fevourites_contact.dart';

class HomeScreen extends StatefulWidget {
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          iconSize: 30,
          color: Colors.white,
        ),
        title: Text(
          'Chat',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
            iconSize: 30,
            color: Colors.white,
          )
        ],
      ),
      body: Column(children: <Widget>[
        CategorySelector(),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                )),
            child: Column(
              children: <Widget>[FevouritesContact(), RecentChats()],
            ),
          ),
        )
      ]),
    );
  }
}
