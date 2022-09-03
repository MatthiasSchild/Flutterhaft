import 'package:flutter/material.dart';

class PaddedColumn extends StatelessWidget {
  final List<Widget> children;
  final double outerPadding;
  final double gap;

  const PaddedColumn({
    Key? key,
    required this.children,
    this.outerPadding = 0,
    this.gap = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final childrenWithPadding = children
        .map((e) => [e, SizedBox(height: gap)])
        .reduce((value, element) => [...value, ...element]);

    return Container(
      padding: EdgeInsets.all(outerPadding),
      child: Column(
        children: childrenWithPadding.toList(),
      ),
    );
  }
}
