import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(20),
            height: 120,
            width: double.infinity,
            color: Theme.of(context).accentColor,
            child: Text(
              'What\'s Cooking!!!',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 30),
            ),
          ),
          SizedBox(),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/');
            },
            leading: Icon(
              Icons.restaurant,
              size: 26,
            ),
            title: Text('Meals',
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 24)),
          ),
          ListTile(
            onTap: () {
              Navigator.pushReplacementNamed(context, '/filters');
            },
            leading: Icon(
              Icons.settings,
              size: 26,
            ),
            title: Text('Filters',
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.w500,
                    fontSize: 24)),
          )
        ],
      ),
    );
  }
}
