import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Map<String, String>> datas = [];
  late int _currentPageIndex;

  @override
  void initState() {
    super.initState();
    _currentPageIndex = 0;
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
        "title": "맥북 싸게 처분합니다 / 내고 없음 / 쿨거래 환영합니다 / 직거래만 합니다",
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
    switch (_currentPageIndex) {
      case 0:
        break;
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
    }
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
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        datas[index]["title"] ?? '',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        datas[index]["location"] ?? '',
                        style: TextStyle(
                            fontSize: 13, color: Colors.black.withOpacity(0.3)),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        calcStringTowon(datas[index]["price"] ?? ''),
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
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

  final oCcy = new NumberFormat("#,###", "ko_KR");
  String calcStringTowon(String priceString) {
    var number = oCcy.format(int.parse(priceString));
    return "${number} 원";
  }

  Widget _bottomNavigationBarwidget() {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          print(index);
          setState(() {
            _currentPageIndex = index;
          });
        },
        currentIndex: _currentPageIndex,
        selectedFontSize: 12,
        selectedItemColor: Colors.black54,
        selectedLabelStyle: TextStyle(color: Colors.black54),
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 3.0),
              child: Icon(
                Icons.home_outlined,
                size: 20,
                color: Colors.black54,
              ),
            ),
            activeIcon: Padding(
                padding: const EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.home,
                  size: 20,
                  color: Colors.black54,
                )),
            label: "홈",
          ),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.document_scanner_outlined,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Icon(
                    Icons.document_scanner,
                    size: 20,
                    color: Colors.black54,
                  )),
              label: "동네 생활"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.map_outlined,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Icon(
                    Icons.map,
                    size: 20,
                    color: Colors.black54,
                  )),
              label: "내 근처"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.chat_outlined,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Icon(
                    Icons.chat,
                    size: 20,
                    color: Colors.black54,
                  )),
              label: "채팅"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(bottom: 3.0),
                child: Icon(
                  Icons.person_outlined,
                  size: 20,
                  color: Colors.black54,
                ),
              ),
              activeIcon: Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Icon(
                    Icons.person,
                    size: 20,
                    color: Colors.black54,
                  )),
              label: "설정"),
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: _appbarWidget(),
      body: _bodyWidget(),
      bottomNavigationBar: _bottomNavigationBarwidget(),
      // bottomNavigationBar: Container(),
    );
  }
}
