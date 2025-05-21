import 'package:flutter/material.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NFT",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      Text(
                        "Best NFT collection in one place",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            "assets/images/icon.png",
                            color: Colors.white,
                          ),
                          Image.asset(
                            "assets/images/img_icon1.png",
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                height: 40,
                child: _listView(),
              ),
              Row(
                children: [
                  Text(
                    "Recent Collection’s",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.topRight,
                      child: Text(
                        "See all",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(child: _listNFT()),
            ],
          ),
        ),
      ),
    );
  }
}

_listView() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return _itemList();
    },
  );
}

_itemList() {
  return Container(
    margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    width: 100,
    height: 40,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      "Recent",
      textAlign: TextAlign.center,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
  );
}

_listNFT() {
  return ListView.builder(
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return _itemNFT();
    },
  );
}

_itemNFT() {
  return Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        transform: Transform.rotate(angle: 0.5),
        colors: [Colors.red, Colors.orange],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: Stack(children: [Text("data")]),
  );
}
