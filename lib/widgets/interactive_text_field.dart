import 'package:flutter/material.dart';

class InteractiveTextField extends StatefulWidget {
  final void Function(String value)? onChanged;
  final String? value;
  final String? labelText;
  const InteractiveTextField({
    super.key,
    required this.value,
    this.labelText,
    this.onChanged,
  });

  @override
  State<InteractiveTextField> createState() => _InteractiveTextFieldState();
}

class _InteractiveTextFieldState extends State<InteractiveTextField> {
  late TextEditingController controller;
  @override
  void initState() {
    controller = TextEditingController(text: widget.value ?? '');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: widget.labelText ?? 'Title',
      ),
      onChanged: (value) {
        widget.onChanged?.call(value);
      },
    );
  }
}
