import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterscreenState extends StatefulWidget{
  @override
  Counterscreen createState() =>Counterscreen();
}

class Counterscreen extends State<CounterscreenState> {
  int _count =0;
  int _count2 =0;
  int _count3 =0;
  int _count4 =0;
  int _count5 =0;
  int _count6 =0;
  void incrementCount(){
    setState(() {
      _count++;
    }); }

  void decrement(){
    setState(() {
      _count--;
    });
  }

  void incrementCount2(){
    setState(() {
      _count2++;
    }); }

  void decrement2(){
    setState(() {
      _count2--;
    });
  }


  void incrementCount3(){
    setState(() {
      _count3++;
    }); }

  void decrement3(){
    setState(() {
      _count3--;
    });
  }


  void incrementCount4(){
    setState(() {
      _count4++;
    }); }

  void decrement4(){
    setState(() {
      _count4--;
    });
  }


  void incrementCount5(){
    setState(() {
      _count5++;
    }); }

  void decrement5(){
    setState(() {
      _count5--;
    });
  }


  void incrementCount6(){
    setState(() {
      _count6++;
    }); }

  void decrement6(){
    setState(() {
      _count6--;
    });
  }

  void reaset(){
    setState(() {
      _count=0;
      _count2=0;
      _count3=0;
      _count4=0;
      _count5=0;
      _count6=0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(title: Text("My Excersises ABS"),
          centerTitle: true,
        ),

        body:SingleChildScrollView(
          scrollDirection:Axis.vertical,
          child:Column(
            children: [

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide1.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount,
                      ),
                      Text("${_count}"),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: decrement,
                      ),
                    ],
                  )
              ),

              //////////////////

              Container(
                margin: EdgeInsets.only(top: 15),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide2.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount2,
                      ),
                      Text("${_count2}"),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: decrement2,
                      ),
                    ],
                  )
              ),

              //////////////////

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide3.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount3,
                      ),
                      Text("${_count3}"),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: decrement3,
                      ),
                    ],
                  )
              ),

              ////////////////////////

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide4.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount4,
                      ),
                      Text("${_count4}"),
                      FloatingActionButton(
                          child: Icon(Icons.remove),
                          onPressed: decrement4
                      ),
                    ],
                  )
              ),


              //////////////////////////

              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide5.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount5,
                      ),
                      Text("${_count5}"),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: decrement5,
                      ),
                    ],
                  )
              ),

              ///////////////////
              Container(
                margin: EdgeInsets.only(top: 10),
                width: 350,height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("images/Slide6.JPG")
                    )
                ),

              ),
              Container(

                  child:

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        child: Icon(Icons.add),
                        onPressed: incrementCount6,
                      ),
                      Text("${_count6}"),
                      FloatingActionButton(
                        child: Icon(Icons.remove),
                        onPressed: decrement6,
                      ),
                    ],
                  )
              ),
              SizedBox(height: 20,),
              ElevatedButton(
                onPressed: reaset,
                child: Text("Reaset",style: TextStyle(fontSize: 27,),),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(38)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                ),
              ),
              SizedBox(height: 10,),




            ], ),



        ));

  }
}