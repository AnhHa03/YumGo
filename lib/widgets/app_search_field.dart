import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppSearchField extends StatelessWidget {
  final String hint;
  const AppSearchField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SvgPicture.asset(
            'assets/icons/search.svg',
            width: 24,
            height: 24,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        // prefixIconConstraints: const BoxConstraints(
        //   minHeight: 40,
        //   maxWidth: 40,
        // ),
        hintText: hint,
        hintStyle: TextStyle(color: Colors.grey, fontSize: 16.0),
        border: OutlineInputBorder(),
      ),
    );
  }
}
