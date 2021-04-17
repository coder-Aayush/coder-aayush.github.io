import 'package:flutter/material.dart';
class TitleHeader extends StatelessWidget {
  final String? header;
  const TitleHeader({@required this.header});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        header!,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 24,
        ),
      ),
    );
  }
}
