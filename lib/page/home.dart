import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            print("click");
          },
          onLongPress: (){
            print("long press!");
          },
          child: Row(
            children: [Text("용산구"),
              Icon(Icons.arrow_drop_down)],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
          IconButton(
              // onPressed: () {}, icon: Icon(Icons.doorbell_sharp)),
              onPressed: () {}, icon: SvgPicture.asset('assets/svg/bell.svg', width: 22,)
          ),
        ],
      ),
    );
  }
}
