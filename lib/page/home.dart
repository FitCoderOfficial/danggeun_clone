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
        "likes": "82",
      },
      {
        "image": "assets/images/ara-3.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "72",
      },
      {
        "image": "assets/images/ara-4.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "155",
      },
      {
        "image": "assets/images/ara-5.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "84",
      },
      {
        "image": "assets/images/ara-6.jpg",
        "title": "갤럭시 64g",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "125",
      },
      {
        "image": "assets/images/ara-7.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "99",
      },
      {
        "image": "assets/images/ara-8.jpg",
        "title": "LA갈비 5kg팔아요",
        "location": "제주 제주시 아라동",
        "price": "100000",
        "likes": "63",
      },
      {
        "image": "assets/images/ara-9.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "32",
      },
      {
        "image": "assets/images/ara-10.jpg",
        "title": "치약팝니다",
        "location": "제주 제주시 아라동",
        "price": "5000",
        "likes": "11",
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
      padding: const EdgeInsets.symmetric(horizontal: 10),
      itemBuilder: (BuildContext _context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                child: Image.asset(
                  datas[index]["image"] ?? '',
                  width: 100,
                  height: 100,
                ),
              ),
              // SizedBox(width: 20),
              Expanded(
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.only(left: 20),
                  // color: Colors.blue,
                  child: Column(
                    // mainAxisAlignment: ,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(datas[index]["title"] ?? ''),
                      Text(datas[index]["location"] ?? ''),
                      Text(datas[index]["price"] ?? ''),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/heart_off.svg",
                              width: 13,
                            ),
                            SizedBox(width: 5),
                            Text(datas[index]["likes"] ?? ''),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )),
        );
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
