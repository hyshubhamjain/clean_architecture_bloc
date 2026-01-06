import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final Widget? child;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    this.label,
    this.child,
    required this.onPressed,
  }) : assert(
         label != null || child != null,
         'Either label or child must be provided',
       );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            backgroundColor: Theme.of(context).primaryColor,
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            onPressed();
          },
          child: child ?? Text(label!),
        ),
      ),
    );
  }
}
