import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreenGet extends StatefulWidget {
  const HomeScreenGet({super.key});

  @override
  State<HomeScreenGet> createState() => _HomeScreenGetState();
}

class _HomeScreenGetState extends State<HomeScreenGet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Practise'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.light_mode),
              title: Text('Light Theme'),
              onTap: () {
                Get.changeTheme(ThemeData.light());
              },
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Dark Theme'),
              onTap: () {
                Get.changeTheme(ThemeData.dark());
              },
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text('Change Language'),
              onTap: () {
                Get.toNamed('/lanScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.countertops),
              title: Text('Count_Screen'),
              onTap: () {
                Get.toNamed('/countScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.opacity),
              title: Text('Opacity Screen'),
              onTap: () {
                Get.toNamed('/opacityScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.switch_access_shortcut),
              title: Text('Switch Screen'),
              onTap: () {
                Get.toNamed('/switchScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourite Screen'),
              onTap: () {
                Get.toNamed('/favScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.image_aspect_ratio),
              title: Text('Image-Picker Screen'),
              onTap: () {
                Get.toNamed('/imagepickerScreen');
              },
            ),
            ListTile(
              leading: Icon(Icons.api),
              title: Text('Api Test'),
              onTap: () {
                Get.toNamed('/apitestScreen');
              },
            ),
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: TextButton(
              onPressed: () {
                //Navigator.push(
                //    context,
                //    MaterialPageRoute(
                //      builder: (context) => FirstScreen(),
                //    ));
                //Get.to(FirstScreen(
                //  name: 'Nurujjaman',
                //));
                Get.toNamed('/firstScreen', arguments: [
                  'Nurujjaman',
                  'Rafi ',
                ]);
              },
              child: Text('Go to next screen'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "title",
            "Welcome",
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM,
            progressIndicatorBackgroundColor: Colors.red,
            showProgressIndicator: true,
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

//Padding(
//  padding: const EdgeInsets.only(
//    top: 10,
//    left: 10,
//    right: 10,
//  ),
//  child: Card(
//    child: ListTile(
//      title: Text("GetX Alert Dialog"),
//      subtitle: Text(""),
//      onTap: () {
//        Navigator.push(
//          context,
//          MaterialPageRoute(
//            builder: (context) => Navigation_test(),
//          ),
//        );
//        //Get.defaultDialog(
//        //  title: 'Error',
//        //  titlePadding: EdgeInsets.all(10.0),
//        //  middleText: "Default Dialog That depend on Card",
//        //  contentPadding: EdgeInsets.all(10.0),
//        //  cancel: TextButton(
//        //    onPressed: () {},
//        //    child: Text('Cancel'),
//        //  ),
//        //  confirm: TextButton(
//        //    onPressed: () {
//        //      Get.back();
//        //    },
//        //    child: Text('OK'),
//        //  ),
//        //);
//      },
//    ),
//  ),
//),
//Padding(
//  padding: const EdgeInsets.only(
//    top: 10,
//    left: 10,
//    right: 10,
//  ),
//  child: Card(
//    child: ListTile(
//      title: Text("GetX BottomSheet"),
//      subtitle: Text(""),
//      onTap: () {
//        Get.bottomSheet(
//          Container(
//            decoration: BoxDecoration(
//              color: Colors.grey,
//              borderRadius: BorderRadius.circular(10.0),
//            ),
//            child: Column(
//              children: [
//                ListTile(
//                  leading: Icon(Icons.light_mode),
//                  title: Text('Light Theme'),
//                  onTap: () {
//                    Get.changeTheme(ThemeData.light());
//                  },
//                ),
//                ListTile(
//                  leading: Icon(Icons.dark_mode),
//                  title: Text('Dark Theme'),
//                  onTap: () {
//                    Get.changeTheme(ThemeData.dark());
//                  },
//                ),
//              ],
//            ),
//          ),
//        );
//      },
//    ),
//  ),
//),
