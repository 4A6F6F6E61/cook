import 'package:material_ui/material_ui.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipes'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
      body: const Center(
        child: Card(
          child: Padding(padding: EdgeInsets.all(16), child: Text('Recipe Page')),
        ),
      ),
    );
  }
}
