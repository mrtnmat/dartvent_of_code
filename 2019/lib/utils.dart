import 'dart:io';
import 'dart:convert';

int requiredFuel(int aMass) {
  return (aMass / 3).floor() - 2;
}

List<int> parseInput(File anInput) {
  List<int> result = new List<int>();

  anInput.readAsLinesSync().forEach((e) {
    result.add(int.parse(e.trim()));
  });

  return result;
}
