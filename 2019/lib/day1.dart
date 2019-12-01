import 'dart:io';
import 'dart:convert';
import 'dart:math';

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

int requiredFuel(int aMass) {
  return max((aMass / 3).floor() - 2, 0);
}

int requiredFuel2(int aMass) {
  final fuel = requiredFuel(aMass);
  if (fuel < 1) {
    return fuel;
  }
  return fuel + requiredFuel2(fuel);
}
