import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:CloudBurst/services/Weather_Api_Fetch.dart';

class Loading extends StatefulWidget {
  // const Loading({Key? key}) : super(key: key);
  String? incoming;
  Loading({this.incoming});
  @override
  _LoadingState createState() => _LoadingState(userinput: incoming);
}

class _LoadingState extends State<Loading> {
  String? userinput = 'ranchi';

  _LoadingState({this.userinput});

  void makeRequest() async {
    weatherdata request = weatherdata(location: userinput);
    await request.getweather();

    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'temperature': (request.location == 'Invalid') ? 'Invalid' : request.temp,
      'country': (request.location == 'Invalid') ? 'Invalid' : request.country,
      'location':
          (request.location == 'Invalid') ? 'Invalid' : request.location,
      'unit': (request.location == 'Invalid') ? 'Invalid' : 'celsius',
    });
  }

  @override
  void initState() {
    super.initState();
    makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitCubeGrid(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
