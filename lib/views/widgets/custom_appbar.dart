import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test/views/widgets/notification_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _buildBackground(context),
        const Padding(
          padding: EdgeInsets.only(left: 22.0, right: 22.0, top: 45),
          child: Row(
            children: [
              //user picture
              CircleAvatar(
                radius: 21,
                backgroundImage: NetworkImage(
                  'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                ),
              ),

              SizedBox(
                width: 8.0,
              ),

              //user name
              Text(
                'User Name',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),

              Spacer(),

              //notivication icon
              NotificationIcon(),
            ],
          ),
        ),
      ],
    );
  }

  SizedBox _buildBackground(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.18,
      child: SvgPicture.asset(
        'assets/images/path.svg',
        fit: BoxFit.fill,
      ),
    );
  }
}
