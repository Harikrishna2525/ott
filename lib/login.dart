import 'package:flutter/material.dart';
import 'package:ott/Home%20page.dart';
import 'package:ott/navigat.dart';

class log extends StatefulWidget {
  const log({super.key});

  @override
  State<log> createState() => _logState();
}

class _logState extends State<log> {

  final Hari= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: Hari,
        child: Column(
          children: [SizedBox(
            height: 150,
          ),
            Container(
              height: 350,
              width: 410,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15)

                ),
                image: DecorationImage(
                  image: NetworkImage("https://www.techchink.com/wp-content/uploads/2021/01/Amazon-Prime-Video.jpg"),
                  fit: BoxFit.fill,
                )
              ),

              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Login",style: TextStyle(color: Colors.pink,fontSize: 20,fontWeight: FontWeight.bold),),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          icon: Icon(Icons.attach_email,color: Colors.white70,),
                          hintText: "Enter the Email",hintStyle: TextStyle(color: Colors.yellowAccent),
                          border:OutlineInputBorder()
                        ),
                        validator: (email)
                        {
                          if( email == null || email.isEmpty|| !RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$').hasMatch(email) )
                          {
                            return "Please enter the valid Email";

                          }
                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),

                        decoration: InputDecoration(
                          icon: Icon(Icons.lock,color: Colors.white70,),
                          hintText: "Enter the password",hintStyle: TextStyle(color: Colors.yellowAccent),
                          border: OutlineInputBorder(),
                        ),
                        validator: (pass)
                        {
                          if(pass == null || pass.isEmpty|| pass.length<4)
                          {
                            return "Please Enter the correct length";

                          }


                        }
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(onPressed: (){
                      setState(() {
                        if(Hari.currentState!.validate()){
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => nav()));
                        }

                      });


                    }, child: Text("Login")),
                  )
                ],
              ),
            ),
          ],
        ),



      ),

    );
  }
}
