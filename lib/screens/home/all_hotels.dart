import 'package:flutter/material.dart';
import 'package:petik_app/base/utils/all_json.dart';
import 'package:petik_app/screens/home/widgets/hotel.dart';

class AllHotels extends StatelessWidget {
  const AllHotels({super.key});

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
              children: hotelList
                  .map((item) => Hotel(
                        hotel: item,
                      ))
                  .toList(),
            ),
          ),
        ));
  }
}
