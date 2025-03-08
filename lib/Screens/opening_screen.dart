import 'package:flutter/material.dart';


import 'login_screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg"),
                  fit: BoxFit.cover)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
             
              // ignore: prefer_const_constructors
              Text("Welcome"),
              const SizedBox(
                height: 12,
              ),

              const Spacer(),
              
                 Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 28, horizontal: 26),
                 
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()),
                        );
              
                      },
                      child: const Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      )),
                ),
            ]
              ),

            
          ),
        ),
      )
    ;
  }
}
