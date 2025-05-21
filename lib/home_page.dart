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
              Flexible(fit: FlexFit.loose, child: _listView()),
            ],
          ),
        ),
      ),
    );
  }
}

_listView() {
  return ListView.builder(
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return _itemList();
    },
  );
}

_itemList() {
  return Container(
    width: 100,
    height: 40,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Text("Recent", style: TextStyle(fontWeight: FontWeight.bold)),
  );
}
