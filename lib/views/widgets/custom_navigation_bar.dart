import 'package:flutter/material.dart';
import 'package:test/constants.dart';
import 'package:test/views/widgets/navigation_bar_item.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        //the main background of the navigation bar
        Container(
          height: 65,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffF2FAFD),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.22),
                blurRadius: 22,
              )
            ],
          ),
        ),

        //the white background
        Container(
          height: 40,
          margin: const EdgeInsets.symmetric(horizontal: 28),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
          ),
        ),

        //the navigation Bar Items
        const Padding(
          padding: EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.blue,
                ),
              ),
              NavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.blue,
                ),
              ),
              NavigationBarItem(
                backgroundColor: kPrimaryColor,
                icon: Icon(
                  Icons.list_alt_outlined,
                  color: Colors.white,
                ),
              ),
              NavigationBarItem(
                icon: Icon(
                  Icons.person_outline_outlined,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
