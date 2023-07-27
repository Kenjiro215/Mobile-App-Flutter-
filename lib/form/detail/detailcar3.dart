import 'package:flutter/material.dart';
import 'package:project_taxcar/form/car3.dart';
import 'package:project_taxcar/home_page.dart';
import 'package:project_taxcar/profile.dart';
import 'package:project_taxcar/select.dart';
import 'package:project_taxcar/login.dart';

class Detail3 extends StatefulWidget {
  const Detail3({Key? key}) : super(key: key);

  @override
  State<Detail3> createState() => _Detail3State();
}

class _Detail3State extends State<Detail3> {
   @override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(fontFamily: 'Font'),
    home: Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 176, 230),
     body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 162, 172, 241),
                  Color.fromARGB(255, 239, 176, 230)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7]),
          ),
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
         child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only( right:0,top: 85.0 ,bottom: 10),
                child: Text('''   วิธีการคำนวณภาษี\nรถกระบะบรรทุก 2 ประตู''',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 255, 255, 255),),
                ),
              ),
             Container(
                      padding: const EdgeInsets.all(0)),
                  
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const <Widget>[
                   Padding(
                padding: EdgeInsets.only( top: 25.0 ,bottom: 40),
                child: Text(''' 
ตัวอย่าง รถตู้โดยสาร หนัก 1,800 กิโลกรัม \n  • น้ำหนักรถ 1,800 กิโลกรัม\n    ค่าภาษี ฿1,350\n
ตัวอย่าง รถตู้โดยสาร หนัก 3,505 กิโลกรัม \n  • น้ำหนักรถ 2,300 กิโลกรัม\n    ค่าภาษี ฿1,650\n
ตัวอย่าง รถตู้โดยสาร หนัก 7,000 กิโลกรัม \n  • น้ำหนักรถ 7,000 กิโลกรัมเป็นต้นไป\n    ค่าภาษี ฿4,050\n''',
                style: TextStyle(fontSize: 17,color: Color.fromARGB(255, 255, 255, 255),),
                ),
              ),
          ],
        ),
         const SizedBox(
                  height: 2.0,
                ),
                 Container(
                    padding: const EdgeInsets.only(left: 80, right: 10),
                      child: Row(
                        children: [
                          ElevatedButton(onPressed: (){Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Car3(),),
                            );
                          },
                     style:  ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 108, 174),
                        padding: const EdgeInsets.symmetric(horizontal: 60),
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
         )
      ),
      
      ),
    ),
  
     bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20.0),
          ),
          color: Color.fromARGB(255, 167, 110, 224),
        ),
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.person),
              color: Colors.white,
              iconSize: 30,
            onPressed: () {
              Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => const Login(),
                              ),
                            );
          },
            ),
            IconButton(
              onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HomePage(),
                              ),
                            );
          },icon: const Icon(Icons.apps),
              color: Colors.white,
              iconSize: 30,
              
            ),
            IconButton(
              onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Select(),
                              ),
                            );
          },
          icon: const Icon(Icons.calculate),
              color: Colors.white,
              iconSize: 30,
              
            ),
             IconButton(
              onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Profile(),
                              ),
                            );
          },
          icon: const Icon(Icons.settings),
              color: Colors.white,
              iconSize: 30,
              
            ),
          ],
        ),
      ),
      )
    );
  }
}