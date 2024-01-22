import 'package:flutter/material.dart';
import 'package:ott/model.dart';

class nes extends StatefulWidget {
  const nes({super.key});

  @override
  State<nes> createState() => _nesState();
}

class _nesState extends State<nes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [SliverAppBar(
            expandedHeight: 30,
            backgroundColor: Colors.black,
           

            bottom: TabBar(tabs: [
              Text("Episode"),
              Text("More details"),
            ],),

          )];
        }, body: TabBarView(children: [
          Container(
            height: 60,
            width: 100,
            color: Colors.black,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ep.length,
                itemBuilder: (BuildContext  context,index){
                  return ListTile(
                    title: Text(ep[index].text,style: TextStyle(color: Colors.blue),),
                    subtitle: Text(ep[index].text2,style: TextStyle(color: Colors.white),),
                  );
                }
            ),
          ),
          Container(
            height: 80,
            width: 100,
            color: Colors.black,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: ep.length,
                itemBuilder: (BuildContext  context,index){
                  return ListTile(
                    title: Text(ep[index].text1,style: TextStyle(color: Colors.blue),),
                    subtitle: Text(ep[index].text3,style: TextStyle(color: Colors.white),),
                  );
                }
            ),
          ),
        ],

        )
        ),
      )
    );
  }
}
