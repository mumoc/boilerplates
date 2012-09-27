Boilerplates
============

### Using

- Using rails (3.2.8)

[Jasmine][jasmine]
------------------

The original Jasmine gem. Plus the Jasmine jQuery helpers to use Fixtures and
common matchers. You'll get Jasmine tests in Javascript.

[Jasmine + CoffeeScript][jasmine_coffee]
----------------------------------------

Jasmine gem + Jasmine jQuery + CoffeeScript. It's able to use CoffeeScript
source files since Rails +3.1 (but still can't use Coffee inside the specs)

[Jasminerice + Guard-Jasmine ][jasminerice]
-------------------------------------------

- Include jQuery-Jasmine helpers.
- Write source files in CoffeeScript and specs in Javascript.
- Include Guard-Jasmine to use specs in Coffee but is a semi-automatic process.
- Command line and CI rake task suppoort with Guard-Jasmine.

[Jasmine-Rails][jasmine-rails]
------------------------------

- Command line and CI rake task support.
- Run specs in browser and Headless (requires jasmine-headless-webkit and QT)
- Write specs or source in CoffeeScript (asset pipeline takes care)
- Do NOT support fixtures, but could use Jasmine-jQuery to enable it.

[jasmine]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine
[jasmine_coffee]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine_and_coffeescript
[jasminerice]: https://github.com/mariozaizar/boilerplates/tree/master/jasminerice
[jasmine-rails]: https://github.com/mariozaizar/boilerplates/tree/master/jasmine-rails
