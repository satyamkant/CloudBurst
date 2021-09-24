import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:CloudBurst/services/Weather_Api_Fetch.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void makeRequest() async {
    weatherdata request = weatherdata(location: 'delhi');
    await request.getweather();
    print(request.temp);
    print(request.country);
    print(request.location);
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
