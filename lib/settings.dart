import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott/model.dart';

class sett extends StatefulWidget {
  const sett({super.key});

  @override
  State<sett> createState() => _settState();
}

class _settState extends State<sett> {

  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("Settings",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18),),
      ),
      body: Container(
        height: 800,
        width: 420,
        color: Colors.black,
        child: Column(
          children: [
            ListTile(
              title: Text("Stream & Download",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("Manage the quality and wi-fi",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
            ),
            ListTile(
              title: Text("Notificaions",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("on",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
            ),
            ListTile(
              title: Text("Auto play",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("Play the next episode automaically",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
              trailing: CupertinoSwitch(
                value: _switchValue,      // Boolean value indicating the current state of the switch
                onChanged: (bool value) {
                  // Callback function called when the switch is toggled
                  setState(() {
                    _switchValue = value;  // Update the state based on the new value
                  });
                },
                activeColor: CupertinoColors.activeBlue, // Color when the switch is ON
              )
            ),
            ListTile(
              title: Text("Parent controls",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("Control what you can watch",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
            ),
            ListTile(
              title: Text("Registered devices",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("See all registered",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
            ),
            ListTile(
              title: Text("Clear video search history",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),

            ),
            ListTile(
              title: Text("My Account",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text("Prime & subscriptions",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("Manage your subscriptions",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w600,fontSize: 14),),
            ),
            ListTile(
              title: Text("Hidden videos",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text("Language",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
              subtitle: Text("English",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text("Help & Feedback",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
            ),
            ListTile(
              title: Text("About & legal",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),),
            ),

          ],
        ),
      ),
    );
  }
}
