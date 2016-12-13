import 'package:angel_roadmap/angel_roadmap.dart';
import 'package:test/test.dart';

main() {
  group('1.0.0-beta', () {
    test('Core API', () => ensureAllReposPass(CORE_API));
    test('Plugins', () => ensureAllReposPass(BETA_PLUGINS));
  });
}
