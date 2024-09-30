import 'package:flutter/material.dart';
import 'package:flutter_login_design2/animation/fade_animation.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            height: 400,
            width: width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/Bground.png"), fit: BoxFit.fill)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 30,
                  width: 80,
                  height: 200,
                  child: FadeAnimation(
                    delay: 1,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/Light.png"))),
                    ),
                  ),
                ),
                Positioned(
                  left: 140,
                  width: 80,
                  height: 150,
                  child: FadeAnimation(
                    delay: 1.2,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/light-2.png"))),
                    ),
                  ),
                ),
                Positioned(
                    right: 40,
                    top: 40,
                    width: 80,
                    height: 150,
                    child: FadeAnimation(
                      delay: 1.4,
                      child: Container(
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/clock.png"))),
                      ),
                    )),
                Positioned(
                    child: FadeAnimation(
                      delay: 1.5,
                      child: Container(
                                        margin: const EdgeInsets.only(top: 40),
                                        child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 40),
                      ),
                                        ),
                                      ),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                FadeAnimation(
                  delay: 1.6,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        border:
                            Border.all(color: Color.fromRGBO(143, 148, 251, .3)),
                        boxShadow: const [
                          BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .3),
                              blurRadius: 20.0,
                              offset: Offset(0, 10))
                        ]),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Color.fromRGBO(143, 148, 251, 1)))),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone Number",
                                hintStyle: TextStyle(color: Colors.grey[700])),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[700])),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                FadeAnimation(
                  delay: 1.8,
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, .6)
                      ]),
                    ),
                    child: const Center(
                      child: Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40,),
                FadeAnimation(
                  delay: 1.9,
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color.fromRGBO(143, 148, 251, 1), decoration: TextDecoration.underline),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
