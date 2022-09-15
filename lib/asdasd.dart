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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: const Text("BERITA TERBARU"),
                  padding: const EdgeInsets.all(20.0),
                  ),
                Container(
                  child: const Text("PERTANDINGAN HARI INI"),
                  padding: const EdgeInsets.all(20.0),
                ),
              ],
            ),
        SizedBox(
          height: 210,
          child: Card(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/aguero2.jpeg'),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                  ),
                    child: Text("YOUR TEXT"),
                ),
                const Divider(),
               ListTile(
                title: const Text(
                  'Costa Mendekat ke Palmeiras',
                  style: TextStyle(fontWeight: FontWeight.w500),
                  textAlign: TextAlign.center,
                ),
               
              ),
                ListTile(
                  title: const Text('Transfer'),
                  tileColor: Colors.purple,
                ),
              ],
            ),
          ),

                
              ),
          ],
        )
    );
  }
}
