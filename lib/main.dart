import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ISI_KEF",
      home: EnGeneral(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class EnGeneral extends StatelessWidget {
  const EnGeneral({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[50],
        foregroundColor: const Color.fromARGB(255, 6, 0, 0),
        centerTitle: true,
        title: const Text('ISI_KEF').animate().fadeIn().slideX(begin: -0.3),
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
                              Tab(
                                icon: Icon(Icons.computer),
                                text: 'Informatique',
                              ),
                              Tab(icon: Icon(Icons.lan), text: 'Réseaux'),
                              Tab(icon: Icon(Icons.school), text: 'Master'),
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
            flex: 4,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(60.0),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(60.0),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(16),

              decoration: BoxDecoration(
                color: Colors.blue[50],
                border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(60.0),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: const Color.fromARGB(255, 240, 27, 4),
                        ),
                        SizedBox(width: 5),
                        Expanded(child: Text('5 Rue Saleh Ayech - 7100 Kef')),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Icon(Icons.phone, color: Colors.green),
                        SizedBox(width: 5),
                        Text('+216 78 201 056'),
                      ],
                    ),

                    SizedBox(height: 15),

                    Row(
                      children: [
                        Icon(Icons.email, color: Colors.red),
                        SizedBox(width: 5),
                        Expanded(child: Text('contact@isikef.u-jendouba.tn')),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ].animate(interval: 800.ms).slideY(begin: 0.2).fadeIn(),
      ),
    );
  }
}
