import 'package:cook/components/ui_button.dart';
import 'package:material_ui/material_ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: Row(
          children: [UIButton(label: 'Click me', onPressed: () {})],
        ),
      ),
    );
  }
}
