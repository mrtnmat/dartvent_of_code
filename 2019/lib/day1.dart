import 'dart:io';
import 'dart:convert';

int requiredFuel(int aMass) {
  return (aMass / 3).floor() - 2;
}

Stream<int> parseFilePath(String path) {
  final inputFile = new File(path);
  return parseInput(inputFile);
}

Stream<int> parseInput(File anInput) {
  return anInput
      .openRead()
      .transform(utf8.decoder)
      .transform(new LineSplitter())
      .map((String event) {
    return int.parse(event.trim());
  });
}
