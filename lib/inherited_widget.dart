import 'package:flutter/material.dart';
import 'package:image_searching_app/view_model/view_model.dart';

class HitsInherited extends InheritedWidget {
  final ViewModel view_model;

  const HitsInherited({
    Key? key,
    required this.view_model,
    required Widget child,
  }) : super(key: key, child: child);

  static HitsInherited of(BuildContext context) {
    final HitsInherited? result =
        context.dependOnInheritedWidgetOfExactType<HitsInherited>();
    return result!;
  }

  @override
  bool updateShouldNotify(HitsInherited old) => true;
}
