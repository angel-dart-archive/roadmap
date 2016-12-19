import 'package:angel_roadmap/angel_roadmap.dart';
import 'package:test/test.dart';

main() {
  group('1.0.0-alpha', () {
    test('Core API', () => ensureAllReposPass(CORE_API));
    test('Plugins', () => ensureAllReposPass(ALPHA_PLUGINS));
  });
}
