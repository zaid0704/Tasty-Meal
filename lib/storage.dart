import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
class Storage 
 {
   Database database ;
   init()async{
     Directory d = await getApplicationDocumentsDirectory();
     final path = join (d.path,'filters.db');
     database =await openDatabase (
       path,version: 1,onCreate: (Database db,version ){
          return  db.execute("""
          CREATE TABLE Filters 
           (
             veg INTEGER,
             vegan INTEGER ,
             lactose INTEGER,
             gluten INTEGER,
           )
          """);
       }
     );
   }
 }