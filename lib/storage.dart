
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:path_provider/path_provider.dart';

class storage{

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }





  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/accessedBefore.txt');
  }





  Future<File> storeAccess(String access) async {
    final file = await _localFile;

    String username = access.toString();
    // Write the file
    return file.writeAsString(username);
  }




  Future<String> readAccess() async {

    try {
      final file = await _localFile;
      String content = await file.readAsString();

      return content;

      // Read the file
    }

    catch(e){
      return e.toString();
    }

  }

}