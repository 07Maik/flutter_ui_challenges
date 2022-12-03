import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  const CustomRadio({
    Key? key,
    required this.primaryColor,
  }) : super(key: key);

  final Color primaryColor;

  @override
  State<CustomRadio> createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  late int value;
  @override
  void initState() {
    value = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Radio(
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: const VisualDensity(horizontal: -4),
        value: value,
        toggleable: true,
        groupValue: 1,
        activeColor: widget.primaryColor,
        onChanged: ((_) {
          value = value == 0 ? 1 : 0;
          setState(() {});
        }));
  }
}
