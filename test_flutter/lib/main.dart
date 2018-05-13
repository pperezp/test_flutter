import "package:flutter/material.dart";
import "whatsapp_home.dart";
// https://stackoverflow.com/questions/23632624/android-studio-tab-spacing

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget{
    Widget build(BuildContext context){
        return new MaterialApp(
            title: "Whatsapp",
            theme: new ThemeData(
                primaryColor: new Color(0xff075E54),
                accentColor: new Color(0xff25D366),
            ),
            home: new WhatsAppHome(),
            debugShowCheckedModeBanner: false,
        );
    }
}

