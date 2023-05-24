import 'package:flutter/material.dart';
import 'package:test/views/widgets/home_body.dart';
import 'package:test/views/widgets/custom_navigation_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
