import 'package:flutter/material.dart';
import 'package:flutter_clone_netflix/contants/contants_image.dart';
import 'package:flutter_clone_netflix/contants/contants_text.dart';
import 'package:flutter_clone_netflix/widgets/screen/home/home_screen.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(192, 10, 1, 41),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Stack(
          children: [
            PageView(
              children: const [
                MainPageView(),
                PageViewPackage(),
                PageViewOnline(),
                PageViewWatch()
              ],
            ),
            Container(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(logonetflix, width: 90),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'ความเป็นส่วนตัว',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'เข้าสู่ระบบ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(bottom: 40),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const ContinuousRectangleBorder(),
                    minimumSize: const Size(350, 60),
                    backgroundColor: const Color.fromARGB(255, 150, 13, 3)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'เริ่มต้นใช้งาน',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainPageView extends StatelessWidget {
  const MainPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: <Color>[
                Colors.black,
                Colors.black12,
                Colors.black26
              ])),
          child: Positioned.fill(
              child: Image.asset(
            bgviewpage,
            fit: BoxFit.fill,
          )),
        ),
        const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textmovie,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                textmoviedetail,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.green,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}

class PageViewWatch extends StatelessWidget {
  const PageViewWatch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(50),
        child: const Column(children: [
          Padding(padding: EdgeInsets.only(top: 30)),
          SizedBox(child: Image(image: AssetImage(imagedemo))),
          Padding(padding: EdgeInsets.only(bottom: 30)),
          Text(textwatchone,
              style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: 20),
          Column(children: [
            Text(textwatchdetail,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(162, 255, 255, 255))),
            Text(textwatchdetailmore,
                style: TextStyle(
                    fontSize: 20, color: Color.fromARGB(162, 255, 255, 255)))
          ])
        ]));
  }
}

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

class PageViewPackage extends StatelessWidget {
  const PageViewPackage({
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
            Text(textpageviewone,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ]),
          SizedBox(height: 20),
          Text(
            textcostpackage,
            style: TextStyle(
                fontSize: 20, color: Color.fromARGB(162, 255, 255, 255)),
          )
        ]));
  }
}
