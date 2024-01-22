import 'package:flutter/material.dart';
import 'package:ott/model.dart';

class downl extends StatefulWidget {
  const downl({super.key});

  @override
  State<downl> createState() => _downlState();
}

class _downlState extends State<downl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text("Find the videos to download",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
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
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Dowmloads from watchlist",style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                  )),
              Container(
                height: 150,
                width: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:du.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(du[index].image),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Prime",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 18),),
                    Text(" - Amazon original movies",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),)
                  ],
                ),
              ),
              Container(
                height: 250,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: du.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            topRight: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                            bottomRight: Radius.circular(12)
                          ),
                          image: DecorationImage(
                            image: NetworkImage(du[index].images),
                            fit: BoxFit.fill
                          )
                        ),
                      ),
                    );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Prime",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.w600),),
                    Text(" - Top rated TV shows on",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600),)
                  ],
                ),
              ),
              Container(
                height: 300,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: du.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12),
                              bottomRight: Radius.circular(12)
          
                          ),
                          image: DecorationImage(
                            image: NetworkImage(du[index].image1),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                    );
                    }
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text("Prime",style: TextStyle(color: Colors.blueAccent,fontSize: 18,fontWeight: FontWeight.w600),),
                    Text("- Kids movies & Animations",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w600))
                  ],
                ),
              ),
              Container(
                height: 120,
                width: 420,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: du.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(du[index].image2),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    );

                    }
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("▶️Watch premimum subscription for this",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w600,fontSize: 16),),
                  ))
            ],
          ),
        ),
      ),

    );
  }
}
