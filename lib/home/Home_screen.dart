import 'package:exam/home/product.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int? i=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              children: [
                Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.topLeft,
                  child: Text("Explor product"),
                ),
              Row(
                children: [
                  Container(
                    height: 30,
                    width: 200,
                    alignment: Alignment.topLeft,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          hintText:"enter"
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    height: 30,
                    width: 100,
                    alignment: Alignment.topLeft,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                          ),
                          hintText:"enter"
                      ),
                    ),
                  ),
                ],
              ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      height: 20,
                      width: 50,
                      child: Text("Cast",style: TextStyle(color: Colors.white,fontSize: 10),),
                    ),
                    Container(
                      height: 20,
                      width : 50,
                      child:  Text("List",style: TextStyle(color: Colors.white,fontSize: 10),),
                    )
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState((){
                          i=0;
                        });
                      },
                      child: Text("Elctrocic",style: TextStyle(color: Colors.black,fontSize: 15),),
                    ),
                    SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        setState((){
                          i=1;
                        });
                      },
                      child: Text("Saree",style: TextStyle(color: Colors.pink,fontSize: 15,fontWeight: FontWeight.bold),),
                    ),
                  ],
                ),
                Container(
                  height: 300,
                  width: 300,
                  color: Colors.white,
                  child: IndexedStack(
                    index: i,
                    children: [
                      Container(
                        height: 300,
                        width: 300,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Image.asset('assets/image/p1.jpeg',width: 100,height: 200),
                              Image.asset('assets/image/p2.jpeg',width: 100,height: 200),
                              Image.asset('assets/image/p3.jpeg',width: 100,height: 100,)
                              ],
                          ),
                        ),
                      ),
                      Container(
                        height: 300,
                        width: 300,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              Image.asset('assets/image/s1.jpeg',width: 100,height: 300),
                              Image.asset('assets/image/s2.jpeg',width: 100,height: 300),
                              Image.asset('assets/image/s3.jpeg',width: 100,height: 300),
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                // InkWell(
                //   onTap: () {
                //     setState((){
                //       i=0;
                //     });
                //   },
                //   child: Text("Elctrocic",style: TextStyle(color: Colors.black,fontSize: 25),),
                // ),
                // InkWell(
                //   onTap: () {
                //     setState((){
                //       i=1;
                //     });
                //   },
                //   child: Text("Saree",style: TextStyle(color: Colors.pink,fontSize: 25),),
                // ),
                // InkWell(
                //   onTap: () {
                //     setState((){
                //       i=2;
                //     });
                //   },
                //   child: Text("hyy"),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
