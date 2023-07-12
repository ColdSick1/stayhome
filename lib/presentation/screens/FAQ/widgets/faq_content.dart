import 'package:flutter/material.dart';

import '../../../design/colors.dart';

class FaqContent extends StatefulWidget {
  final String title;
  final Widget child;
  const FaqContent({super.key, required this.title, required this.child});

  @override
  State<FaqContent> createState() => _FaqContentState();
}

class _FaqContentState extends State<FaqContent>
    with SingleTickerProviderStateMixin {
  final Animatable<double> _easeOutTween = CurveTween(curve: Curves.easeOut);
  final Animatable<double> _easeInTween = CurveTween(curve: Curves.easeIn);
  final Animatable<double> _halfTween = Tween<double>(begin: 0.0, end: 0.5);
  late AnimationController _controller;
  late Animation<double> _iconTurns;
  late Animation<double> _heightFactor;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _heightFactor = _controller.drive(_easeOutTween);
    _iconTurns = _controller.drive(
      _halfTween.chain(_easeInTween),
    );

    if (_isExpanded) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    _isExpanded = !_isExpanded;
    setState(() {
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  Widget? _buildIcon(BuildContext context) {
    return RotationTransition(
      turns: _iconTurns,
      child: const Icon(Icons.expand_more),
    );
  }

  Widget _buildChildren(BuildContext context, Widget? child) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ListTile(
          onTap: _handleTap,
          trailing: _buildIcon(context),
          title: Text(
            widget.title,
            style: const TextStyle(
              color: DesignColors.headerColor,
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        ClipRect(
          clipBehavior: Clip.hardEdge,
          child: Align(
            alignment: Alignment.center,
            heightFactor: _controller.value,
            child: widget.child,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool closed = !_isExpanded;
    final bool shouldRemoveChildren = closed;

    final Widget result = Offstage(
      offstage: closed,
      child: TickerMode(
        enabled: !closed,
        child: Column(
          children: [
            widget.child,
          ],
        ),
      ),
    );

    return AnimatedBuilder(
      animation: _controller.view,
      builder: _buildChildren,
      child: shouldRemoveChildren ? null : result,
    );
  }
}
