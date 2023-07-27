import 'package:project_taxcar/home_page.dart';
import 'package:project_taxcar/login.dart';
import 'package:project_taxcar/profile.dart';
import 'package:project_taxcar/select.dart';
import 'package:flutter/material.dart';


class Car1 extends StatefulWidget {
  const Car1({Key? key }) : super(key: key);

  @override
  State<Car1> createState() => _Car1State();
}

class _Car1State extends State<Car1> {

  late double tax1 = 0 ;
  int cc = 0;
  double reduceTax = 0;
  int year = 0 ;
  double total = 0;

  final _formKey = GlobalKey<FormState>();
  final ccController = TextEditingController();

  final yearController = TextEditingController();


  void showTax() {
    setState(() {
      if (cc <= 600) {
      tax1 = (cc * 0.5);
    } else if (cc > 601 && cc <= 1800) {
      tax1 = 2100 + (cc - 1800) *1.5;
    } else if (cc >= 1800) {
      tax1 = 2100 +(cc-1800)*4.0;
    }
    });
  }

  void showyear() {
    setState(() {
    if (year == 6) {
      reduceTax = (tax1 * 0.1);
    } else if (year == 7) {
      reduceTax = (tax1 * 0.2);
    } else if (year == 8) {
      reduceTax = (tax1 * 0.3);
    } else if (year == 9) {
      reduceTax = (tax1 * 0.4);
    } else if (year > 9) {
      reduceTax = (tax1 * 0.5);
    }
    });
  }

  void showtotal() {
    setState(() {
      total = (tax1 - reduceTax);
    });
  }


  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    theme: ThemeData(fontFamily: 'Font'),
    home:  Scaffold(
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
        child:  Form(
        key: _formKey,
         child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),

        child: Column(
          children: [
              const Padding(
                padding: EdgeInsets.only( right:0,top: 80.0,bottom: 30),
                child: Text('ค่าต่อภาษีรถเก๋ง \nรถกระบะ 4 ประตู',
                style: TextStyle( color: Color.fromARGB(255, 255, 255, 255),fontSize: 25, fontWeight: FontWeight.bold,fontFamily: 'Font',),
                ),
              ),
             
            
              Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                controller: ccController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    labelText: "ขนาดเครื่องยนต์",
                    counter: Offstage(),
                    // : ccController,
                    suffixText: "cc",
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                  cc = int.parse(value);
                },
              ),
            ),
             
            
            Container(
            margin: const EdgeInsets.only(top: 10,right:20,left:20,bottom: 20),
              child: TextFormField(
                controller: yearController,
                 decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    labelText: "อายุการใช้งาน ",
                    counter: Offstage(),
                    suffixText: "ปี",
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                   year = int.parse(value);
                },
              ),
            ),
            
            Row(
              children: <Widget>[
              Padding(
              padding: const EdgeInsets.only(left: 0,bottom: 0,top: 0),
              child: Row(
                children: [
                   Container(
                padding: const EdgeInsets.only(left: 20,bottom: 50,top: 5),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 0, 0),
                        side: const BorderSide(color: Colors.red)),
                    onPressed: () {
                      if (ccController.text.isEmpty &&
                          yearController.text.isEmpty) {
                        return;
                      }
                      ccController.clear();
                      yearController.clear();
                    },
                    child: const Text('Reset')),
                          ),
                        ]
                    ),
                  ),
              Container(
                      padding: const EdgeInsets.only(left: 70,bottom: 50,top: 5),
                      child: ElevatedButton(onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          showTax();
                          showyear();
                          showtotal();
                        }
                      },
                     style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 147, 132, 247),
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                      ),
                    child: const Text(
                      "คำนวณ",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 15 ,color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                  ),
            ]
            ),
          Container(
              margin: const EdgeInsets.only( right: 90),
              child: Text(
                '''ค่าภาษี : ฿ $tax1 \nส่วนลด : ฿ $reduceTax\nภาษีที่ต้องจ่าย : ฿ $total\n''',
                style: const TextStyle(fontSize: 21, color: Color.fromARGB(255, 255, 255, 255),fontFamily: 'Font'),
              ),
        
            ),
            ]
         ),
        ),
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
