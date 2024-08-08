import 'package:flutter/material.dart';
import '../../../barrel.dart';

class PageViewWatch extends StatelessWidget {
  const PageViewWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(50),
      child: const Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(child: Image(image: AssetImage(imagedemo))),
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Text(
            textwatchone,
            style: TextStyle(
                fontSize: 35, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Column(
            children: [
              Text(
                textwatchdetail,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(162, 255, 255, 255)),
              ),
              Text(textwatchdetailmore,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(162, 255, 255, 255))),
            ],
          ),
        ],
      ),
    );
  }
}
