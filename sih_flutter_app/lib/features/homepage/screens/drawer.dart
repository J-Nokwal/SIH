import 'package:flutter/material.dart';
import 'package:sih_flutter_app/core/colores.dart';

class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kColors.purpleDark,
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Pushpa"),
            accountEmail: Text("puspa@gmail.com"),
            currentAccountPicture: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(40), color: kColors.purpleLight),
              child: Center(),
            ),
            otherAccountsPictures: [
              Center(
                child: Image.asset(
                  "assets/images/qrhigh.png",
                  fit: BoxFit.cover,
                ),
              )
            ],
            otherAccountsPicturesSize: Size.square(50),
          ),
          ListTile(
            leading: Image.asset("assets/images/bookmark.png", height: 20),
            title: Text('Bookmarks', style: TextStyle(color: kColors.whitePure)),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset("assets/images/registration.png", height: 20),
            title: Text('Registerations', style: TextStyle(color: kColors.whitePure)),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset("assets/images/wallet.png", height: 20),
            title: Text('Wallet', style: TextStyle(color: kColors.whitePure)),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset("assets/images/qrlow.png", height: 20),
            title: Text(
              'Scan QR',
              style: TextStyle(color: kColors.whitePure),
            ),
            onTap: () => {},
          ),
          ListTile(
            leading: Image.asset("assets/images/gear.png", height: 20),
            title: Text('Edit Profile', style: TextStyle(color: kColors.whitePure)),
            onTap: () => {},
          ),
          Expanded(child: Container()),
          Container(
            height: 90,
            // color: kColors.whitePure,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: kColors.purpleLight,
            ),
            child: const Center(child: Text("Logo")),
          ),
          const SizedBox(height: 30),
          Text("Product Name", style: TextStyle(fontSize: 30, color: kColors.whitePurple)),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/copyrightWhite.png"),
              const SizedBox(width: 10),
              Text("All Rights Reserved", style: TextStyle(color: kColors.whitePurple))
            ],
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
