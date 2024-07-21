import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OsSwitch extends StatelessWidget {
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const OsSwitch({super.key, required this.isOn, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoSwitch(value: isOn, onChanged: onChanged)
        : Switch(value: isOn, onChanged: onChanged);
  }
}
