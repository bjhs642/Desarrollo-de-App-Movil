import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'flag_rounded'         : Icons.flag_rounded,
  'boy_rounded'          : Icons.boy_rounded,
  'apartment_rounded'    : Icons.apartment_rounded,
  'group'                : Icons.group,
};

Icon getIcon(String nombreIcono) {
  
  return Icon(_icons[nombreIcono], color: Colors.purple);

}
