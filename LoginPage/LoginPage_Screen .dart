import 'package:flutter/material.dart';
import 'package:flutter_foodies/build_home_page/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 32, 32, 32),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: .start,
            crossAxisAlignment: .center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 270, top: 20),
                child: SizedBox(
                  height: height * 0.05,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: CircleBorder(),
                    ),
                    onPressed: () {},
                    child: Center(
                      child: Icon(Icons.arrow_back_ios_new, size: 18),
                    ),
                  ),
                ),
              ),

              Container(
                height: height * 0.28,
                width: width * 0.85,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/images/loginimage.png'),
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),
              Text(
                'Let\'s You In',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: .bold,
                  color: Colors.white,
                ),
              ),

              SizedBox(height: height * 0.02),
              Container(
                height: height * 0.068,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    SizedBox(
                      height: 22,
                      child: CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Image.asset(
                          'assest/images/googleicon-removebg-preview.png',
                        ),
                      ),
                    ),
                    Text(
                      ' Continou with Google',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.01),
              Container(
                height: height * 0.068,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: FaIcon(
                        FontAwesomeIcons.facebook,
                        color: Color(
                          0xFF1877F2,
                        ), // Official Facebook Blue Color
                        size: 22,
                      ),
                    ),
                    Text(
                      ' Continou with Facebook',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),

              SizedBox(height: height * 0.01),
              Container(
                height: height * 0.068,
                width: width * 0.85,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: .center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      child: FaIcon(
                        FontAwesomeIcons.apple,
                        color: Colors.grey, // Official Facebook Blue Color
                        size: 24,
                      ),
                    ),
                    Text(
                      ' Continou with Apple',
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 15,
                  bottom: 10,
                ),
                child: Row(
                  children: [
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                    Text(
                      '  or  ',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Expanded(child: Divider(color: Colors.grey, thickness: 1)),
                  ],
                ),
              ),

              SizedBox(
                width: width * 0.80,
                height: height * 0.055,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    Navigator.of(
                      context,
                    ).push(MaterialPageRoute(builder: (context) => HomePage()));
                  },
                  child: Text(
                    'Sign Up As Guest',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                ),
              ),

              SizedBox(height: height * 0.04),

              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.grey, // Base text color
                  ),
                  children: [
                    const TextSpan(text: 'Create a new account? '),
                    WidgetSpan(
                      child: GestureDetector(
                        onTap: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.green, // Green color for Sign Up
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
