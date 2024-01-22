import 'package:flutter/material.dart';

class sear extends StatefulWidget {
  const sear({super.key});

  @override
  State<sear> createState() => _searState();
}

class _searState extends State<sear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Text("search",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.cast,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person,color: Colors.white,),
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: 420,
        color: Colors.black,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search by actor,title",hintStyle: TextStyle(color: Colors.grey),
                  suffixIcon: Icon(Icons.keyboard_voice_outlined),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Genres",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 16),),
                ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Container(
                      height: 65,
                      width: 120,
                      color: Colors.white,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Actions and adventure",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 120,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Comedy",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 120,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Drama",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 65,
                      width: 120,
                      color: Colors.white,
                      child:
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text("Anime",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 122,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Documentary",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 55,
                        width: 120,
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text("Fantasy",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                    ),
                  ],
                ),

              ],

            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                    color: Colors.grey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  )
                ),
                child: Center(child: Text("See more",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Featured collections",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                )),
            ListTile(
              title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("tamil",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 18),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("English",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Hindi",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Malayalam",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Telugu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Urudu",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600),),
                        Icon(Icons.arrow_forward_ios_sharp,color: Colors.grey,size: 16,)
                      ],
                    ),
                  ),
                ],

              ),

            ),
            Container(
              height: 50,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  topLeft: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                )
              ),
              child: Center(child: Text("See more",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
            )
        ],

        ),
      ),

    );
  }
}
