import 'package:flutter/material.dart';

class Intorpage extends StatefulWidget {
  const Intorpage({super.key});

  @override
  State<Intorpage> createState() => _IntorpageState();
}

class _IntorpageState extends State<Intorpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/onbaording.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Explore the\nUniverse',
                style: TextStyle(
                    fontFamily: 'Product sans',
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Journey through the cosmos\nwith our space app',
                style: TextStyle(
                    fontFamily: 'Product Sans',
                    fontSize: 18,
                    color: Color(0xFFB4B4B4)),
              ),
              SizedBox(
                height: 12,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Product Sans',
                        fontSize: 15),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
