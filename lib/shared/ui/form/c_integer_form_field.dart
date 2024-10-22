import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CIntegerFormField extends StatefulWidget {
  final String label;
  final int? initialValue;
  final ValueChanged<String?>? onSaved;
  final ValueChanged<String?>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType textInputType;
  final int maxLength;

  const CIntegerFormField(
      {super.key,
      required this.label,
      this.initialValue,
      this.onSaved,
      this.onChanged,
      this.textInputAction,
      this.textInputType = TextInputType.text,
      this.maxLength = 512});

  @override
  State<CIntegerFormField> createState() => _CTextFormFieldState();
}

class _CTextFormFieldState extends State<CIntegerFormField> {
  late final TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    if (widget.initialValue != null) {
      textEditingController.text = widget.initialValue.toString();
    }
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
          helperText: "",
        ),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: (value) => validate(value!),
        onChanged: widget.onChanged,
        controller: textEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        textInputAction: widget.textInputAction ?? TextInputAction.next,
      ),
    );
  }
}
