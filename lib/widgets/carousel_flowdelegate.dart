import 'package:flutter/rendering.dart';
import 'dart:math' as math;

class CarouselFlowDelegate extends FlowDelegate {
  CarouselFlowDelegate({
    required this.viewportOffset,
    required this.filtersPerScreen,
  }) : super(repaint: viewportOffset);

  final ViewportOffset viewportOffset;
  final int filtersPerScreen;

  @override
  void paintChildren(FlowPaintingContext context) {
    final count = context.childCount;

    // All available painting width
    final size = context.size.width;

    // The distance that a single item "page" takes up from the
    // perspective of the scroll paging system.
    final itemExtent = size / filtersPerScreen;

    // The current scroll position as an item fraction, e.g., 0.0, 1.0, or 1.3.
    final active = viewportOffset.pixels / itemExtent;

    // Index of the first item we need to paint at this moment.
    final min = math.max(0, active.floor() - 3);

    // Index of the last item we need to paint at this moment.
    final max = math.min(count - 1, active.ceil() + 3);

    // Generate transforms for the visible items.
    for (var index = min; index <= max; index++) {
      final itemXFromCenter = itemExtent * index - viewportOffset.pixels;
      final percentFromCenter = 1.0 - (itemXFromCenter / (size / 2)).abs();
      final itemScale = 0.5 + (percentFromCenter * 0.5);
      final opacity = 0.25 + (percentFromCenter * 0.75);

      final itemTransform = Matrix4.identity()
        ..translate((size - itemExtent) / 2) // Center align
        ..translate(itemXFromCenter)
        ..translate(itemExtent / 2, itemExtent / 2) // Pivot to center
        ..scale(itemScale) // Scale based on distance
        ..translate(-itemExtent / 2, -itemExtent / 2); // Restore pivot

      context.paintChild(
        index,
        transform: itemTransform,
        opacity: opacity,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CarouselFlowDelegate oldDelegate) {
    return oldDelegate.viewportOffset != viewportOffset;
  }
}
