import "package:flutter/material.dart";
import "pages/camara.dart";
import "pages/chat.dart";
import "pages/estados.dart";
import "pages/llamadas.dart";

class WhatsAppHome extends StatefulWidget {
    @override
    _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

class _WhatsAppHomeState extends State<WhatsAppHome>
        with SingleTickerProviderStateMixin {

    TabController _tabController;

    @override
    void initState() {
        super.initState();
        _tabController = new TabController(vsync: this, initialIndex: 2, length: 4);
    }


    @override
    Widget build(BuildContext context) {
        return new Scaffold(
            appBar: new AppBar(
                title: new Text("Whatsapp test"),
                elevation: 0.7,
                bottom: new TabBar(
                    controller: _tabController,
                    indicatorColor: Colors.white,
                    tabs: <Widget>[
                        new Tab(icon:new Icon(Icons.camera_alt)),
                        new Tab(text: "Chats"),
                        new Tab(text: "Estados"),
                        new Tab(text: "Llamadas"),

                    ]
                ),
                actions: <Widget>[
                    new Icon(Icons.search),
                    new Padding(padding: const EdgeInsets.symmetric(horizontal: 5.0)),
                    new Icon(Icons.more_vert)
                ],
            ),
            body: new TabBarView(
                controller: _tabController,
                children: <Widget>[
                    new Camara(),
                    new Chat(),
                    new Estado(),
                    new Llamada()
                ],
            ),
            floatingActionButton: new FloatingActionButton(
                backgroundColor: Theme.of(context).accentColor,
                child: new Icon(
                    Icons.message,
                    color: Colors.white
                ),
                onPressed: () => print("Open chats"),
            ),
        );
    }
}