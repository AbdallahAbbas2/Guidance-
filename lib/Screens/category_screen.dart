import 'package:flutter/material.dart';
import 'Categry_screen2.dart';

//import '../Global/global_data.dart';
import '../Shared/category_contained.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        CategoryContainer(
          testName: "level one",
          containerColor: Colors.blue,
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Categry_screen2(
                        testName: "level one",
                        themeColor: Colors.blue,
                       
                      )),
            );
          },
        ),
        CategoryContainer(
          testName: "level two",
          containerColor: const Color.fromARGB(255, 244, 244, 54),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Categry_screen2(
                        testName: "level two",
                        themeColor: Colors.yellow,
                       
                      )),
            );
          },
        ),
        CategoryContainer(
          testName: "level threy",
          containerColor: const Color.fromARGB(255, 13, 149, 97),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Categry_screen2(
                        testName: "level threy",
                        themeColor: Colors.green ,
                      )),
            );
          },
        ),
         CategoryContainer(
          testName: "level for",
          containerColor: const Color.fromARGB(255, 13, 74, 149),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Categry_screen2(
                        testName: "level for",
                        themeColor: Colors.blue ,
                        
                      )),
            );
          },
        ),
         CategoryContainer(
          testName: "level fife",
          containerColor: const Color.fromARGB(255, 149, 13, 13),
          onTabFunction: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Categry_screen2(
                        testName: "level fife",
                        themeColor: Colors.purple ,
                       
                      )),
            );
          },
        ),
      ]),
    );
  }
}
