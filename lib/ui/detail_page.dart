import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key});

  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Stack(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    _headerDetail(),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 35,
                      child: Flexible(fit: FlexFit.tight, child: _listTab()),
                    ),

                    _nftDami(),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/img_banner.jpg'),
                      ),
                    ),
                    Row(
                      children: [
                        CircleAvatar(
                          child: Image.asset('assets/images/man.png'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User3243",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "By nft mentor",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Current Price",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            Text(
                              "₹ 139.00",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Remaining time",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "23h : 41m : 12s",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Visitors",
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                "20.2k",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: double.infinity,
                      child: Text(
                        "Detail’s:",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 10),
                      width: double.infinity,
                      child: Text(
                        "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi  ut aliquip ex ea commodo consequat. Duis aute irure dolor in  reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla  pariatur.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: 'Times New Roman',
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 2,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.08),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 3),
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/bag.png',
                          width: 10,
                          height: 10,
                        ),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "Place Bid",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAppBar({super.key});
//
//   Size get preferredSize => Size.fromHeight(80);
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Text("data"));
//   }
// }

Widget _nftDami() {
  return Padding(
    padding: EdgeInsets.only(top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "Nft dami Name\n",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              TextSpan(
                text: "By hedman",
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          ),
        ),

        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset("assets/images/icon.png"),
            Image.asset("assets/images/heart.png", color: Colors.white),
          ],
        ),
      ],
    ),
  );
}

Widget _listTab() {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 4,
    itemBuilder: (BuildContext context, int index) {
      return _itemTab(context);
    },
  );
}

Widget _itemTab(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(right: 10),
    width: 120,
    child: ElevatedButton(
      onPressed: () {},
      child: Text("Recent", style: TextStyle(color: Colors.black)),
    ),
  );
}

Widget _headerDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "NTF\n",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
            ),
            TextSpan(
              text: "Best NFT collection in one place",
              style: TextStyle(fontStyle: FontStyle.italic, fontSize: 10),
            ),
          ],
        ),
      ),

      Stack(
        alignment: Alignment.center,
        children: [
          Image.asset("assets/images/icon.png", color: Colors.white),
          Image.asset("assets/images/img_icon1.png", color: Colors.white),
        ],
      ),
    ],
  );
}
