import 'package:broker/app/config/utils/app_utils/app_strings.dart';
import 'package:broker/app/config/utils/extentions/extention.dart';
import 'package:broker/app/config/widgets/form_fields/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
  final TextEditingController controller = TextEditingController();

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
        children: [
          Row(
            children: [
              Expanded(
                child: SearchField(controller: controller),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(AppStrings.done)),
            ],
          ),
          30.hs,
          const Text('Recent'),
          ListTile(title: Text('Apartment for rent in Shubra')),
          ListTile(title: Text('Property 2')),
          ListTile(title: Text('Property 3')),
          ListTile(title: Text('Property 4')),
          ListTile(title: Text('Property 5')),
        ],
      ),
    );
  }
}
