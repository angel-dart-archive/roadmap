import 'dart:async';
import 'package:test/test.dart';
import 'package:travis/travis.dart';
/// This is my Travis token. I trust you if you're reading this.
const String _TOKEN = 'h5BvPpMsfo9qGASWWEqN';
final client = new Travis(token: _TOKEN);

const AngelRepo MUSTACHE = const AngelRepo(name: 'mustache');
const List<AngelRepo> CORE_PLUGINS = const [MUSTACHE];

class AngelRepo {
  final String name;
  
  const AngelRepo({this.name});
}

Future ensureAllReposPass(List<AngelRepo> repos) async {
  for (AngelRepo repo in repos) {
    await ensureRepoPasses(repo);
  }
}

Future ensureRepoPasses(AngelRepo repo) async {
  final reponse = await client.repos(member: 'angel-dart');
  
  for (Repo r in response) {
    if (r.slug == 'angel-dart/${repo.name}') {
      List<Build> builds = await client.builds(ids: [r.lastBuildId]);
      final build = builds.first;
      
      if (build.state != 'passed') {
        throw new Exception('Build of angel-dart/${repo.name} is not passing.');
      }
    }
  }
  
  throw new Exception("Could not find repo 'angel-dart/${repo.name}'.");
}
