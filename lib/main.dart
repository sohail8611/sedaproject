import 'package:flutter/material.dart';
import 'pages/video_list.dart';
import 'pages/home_page.dart';
import 'pages/live_view.dart';
import 'pages/video_storage.dart';
import 'pages/settings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}









class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
     
    HomePage(),
    LiveView(),
   VideoList(),
    VideoStorage(),
    Settings(),
    
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('BottomNavigationBar Sample'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 8,
        unselectedFontSize: 8,
        unselectedItemColor: Colors.blue[700],
        
        backgroundColor: Colors.white,
        iconSize: 22,
        
        
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            
            icon: Icon(Icons.play_circle_outline_rounded),
            label: 'Live view',
            backgroundColor: Colors.red,
          ),
         
         BottomNavigationBarItem(
            icon: Icon(Icons.ondemand_video_rounded),
            label: 'Video list',
            
            backgroundColor: Colors.red,
            
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder_open),
            label: 'Video Storage',
            backgroundColor: Colors.red,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_rounded),
            label: 'Settings',
            backgroundColor: Colors.red,

          ),
         
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[900],
        onTap: _onItemTapped,
      ),
    );
  }
}