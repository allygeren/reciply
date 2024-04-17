import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class Recipe {
  final String name;
  String description;
  static final _storage = FlutterSecureStorage();
  static const _keyDescription = '';
  String id = 'new_recipe';

  Recipe({required this.name, required this.description});

  void updateDescription(String newDescrip){
    this.description = newDescrip;
  }

  String getName(){
    return this.name;
  }

  Map<String, dynamic> toMap() {
    Map<String, dynamic> data = Map<String, dynamic>();
      data['id'] = 'new_recipe';
      data['title'] = name;
      data['content'] = description;
      return data;
    }
  }

