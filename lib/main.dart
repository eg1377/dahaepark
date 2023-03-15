import 'package:dahaepark/seens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context, orientation, screenType) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: LoginPage(),
      );
    },
    );
  }
}

/*

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Appbar'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.red[200],
        actions: [
          IconButton(
              onPressed: () => {print("hi22")},
              icon:const Icon(Icons.shopping_cart)),
          IconButton(onPressed: () => {print("hi33")}, icon: const Icon(Icons.search))
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text("park"),
              accountEmail: const Text("naver.com"),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('lib/assets/image/peep-70.png'),
              ),
              otherAccountsPictures: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('lib/assets/image/sitting.svg'),


                )
              ],
              onDetailsPressed: () => {print("clicked")},
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                color: Colors.grey,
              ),
              title: const Text('Home'),
              onTap: () => {print('Home')},
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                color: Colors.grey,
              ),
              title: const Text('Setting'),
              onTap: () => {print('Setting')},
              trailing: const Icon(Icons.add),
            ),
            ListTile(
              leading: const Icon(
                Icons.question_answer,
                color: Colors.grey,
              ),
              title: const Text('Q&A'),
              onTap: () => {print('Home')},
              trailing: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
*/
