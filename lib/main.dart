import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
            final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(   
        title: Text(widget.title),
      ),
      body: 
        ListView(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(3.5),
              margin: const EdgeInsets.all(15),
              height: 20.5,
              child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[ 
                  Text("BERITA TERBARU"),     
                  Text("PERTANDINGAN HARI INI"),
                  ],
                ),
            ),
            
            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.purple)
              ),
              child: 
              Column(
                children: <Widget>[
                  Container(         
                    height: 150,          
                    decoration: const BoxDecoration(               
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                           fit: BoxFit.fitWidth,
                          image: AssetImage('assets/images/bola.jpeg'),  
                        ),
                    ),
                  ),

                  Container(
                    margin: const EdgeInsets.all(10.0),
                    child: const Text("Costa Mendekat ke Palmeiras",
                    style: TextStyle(
                      fontSize:20,
                          color:Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ), 

                  Container(
                  padding: const EdgeInsets.all(20.0),
                  alignment: Alignment.centerLeft,
                  color: Colors.purpleAccent,
                  child: const Text("Transfer"),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: 
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(

                        width: 170,
                        height: 100, 
                        decoration: BoxDecoration(  
                          border: Border.all(color: Colors.grey),             
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/1.jpeg'),  
                            ),                    
                        ),
                      ),
                      Expanded(
                         child : Container(
                          padding: const EdgeInsets.all(5.0),
                          width: 168,
                          height: 100, 
                          alignment: Alignment.center,
                        decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                        child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
                        textAlign: TextAlign.center,style: TextStyle(fontSize: 11)),
                      ),
                      )
                    ],
                    
                  ),

                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    child: const Text("Barcelona Feb 13, 2021",
                    style: TextStyle(fontSize: 11)
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: 
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 170.7,
                        height: 100, 
                        decoration: BoxDecoration(  
                          border: Border.all(color: Colors.grey),             
                          image: const DecorationImage(
                            alignment: Alignment.center,
                            fit: BoxFit.fitWidth,
                            image: AssetImage('assets/images/1.jpeg'),  
                          ),                    
                        ),
                      ),

                      Container(
                        padding: const EdgeInsets.all(5.0),
                        width: 167.3,
                        height: 100, 
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 11)
                          ),
                      ),
                    ],
                  ),

                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                        ),
                        child: const Text("Barcelona Feb 13, 2021",
                        style: TextStyle(fontSize: 11)
                        ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 10.0, right: 10.0,top: 10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: 
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 170.7,
                        height: 100, 
                        decoration: BoxDecoration(  
                          border: Border.all(color: Colors.grey),             
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/1.jpeg'),  
                            ),                    
                        ),
                      ),

                         Container(
                           padding: const EdgeInsets.all(5.0),
                          width: 167.3,
                          height: 100, 
                          alignment: Alignment.center,
                        decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                        child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11)
                        ),
                      ),
                      
                    ],
                    
                  ),

                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    child: const Text("Barcelona Feb 13, 2021",
                    style: TextStyle(fontSize: 11)
                    ),
                  ),
                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
              child: 
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 170.7,
                        height: 100, 
                        decoration: BoxDecoration(  
                          border: Border.all(color: Colors.grey),             
                            image: const DecorationImage(
                              alignment: Alignment.center,
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/1.jpeg'),  
                            ),                    
                        ),
                      ),

                         Container(
                           padding: const EdgeInsets.all(5.0),
                          width: 167.3,
                          height: 100, 
                          alignment: Alignment.center,
                        decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                  ),
                        child: const Text("Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat", 
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 11)
                        ),
                      ),
                      
                    ],
                    
                  ),

                  Container(
                    height: 30,
                    alignment: Alignment.centerLeft,
                    width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                      ),
                    child: const Text("Barcelona Feb 13, 2021",
                    style: TextStyle(fontSize: 11)
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
    );
  }
}
