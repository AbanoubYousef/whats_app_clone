import 'package:flutter/material.dart';
import 'package:whatsapp/models/chat_model.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder:(context,i)=>new Column(
        children: <Widget>[
          new Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: new CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: new NetworkImage( dummyData[i].avatarurl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                new Text(dummyData[i].name,
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                new Text(dummyData[i].time,
                  style: TextStyle( fontSize: 14.0,color: Colors.grey),
                ),

              ],
            ),
            subtitle: new Container(
              padding: const EdgeInsets.only(top: 5.0),
              child: new Text(dummyData[i].message,
              style: TextStyle(color: Colors.grey,fontSize: 15.0),),
            ),
          )
        ],
      ) ,
      itemCount:dummyData.length ,

    );
  }
}

