import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_vue/models/base_model.dart';
import 'package:flutter_vue/services/abstact/irepositry.dart';

class Repository implements IRepository {
  late DatabaseReference _dbref;
  Repository() {
    _dbref = FirebaseDatabase.instance.ref();
  }

  @override
  Future<void> add(String repository, item) async {
    await _dbref.child(repository).set(item).then((value) {
      print('Başarıyla Eklendi...');
    }).catchError(() {
      print('Hata!');
    });
  }

  @override
  Future<void> addRepository(String repository) {
    // TODO: implement addRepository
    throw UnimplementedError();
  }

  @override
  Future<void> delete(String repository, int id) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future<void> deleteRepository(String repository) {
    // TODO: implement deleteRepository
    throw UnimplementedError();
  }

  @override
  Future<void> get(String repository, item) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<List<BaseModel>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<BaseModel> getRepository(String repository) {
    // TODO: implement getRepository
    throw UnimplementedError();
  }

  @override
  Future<void> update(String repository, item) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
