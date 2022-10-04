import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_goals_1/features/riverpod/presentation/widgets/custom_button.dart';

final insuranceTypeProvider = StateProvider<String>((ref) => "");

class CustomAlert extends StatelessWidget {
  final String title;
  final Icon? image;
  final String? description;
  final String? firstButtonText;
  final String? secondButtonText;
  final void Function()? firstActionButton;
  final void Function()? secondActionButton;

  const CustomAlert({
    super.key,
    required this.title,
    this.image,
    this.description,
    this.firstButtonText,
    this.secondButtonText,
    this.firstActionButton,
    this.secondActionButton,
  });

  void show(BuildContext context, {required bool barrierDismissible}) {
    showDialog(
      barrierDismissible: barrierDismissible,
      context: context,
      builder: (_) => this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          top: image != null ? 24.0 : 16.0,
          bottom: 12.0,
          left: 16.0,
          right: 16.0,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (image != null) const Icon(Icons.abc),
            if (image != null)
              const SizedBox(
                height: 10,
              ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            if (description != null)
              Text(
                description!,
                textAlign: TextAlign.center,
              ),
            if (firstButtonText != null)
              CustomButton(
                text: firstButtonText!,
                onPressed: firstActionButton,
              ),
            const SizedBox(
              height: 15,
            ),
            if (secondButtonText != null)
              CustomButton(
                text: secondButtonText!,
                onPressed: secondActionButton,
              ),
          ],
        ),
      ),
    );
  }
}
