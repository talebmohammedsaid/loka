import 'package:flutter/material.dart';
import 'package:home/constants.dart';

class NavBar extends StatelessWidget {
  NavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.width;
    return Drawer(
      backgroundColor: oneColor,
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text(
              'Welcome',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            accountEmail: const Text(
              'xxxxxxxx',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/logo_tms_rond.png",
                  width: w * 0.2,
                  height: w * 0.2,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(),
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Colors.white,
            ),
            title: const Text(
              'Exit',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: h * 0.6,
          ),
          const Divider(
            color: Colors.white,
          ),
          IconButton(
              onPressed: () async {},
              icon: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                      padding: EdgeInsets.all(3), child: Icon(Icons.logout)),
                  SizedBox(
                    width: w * 0.05,
                  ),
                  const Center(
                    child: const Text(
                      "Logout",
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
