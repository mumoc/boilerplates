Jasmine-Rails
=============

Using
-----

- jasmine (1.2.1)

Set up
------

- Install QT libs by `brew install qt`.
- Add `jasmine-rails` gem and bundle it.
- Configure paths on `spec/javascripts/support/jasmine.yml` with:

```
src_files:
  - "application.*{js,coffee}"

stylesheets:
  - "application.{css,scss}"

helpers:
  - "helpers/**/*.*{js,coffee}"

spec_files:
  - "**/*[Ss]pec.*{js,coffee}"

src_dir:
  - "app/assets/javascripts"

spec_dir:
  - "spec/javascripts"

asset_paths:
  - "vendor/assets/javascripts"
```

- Define one asset manifest for vendor, lib and include them inside the application.js

```
//= require vendor
// ~> vendor/assets/javascripts/vendor.js

//= require lib
// ~> lib/assets/javascripts/lib.js

//= require_tree .
// ~> app/assets/javascripts/application.js
```

- To run in command line run `bundle exec jasmine-headless-webkit --color;`
- To use headless mode run `bundle exec rake jasmine:headless`
- For Guard support, use [guard-jasmine-headless-webkit][guard-jasmine-headless-webkit] gem.

Add `guard` and `guard-jasmine` gems, then include this inside your Guardfile:
```
spec_location = "spec/javascripts/%s_spec"

guard 'jasmine-headless-webkit' do
  watch(%r{^app/views/.*\.jst$})
  watch(%r{^public/javascripts/(.*)\.js$}) { |m| newest_js_file(spec_location % m[1]) }
  watch(%r{^.*/assets/javascripts/(.*)\.(js|coffee)$}) { |m| newest_js_file(spec_location % m[1]) }
  watch(%r{^spec/javascripts/(.*)_spec\..*}) { |m| newest_js_file(spec_location % m[1]) }
end
```

- To run from browser, add this route:

```
mount JasmineRails::Engine => "/jasmine" unless Rails.env.production?
```

Start Rails server, `rails server` and then open <http://localhost:3000/jasmine>

[guard-jasmine-headless-webkit]: https://github.com/johnbintz/guard-jasmine-headless-webkit
