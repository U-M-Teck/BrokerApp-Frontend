import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditDropDownWidget extends StatelessWidget {
  final Map<String, int> items; // Store both names and IDs
  final String label;
  final Rxn<String>? controller;
  final RxnInt? selectedIdController; // Add ID controller
  final int initialId; // Add initialId parameter

  const EditDropDownWidget({
    super.key,
    required this.items,
    required this.label,
    this.controller,
    this.selectedIdController,
    required this.initialId, // Initialize initialId
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final uniqueItems =
          items.keys.toSet().toList(); // Get unique governorate names

      // Set initial value based on initialId
      if (selectedIdController?.value != null) {
        // Find the governorate (key) that corresponds to the given initialId (value)
        final initialGovernorate = items.entries
            .firstWhere(
              (entry) => entry.value == initialId,
              orElse: () => MapEntry('', 0), // Default empty entry if not found
            )
            .key;

        // Debugging statement
        // Ensure it contains the correct data

        // Assign initial values to controllers
        controller?.value = initialGovernorate;
        selectedIdController?.value = initialId;
      }

      return DropdownButtonFormField<String>(
        validator: (value) => value == null ? 'Please select $label' : null,
        decoration: InputDecoration(labelText: label),
        items: uniqueItems
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        value: controller?.value,
        onChanged: (value) {
          controller?.value = value;
          selectedIdController?.value =
              items[value]; // Get the corresponding ID
        },
      );
    });
  }
}
