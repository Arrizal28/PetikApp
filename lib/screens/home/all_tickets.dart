import 'package:flutter/material.dart';
import 'package:petik_app/base/utils/all_json.dart';
import 'package:petik_app/base/utils/app_routes.dart';
import 'package:petik_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("All Tickets"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: ticketList
                  .map((item) => GestureDetector(
                        onTap: () {
                          var index = ticketList.indexOf(item);

                          Navigator.pushNamed(context, AppRoutes.ticketScreen,
                              arguments: {"index": index});
                        },
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 20),
                          child: TicketView(
                            ticket: item,
                            wholeScreen: true,
                          ),
                        ),
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
