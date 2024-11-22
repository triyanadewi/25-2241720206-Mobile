import 'dart:async';
//import 'package:books/geolocation.dart';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo | Triyana',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
          foregroundColor: Colors.white,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: const FuturePage(),
      //home: const LocationScreen(),
      //home: const NavigationFirst(),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget{
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  Future handleError() async {
    try {
      await returnError();
    }
    catch (error) {
      setState(() {
        result = error.toString();
      });
    }
    finally {
      print('Complete');
    }
  }

  Future returnError() async {
    await Future.delayed( const Duration(seconds: 2));
    throw Exception('Something terible happened!');
  }

  void returnFG() {
    Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]).then((List<int> value) {
      int total = value.reduce((a, b) => a + b); // Menjumlahkan semua nilai
      setState(() {
        result = total.toString();
      });
    }).catchError((e) {
      setState(() {
        result = 'An error occurred';
      });
    });
  }

  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    try {
      await new Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
    }
    catch (_) {
      completer.completeError({});
    }
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  String result = '';
  // bool isLoading = false;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Back from the Future'),
    ),
    body: Container(
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey[80], // Warna background abu-abu
                foregroundColor: Colors.black, // Warna teks
              ),
              child: const Text('GO!'),
              onPressed: () {
                handleError();
              },
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            // if (isLoading) // Tampilkan loading hanya saat isLoading true
              const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    ),
  );}
}