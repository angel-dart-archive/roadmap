import 'dart:async';
import 'package:test/test.dart';
import 'package:travis/travis.dart';
/// This is my Travis token. I trust you if you're reading this.
const String _TOKEN = 'h5BvPpMsfo9qGASWWEqN';
final client = new Travis(token: _TOKEN);

const AngelRepo AUTH = const AngelRepo(name: 'auth');
const AngelRepo AUTH_GOOGLE = const AngelRepo(name: 'auth_google');
const AngelRepo CLIENT = const AngelRepo(name: 'client');
const AngelRepo COMPRESS = const AngelRepo(name: 'compress');
const AngelRepo CONFIGURATION = const AngelRepo(name: 'configuration');
const AngelRepo CORS = const AngelRepo(name: 'cors');
const AngelRepo DIAGNOSTICS = const AngelRepo(name: 'diagnostics');
const AngelRepo ERRORS = const AngelRepo(name: 'errors');
const AngelRepo FRAMEWORK = const AngelRepo(name: 'framework');
const AngelRepo MONGO = const AngelRepo(name: 'mongo');
const AngelRepo MUSTACHE = const AngelRepo(name: 'mustache');
const AngelRepo PROXY = const AngelRepo(name: 'proxy');
const AngelRepo ROUTE = const AngelRepo(name: 'route');
const AngelRepo STATIC = const AngelRepo(name: 'static');
const AngelRepo TEST = const AngelRepo(name: 'test');

const List<AngelRepo> BETA_PLUGINS = const [
  AUTH,
  AUTH_GOOGLE,
  CLIENT,
  CONFIGURATION,
  CORS,
  ERRORS,
  MONGO,
  MUSTACHE,
  PROXY,
  STATIC,
  TEST
];

const List<AngelRepo> CORE_API = const [FRAMEWORK, ROUTE];

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
