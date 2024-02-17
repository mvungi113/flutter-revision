import 'package:flutter/material.dart';

class CurveTweenPage extends StatelessWidget {
  const CurveTweenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Tween1(),
    );
  }
}

class Tween1 extends StatelessWidget {
  const Tween1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(_newRoute());
            },
            child: const Text("Click to see CurveTween Animation")),
      ),
    );
  }
}

Route _newRoute() {
  return PageRouteBuilder(
      pageBuilder: ((context, animation, secondaryAnimation) => const Tween2()),
      transitionsBuilder: ((context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      }));
}

class Tween2 extends StatelessWidget {
  const Tween2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      backgroundColor: Colors.amber,
      body: const Center(
        child: Text("CurveTween Page 2"),
      ),
    );
  }
}
