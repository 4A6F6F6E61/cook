import 'package:material_ui/material_ui.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recipe')),
      body: const Center(child: Text('Welcome to the Recipe tab!')),
    );
  }
}
