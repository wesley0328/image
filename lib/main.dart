import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';


void main() {
  runApp(StarCounter());
}


class StarCounter extends StatelessWidget {
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Screen',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'image'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _itemImage = [
    Image.network("https://cache.ptt.cc/c/https/i.imgur.com/P4jmSOsl.jpg?e=1668541724&s=pO-_RqoY4qFHzwWBlb1ZQA"),
    Image.network("https://cache.ptt.cc/c/https/i.imgur.com/2VK01QBl.jpg?e=1668483065&s=7WX0tZEBjhFzDfWLeEd9GQ"),
    Image.network("https://cache.ptt.cc/c/https/i.imgur.com/gnU9bopl.jpg?e=1668516556&s=2yv4-ZF16hOxgqC5jv2ozw"),
    Image.network("https://cache.ptt.cc/c/https/i.imgur.com/yjL6CVll.jpg?e=1668573492&s=1DCzqNFE586LAATx9Fx2qA"),
  ];

  int index =0;


  tmpFunction() {
    Container(
      child: _itemImage[index],
      width: 500,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              child: _itemImage[index],
              width: 500,
            ),
            Text(
              '',
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  if ((index-1) < 0) index = _itemImage.length-1;
                  else index -=1;
                  setState(() { index;});
                  final snackBar = SnackBar(
                     content: const Text('fubon how to win'),);
                     ScaffoldMessenger.of(context).showSnackBar(snackBar);
                }, child: Text("<")),
                ElevatedButton(onPressed: (){
                  if ((index+1) >= _itemImage.length)index = 0;
                  else index +=1;
                  setState(() { index;});
                }, child: Text(">")),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ElevatedButton(onPressed: (){
            //       final snackBar = SnackBar(
            //         content: const Text('Yay! A SnackBar!'),);
            //       ScaffoldMessenger.of(context).showSnackBar(snackBar);
            //     }, child:  Container(
            //       child: _itemImage[index],
            //       width: 500,
            //     ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
