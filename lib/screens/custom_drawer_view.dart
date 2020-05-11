import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:petadoption/constant.dart';
import 'package:petadoption/widgets/zoom_scaffold.dart';
import 'package:provider/provider.dart';

//Navigation Drawer Item !
class DrawerScreen extends StatelessWidget {
  final String imageUrl =
      "https://celebritypets.net/wp-content/uploads/2016/12/Adriana-Lima.jpg";

  final List<MenuItem> options = [
    MenuItem(FontAwesomeIcons.paw, 'Adoption'),
    MenuItem(FontAwesomeIcons.handHoldingUsd, 'Donation'),
    MenuItem(FontAwesomeIcons.plus, 'Add pet'),
    MenuItem(FontAwesomeIcons.heart, 'Favorites'),
    MenuItem(FontAwesomeIcons.envelope, 'Messages'),
    MenuItem(FontAwesomeIcons.user, 'Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onPanUpdate: (details) {
        //on swiping left
        if (details.delta.dx < -6) {
          Provider.of<MenuController>(context, listen: true).toggle();
        }
      },
      child: Container(
        padding: EdgeInsets.only(
            top: 62,
            left: 32,
            bottom: 8,
            right: MediaQuery.of(context).size.width / 2.9),
        color: kPrimaryColor,
        child: Column(
          children: <Widget>[
            ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/user1.jpg"),
              ),
              title: Text("Jessica Veranda",
                  style: kTitleStyle.copyWith(color: Colors.white)),
              subtitle: Text("Owner",
                  style: kSubtitleStyle.copyWith(color: Colors.white)),
            ),
            Spacer(),
            Column(
              children: options.map((item) {
                return ListTile(
                  leading: Icon(
                    item.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                  title: Text(
                    item.title,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                );
              }).toList(),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class MenuItem {
  String title;
  IconData icon;

  MenuItem(this.icon, this.title);
}
