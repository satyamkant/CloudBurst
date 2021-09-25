import 'package:flutter/material.dart';
import 'package:CloudBurst/customwidgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};
  Map tmp = {};

  @override
  Widget build(BuildContext context) {
    data = (ModalRoute.of(context)!.settings.arguments == null)
        ? tmp
        : ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      //to avoid resizing when keyboard opens...
      resizeToAvoidBottomInset: false,
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
                          child: Row(
                            children: [
                              Container(
                                child: RichText(
                                  text: TextSpan(
                                    text: (data['temperature'] != 'Invalid' &&
                                            data['temperature'] != null)
                                        ? data['temperature']
                                        : 'Enter Location',
                                    style: const TextStyle(
                                      fontFamily: 'Sacramento',
                                      fontSize: 70,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              RichText(
                                text: TextSpan(children: [
                                  WidgetSpan(
                                    child: Transform.translate(
                                      offset: const Offset(0.0, -30.0),
                                      child: Text(
                                        (data['unit'] != 'Invalid' &&
                                                data['unit'] != null)
                                            ? '0'
                                            : '',
                                        style: const TextStyle(
                                          fontFamily: 'Sacramento',
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ]),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: (data['location'] != 'Invalid' &&
                                          data['location'] != null)
                                      ? data['location']
                                      : '',
                                  style: const TextStyle(
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
              child: Custom_Search_Bar(
                  incoming: (data['location'] == 'Invalid')
                      ? 'Invalid Location'
                      : 'Type City Name'),
            ),
          ],
        ),
      ),
    );
  }
}
