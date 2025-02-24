import 'package:flutter/material.dart';
import 'package:petik_app/base/bottom_nav_bar.dart';
import 'package:petik_app/base/utils/app_routes.dart';
import 'package:petik_app/screens/home/all_hotels.dart';
import 'package:petik_app/screens/home/all_tickets.dart';
import 'package:petik_app/screens/ticket/ticket_screen.dart';

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
        AppRoutes.home: (context) => const BottomNavBar(),
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.allHotels: (context) => const AllHotels(),
        AppRoutes.ticketScreen: (context) => const TicketScreen()
      },
    );
  }
}
