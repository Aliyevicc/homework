import 'package:exam_project_5_modul/screens/screen1.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen1State();
}

class _Screen1State extends State<Screen2> {
  bool checkBox1 = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      print('password: ${_passwordController.text}');
      print('email: ${_emailController.text}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          const SizedBox(height: 50,),
          const Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 80,top: 10),
                child: Image(image: AssetImage("assets/images/undraw_adventure_map_hnin 2.png")),
              ),
              Padding(
                padding: EdgeInsets.only(left: 100,top: 140),
                child: Image(image: AssetImage("assets/images/Get Started.png")),
              ),
              Center(child: Padding(
                padding: EdgeInsets.only(top: 180),
                child: Text("by creating a free account",style: TextStyle(color: Colors.black54),),
              )),
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.name,
                    controller: _nameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor : Colors.grey.withOpacity(0.2),
                      labelText: "Full name",
                      suffixIcon: const Icon(Icons.person),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: _emailController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor : Colors.grey.withOpacity(0.2),
                      labelText: "Valid email",
                      suffixIcon: const Icon(Icons.email_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.phone,
                    controller: _phoneNumberController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor : Colors.grey.withOpacity(0.2),
                      labelText: "Phone number",
                      suffixIcon: const Icon(Icons.phone_android_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Padding(
                  padding:  const EdgeInsets.symmetric(horizontal: 25),
                  child: TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor : Colors.grey.withOpacity(0.2),
                      labelText: "Strong Password",
                      suffixIcon: const Icon(Icons.lock_outline_rounded),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Checkbox(
                  checkColor: const Color(0xffFF3951),
                  activeColor: Colors.white,
                  value: checkBox1,
                  onChanged: (bool? newValue) {
                    setState(() {
                      checkBox1 = newValue!;
                    });
                  },
                ),
                const Text("By checking the box you agree to our ",style: TextStyle(color: Colors.black,fontSize: 10),),
                const Text(
                  "Terms",
                  style: TextStyle(
                    color: Color(0xffFF3951),
                    fontSize: 10,
                  ),
                ),
                const Text(
                  " and ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                  ),
                ),
                const Text(
                  "Conditions",
                  style: TextStyle(
                    color: Color(0xffFF3951),
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MaterialButton(
              height: 55,
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context)=> const HomeScreen()),
                );
              },
              color: const Color(0xffFF3951),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Image(image: AssetImage("assets/images/Input.png")),
              ),
            ),
          ),
           Padding(
            padding: const EdgeInsets.only(top: 20,left: 115),
            child: Row(
              children: [
                const Text("Already a member?",style: TextStyle(color: Colors.black,fontSize: 12),),
                TextButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=> const Screen1()),

                  );
                },
                child: const Text("Log in",style: TextStyle(color: Color(0xffFF3951),fontSize: 12),)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
