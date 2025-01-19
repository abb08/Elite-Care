import 'package:get/get.dart';
import 'package:flutter/material.dart';

class TestResultsController extends GetxController {
  // Text editing controller for the search bar
  var textController = TextEditingController();

  // Full list of medications (dummy data)
  final testResults = [
    'blood test',
    'tea',
    'Amoxicillin',
    'heheheh',
    'test test',
    'melaria test',
    'melariaaa test',
    'Omeprazole test',
    'Aspirin test',
    'heart test'
  ];

  // Observable filtered list
  var filteredResults = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize the filtered list with the full list
    filteredResults.assignAll(testResults);

    // Listen for changes in the search text and update the filtered list
    textController.addListener(() {
      filterTestResults(textController.text);
    });
  }

  void filterTestResults(String query) {
    if (query.isEmpty) {
      filteredResults.assignAll(testResults);
    } else {
      filteredResults.assignAll(
        testResults.where((results) =>
            results.toLowerCase().contains(query.toLowerCase())),
      );
    }
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
