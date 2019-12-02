Map opcode1(Map m, int i) {
  if (m[0 + i] != 1) {
    throw new ArgumentError.value(m[0 + i], 'opcode');
  }

  final i1 = m[1 + i];
  final i2 = m[2 + i];
  final i3 = m[3 + i];
  
  m[i3] = m[i1] + m[i2];
  return m;
}

Map opcode2(Map m, int i) {
  if (m[0 + i] != 2) {
    throw new ArgumentError.value(m[0 + i], 'opcode');
  }

  final i1 = m[1 + i];
  final i2 = m[2 + i];
  final i3 = m[3 + i];
  
  m[i3] = m[i1] * m[i2];
  return m;
}

Map exec(Map m) {
  var i = 0;
  while (true) {
    switch (m[i]) {
      case 1:
        m = opcode1(m, i);
        break;
      case 2:
        m = opcode2(m, i);
        break;
      case 99:
        return m;
      default:
        throw "invalid opcode";
    }
    i += 4;
  }
}
