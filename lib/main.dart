import 'package:flutter/material.dart';
import 'package:ryuk_bank_mobile/src/app/injectable/injectable.dart';
import 'package:ryuk_bank_mobile/src/app/navigation/navigation.dart';
import 'package:ryuk_bank_mobile/src/presenter/home/screens/home_screen.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ryuk bank SA',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: HomeScreen(),
      routes: Routes.routes,
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   void _decrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//             ElevatedButton(
//               onPressed: _decrementCounter,
//               child: const Icon(Icons.line_axis),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 injectable.get<NavigatorInterface>().pushNamed(
//                     context: context, route: Routes.home);
//               },
//               child: Text('Ir para home'),
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
