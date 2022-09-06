import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ticketapp/screens/ticket_view.dart';

import '../utils/app_style.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [

                SizedBox(height: 40,),
                // Welcome STARTS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Welcome", style: Styles.headLineStyle3,),
                          SizedBox(height:5,),
                          Text("Book Tickets", style: Styles.headLineStyle1,),
                        ],
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/icon.png"))),
                    )
                  ],
                ),
                // Welcome ENDS

                const SizedBox(height: 30,),

                // Search STARTS
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6F0),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular),
                      Text("Search", style: Styles.headLineStyle4,),
                    ],
                  ),
                ),
                // Search ENDS

                const SizedBox(height: 40,),

                // Upcoming Flights STARTS
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flights", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: () {},
                      child: Text("View all",style: Styles.textStyle,),
                    )
                  ],
                ),
                // Upcoming Flights STARTS

                // Sliding Tickets START
                TicketView()
                // Sliding Tickets ENDS

                

              ],
            ),
          )
        ],
      ),
    );
  }
}
