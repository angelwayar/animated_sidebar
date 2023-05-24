import 'package:flutter/material.dart';

class MenuBackground extends StatelessWidget {
  final ValueChanged<bool> closeMenu;

  const MenuBackground({super.key, required this.closeMenu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: ListView(
        padding: const EdgeInsets.only(
          left: 24.0,
          right: 100.0,
        ),
        children: [
          SizedBox(
            height: 140.0,
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.indigo[300],
                  child: const Icon(Icons.person_3_outlined),
                ),
                const SizedBox(width: 20.0),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Angel Wayar',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      'Developer',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () => closeMenu(true),
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(40, 40),
                    padding: const EdgeInsets.all(0.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  child: const Icon(Icons.close),
                ),
              ],
            ),
          ),
          const Text(
            'BROWSE',
            style: TextStyle(
              color: Color.fromARGB(255, 168, 204, 221),
              fontSize: 20.0,
            ),
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text(
              'Favorites',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.help_outline,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text('Help', style: TextStyle(color: Colors.white)),
            onTap: () {},
          ),
          const SizedBox(height: 24.0),
          const Text(
            'HISTORY',
            style: TextStyle(
              color: Color.fromARGB(255, 168, 204, 221),
              fontSize: 20.0,
            ),
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.history,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text(
              'History',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(
              Icons.notification_add_outlined,
              color: Colors.white,
              size: 26.0,
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
