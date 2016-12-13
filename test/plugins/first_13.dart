import 'package:angel_roadmap/angel_roadmap.dart';
import 'package:test/test.dart';

main() {
  test('13 core plugins pass', () {
    await ensureAllPluginPass(CORE_PLUGINS);
  });
}
