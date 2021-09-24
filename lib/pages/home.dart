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
      //to avoid resizing when keyboard opens...
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[800],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/loading');
        },
        child: const Icon(Icons.add),
      ),

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
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                          child: ScriptText(
                            normalTxt: '29',
                            normalTxtStyle: const TextStyle(
                              fontFamily: 'Sacramento',
                              fontSize: 100,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                            supTxt: '0',
                            supOffset: const Offset(0, -50.0),
                            supTxtStyle: const TextStyle(
                              fontFamily: 'Sacramento',
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(20),
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
              flex: 3,
              child: Custom_Search_Bar(),
            ),
          ],
        ),
      ),
    );
  }
}
