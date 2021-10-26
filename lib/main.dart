import 'package:flutter/material.dart';
import 'package:image_searching_app/screen/search_screen.dart';
import 'package:provider/provider.dart';
import 'package:image_searching_app/view_model/view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Conference App',
      theme: ThemeData(
        brightness: Brightness.light,
        /* light theme settings */
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home:  ChangeNotifierProvider<ViewModel>(
        create: (_) => ViewModel(),
        child: const SearchScreen(),
      ),
    );
  }
}
