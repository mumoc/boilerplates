Jasmine
=======

Using
-----

- Using jasmine (1.2.1)

Setup
-----

- Add the Jasmine Gem.
- `bundle install`.
- `bundle exec rails generate jasmine:install`.
- Write specs under `spec/javascripts/yourfile_spec.js.
- Run Jasmine by: `bundle exec rake jasmine` and `open http://localhost:8888`
- Run Jasmine report by: `bundle exec rake jasmine:ci`

More info
---------

- Based on [Testing JavaScript with Jasmine][railscast261].
- Valid [credit card numbers][card_numbers] example.
- Using [jasmine-jquery][jasmine-jquery] to test views in isolation.

[railscast261]: http://railscasts.com/episodes/261-testing-javascript-with-jasmine
[card_numbers]: http://www.easy400.net:1220/js2/regexp/ccnums.html
[jasmine-jquery]: https://github.com/velesin/jasmine-jquery
