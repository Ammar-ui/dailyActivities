// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown[300],
          title: Text(
            "Daily activity",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.only(top: 10,bottom: 10),
                width: 350,height: 500,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/ammar.png")
                    )
                ),

              ),
              Container(
                child: Text("Marshal Ammar ",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.brown),),
                margin: EdgeInsets.only(bottom: 10),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/My train");
                },
                
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green[900]),
                  padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "Training",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 22,
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/Home");
                },
                
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.red[900]),

                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 95, vertical: 11)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(27))),
                ),
                child: Text(
                  "Tasks",
                  style: TextStyle(fontSize: 24),
                ),
              ),

            ],
          ),
        ));
  }
}
