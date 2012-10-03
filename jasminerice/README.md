Jasminerice
===========

Utilizing Jasmine and taking full advantage of the Rails 3.1 asset pipeline.
With it you can write specs in CoffeeScript, use Fixtures and define Spec Styles.

Since Jasminerice automatically makes a patched version of [jasmine-jquery][jasmine-jquery]
available in your specs you can use custom matchers, or include fixtures.

Using
-----

- jasminerice (0.0.9)

Setup
-----

- Add `jasminerice` gem. Uncomment `therubyracer` gem.
- Create `spec/javascripts/spec.js.coffee` with:

```
#= require application
#= require_tree ./
```

***Note:** you can use spec.js if you want, just change the # for //* 

- Create `spec/javascripts/spec.css` with:

```
/*
 *= require application
 */
```

- Include the required source, specs, the fixtures and css.
- Start rails, `rails server` and open `http://localhost:3000/jasmine`

Note
----

By default CoffeeScript creates a local namespace for variables and clasess.
So only when you define an Object with this. or @ the object will be available
as Window objects.

> "Although suppressed within this documentation for clarity, all CoffeeScript
output is wrapped in an anonymous function: (function(){ ... })(); This safety
wrapper, combined with the automatic generation of the var keyword, make it
exceedingly difficult to pollute the global namespace by accident.",
[coffeescript.org][coffeescript]

CI, headless, rake task?
------------------------

Include [guard-jasmine][guard-jasmine] gem. And setup a rake task:
<https://github.com/bradphelan/jasminerice/issues/31>

[jasmine-jquery]: https://github.com/velesin/jasmine-jquery
[guard-jasmine]: https://github.com/netzpirat/guard-jasmine
[coffeescript]: http://coffeescript.org/
