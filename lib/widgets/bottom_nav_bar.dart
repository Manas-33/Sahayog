import 'package:flutter/material.dart';
import 'package:ieee_app_project/screens/annoucement.dart';
import 'package:ieee_app_project/screens/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ieee_app_project/screens/event_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final screens = [VerticalSlider(), HomePage(), AnnoucementsPage()];
  var h, w;
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[VerticalSlider(), HomePage(), AnnoucementsPage()],
        ),
        bottomNavigationBar: Container(
          height: h / 12,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(w / 15),
              topRight: Radius.circular(w / 15),
            ),
            color: Colors.white,
          ),
          child: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Color.fromARGB(255, 6, 6, 6),
            labelStyle: TextStyle(fontSize: w / 36),
            indicator: UnderlineTabIndicator(),
            indicatorColor: Colors.black54,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.event_seat,
                    size: h / 23, color: Color(0xFF7950F2)),
                text: 'Events',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.house,
                    size: h / 26, color: Color(0xFF7950F2)),
                text: 'Home',
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.bullhorn,
                    size: h / 26, color: Color(0xFF7950F2)),
                text: 'Annoucements',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
