import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

 final text = [
    'Berita 1',
    'Berita 2',
    'Berita 3',
    'Berita 4',
    'Berita 5',
  ];

  final gambar = [
    '1.jpeg',
    '2.jpeg',
    'bola.jpeg',
    '1.jpeg',
    '2.jpeg',
  ];

  final tanggal = [
    'Barcelona , Agt 20 2021',
    'Barcelona , Agt 21 2021',
    'Barcelona , Agt 22 2021',
    'Barcelona , Agt 23 2021',
    'Barcelona , Agt 24 2021',
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      primarySwatch: Colors.red,
      ),
      home: Scaffold(
        appBar: AppBar(   
          title: Text('MyApp'),
        ),
        body: 
           Column(
            children: [
              Con1(),
              Con2(),
              Expanded(
                child: ListView.builder(
                   itemCount: text.length,
                      itemBuilder: (context, index) {
                        return Con3(index);
                      },              
                ),
              )
            ]
            ),
              ),
      );
    
  }



Con3(int index){
  
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0,top : 10),
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
                  ),            
                   child : Image.asset(
                          'assets/images/' + gambar[index],
                          alignment: Alignment.center,
                        fit: BoxFit.fill, 
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
                child: Text(text[index], 
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
            child: Text(tanggal[index],
            style: TextStyle(fontSize: 11)
            ),
          ),
        ],
      ),
    );
  }


Con2 () {
    return Container(
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
    );
  }


 Con1 () {
    return Container(
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
    );
  }

}