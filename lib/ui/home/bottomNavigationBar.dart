import 'package:flutter/material.dart';

btmnvgbar({name, icon}) {
  return BottomNavigationBarItem(
    icon: Icon(icon),
    title: Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.w300,
        fontFamily: 'Lato',
      ),
    ),
  );
}
