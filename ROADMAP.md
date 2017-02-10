# Roadmap

* 1.0.0-alpha
  * [x] Resolve all outstanding issues filed by myself in:
    * [x] `angel`
    * [x] `framework`
    * [x] `route`
  * [x] Ensure these plugins work:
    * [x] `auth`
    * [x] `auth_google`
    * [x] `client` (still needs browser tests)
    * [x] `compress`
    * [x] `configuration`
    * [x] `cors`
    * [x] `errors`
    * [x] `mongo`
    * [x] `mustache`
    * [x] `proxy`
    * [x] `static`
    * [x] `test`
  * [x] Remove all dependency on `io` in plugins, at least where possible
  * [x] Remove dependency on now-deprecated getters/setters/methods
  * [x] Finish corresponding documentation
    * [x] Especially the docs for `test`
  * [x] Create `common`
    * [x] Add it to boilerplate

* 1.0.0
  * [ ] `security`
  * [ ] `seeder`
  * [x] [`contentType` on `ResponseContext`](https://github.com/angel-dart/framework/issues/31)
  * [ ] Finish the following plugins:
    * [ ] `multiserver` (needs tests)
    * [x] `shelf`
    * [x] `user_agent`
    * [x] Profiling with `fnx_profiler`
    * [x] `websocket`
  * [x] [Some way to restart server on file change](https://github.com/angel-dart/cli/issues/12)
  * [x] Finish remaining documentation
  * [ ] Finalize CLI
  
* Future
  * [x] `auth_twitter`
  * [ ] `sqljocky`
  * [x] `throttle` - now in `security`
  * [ ] `trestle`
  * [ ] Swagger codegen
  
* 1.1.0
  * [ ] [Universal Services](https://github.com/angel-dart/universal)
  * [ ] [Asynchronous Jobs](https://github.com/angel-dart/task)
  * [ ] IDE Plug-ins
 
* 2.0.0
  * [ ] Base entirely on `shelf`, remove dependency on `dart:io`
