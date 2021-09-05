import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sida_app/screens/home_screen.dart';
import 'package:sida_app/shared/data_handler/app_data.dart';


void main() async
{

  // Firebase.initializeApp(name: , options: );
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppData>(
      create: (context) => AppData(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'Google Map Place Picker',
  //    home: PickerPage(),
        home: HomeScreen(),
      ),
    );
  }
}


