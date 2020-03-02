import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_to_do_app/model/message_model.dart';
import 'package:flutter_to_do_app/screens/chat_screen.dart';

class FevouritesContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('Fevourite contacts',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      letterSpacing: 1,
                    )),
                IconButton(
                  icon: Icon(Icons.more_horiz),
                  onPressed: () {},
                  color: Colors.blueGrey,
                  iconSize: 30.0,
                )
              ],
            ),
          ),
          Container(
            height: 120.0,
            child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          user: favorites[index],
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage:
                                AssetImage(favorites[index].imageUrl),
                          ),
                          SizedBox(height: 6.0),
                          Text(favorites[index].name,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              )),
                        ],
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
