Jasmine and CoffeeScript
========================

Using
-----

- jasmine (1.2.1)
- coffee-rails (3.2.1)
- guard (1.4.0)
- guard-jasmine (1.8.3)

Steps
-----

- Add `jasmine` gem.
- Setup jasmine by `bundle exec rails generate jasmine:install`
- Modify `jasmine.yml` to grab `*.js.coffee` source files.
- Run jasmine by `bundle exec rake jasmine:ci` or `bundle exec jasmine`

With the asset pipeline from Rails +3.1 there is no need to manually compile your (source) CoffeeScripts using Guard or with Guard-Coffeescript gems.

Write jasmine specs in Coffeescript?
------------------------------------

In other hand, asset pipe line compile spec files in coffeescript. That means that you need to write your tests in plain Javascript, or use Guard to compile your specs into Js.

- Add `guard`, `guard-coffeescript` gems
- Setup guard by `bundle exec guard init coffeescript`
- Replace the guard rules with:

```
guard 'coffeescript', :input => 'app/assets/javascripts', :noop => true,
                                                          :hide_success => true

guard 'coffeescript', :input => 'spec/javascripts' do
  watch(%r{^(.+\._spec.js.coffee)$})
end
```

- Start guard process by `bundle exec guard`
- Run jasmine by `bundle exec rake jasmine:ci` or `bundle exec jasmine`
