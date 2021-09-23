import 'package:flutter/material.dart';
import 'package:CloudBurst/customwidgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],

      //app bar starts here...
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text(
          'Weather',
          style: TextStyle(
            fontFamily: 'Roboto-Light',
            fontSize: 25.0,
            color: Colors.grey[500],
          ),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
            child: const Icon(Icons.cloud),
          ),
        ],
      ),

      //body starts here...
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/clouds_background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: ScriptText(
                            normalTxt: '29',
                            normalTxtStyle: const TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 100,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            supTxt: '0',
                            supOffset: const Offset(0, -50.0),
                            supTxtStyle: const TextStyle(
                              fontFamily: 'Roboto-Regular',
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Ranchi',
                                  style: TextStyle(
                                    fontFamily: 'Roboto-Light',
                                    fontSize: 35,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                width: 300,
                child: Opacity(
                  opacity: 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type City Name',
                      hintStyle: TextStyle(
                        color: Colors.grey[800],
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      filled: true,
                      focusColor: Colors.blue,
                      fillColor: Colors.grey[300],
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.grey[800],
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
