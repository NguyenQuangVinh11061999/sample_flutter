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
          child: Column(
            children: [
              _headerDetail(),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Flexible(fit: FlexFit.tight, child: _listTab()),
              ),

              _nftDami(),
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
    width: 150,
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
