import 'dart:io';
import '../lib/utils.dart';
import 'package:args/args.dart';

void main(List<String> args) {
  final parser = new ArgParser();
  parser.addOption('input', abbr: 'i', defaultsTo: 'lib/input.txt');
  final parsedArgs = parser.parse(args);
  final inputFile = new File(parsedArgs['input']);
  final result = parseInput(inputFile).fold(0, (prev, elem) {
    return prev + requiredFuel(elem);
  });
  print('$result');
}
