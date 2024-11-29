class RecipeSteps {
  const RecipeSteps(this.image, this.header, this.body);

  final String image;
  final String header;
  final String body;
  List<Map<String, String>> get recipeData {
    final List<Map<String, String>> recipe = [];
    recipe.add({'image': image, 'header': header, 'body': body});
    return recipe;
  }
}