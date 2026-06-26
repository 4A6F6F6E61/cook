import 'package:cook/theme.dart';
import 'package:material_ui/material_ui.dart';

class UIButton extends StatefulWidget {
  const UIButton({super.key, required this.label, required this.onPressed, this.primary = true});

  final String label;
  final VoidCallback onPressed;
  final bool primary;

  @override
  State<UIButton> createState() => _UIButtonState();
}

class _UIButtonState extends State<UIButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.primary ? primaryColor(Theme.of(context).brightness) : null,
        foregroundColor: widget.primary ? Colors.white : null,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),

      child: Text(widget.label),
    );
  }
}
