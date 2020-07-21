import 'package:flutter/material.dart';
import 'package:chat/data/data_items.dart';
import 'package:chat/screens/search_screen.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: AppBar(
          backgroundColor: Colors.black,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.white),
          iconTheme: IconThemeData(color: Colors.white),
          title: Text("Calls"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                builder: (context) => SearchFriendScreen(),
              ));
              },
            ),
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(right: 30.0),
          child: ListView.builder(
            itemCount: friendsList.length,
            itemBuilder: (ctx, i) {
              return Column(
                children: <Widget>[
                  ListTile(
                    onLongPress: () {},
                    onTap: () => Navigator.of(context).pushNamed('chat'),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.red[800],
                          width: 3,
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              offset: Offset(0, 5),
                              blurRadius: 25)
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          Positioned.fill(
                            child: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(friendsList[i]['imgUrl']),
                            ),
                          ),
                        ],
                      ),
                    ),
                    title: Text(
                      "${friendsList[i]['username']}",
                      style: Theme.of(context).textTheme.title,
                    ),
                    subtitle: Row(children: [
                      Text(
                        "(2) July 21, 2020 ${friendsList[i]['lastMsgTime']}",
                        style: TextStyle(color: Colors.black),
                      ),
                      Icon(
                        Icons.call_received,
                        size: 16,
                        color: Colors.green,
                      )
                    ]),
                    trailing: Container(
                      width: 60,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Icon(
                                Icons.call,
                                size: 25,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider()
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
