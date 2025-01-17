import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DropDownWidget extends StatelessWidget {
  final List<String> items ;
  final String label;
  final Rxn<String>? controller;
  const DropDownWidget({super.key, required this.items, required this.label, this.controller});

  @override
  Widget build(BuildContext context) {
    return Obx(
       () {
        return DropdownButtonFormField<String>(
                
                decoration: InputDecoration(
                  labelText: label),
                items: items
                      .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                      .toList(),
                  value: controller?.value,
                  onChanged: (value) {
                    controller?.value = value;
                  },
              );
      }
    );
  }
}