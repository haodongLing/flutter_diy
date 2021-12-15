
import 'package:flutter/material.dart';

class CustomWidget extends LeafRenderObjectWidget{
  @override
  RenderObject createRenderObject(BuildContext context) {
    throw UnimplementedError();
  }
  @override
  void updateRenderObject(BuildContext context, covariant RenderObject renderObject) {
    super.updateRenderObject(context, renderObject);
  }


}
class RenderCustomObject extends RenderBox{
  @override
  void performLayout() {
    super.performLayout();
  }
  @override
  void paint(PaintingContext context, Offset offset) {
    super.paint(context, offset);
  }
}