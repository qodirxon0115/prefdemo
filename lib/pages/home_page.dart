import 'package:flutter/material.dart';
import 'package:prefdemo/pages/signup_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // void _doLogin(){
  //   String email = emailController.text.toString().trim();
  //   String password = passwordController.text.toString().trim();
  //   User user = User.from(email: email, password: password);
  //   Prefs.storeUser(user);
  //
  //   Prefs.loadUser().then((user) => {
  //     print(user?.email),
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[250],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: 200,
                margin: const EdgeInsets.all(5),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/image_2.png"),
                  ),
                ),
              ),

              const Center(
                child: Text("Welcome Back!", style:
                TextStyle(color: Colors.black,
                    fontSize: 25, fontWeight: FontWeight.bold ),),
              ),

              const SizedBox(height: 10,),

              const Center(
                child: Text("Login in to you existent account of Q Allure",
                  style: TextStyle(color: Colors.grey,),),
              ),
            ],
          ),

          const SizedBox(height: 35,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white70
            ),
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(
                hintText: "Email", hintStyle: TextStyle(color: Colors.grey[400]),
                border: InputBorder.none,
                icon: Icon(Icons.person_outline_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 50,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              controller: passwordController,
              decoration: InputDecoration(
                  hintText: "Password", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.lock_open_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 10,),

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: const EdgeInsets.only(right: 15),
                child: const Text("Forgot Password?",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ],
          ),

          const SizedBox(height: 25,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 45,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.indigoAccent,
            ),
            child: const Center(
                child: Text("LOG IN",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          ),

          const SizedBox(height: 40,),

          Center(
            child: Text("Or connect using", style: TextStyle(color: Colors.grey[400]),),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 15,right: 15,),
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.indigo,
                    ),
                    child: const Center(
                      child: Text("Facebook",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold),),
                    ),
                  ),

                const SizedBox(width: 8,),

                Container(
                    height: 45,
                    width: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.red,
                    ),
                    child: const Center(
                        child: Text("Google",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold),)),
                  ),
              ],
            ),
          ),

          const SizedBox(height: 20,),

          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 30,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Don't have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                const SizedBox(width: 5,),

                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, SingUpPage.id);
                  },
                  child: const Text("Sign up", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
