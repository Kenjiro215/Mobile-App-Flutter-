import 'package:flutter/material.dart';
import 'home_page.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Font'),
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 170, 98, 241),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 105, 157, 204),
                  Color.fromARGB(255, 170, 98, 241),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7]),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SingleChildScrollView(
                child: Column(children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 80),
                    child: const Text('Welcome',
                        style: TextStyle(
                            fontSize: 30.0,
                            fontFamily: 'Fontlogin',
                            color: Color.fromARGB(255, 255, 255, 255))),
                  ),
                  Container(
                    padding: const EdgeInsets.all(30),
                    child: Image.asset('assets/login1.png',
                        height: 250, width: 250),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                       decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "ชื่อผู้ใช้",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0) ),
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                          ),
                ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "ยี่ห้อรถของคุณ",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)
                          ),
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                          ),
                ),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      hintText: "อายุการใช้งาน",
                      suffixText: "ปี",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(32.0)
                          ),
                        fillColor: const Color.fromARGB(255, 255, 255, 255),
                      filled: true,
                          ),
                ),
                  ),
                  const SizedBox(
                  height: 35.0,
                ),
                Container(
                    padding: const EdgeInsets.only(left: 20, right: 16,bottom: 50),
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const HomePage(),),
                            );
                          },
                     style:  ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 108, 174),
                        padding: const EdgeInsets.symmetric(horizontal: 140),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    child: const Text(
                      "next",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18 ,color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  ]
                ),
                ),
                ]
              ),
            ),
          ),
        ),
      ),
      )
    );
  }
}
