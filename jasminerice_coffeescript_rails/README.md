Jasmine (via Jasminerice), CoffeeScript and Rails
=================================================

Utilizing Jasmine and taking full advantage of the Rails 3.1 asset pipeline.
With it you can write specs in CoffeeScript, use Fixtures and define Spec Styles.

Since Jasminerice automatically makes a patched version of
[jasmine-jquery][jasmine-jquery] available in your specs you can use custom matchers,
or include fixtures.

Using
-----

- jasminerice (0.0.9)
- rails (3.2.8)
- guard (1.4.0)
- guard-jasmine (1.8.3)

Setup
-----

1.- Add `jasminerice` gem. Uncomment `therubyracer` gem.
2.- Create `spec/javascripts/spec.js.coffee` with:

```
#= require application
#= require_tree ./
```

4.- Create `spec/javascripts/spec.css` with:

```
/*
 *= require application
 */
```

3.- Include the required source, specs, the fixtures and css.
4.- Start rails, `rails server` and open `http://localhost:3000/jasmine`

CI, headless, rake task?
------------------------

Include [guard-jasmine][guard-jasmine] gem. And setup a rake task:
<https://github.com/bradphelan/jasminerice/issues/31>

[jasmine-jquery]: https://github.com/velesin/jasmine-jquery
[guard-jasmine]: https://github.com/netzpirat/guard-jasmine
