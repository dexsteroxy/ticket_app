import 'package:flutter/material.dart';
import 'package:my_first_app/base/utils/all_json.dart';
import 'package:my_first_app/base/widegets/tickets_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Tickets"),
      ),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList.map((singleTickets) {
                return Container(
                   margin: EdgeInsets.only(bottom: 20),
                           
                  child: TicketsView(ticket: singleTickets, wholeScreen: true,));
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}