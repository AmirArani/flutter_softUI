import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soft UI Template',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[300],
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey[300],
          foregroundColor: Color.fromARGB(255, 73, 73, 73),
          shadowColor: Color.fromARGB(255, 219, 219, 219),
          elevation: 18,
          centerTitle: true,
        ),
      ),
      home: const MyHomePage(title: 'Soft UI Template'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Container(
              width: 135,
              height: 135,
              child: const Icon(
                Icons.android,
                size: 60,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 158, 158, 158),
                    offset: Offset(4, 4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ],
              ),
            ), //first button

            const SizedBox(height: 50),
            Container(
              width: 135,
              height: 135,
              child: const Icon(
                Icons.android,
                size: 60,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 117, 117, 117),
                    offset: Offset(4, 4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4, -4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade200,
                    Colors.grey.shade300,
                    Colors.grey.shade400,
                    Colors.grey.shade500,
                  ],
                  stops: const [
                    0.1,
                    0.3,
                    0.8,
                    0.98,
                  ],
                ),
              ),
            ), // second button
            const SizedBox(height: 50),
            Container(
              width: 135,
              height: 135,
              child: const Icon(
                Icons.android,
                size: 60,
                color: Color.fromARGB(255, 90, 90, 90),
              ),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(4, 4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  ),
                  BoxShadow(
                    color: Color.fromARGB(255, 117, 117, 117), //grey[600]
                    offset: Offset(-4, -4),
                    blurRadius: 15.0,
                    spreadRadius: 1.0,
                  )
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.grey.shade600,
                    Colors.grey.shade500,
                    Colors.grey.shade400,
                    Colors.grey.shade200,
                  ],
                  stops: const [
                    0,
                    0.3,
                    0.6,
                    1,
                  ],
                ),
              ),
            ), // second button
          ],
        ),
      ),
    );
  }
}
