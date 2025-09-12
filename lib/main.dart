import 'package:flutter/material.dart';
import 'package:my_first_app/base/bottom_nav_bar.dart';
import 'package:my_first_app/screens/all_tickets.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     

      // routing
      routes: {
        "/": (context)=> BottomNavbar(),
        "/all_tickets": (context) => const AllTickets(),
      },
    );
    
  }
}
