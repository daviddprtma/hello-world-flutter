import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

enum name{ User1, User2}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  // int _selectedIdx = 0;
  // static const List<Widget> selectBody = <Widget>[
  //   Text('Home'),
  //   Text('Search'),
  // ];

  // void _onItemTapped(int index){
  //   setState(() {
  //     _selectedIdx = index;
  //   });
  // }

  // bool value1 = false;
  // name? _character = name. User1;

  // bool isSwitched = false;
  // var textValue = 'Switch is OFF';
  //
  // void toggleSwitch(bool value)
  // {
  //   if(isSwitched == false)
  //   { setState(() {
  //     isSwitched = true;
  //     textValue = 'Switch Button is ON';
  //   }
  //   );
  //     print('Switch Button is ON');
  //   }
  //   else
  //   {
  //     setState(()
  //     { isSwitched = false;
  //       textValue = 'Switch Button is OFF';
  //     });
  //     print('Switch Button is OFF');
  //   }

  int _value = 6;
    // @override
    // Widget build(BuildContext context) {
      // For Bottom Navigation Bar
      // return Scaffold(
      //   appBar: AppBar(
      //     title: Text(this.widget.title),
      //   ),
      //   body: Center(
      //     child: selectBody.elementAt(_selectedIdx),
      //   ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     currentIndex: _selectedIdx,
      //     onTap: _onItemTapped,
      //     items: const <BottomNavigationBarItem>[
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.home),
      //         title: Text('home')),
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.search),
      //       title: Text('search'))
      //     ],
      //   ),
      // );

      //For Tabbar and TabbarView
      // return DefaultTabController
      //   (length: 2,child:
      // Scaffold(appBar: AppBar(
      //   bottom: const TabBar(
      //     tabs: [
      //       Tab(icon: Icon(Icons.home)),
      //       Tab(icon: Icon(Icons.search),)
      //     ],
      //   ),
      // ),
      //   body: const TabBarView
      //     (
      //     children:
      //     [ Icon(Icons.home), Icon(Icons.search), ],
      //   ),
      // ),
      // );

      //For RaisedButton FAB
      // return Scaffold
      //   ( appBar: AppBar( title: const Text('Buttons'),
      // ),
      //   body:Center
      //     ( child: RaisedButton(
      //     child: const Text("Raised Button"), onPressed: () => {}, ),
      //   ),
      //   floatingActionButton: FloatingActionButton(
      //     child: Icon(Icons.search), onPressed: () => {},
      //   ),
      // );

      //For checkbox and radio button
      // return Scaffold(
      //     appBar: AppBar(
      //       title: const Text('Buttons'), ),
      //     body:Column( children: [ Checkbox(
      //       value: this.value1,
      //       onChanged: (value)
      //       { setState((){ this.value1 = value!;
      //       }
      //       );
      //         },
      //       activeColor: Colors.red,
      //       checkColor: Colors.green,),
      //       ListTile( title: const Text("User 1"),
      //         leading: Radio<name>(
      //           value: name. User1,
      //           groupValue: _character,
      //           onChanged: (name? value)
      //           {
      //             setState(() { _character = value;});
      //             },
      //         ),
      //       ),
      //       ListTile( title: const Text("User2"),
      //         leading: Radio<name>(
      //           value: name. User2,
      //           groupValue: _character,
      //           onChanged: (name? value)
      //           { setState(() { _character = value; });
      //             },
      //         ),
      //       ),
      //     ],
      //     )
      // );
  @override
  Widget build(BuildContext context) {
    //  For switch Icon
    // return Scaffold(
    //     appBar: AppBar(
    //       title: const Text('Buttons'),
    //     ),
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children:[ Transform.scale( scale: 2,
    //           child: Switch( onChanged: toggleSwitch,
    //             value: isSwitched,
    //             activeColor: Colors.blue,
    //             activeTrackColor: Colors.yellow,
    //             inactiveThumbColor: Colors.redAccent,
    //             inactiveTrackColor: Colors.orange, )
    //       ),
    //         Text('$textValue',
    //           style: TextStyle(fontSize: 20),)
    //       ],
    //     )
    // );

    //  For Slider
    return Scaffold(
        appBar: AppBar(
          title: const Text('Buttons'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [ const Icon( Icons.volume_up, size: 40, ),
                    Expanded( child: Slider
                      ( value: _value.toDouble(),
                        min: 1.0,
                        max: 20.0,
                        divisions: 10,
                        activeColor: Colors.green,
                        inactiveColor: Colors.orange,
                        label: 'Set volume value',
                        onChanged: (double newValue)
                        { setState(() { _value = newValue.round(); }
                        );},
                        semanticFormatterCallback: (double newValue) { return '${newValue.round()} dollars'; } ) ),
                  ]
              )
          ),
        )
    );
  }
}
