import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> datas = [];

  @override
  void initState() {
    super.initState();
    datas = [
      {
        "image": "assets/images/ara-1.jpg",
        "title": "네메시스 축구화 275",
        "location": "제주 제주시 아라동",
        "price": "30000",
        "likes": "2",
      },
      {
        "image": "assets/images/ara-2.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "5",
      },
      {
        "image": "assets/images/ara-3.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0",
      },
      {
        "image": "assets/images/ara-4.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "5",
      },
      {
        "image": "assets/images/ara-5.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0",
      },
      {
        "image": "assets/images/ara-6.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "5",
      },
      {
        "image": "assets/images/ara-7.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0",
      },
      {
        "image": "assets/images/ara-8.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "5",
      },
      {
        "image": "assets/images/ara-9.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0",
      },
      {
        "image": "assets/images/ara-10.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "0",
      },
    ];
  }

  PreferredSizeWidget _appbarWidget() {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          print("click");
        },
        onLongPress: () {
          print("long press!");
        },
        child: Row(
          children: [Text("용산구"), Icon(Icons.arrow_drop_down)],
        ),
      ),
      elevation: 1,
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.tune)),
        IconButton(
            // onPressed: () {}, icon: Icon(Icons.doorbell_sharp)),
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/svg/bell.svg',
              width: 22,
            )),
      ],
    );
  }

  Widget _bodyWidget() {
    return ListView.separated(
      itemBuilder: (BuildContext _context, int index) {
        return Container(
            child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.asset(datas[index]["image"] ?? ''),
            ),
          ],
        ));
      },
      itemCount: 10,
      separatorBuilder: (BuildContext _context, int index) {
        return Container(height: 1, color: Colors.black.withOpacity(0.5));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbarWidget(),
      body: _bodyWidget(),
      // bottomNavigationBar: Container(),
      // bottomNavigationBar: Container(),
    );
  }
}
