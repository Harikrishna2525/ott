import 'package:flutter/material.dart';
import 'package:ott/Home%20page.dart';
import 'package:ott/model.dart';
import 'package:ott/neww.dart';
import 'package:ott/videoe.dart';

class cyclo extends StatefulWidget {
  const cyclo({super.key});

  @override
  State<cyclo> createState() => _cycloState();
}

class _cycloState extends State<cyclo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cast,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person,color: Colors.white,),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: 420,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>vide()));
                },
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/ot3.jpg")
                    )
                  ),

                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("Suzhal",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 24),),
                  )),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text("season 1",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),

                  )),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("▶️ watch prime videos with membership",style: TextStyle(color: Colors.blueAccent,fontSize: 16),),
                  )),
              Container(
                height: 42,
                width: 240,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,

                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 55.0),
                      child: Text(" Watch the prime",style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),),
                    ),
                  ],
                ),
                ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.thumb_up,color: Colors.white,),
                        Text("Like",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.thumb_down,color: Colors.white,),
                        Text("Dislike",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.slow_motion_video_outlined,color: Colors.white,),
                        Text("Watch",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.share,color: Colors.white,),
                        Text("Share",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(Icons.video_call,color: Colors.white,),
                        Text("Video",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                ],
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Languages",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700,fontSize: 18,fontStyle: FontStyle.normal),),

                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Audio (16),",style: TextStyle(color: Colors.grey),),
                  ),
                  Text("Subtitles (38)",style: TextStyle(color: Colors.grey),)
                ],
              ),
                  Container(
                    height: 300,
                      width: 400,

                      child: nes()
                  ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Cast & crew",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                  )),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Details from suzhal",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w500),),
                  )),
              Container(
                height: 300,
                width: 400,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2
                    ),itemCount: gr.length,
                    itemBuilder: (BuildContext  context,index){
                      return Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Column(
                          children: [
                            Expanded(
                              child: Container(
                                height: 250,
                                width: 150,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(gr[index].image),
                                    fit: BoxFit.fill
                                  )
                                ),
                              ),
                            ),
                            Text(gr[index].text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ],
                        ),
                      );
                    }
                ),
              ),



                ],
                ),

              ),



          ),
    );
  }
}
