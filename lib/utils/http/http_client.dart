import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MHttpHelper {
  static const String _baseUrl = 'https:/your_api_base_url.com'; // replace it with your api url

//helper method to make GET request
  static Future<Map<String, dynamic>> get(String endpoint) async {
    final response = await http.get(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  //helper method to make POST request
  static Future<Map<String, dynamic>> post(String endpoint,
      dynamic data) async {
    final response = await http.post(
      Uri.parse('$_baseUrl/@endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }

  //helper method to make PUT request
  static Future<Map<String, dynamic>> put(String endpoint, dynamic data) async {
    final response = await http.put(
      Uri.parse('$_baseUrl/$endpoint'),
      headers: {'Content-Type': 'application/json'},
      body: json.encode(data),
    );
    return _handleResponse(response);
  }
  //helper method to make a delete request
  static Future<Map<String, dynamic>> delete(String endpoint) async {
    final response = await http.delete(Uri.parse('$_baseUrl/$endpoint'));
    return _handleResponse(response);
  }

  // handle the http response
  static Map<String, dynamic> _handleResponse(http.Response response){
    if(response.statusCode==200){
      return  json.decode(response.body);
    } else{
      throw Exception('Failed to load data: ${response.statusCode}');
      }
    }
  }