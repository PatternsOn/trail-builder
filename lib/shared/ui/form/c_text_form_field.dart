import 'package:flutter/material.dart';

class CTextFormField extends StatefulWidget {
  final String label;
  final ValueChanged<String?>? onSaved;
  final TextInputAction? textInputAction;
  final int maxLength;

  const CTextFormField(
      {super.key,
      required this.label,
      this.onSaved,
      this.textInputAction,
      this.maxLength = 512});

  @override
  State<CTextFormField> createState() => _CTextFormFieldState();
}

class _CTextFormFieldState extends State<CTextFormField> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  validate(String value) {
    if (value.length > widget.maxLength) {
      return "To long";
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
      child: TextFormField(
        decoration: InputDecoration(
          // border: const OutlineInputBorder(),
          label: Text(widget.label),
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validate(value!),
        onSaved: (String? value) => widget.onSaved,
        controller: textEditingController,

        textInputAction: widget.textInputAction ?? TextInputAction.next,
      ),
    );
  }
}
