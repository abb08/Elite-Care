import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MedicationsController extends GetxController {
  // Text editing controller for the search bar
  var textController = TextEditingController();

  // Full list of medications (dummy data)
  final medications = [
    'Paracetamol',
    'Ibuprofen',
    'Amoxicillin',
    'Ciprofloxacin',
    'Metformin',
    'Atorvastatin',
    'Lisinopril',
    'Omeprazole',
    'Aspirin',
    'Simvastatin'
  ];

  // Observable filtered list
  var filteredMedications = <String>[].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize the filtered list with the full list
    filteredMedications.assignAll(medications);

    // Listen for changes in the search text and update the filtered list
    textController.addListener(() {
      filterMedications(textController.text);
    });
  }

  void filterMedications(String query) {
    if (query.isEmpty) {
      filteredMedications.assignAll(medications);
    } else {
      filteredMedications.assignAll(
        medications.where((medication) =>
            medication.toLowerCase().contains(query.toLowerCase())),
      );
    }
  }

  @override
  void onClose() {
    textController.dispose();
    super.onClose();
  }
}
