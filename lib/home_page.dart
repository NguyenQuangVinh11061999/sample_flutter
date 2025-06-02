import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_flutter/bloc/game_bloc.dart';
import 'package:sample_flutter/detail_page.dart';
import 'package:sample_flutter/model/game.dart';
import 'package:sample_flutter/state/game_state.dart';

class ScreenHomePage extends StatelessWidget {
  const ScreenHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Stack(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      _headerText(),

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
                  Expanded(
                    child: BlocBuilder<GameBloc, GameState>(
                      builder: (context, state) {
                        if (state is GameLoading) {
                          return Center(child: CircularProgressIndicator());
                        } else if (state is GameLoaded) {
                          return _listNFT(state.games);
                        } else if (state is GameError) {
                          return Center(child: Text("Error: ${state.message}"));
                        }
                        return Center(
                          child: Text("Press button to load users"),
                        );
                      },
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 40,
                left: 10,
                right: 10,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                    shape: BoxShape.rectangle,
                    color: Colors.black.withOpacity(0.3),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/images/home.png"),
                        Image.asset("assets/images/search.png"),
                        Image.asset("assets/images/send.png"),
                        Image.asset("assets/images/safari.png"),
                        Image.asset("assets/images/settings.png"),
                      ],
                    ),
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

_listNFT(List<Game> list) {
  return ListView.builder(
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return _itemNFT(context, list[index]);
    },
  );
}

_itemNFT(BuildContext context, Game game) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (builder) {
            return DetailsPage();
          },
        ),
      );
    },
    child: Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.network('${game.thumbnail}', fit: BoxFit.fill),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceBetween, // // cho sát bên phải c1
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nft dami Name",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    Text(
                      "By hedman",
                      style: TextStyle(fontSize: 10, color: Colors.white),
                    ),
                  ],
                ),
                //    Spacer(), // cho sát bên phải c2
                Image.asset("assets/images/favorite.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40)),
                shape: BoxShape.rectangle,
                color: Color.fromARGB(40, 1, 1, 1),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Remaining time",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Text(
                          "23h : 41m : 12s",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Current Price",
                          style: TextStyle(fontSize: 10, color: Colors.white),
                        ),
                        Text(
                          "₹ 139.00",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                      ),
                      width: 50,
                      height: 50,
                      child: Image.asset(
                        "assets/images/next_item.png",
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _headerText() {
  return RichText(
    text: TextSpan(
      children: <TextSpan>[
        TextSpan(
          text: "NFT\n",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        TextSpan(
          text: "Best NFT collection in one place",
          style: TextStyle(
            fontSize: 10,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    ),
  );
}
