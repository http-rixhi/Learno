import 'package:flutter/material.dart';
import 'package:learno/views/analytics.dart';
import 'package:learno/views/filtered_yt.dart';
import 'package:learno/views/gpt.dart';
import 'package:learno/views/splash_screen.dart';
import 'package:learno/views/study_material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [SystemUiOverlay.bottom]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learno',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomBar(),
    );
  }
}


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = const <Widget>[
    FilteredYtScreen(),
    StudyMaterialScreen(),
    GptScreen(),
    AnalyticsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.youtube,
              color: Colors.black,
              size: 32,
            ),
            label: 'trial',
            activeIcon: FaIcon(
              FontAwesomeIcons.youtube,
              size: 33,
              color: Colors.red,
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.notesMedical,
              color: Colors.black,
              size: 32,
            ),
            label: 'trial',
            activeIcon: FaIcon(
              FontAwesomeIcons.notesMedical,
              size: 33,
              color: Colors.orange,
            ),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.brain,
              color: Colors.black,
              size: 32,
            ),
            label: 'trial',
            activeIcon: FaIcon(
              FontAwesomeIcons.brain,
              size: 33,
              color: Colors.blue,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.analytics_outlined,
              color: Colors.black,
              size: 32,
            ),
            label: 'trial',
            activeIcon: Icon(
              Icons.analytics,
              size: 33,
              color: Colors.green,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
