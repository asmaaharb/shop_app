import 'package:dio/dio.dart';

class DioHelper {

  static final _baseUrl = "https://student.valuxapps.com/api/";

  static Dio dioSingleton = Dio()..options.baseUrl = _baseUrl;

  static Future<Response<dynamic>> post(String path,{Map<String, dynamic> body}){
    dioSingleton.options.headers = {
      'Authorization': 'Bearer oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97',
      'apitoken': "oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97",
    };
    final response = dioSingleton.post(path,data: FormData.fromMap(body));
    dioSingleton.options.headers = null;
    return response;
  }

  static Future<Response<dynamic>> get(String path){
    dioSingleton.options.headers = {
      'Authorization': 'Bearer oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97',
      'apitoken': "oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97",
    };
    final response = dioSingleton.get(path);
    dioSingleton.options.headers = null;
    return response;
  }

  static Future<Response<dynamic>> patch(String path,{Map<String, dynamic> body}){
    dioSingleton.options.headers = {
      'Authorization': 'Bearer oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97',
      'apitoken': "oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97",
    };
    final response = dioSingleton.patch(path,data: FormData.fromMap(body));
    dioSingleton.options.headers = null;
    return response;
  }

  static Future<Response<dynamic>> put(String path,{Map<String, dynamic> body,dynamic formData}){
    dioSingleton.options.headers = {
      'Authorization': 'Bearer oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97',
      'secret': 'FtAdHjYgA2dtujT9civRD7BRZuZRZqSCQhZMeHlAsT',
    };
    final response = dioSingleton.put(path,data: formData != null ? formData : FormData.fromMap(body));
    dioSingleton.options.headers = null;
    return response;
  }

  static Future<Response<dynamic>> delete(String path,{Map<String, dynamic> body}){
    dioSingleton.options.headers = {
      'Authorization': 'Bearer oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97',
      'apitoken': "oIKNEEBl35abOK3eu4VeLQQwMcTGe1a0aOnhSgItzVy9nMqIeULQ223HbqZSJdiIs4tS97",
    };
    final response = dioSingleton.delete(path,data: FormData.fromMap(body));
    dioSingleton.options.headers = null;
    return response;
  }

}