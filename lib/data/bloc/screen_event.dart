abstract class ScreenEvent {}

class ScreenSizeChanged extends ScreenEvent{
  final double width;
  ScreenSizeChanged(this.width);
}