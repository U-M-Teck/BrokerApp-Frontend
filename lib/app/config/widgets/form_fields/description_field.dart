import 'package:flutter/material.dart';

import '../../utils/app_utils/app_strings.dart';
import '../../utils/heplers/validation_form.dart';

class DescriptionField extends StatelessWidget {
  final TextEditingController controller;
  const DescriptionField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: ValidationForm.nameValidator,
      keyboardType: TextInputType.name,
      minLines: 1,
      maxLines: 3,
      decoration: InputDecoration(
        hintText: AppStrings.description,
      ),
    );
  }
}
