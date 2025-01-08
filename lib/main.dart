import 'package:flutter/material.dart';
import 'package:petik_app/base/bottom_nav_bar.dart';
import 'package:petik_app/screens/home/all_hotels.dart';
import 'package:petik_app/screens/home/all_tickets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        "/": (context) => const BottomNavBar(),
        "/all_tickets": (context) => const AllTickets(),
        "/all_hotels": (context) => const AllHotels()
      },
    );
  }
}
