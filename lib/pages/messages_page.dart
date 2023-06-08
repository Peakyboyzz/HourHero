import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

@RoutePage()
class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: const Text("MessagesPage").text.make().objectCenter(),
      ),
    );
  }
}
