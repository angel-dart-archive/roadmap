import 'package:angel_roadmap/angel_roadmap.dart';
import 'package:test/test.dart';

main() {
  test('all 13 core plugins pass', () async {
    await ensureAllReposPass(CORE_PLUGINS);
  });
}
