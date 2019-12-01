import 'dart:io';

void main() {
  File('input.txt').readAsString().then((str) {
    print(str
        .trim()
        .runes
        .map((rune) => rune == "(".codeUnitAt(0) ? 1 : -1)
        .fold<int>(0, (p, e) => p + e));
  });
}
