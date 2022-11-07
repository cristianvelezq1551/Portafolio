import 'package:flutter/material.dart';

import '../../../domain/helper/resources.dart';

class FIconButton extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final VoidCallback? onLongPress;
  final double size;
  final Color? iconColor;
  final EdgeInsets padding;
  final String? tooltip;
  final Color? backgroundColor;

  const FIconButton({
    Key? key,
    required this.icon,
    required this.onPressed,
    this.onLongPress,
    this.size = 20,
    this.iconColor,
    this.padding = const EdgeInsets.all(8),
    this.tooltip,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget icon = IconTheme.merge(
      data: IconThemeData(
          color: iconColor ?? Theme.of(context).colorScheme.primary,
          size: size),
      child: this.icon,
    );

    Widget button = Material(
      type: backgroundColor == null
          ? MaterialType.transparency
          : MaterialType.circle,
      color: backgroundColor,
      child: buildPlatformWrapper(
        context: context,
        child: icon,
      ),
    );

    if (tooltip != null) {
      button = Tooltip(
        message: tooltip ?? '',
        child: button,
      );
    }

    return Container(
      padding: const EdgeInsets.all(4),
      child: button,
    );
  }

  Widget buildPlatformWrapper({
    required Widget child,
    required BuildContext context,
  }) {
    switch (Theme.of(context).platform) {
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
      case TargetPlatform.linux:
      case TargetPlatform.windows:
        return InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          onLongPress: onLongPress,
          child: Padding(
            padding: padding,
            child: child,
          ),
        );
      case TargetPlatform.iOS:
      case TargetPlatform.macOS:
        return FTapEffect(
          onTap: onPressed,
          onLongPressed: onLongPress,
          child: Padding(
            padding: padding,
            child: child,
          ),
        );
    }
  }
}

enum FTapEffectType {
  touchableOpacity,
  scaleDown,
}

class FTapEffect extends StatefulWidget {
  const FTapEffect({
    Key? key,
    required this.child,
    required this.onTap,
    this.duration = const Duration(milliseconds: 100),
    this.vibrate = false,
    this.behavior = HitTestBehavior.opaque,
    this.effects = const [
      FTapEffectType.touchableOpacity,
    ],
    this.onLongPressed,
  }) : super(key: key);

  final Widget child;
  final List<FTapEffectType> effects;
  final void Function()? onTap;
  final void Function()? onLongPressed;
  final Duration duration;
  final bool vibrate;
  final HitTestBehavior? behavior;

  @override
  State<FTapEffect> createState() => _FTapEffectState();
}

class _FTapEffectState extends State<FTapEffect>
    with SingleTickerProviderStateMixin {
  final double scaleActive = 0.98;
  final double opacityActive = 0.2;
  late AnimationController controller;
  late Animation<double> animation;
  late Animation<double> animation2;

  @override
  void initState() {
    controller = AnimationController(vsync: this, duration: widget.duration);
    animation = Tween<double>(begin: 1, end: scaleActive).animate(controller);
    animation2 =
        Tween<double>(begin: 1, end: opacityActive).animate(controller);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void onTapCancel() => controller.reverse();
  void onTapDown() => controller.forward();
  void onTapUp() => controller.reverse().then((value) => widget.onTap!());

  @override
  Widget build(BuildContext context) {
    if (widget.onTap != null) {
      return GestureDetector(
        behavior: widget.behavior,
        onLongPress: widget.onLongPressed,
        onTapDown: (detail) => onTapDown(),
        onTapUp: (detail) => onTapUp(),
        onTapCancel: () => onTapCancel(),
        child: buildChild(controller, animation, animation2),
      );
    } else {
      return buildChild(controller, animation, animation2);
    }
  }

  AnimatedBuilder buildChild(
    AnimationController controller,
    Animation<double> animation,
    Animation<double> animation2,
  ) {
    return AnimatedBuilder(
      child: widget.child,
      animation: controller,
      builder: (context, child) {
        Widget result = child ?? const SizedBox();
        for (var effect in widget.effects) {
          switch (effect) {
            case FTapEffectType.scaleDown:
              result = ScaleTransition(scale: animation, child: result);
              break;
            case FTapEffectType.touchableOpacity:
              result = Opacity(opacity: animation2.value, child: result);
              break;
          }
        }
        return result;
      },
    );
  }
}
