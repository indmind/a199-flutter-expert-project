import 'package:core/common/routes.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/circle-g.png'),
            ),
            accountName: Text('Ditonton'),
            accountEmail: Text('ditonton@dicoding.com'),
          ),
          ListTile(
            leading: const Icon(Icons.movie),
            title: const Text('Movies'),
            onTap: () {
              Navigator.pushReplacementNamed(context, MOVIE_HOME_ROUTE);
            },
          ),
          ListTile(
            leading: const Icon(Icons.tv),
            title: const Text('Tv Shows'),
            onTap: () {
              Navigator.pushReplacementNamed(context, TV_HOME_ROUTE);
            },
          ),
          ListTile(
            leading: const Icon(Icons.save_alt),
            title: const Text('Movies Watchlist'),
            onTap: () {
              Navigator.pushNamed(context, MOVIE_WATCHLIST_ROUTE);
            },
          ),
          ListTile(
            leading: const Icon(Icons.save_alt),
            title: const Text('Tvs Watchlist'),
            onTap: () {
              Navigator.pushNamed(context, TV_WATCHLIST_ROUTE);
            },
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, ABOUT_ROUTE);
            },
            leading: const Icon(Icons.info_outline),
            title: const Text('About'),
          ),
        ],
      ),
    );
  }
}
