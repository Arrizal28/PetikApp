import 'package:flutter/material.dart';
import 'package:petik_app/base/res/styles/app_styles.dart';

class FindTickets extends StatelessWidget {
  const FindTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xD91130CE),
      ),
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
      child: Center(
        child: Text(
          "Find Tickets",
          style: AppStyles.textStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
