import 'package:flutter/material.dart';

class InteractiveTextField extends StatefulWidget {
  final void Function(String value)? onChanged;
  final String? value;
  final String? labelText;
  final TextEditingController? controller;
  final int? maxLines;
  final int? maxLength;
  const InteractiveTextField(
      {super.key,
      required this.value,
      this.labelText,
      this.onChanged,
      this.controller,
      this.maxLength,
      this.maxLines = 1});

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
      controller: widget.controller ?? controller,
      maxLines: widget.maxLines,
      maxLength: widget.maxLength,
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
