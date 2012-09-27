Jasmine (via Jasminerice), CoffeeScript and Rails
=================================================

Utilizing Jasmine and taking full advantage of the Rails 3.1 asset pipeline.
With it you can write specs in Coffeescript, use Fixtures and define Spec Styles.

Since Jasminerice automatically makes a patched version of
[jasmine-jquery][jasmine-jquery] available in your specs you can use custom matchers,
or include fixtures.

Setup
-----

1.- Add `jasminerice` gem.
2.- Create `spec/javascripts` and `spec/javascripts/fixtures` folders.
3.- Create `spec/javascripts/spec.js.coffee` with:

```
#=require_tree ./
```

4.- Create `spec/javascripts/spec.css` with:

```
/*
 *= require application
 */
```

5.- Start rails, `rails server` and open `http://localhost:3000/jasmine`
6.- Run the tests inside the console by `bundle exec`

Headless testing?
-----------------

Include [guard-jasmine][guard-jasmine] gem.

[jasmine-jquery]: https://github.com/velesin/jasmine-jquery
[guard-jasmine]: https://github.com/netzpirat/guard-jasmine
