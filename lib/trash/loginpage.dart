import 'package:flutter_web/cupertino.dart';
import 'package:flutter_web/material.dart';
import 'package:flutter_web/rendering.dart';
//trabalhar nesta pagina

class LoginPage extends StatefulWidget{

  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => new _LoginPageState();

}

class _LoginPageState extends State<LoginPage>{

  int _counter = 0;

  void _incrementCounter() {

    setState(() {

      _counter += 1; 
    
    });

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(

        child: Column(

          children: <Widget>[

            // header
            Container(

              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6A0080),
                    Color(0xFF712680),

                  ]
                )
              ),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Align(

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person,
                      size: MediaQuery.of(context).size.height / 10,
                      color: Colors.white,
                    ),

                  ),
                  Align(

                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 40
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                    )

                  )
                  
                ],

              ),

            ),
            // inputs
            Container(
              padding: const EdgeInsets.only(
                top: 40
              ),

              child: Column(

                children: <Widget>[

                  // input de email
                  Container(

                    width: MediaQuery.of(context).size.width / 2,
                    height: 50,
                    // padding: const EdgeInsets.all(8),
                    padding: const EdgeInsets.only(
                      bottom: 5,
                      left: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30)
                      ),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 20
                        )
                      ]
                    ),
                    child: TextField(

                      decoration: InputDecoration(
                        icon: Icon(Icons.email, color: Colors.grey,),
                        // hintText: 'Email',
                        labelText: 'email',
                        // hasFloatingPlaceholder: false
                      ),

                    ),

                  ),
                  // // input de password
                  // Container(

                  //   margin: const EdgeInsets.only(
                  //     top: 20
                  //   ),
                  //   width: MediaQuery.of(context).size.width / 2,
                  //   height: 50,
                  //   // padding: const EdgeInsets.all(8),
                  //   padding: const EdgeInsets.only(
                  //     bottom: 5,
                  //     left: 10,
                  //   ),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.all(
                  //       Radius.circular(30)
                  //     ),
                  //     color: Colors.white,
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: Colors.black54,
                  //         blurRadius: 20
                  //       )
                  //     ]
                  //   ),
                  //   child: TextField(
                      
                  //     obscureText: true,
                  //     decoration: InputDecoration(
                  //       icon: Icon(Icons.vpn_lock, color: Colors.grey,),
                        
                  //       labelText: 'password',
                  //       // hasFloatingPlaceholder: false
                  //     ),

                  //   ),

                  // )

                ],

              ),

            ),
            // forgot password
            Align(

              alignment: Alignment.bottomRight,
              child: Padding(

                padding: const EdgeInsets.only(
                  right: 30,
                  top: 30
                ),
                child: Text(
                  'forgot password ?',
                  style: TextStyle(
                    color: Colors.grey
                  ),
                  ),
              
              )

            ),
            // btn
            Container(
              
              width: MediaQuery.of(context).size.width / 3,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(12)
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF6A0080),
                    Color(0xFF712680),
                  ]
                )
              ),
              child: Center(
                
                child: Text(
                  'login', 
                  style: TextStyle(
                    color: Colors.white
                    ),
                
                )
              
              ),
            
            )

          ],

        ),

      )

    );

  }

}