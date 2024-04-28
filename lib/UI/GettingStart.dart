import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GettingStartPage extends StatefulWidget {
  const GettingStartPage({super.key});

  @override
  State<GettingStartPage> createState() => _GettingStartPageState();
}

class _GettingStartPageState extends State<GettingStartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Lottie.asset('assets/spaceanimation.json'),
      ),
    );
  }
}
