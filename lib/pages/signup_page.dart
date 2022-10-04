import 'package:flutter/material.dart';

import 'home_page.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);
  static const String id = "signup_page";

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Container(
                 padding: const EdgeInsets.only(left: 30),
                height: 25,
                child: const Icon(Icons.arrow_back_outlined),
              ),
            ],
          ),

          const SizedBox(height: 30,),

          Column(
            children: const [
              Center(
                child: Text("Let's Get Started!",
                  style: TextStyle(color: Colors.black,
                      fontSize: 26, fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 10,),
              Center(
                child: Text("Create an account to Q Allure to get all features",
                  style: TextStyle(color: Colors.grey),),
              ),
            ],
          ),

          const SizedBox(height: 30,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 55,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Person", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.person_outline_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 55,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Email", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.email_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 55,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Phone", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.phone_android_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 55,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Password", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.lock_open_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 15,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 55,
            padding: const EdgeInsets.only(left: 15, right: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white70
            ),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Confirm password", hintStyle: TextStyle(color: Colors.grey[400]),
                  border: InputBorder.none,
                  icon: Icon(Icons.lock_open_outlined, color: Colors.grey[400],)
              ),
            ),
          ),

          const SizedBox(height: 35,),

          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            height: 45,
            width: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.indigoAccent,
            ),
            child: const Center(
                child: Text("CREATE",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
          ),

          const SizedBox(height: 40,),

          Container(
            margin: const EdgeInsets.only(left: 15, right: 15, top: 10),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const Text("Already have an account?", style: TextStyle(color: Colors.grey, fontSize: 16),),

                const SizedBox(width: 5,),

                GestureDetector(
                  onTap: (){
                    Navigator.pushReplacementNamed(context, HomePage.id);
                  },
                  child: const Text("Login here", style: TextStyle(color: Colors.blue, fontSize: 16,),),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
