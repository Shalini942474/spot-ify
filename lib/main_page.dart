import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spotify_clone/components/icon_button_widget.dart';
import 'package:flutter_spotify_clone/screens/player_page.dart';

import 'const.dart';
import 'screens/home_page.dart';
import 'screens/profile_page.dart';
import 'screens/search_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

int _selectedIndex = 0;

class _MainPageState extends State<MainPage> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Positioned(
            //     top: -509,
            //     left: -500,
            //     child: Container(
            //       height: 1000,
            //       width: 1000,
            //       decoration: const BoxDecoration(
            //         gradient: RadialGradient(
            //             colors: [Color(0xff859AC0), Colors.transparent]),
            //       ),
            //     )),
            _pages.elementAt(_selectedIndex),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  // music-player-slab
                  Stack(
                    children: [
                      InkWell(
                        enableFeedback: false,
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) => const PlayerPage())));
                        },
                        child: Container(
                          height: 56,
                          width: MediaQuery.of(context).size.width - 16,
                          decoration: const BoxDecoration(
                            color: Color(0xff3F72BF),
                            borderRadius: BorderRadius.all(Radius.circular(4)),
                          ),
                          padding: const EdgeInsets.all(9),
                          child: Row(
                            children: [
                              // img
                              Container(
                                width: 38,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'data:image/jpeg;base64,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'),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              // title and creator
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  // title
                                  Text("My House",
                                      style: TextStyle(
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Raleway",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13.0),
                                      textAlign: TextAlign.left),
                                  // creator
                                  Text("2PM",
                                      style: TextStyle(
                                          color: Color(0xffbeb8b5),
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Raleway",
                                          fontStyle: FontStyle.normal,
                                          fontSize: 13.0),
                                      textAlign: TextAlign.left)
                                ],
                              ),
                              const Expanded(child: SizedBox()),
                              // connect devise
                              const IconButtonWidget(
                                  icon: 'connect-device.png'),
                              // like
                              const IconButtonWidget(icon: 'heart.png'),
                              // pause
                              const IconButtonWidget(icon: 'puse.png'),
                            ],
                          ),
                        ),
                      ),
                      // seekbar
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: MediaQuery.of(context).size.width - 32,
                          decoration: const BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 8,
                        child: Container(
                          height: 2,
                          width: (MediaQuery.of(context).size.width - 32) * 0.2,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(
                              Radius.circular(7),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // bottem-nav-bar
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 0, 0, 0),
                          Color.fromARGB(200, 0, 0, 0),
                          Color.fromARGB(135, 0, 0, 0),
                          Color.fromARGB(80, 0, 0, 0),
                          Colors.transparent,
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        stops: [0.0, 0.3, 0.6, 0.75, 1.0],
                      ),
                    ),
                    padding:
                        const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Row(
                      children: [
                        BottomNavBarItem(
                          title: 'Home',
                          icon: 'home.png',
                          onTap: () {
                            _onItemTapped(0);
                          },
                          index: 0,
                        ),
                        BottomNavBarItem(
                          title: 'Searh',
                          icon: 'search.png',
                          onTap: () {
                            _onItemTapped(1);
                          },
                          index: 1,
                        ),
                        BottomNavBarItem(
                          title: 'Your Library',
                          icon: 'library.png',
                          onTap: () {
                            _onItemTapped(2);
                          },
                          index: 2,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  const BottomNavBarItem({
    Key? key,
    this.onTap,
    required this.icon,
    required this.title,
    required this.index,
  }) : super(key: key);
  final Function()? onTap;
  final String icon;
  final String title;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        enableFeedback: false,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: onTap,
        child: Column(
          children: [
            Image.asset(
              '$kAssetIconsWay/$icon',
              color: _selectedIndex != index
                  ? const Color(0xffababab)
                  : Colors.white,
            ),
            const SizedBox(
              height: 8,
            ),
            // title
            Text(title,
                style: TextStyle(
                    color: _selectedIndex != index
                        ? const Color(0xffababab)
                        : Colors.white,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Raleway",
                    fontStyle: FontStyle.normal,
                    fontSize: 11.0)),
          ],
        ),
      ),
    );
  }
}

List<Widget> _pages = <Widget>[
  const HomePage(),
  const SearchPage(),
  const ProflePage(),
];
