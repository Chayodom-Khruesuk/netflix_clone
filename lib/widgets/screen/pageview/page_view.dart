import 'package:flutter/material.dart';

import '../../../barrel.dart';

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
