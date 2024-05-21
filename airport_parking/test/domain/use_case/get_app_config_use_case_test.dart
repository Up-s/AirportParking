import 'package:flutter_test/flutter_test.dart';

void main() {
  test('앱 버전 확인', () {
    String currentVersion = "1.2.0";
    const minVersion = "1.0.0";
    const latestVersion = "1.6.0";

    expect((isVersionLessThan(currentVersion, minVersion)), false);

  });
}

// v1 이 v2 보다 낮은가
bool isVersionLessThan(String v1, String v2) {
  List<String> v1Parts = v1.split('.');
  List<String> v2Parts = v2.split('.');

  for (int i = 0; i < v1Parts.length; i++) {
    int v1Part = int.parse(v1Parts[i]);
    int v2Part = int.parse(v2Parts[i]);

    if (v1Part < v2Part) return true;
    if (v1Part > v2Part) return false;
  }

  return false;
}