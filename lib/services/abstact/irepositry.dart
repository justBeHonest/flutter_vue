import 'package:flutter_vue/models/base_model.dart';

abstract class IRepository {
  Future<List<BaseModel>> getAll();
  Future<BaseModel> getRepository(String repository);
  Future<void> deleteRepository(String repository);
  Future<void> addRepository(String repository);

  Future<void> add(String repository, dynamic item);
  Future<void> delete(String repository, int id);
  Future<void> update(String repository, dynamic item);
  Future<void> get(String repository, dynamic item);
}
