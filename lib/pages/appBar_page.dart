import 'package:flutter/material.dart';
import 'package:instagram_app/pages/bottom_navigation_bar.dart';
import 'package:instagram_app/pages/stories_page.dart';

class AppBarPage extends StatelessWidget {
  const AppBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBarPage(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Image.asset(
            ("assets/images/logo.png"),
            fit: BoxFit.contain,
            height: 50,
          ),
          actions: [
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/coracao.png',
                fit: BoxFit.contain,
                width: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: GestureDetector(
                onTap: () {},
                child: Image.asset(
                  'assets/images/messenger.png',
                  fit: BoxFit.contain,
                  width: 20,
                ),
              ),
            ),
          ],
        ),
        body: StoriesPage());
  }
}


// Divider(
//             color: Colors.grey,
//             height: .5,
//             thickness: 0.2,
//       );