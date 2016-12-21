# Roadmap

* 1.0.0-alpha
  * [x] Resolve all outstanding issues filed by myself in:
    * [x] `framework`
    * [x] `route`
  * [x] Ensure these plugins work:
    * [x] `auth`
    * [x] `auth_google`
    * [x] `client` (still needs browser tests)
    * [x] `configuration`
    * [x] `cors`
    * [x] `errors`
    * [x] `mongo`
    * [x] `mustache`
    * [x] `proxy`
    * [x] `static`
    * [x] `test`
  * [ ] Remove all dependency on `io` in plugins, at least where possible
  * [ ] Finish corresponding documentation
    * [ ] Especially the docs for `test`

* 1.0.0-beta
  * [ ] `auth` hooks
  * [`contentType` on `ResponseContext`](https://github.com/angel-dart/framework/issues/31)
  * [ ] Finish the following plugins:
    * [ ] `compress`
    * [ ] `multiserver`
    * [ ] `seeder`
    * [ ] `shelf`
    * [ ] `sqljocky`
    * [ ] `user_agent`
    * [ ] `websocket`
  * [ ] Some way to restart server on file change
  * [ ] Finish remaining documentation
  * [ ] Create `common`
  
* 1.0.0
  * [ ] Finalize CLI
  * [ ] Swagger codegen
  
* Future
  * [ ] `auth_twitter`
  * [ ] `trestle`
  * ***Potentially*** base Angel off of shelf
