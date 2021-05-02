

import 'package:hive/hive.dart';
import 'package:recipee_app/hiveClass.dart';
import 'package:recipee_app/ownRecipe.dart';
import 'add.dart';
import 'package:flutter/material.dart';
import 'package:recipee_app/home.dart';
import 'formula.dart';
import 'package:path_provider/path_provider.dart' as path_provider;



void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  final  appDocumentDirecotry = await  path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirecotry.path);
  Hive.registerAdapter(hiveClassAdapter());
  await Hive.openBox('ownRecipeCounter');
  await Hive.openBox('newRecipes');
  await Hive.openBox('asset');

  runApp((MaterialApp(
    routes: {
      '/home' : (context)=> HomePage( ),
      '/formula': (context)=> Formula(),
      '/add':(context)=> Adding(),
      '/ownRecipe':(context)=>OwnRecipe(),
    },
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  )));
}

