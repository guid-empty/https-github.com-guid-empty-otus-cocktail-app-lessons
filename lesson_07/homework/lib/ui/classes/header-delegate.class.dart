import 'package:flutter/material.dart';

class HeaderDelegate extends SliverPersistentHeaderDelegate {
  final double height;
  final Widget child;
  final Color color;

  HeaderDelegate({
    @required this.height,
    @required this.child,
    @required this.color,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      height: height,
      color: color,
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 22),
      child: Center(child: child),
    );
  }

  @override
  double get maxExtent => height;

  @override
  double get minExtent => height;

  @override
  bool shouldRebuild(HeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}
