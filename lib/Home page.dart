import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:ott/model.dart';
import 'package:ott/suzhal.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [SliverAppBar(
          expandedHeight: 150,
          backgroundColor: Colors.black,
          automaticallyImplyLeading: false,
          title: Text("Prime video",style: TextStyle(color: Colors.white,fontSize: 16,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500),),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.cast,color: Colors.white,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person,color: Colors.grey,),
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
            title: Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("All",style: TextStyle(color: Colors.yellowAccent,fontSize: 14,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Movies",style: TextStyle(color: Colors.yellowAccent,fontSize: 14,fontWeight: FontWeight.w500),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Tv shows",style: TextStyle(color: Colors.yellowAccent,fontSize: 14,fontWeight: FontWeight.w500),),
                ),
              ],
            ),
          ),

        )];
      }, body: Container(
        height: 2000,
        width: 420,
        color: Colors.black,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> cyclo()));
                    },
                    child: CarouselSlider.builder(
                        options: CarouselOptions(
                          autoPlay: true,
                          aspectRatio: 16/9,
                          scrollDirection: Axis.horizontal,
                          viewportFraction: 1,
                          autoPlayAnimationDuration: Duration(seconds: 4),
                          autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                          autoPlayInterval: Duration(milliseconds: 3000),
                          reverse: false,
                          // enlargeCenterPage: false,
                          // clipBehavior: Clip.hardEdge,
                          onPageChanged:(index,reson){
                            setState(() {
                              currentindex=index;
                            });
                          }

                        ),
                      itemCount: cer.length,
                      itemBuilder: (BuildContext context,int index,int){
                          return Container(
                            height: 100,
                            width: 420,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(cer[index].image),
                                fit: BoxFit.cover
                              ),
                            ),
                          );
                      },
                    ),
                  ),
                
                  Positioned(
                    left: 5,
                      bottom: 1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.lock,color: Colors.yellowAccent,),
                          ),
                          Text("Rent",style: TextStyle(color: Colors.pinkAccent,fontSize: 18,fontWeight: FontWeight.w500),)
                        ],
                      )),
                
                ],
              ),
              DotsIndicator(
                  position: currentindex,
                  dotsCount: 6
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Continues Watching",style: TextStyle(color: Colors.yellowAccent,fontSize: 18,fontWeight: FontWeight.w500),),
                  )),
              Container(
                height: 200,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount: lie.length,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 180,
                        width: 250,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(lie[index].image),
                            fit: BoxFit.contain
                          )
                        ),
                      ),
                    );
                
                    }),
              ),
              Align(
                alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Thrillers movies",style: TextStyle(color: Colors.yellowAccent,fontSize: 18,fontWeight: FontWeight.w500),),
                  )),
              Container(
                height: 400,
                width: 400,
                child: GridView.builder(
                  // clipBehavior: Clip.hardEdge,
                  // shrinkWrap: false,
                    // physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 4,
                      mainAxisSpacing: 2,
                
                    ), itemCount: aps.length,
                    itemBuilder: (BuildContext  context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: 280,
                              // foregroundDecoration: For,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(aps[index].image),
                                  // fit: BoxFit.fitHeight

                                )
                              ),
                            ),
                            Text(aps[index].text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
                          ],

                        ),
                      );
                    }
                ),

              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RichText(
                          text: TextSpan(
                        text: " 🔒 Premium ",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 18),

                      )),
                      RichText(text: TextSpan(
                        text: "Comdey movies",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.w500,fontSize: 18)
                      ))
                    ],

                  ),
                ),
              ),
              Container(
                height: 300,
                width: 400,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                    itemCount:dc.length ,
                    itemBuilder: (BuildContext  context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 180,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(dc[index].image),
                            fit: BoxFit.cover
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
                    child: Text("▶️ watch this for using subscription",style: TextStyle(color: Colors.blue,fontSize: 16,fontWeight: FontWeight.w500),),
                  )),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(text: TextSpan(
                      text: "prime",style: TextStyle(color: Colors.pinkAccent,fontStyle: FontStyle.italic,fontWeight: FontWeight.w500,fontSize: 18),
                    )),
                  ),
                  RichText(text: TextSpan(
                    text: "Actions movies",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500)
                  ))
                ],
              ),
              Container(
                height: 400,
                width: 400,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 4,
                    ),
                    itemCount: act.length,
                    itemBuilder: (BuildContext  context,index){
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              height: 140,
                              width: 150,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(act[index].image,),
                                  fit: BoxFit.cover
                                )
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(act[index].text1,style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),),
                            ),
                          ],
                        ),
                      );
                      
                    }
                ),
              ),
              

                
                
                
                
            ],
          ),
        ),
      
      ),),

    );
  }
}
