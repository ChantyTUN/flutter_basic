import 'dart:async';

import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:project_sample/screens/main_screen.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final StreamController<ConnectivityResult> _connectivityStream =
  StreamController.broadcast();

  @override
  void initState() {
    // whenever your initialization is completed, remove the splash screen:
    FlutterNativeSplash.remove();
    super.initState();
    Connectivity().onConnectivityChanged.listen((event) {
      _connectivityStream.add(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<ConnectivityResult>(
        stream: _connectivityStream.stream,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final result = snapshot.data!;
            if (result == ConnectivityResult.mobile) {
              return MainScreen();
              // return const Center(
              //   child: Text(
              //     "Mobile",
              //     style: TextStyle(
              //       color: Colors.black,
              //     ),
              //   ),
              // );
            } else if (result == ConnectivityResult.wifi) {
              return MainScreen();
              // return const Center(
              //   child: Text(
              //     "WIFI",
              //     style: TextStyle(
              //       color: Colors.black,
              //     ),
              //   ),
              // );
            }else{
              return Image.asset(
                "assets/images/1_No_Connection.png",
                // height: Get.height,
                fit: BoxFit.cover,
              );
            }
          }else {
            //Handle the case when snapshot has no data or connectivity is other than mobile or wifi
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

        },
      ),
    );
  }

  @override
  void dispose() {
    _connectivityStream.close();
    super.dispose();
  }
}
