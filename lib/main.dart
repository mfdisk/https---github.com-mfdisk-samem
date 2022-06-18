import 'package:flutter/material.dart';
import 'package:samem/constanance.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SamemApp',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'أطلب أعمالك الآن أونلاين'),
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
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 50,
          right: 20,
          left: 20,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'سجل أشتراكك معنا',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text MainDetailsText() {
    return Text(
      'أطلب أعمالك الآن أونلاين',
      style: TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontFamily: "serif",
      ),
    );
  }

  Widget myWidget() {
    return Column(
      children: [
        logoImageBanner(),
        MainDetailsText(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.green,
              elevation: 20,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              )),
          onPressed: () {
            print("تم الطلب");
          },
          child: Text("أطلب الآن"),
        ),
        whatsappIconMethod(),
      ],
    );
  }

  AspectRatio logoImageBanner() {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Center(
        child: Image.network(
          'https://i0.wp.com/samem.online/wp-content/uploads/2022/05/Logo-500-500.png?w=500&ssl=1',
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  IconButton whatsappIconMethod() {
    return IconButton(
      iconSize: 60,
      onPressed: () {
        print('تم الذهاب لواتساب');
        const url = 'https://web.whatsapp.com/send?phone=201558118990';
      },
      icon: Icon(
        Icons.whatsapp,
        color: Colors.green,
      ),
    );
  }
}
