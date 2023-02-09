import 'package:dart_openai/openai.dart';
import 'package:dotenv/dotenv.dart';

Future<void> main() async {
  // Load the .env file
  // DotEnv env = DotEnv()..load([".env"]);

  // Set the OpenAI API key from the .env file.
  OpenAI.apiKey = "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";

  // // Start using!
  // final completion = await OpenAI.instance.completion.create(
  //   model: "text-davinci-003",
  //   prompt: "Dart is",
  // );

  // // Printing the output to the console
  // print(completion.choices[0].text);

  // Generate an image from a prompt.
  final image = await OpenAI.instance.image.create(
    prompt: "thug life monalisa",
    n: 1,
  );

  // Printing the output to the console.
  print(image.data.first.url);

  // // create a moderation
  // final moderation = await OpenAI.instance.moderation.create(
  //   input: "I will cut your head off",
  // );

  // // Printing moderation
  // print(moderation.results.first.categories.violence);
}
