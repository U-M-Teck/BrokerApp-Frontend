import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DropDownWidget extends StatelessWidget {
  final Map<String, int> items; // Store both names and IDs
  final String label;
  final Rxn<String>? controller;
  final RxnInt? selectedIdController; // Add ID controller

  const DropDownWidget({
    super.key,
    required this.items,
    required this.label,
    this.controller,
    this.selectedIdController,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final uniqueItems = items.keys.toSet().toList(); // Get unique names
      return DropdownButtonFormField<String>(
        
        menuMaxHeight: 250.h,
        validator: (value) => value == null ? 'Please select $label' : null,
        decoration: InputDecoration(hintText: label),
        items: uniqueItems
            .map((e) => DropdownMenuItem(
              
              value: e, child: Text(e)))
            .toList(),
        value: controller?.value,
        onChanged: (value) {
          controller?.value = value;
          selectedIdController?.value = items[value];
        },
      );
    });
  }
}
