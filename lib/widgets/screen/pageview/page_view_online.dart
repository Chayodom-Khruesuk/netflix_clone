import 'package:flutter/material.dart';

import '../../../barrel.dart';

class PageViewOnline extends StatelessWidget {
  const PageViewOnline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50),
        child: const Column(children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(child: Image(image: AssetImage(imagedemo))),
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Column(children: [
            Text(textonlineone,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Text(textonlinetwo,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold))
          ]),
          SizedBox(height: 20),
          Text(
            textonlineregister,
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(162, 255, 255, 255)),
          )
        ]));
  }
}
