import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

///
const minTagLength = 40;
const firstLineSymbol = "-->";
const space = "\u0020";
const hyphen = " - ";
final format = DateFormat("HH:mm:ss");

///
l(String text, [Object o, Object o1, Object o2, Object o3]) {
  StringBuffer buffer = StringBuffer();
  buffer.write(_format(text));
  buffer.write(_convertToStringWithHyphenBefore(o));
  buffer.write(_convertToStringWithHyphenBefore(o1));
  buffer.write(_convertToStringWithHyphenBefore(o2));
  buffer.write(_convertToStringWithHyphenBefore(o3));
  debugPrint(buffer.toString());
}

t(String text, [Object o, Object o1, Object o2, Object o3]) {
  StringBuffer buffer = StringBuffer();
  buffer.write(_format(text, withTime: true));
  buffer.write(_convertToStringWithHyphenBefore(o));
  buffer.write(_convertToStringWithHyphenBefore(o1));
  buffer.write(_convertToStringWithHyphenBefore(o2));
  buffer.write(_convertToStringWithHyphenBefore(o3));
  debugPrint(buffer.toString());
}

///
_format(String text, {
  bool withTime = false,
}) {
  StringBuffer buffer = new StringBuffer();
  if (withTime) {
    buffer.write(format.format(DateTime.now()) + " " + firstLineSymbol);
  } else {
    buffer.write(firstLineSymbol);
  }
  for (int i = 0; i < minTagLength - text.length - (withTime ? 9 : 0); i++) {
    buffer.write(space);
  }
  buffer.write(text);
  return buffer.toString();
}

_convertToStringWithHyphenBefore(Object obj) {
  return obj != null ? " - ${obj.toString()}" : '';
}
