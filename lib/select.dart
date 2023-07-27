import 'package:flutter/material.dart';
import 'package:project_taxcar/form/detail/detailcar1.dart';
import 'package:project_taxcar/form/detail/detailcar2.dart';
import 'package:project_taxcar/form/detail/detailcar3.dart';
import 'package:project_taxcar/profile.dart';
import 'home_page.dart';
import 'login.dart';
// import 'package:buttons_flutter/buttons_flutter.dart';


class Select extends StatelessWidget {
  const Select ({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
  return MaterialApp(
    theme: ThemeData(fontFamily: 'Font'),
    home: Scaffold(
     backgroundColor: const Color.fromARGB(255, 247, 200, 240),
     body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 178, 186, 236),
                  Color.fromARGB(255, 247, 200, 240)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [0.3, 0.7]),
          ),
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80),
         child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only( right:0,top: 55.0 ,bottom: 20),
                child: Text('เลือกประเภทของรถ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 255, 255, 255),),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(0)),
              Card(
                  elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(150),
                          ),
                    child: Column( 
                      children:<Widget> [ 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                  IconButton(
                     icon: Image.asset('assets/car1.png'),
                     iconSize: 170,
                     onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => const Detail1(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ]
                ),
              ),

           Card(
                elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(150),
                        ),
                    child: Column( 
                              children:<Widget> [ 
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Image.asset('assets/car2.png'),
                  iconSize: 160,
                     onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const Detail2(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ]
        ),
      ),
            Card(
              elevation: 8,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
                ),
              child: Column( 
                children:<Widget> [ 
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                     icon: Image.asset('assets/car3.png'),
                     iconSize: 160,
                     onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => const Detail3(),
                              ),
                            );
                          },
                        ),
                      ],
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