import 'package:flutter/material.dart';
import 'package:project_taxcar/home_page.dart';
import 'package:project_taxcar/login.dart';
import 'package:project_taxcar/select.dart';

// ignore: camel_case_types
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

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
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.only( right:0,bottom: 30),
                child: Text('''TaxCar Calculator''',
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold ,color: Color.fromARGB(255, 255, 255, 255),),
                ),
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/meen.jpg'),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Color.fromARGB(255, 35, 236, 219),
                ),
              ),
              InkWell(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    title:Text(
                      '''        Phanit Subsaithong \n             6321602949''',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 95, 56, 56)),
                    ),
                  ),
                ),
              ),
               SizedBox(
                height: 30.0,
               
              ),
              CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage('assets/preem.jpg'),
              ),
              SizedBox(
                height: 20.0,
                width: 150,
                child: Divider(
                  color: Color.fromARGB(255, 249, 170, 0),
                ),
              ),
              InkWell(
                child: Card(
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    title:Text(
                      '''    Natthapas Ruangviriyachai \n              6321600288''',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 95, 56, 56)),
                    ),
                  ),
                ),
              ),
            ],
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
          ]
         ),
        )
      )
    );
  }
}