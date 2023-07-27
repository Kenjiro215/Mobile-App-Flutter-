import 'package:project_taxcar/home_page.dart';
import 'package:project_taxcar/login.dart';
import 'package:project_taxcar/profile.dart';
import 'package:project_taxcar/select.dart';
import 'package:flutter/material.dart';

class Car2 extends StatefulWidget {
  const Car2({Key? key}) : super(key: key);

  @override
  State<Car2> createState() => _Car2State();
}

class _Car2State extends State<Car2> {
  double weight = 0;
  int car = 0;
  String condition = 'โปรดใส่น้ำหนักรถ';
  final _formKey = GlobalKey<FormState>();
  final weightController = TextEditingController();

  void showWeight() {
    setState(() {
       car = weight
         .round()
        .toInt();
                            if (car <= 500) {
                             condition = '฿ 150';
                            }if (car >= 501 && car <= 750) {
                              condition = "฿ 300";
                            }if (car >= 751 && car <= 1000) {
                              condition = "฿ 450";
                            } if (car >= 1001 && car <= 1250) {
                              condition = "฿ 800";
                            }if (car >= 1251 && car <= 1500) {
                              condition = "฿ 1,000";
                            }if (car >= 1501 && car <= 1750) {
                              condition = "฿ 1,300";
                            }if (car >= 1751 && car <= 2000) {
                              condition = "฿ 1,600";
                            }if (car >= 2001 && car <= 2500) {
                              condition = "฿ 1,900";
                            }if (car >= 2501 && car <= 3000) {
                              condition = "฿ 2,200";
                            }if (car >= 3001 && car <= 3500) {
                              condition = "฿ 2,400";
                            }if (car >= 3501 && car <= 4000) {
                              condition = "฿ 2,600";
                            }if (car >= 4001 && car <= 4500) {
                              condition = "฿ 2,800";
                            }if (car >= 4501 && car <= 5000) {
                              condition = "฿ 3,000";
                            }if (car >= 5001 && car <= 6000) {
                              condition = "฿ 3,200";
                            }if (car >= 6001 && car <= 7000) {
                              condition = "฿ 3,400";
                            }if (car > 7000) {
                             condition = " ฿ 3,600";}
                          
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
        child:  Form(
        key: _formKey,
         child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),

        child: Column(
          children: [
              const Padding(
                padding: EdgeInsets.only( right:0,top: 100.0,bottom: 30),
                child: Text('ค่าต่อภาษีรถตู้\n(รถยนต์ส่วนบุคคลเกิน 7 คน)',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontSize: 23, fontWeight: FontWeight.bold,fontFamily: 'Font'),
                ),
              ),
             
            
            Container(
              margin: const EdgeInsets.all(20),
              child: TextFormField(
                  controller: weightController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    filled: true,
                    labelText: "Weight ",
                    counter: Offstage(),
                    hintText: "Eg: 57.2",
                    suffixText: "kg",
                  ),
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                  weight = double.parse(value);
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
                      if (weightController.text.isEmpty) {
                        return;
                      }
                      weightController.clear();
                      
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
                          showWeight();
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
              margin: const EdgeInsets.only(left: 25, right:20,bottom: 50),
              child: Text(
                'ค่าต่อภาษี: $condition',
                style: const TextStyle(fontSize: 22, color: Color.fromARGB(255, 255, 255, 255),fontFamily: 'Font',),
              ),
            )
          ],
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
    ),
   );
  }
}
