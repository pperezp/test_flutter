import "package:flutter/material.dart";
import "package:test_flutter/models/chat_model.dart";

class Chat extends StatelessWidget{

    @override
    Widget build(BuildContext context) {
        return new ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, i) => new Column(
                children: <Widget>[
                    new Divider(
                        height: 10.0,
                    ),
                    new ListTile(
                        leading: new CircleAvatar(
                            foregroundColor: Theme.of(context).primaryColor,
                            backgroundColor: Colors.grey,
                            backgroundImage: new NetworkImage(data[i].avatarUrl),
                        ),
                        title: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                                new Text(data[i].name, style: new TextStyle(fontWeight: FontWeight.bold)),
                                new Text(data[i].time, style: new TextStyle(color: Colors.grey, fontSize: 14.0)),

                            ],
                        ),
                        subtitle: new Container(
                            padding: const EdgeInsets.only(top: 0.5),
                            child: new Text(data[i].message, style: new TextStyle(color: Colors.grey, fontSize: 14.0),)
                        ),
                    )
                ],
            ),
        );
    }
}