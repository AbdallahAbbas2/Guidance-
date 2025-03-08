import 'package:flutter/material.dart';
import 'category_screen.dart';



TextEditingController userNameTextEditingControllrt =
    TextEditingController(); 

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       child: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
         //  child:
           Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration:
                   const BoxDecoration( 
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547_1280.jpg"),
                  fit: BoxFit.cover)),
           ),
         Container(
                
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                height: MediaQuery.of(context).size.height * 2 / 3,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 239, 236, 236),
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: Form(
                  key: _loginFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        "Login",
                        style:
                            TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
          
                      TextFormField(
                        controller: userNameTextEditingControllrt,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username must not be empty";
                          } else if (value.length < 9) {
                            return "Username must be more than 9 chracters";
                          } else if (!value[0].contains(RegExp(r'[A-Z]'))) {
                            return "First Character in userName must be Uppercase ";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.person),
                          hintText: "Username",
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ),
             
             
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          const Text("New to quizz app? "),
             
                          TextButton(
                              onPressed: () {}, child: const Text("Register"))
             
                  
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width / 2 - 60,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  elevation: 15,
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.green,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30))),
                              onPressed: () {
                                if (_loginFormKey.currentState!.validate()) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const CategoryScreen()),
                                  );
                                }
                              },
                              child: const Text("Login"))),
                      const SizedBox(
                        height: 10,
                      ),
                      
          
                      const Icon(
                        Icons.fingerprint,
                        size: 60,
                        color: Colors.blue,
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      const Text(
                        "Use Touch ID",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const Spacer(),
                         
                                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: true,
                                onChanged: (value) {},
                              ),
                              const Text("Remember me"),
                            ],
                          ),
                         
                         
                          TextButton(
                              onPressed: () {},
                              child: const Text("Forget Password?")),
                        ],
                      )
                    ],
                  ),
                ),
         ),
            
          ]
    )
    ,   
   
    )
    );
  }
}
