import 'package:flutter/material.dart';

// class Counter extends StatefulWidget {
//   // This class is the configuration for the state.
//   // It holds the values (in this case nothing) provided
//   // by the parent and used by the build method of the
//   // State. Fields in a Widget subclass are always marked "final"
//   const Counter({Key? key}) : super(key: key);
//
//   @override
//   _CounterState createState() => _CounterState();
// }
//
// class _CounterState extends State<Counter> {
//   int _counter = 0;
//
//   void _increment() {
//     setState(() {
//       // This call to setState tells the Flutter framework
//       // that something has changed in this State, which
//       // causes it to rerun the build method below so that
//       // the display can reflect the updated values. If you
//       // change _counter without calling setState(), then
//       // the build method won't be called again, and so
//       // nothing would appear to happen.
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called,
//     // for instance, as done by the _increment method above.
//     // The Flutter framework has been opotimized to make
//     // rerunning build methods fast, so that you can just
//     // rebuild anything that needs updating rather than
//     // having to individually changes instaces of widgets.
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         ElevatedButton(
//           onPressed: _increment,
//           child: const Text('Increment'),
//         ),
//         const SizedBox(width: 16),
//         Text('Count: $_counter'),
//       ],
//     );
//   }
// }


class CounterDisplay extends StatelessWidget {
  const CounterDisplay({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Text('Count: $count');
  }
}


class CounterIncrementor extends StatelessWidget {
  const CounterIncrementor({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onPressed, child: const Text('Increment'),);
  }
}

class Counter extends StatefulWidget {
  const Counter({Key? key}) : super(key: key);

  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {++_counter;});
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        CounterIncrementor(onPressed: _increment),
        const SizedBox(width: 16),
        CounterDisplay(count: _counter),
      ],
    );
  }
}





void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Counter(),
        ),
      ),
    )
  );
}

