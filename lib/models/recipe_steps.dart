class RecipeSteps {
  const RecipeSteps(this.image, this.text);

  final String image;
  final String text;
  List<Map<String, String>> get recipeData {
    final List<Map<String, String>> recipe = [];
    recipe.add({'image': image, 'text': text});
    return recipe;
  }
}