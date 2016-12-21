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

* 1.0.0-beta
  * [ ] `auth` hooks
  * [x] [`contentType` on `ResponseContext`](https://github.com/angel-dart/framework/issues/31)
  * [ ] Finish the following plugins:
    * [ ] `multiserver`
    * [ ] `rpc`
    * [ ] `seeder`
    * [ ] `shelf`
    * [ ] `sqljocky`
    * [ ] `user_agent`
    * [ ] `websocket`
  * [ ] Some way to restart server on file change
  * [ ] Finish remaining documentation
  
* 1.0.0
  * [ ] Finalize CLI
  * [ ] Swagger codegen
  
* Future
  * [ ] `auth_twitter`
  * [ ] `throttle`
  * [ ] `trestle`
  * ***Potentially*** base Angel off of shelf
