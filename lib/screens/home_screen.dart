import 'package:flutter/material.dart';
import 'package:my_first_app/base/res/image_base_path.dart';

import 'package:my_first_app/base/res/styles/app_styles.dart';
import 'package:my_first_app/base/utils/all_json.dart';
import 'package:my_first_app/base/widegets/app_double.dart';
import 'package:my_first_app/base/widegets/tickets_view.dart';
import 'package:my_first_app/screens/widgets/hotel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFeeedf2),
      body: ListView(
        children: [
          SizedBox(height: 40),
          Container(
            // color: Colors.blue,
            padding: const EdgeInsets.symmetric(horizontal: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good morning", style: AppStyles.normalheading2),
                        const SizedBox(height: 5),
                        Text("Book Tickets", style: AppStyles.heading1),
                      ],
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        //              boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey, // shadow color
                        //     spreadRadius: 1,  // how much the shadow spreads
                        //     blurRadius: 4,    // softness of the shadow
                        //     offset: Offset(3, 3), // X and Y offset
                        //   ),
                        // ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(ImageBasePath.logo),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 25),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search_outlined,
                    ), // search icon inside
                    hintText: "Search",
                    filled: true, // enables background color
                    fillColor: Colors.white, // background color
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 12,
                    ), // same padding
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(
                        10,
                      ), // rounded corners
                      borderSide: BorderSide.none,
                      // remove border lines
                    ),
                  ),
                ),

                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Upcoming Flight',
                  smallText: 'View all',
                  func: () {
                    Navigator.pushNamed(context, "/all_tickets");
                  },
                ),
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(4)
                        .map(
                          (singleticket) => Container(
                            margin: EdgeInsets.all(0),
                            padding: EdgeInsets.all(0),
                            child: TicketsView(ticket: singleticket),
                          ),
                        )
                        .toList(),
                  ),
                ),

                const SizedBox(height: 40),
                AppDoubleText(
                  bigText: 'Hotels',
                  smallText: 'View all',
                  func: () {},
                ),

                SizedBox(height: 20),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(4)
                        .map(
                          (singlehotel) => Container(
                            margin: EdgeInsets.only(right: 16),
                            child: Hotel(hotel: singlehotel),
                          ),
                        )
                        .toList(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
