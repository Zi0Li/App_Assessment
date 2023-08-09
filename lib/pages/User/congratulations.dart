import 'package:flutter/material.dart';

class CongratulationsPage extends StatefulWidget {
  const CongratulationsPage({super.key});

  @override
  State<CongratulationsPage> createState() => _CongratulationsPageState();
}

class _CongratulationsPageState extends State<CongratulationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 65,
                height: 65,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(104, 116, 232, 1),
                ),
              ),
              Text(
                'Network',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontFamily: 'Ubuntu',
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 530,
            child: Column(
              children: [
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.lightGreenAccent.shade700,
                  size: 180,
                ),
                Text(
                  'Nós agradecemos pelo feedback faz toda diferença!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
       ),
    );
  }
}
