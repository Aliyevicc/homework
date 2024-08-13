import 'package:exam_project_5_modul/screens/home_screen.dart';
import 'package:exam_project_5_modul/screens/screen2.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  bool checkBox1 = false;
  bool _obsureText = false;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _emailController.dispose();
    super.dispose();
  }

  void _passwordVisibility (){
    setState(() {
      _obsureText = !_obsureText;
    });
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
          const SizedBox(height: 80,),
          const Stack(
            children: [
             Padding(
              padding: EdgeInsets.only(left: 80,top: 10),
              child: Image(image: AssetImage("assets/images/undraw_adventure_map_hnin 2.png")),
            ),
              Padding(
                padding: EdgeInsets.only(left: 100,top: 140),
                child: Image(image: AssetImage("assets/images/Welcome back.png")),
              ),
              Center(child: Padding(
                padding: EdgeInsets.only(top: 180),
                child: Text("Sign in to access your account",style: TextStyle(color: Colors.black54),),
              )),
            ],
          ),
        Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  obscureText: _obsureText,
                  controller: _emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor : Colors.grey.withOpacity(0.2),
                   labelText: "Enter your email",
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
                padding:  const EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: _obsureText,
                  controller: _passwordController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor : Colors.grey.withOpacity(0.2),
                    labelText: "Password",
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
            padding: const EdgeInsets.only(left: 25),
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
                const Text("Remember me",style: TextStyle(color: Colors.black,fontSize: 10),),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: TextButton(
                    onPressed: (){},
                    child: const Text(
                      "Forget password?",
                      style: TextStyle(
                        color: Color(0xffFF3951),
                        fontSize: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 150,),
          MaterialButton(
            height: 55,
            minWidth: 300,
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
            )
          ),
           Padding(
            padding: const EdgeInsets.only(top: 10,left: 115),
            child: Row(
              children: [
                const Text("New member?",style: TextStyle(color: Colors.black,fontSize: 12),),
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=> const Screen2()),
                    );
                  },
                  child: const Text("Register now",style: TextStyle(color: Color(0xffFF3951),fontSize: 12),),
                ),
              ],
            ),
          )
      ],
      ),
    );
  }
}
