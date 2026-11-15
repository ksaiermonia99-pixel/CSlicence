import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: "CSlicence", home: EnGeneral());
  }
}

class EnGeneral extends StatelessWidget {
  const EnGeneral({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: const Text('Concernant la licence')
            .animate()
            .fadeIn()
            .slideX(begin: -0.3),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.navigate_next),
            tooltip: 'plus_informations',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) {
                    return DefaultTabController(
                      initialIndex: 1,
                      length: 3,
                      child: Scaffold(
                        appBar: AppBar(
                          title: const Text('plus_informations'),
                          bottom: const TabBar(
                            tabs: <Widget>[
                              Tab(icon: Icon(Icons.home)),
                              Tab(icon: Icon(Icons.business)),
                              Tab(icon: Icon(Icons.school)),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),
              color: const Color.fromARGB(255, 151, 172, 246),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),
              color: const Color.fromARGB(255, 151, 172, 246),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),
              color: const Color.fromARGB(255, 151, 172, 246),
            ),
          ),
        ].animate(interval: 80.ms).slideY(begin: 0.2).fadeIn(),
      ),
    );
  }
}
