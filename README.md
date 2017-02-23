An open-source crypto currency exchange - [Hitback Exchange](https://market.hitback.us)
=====================================

### Features

* Designed as high performance crypto currency exchange.
* Built-in high performance matching-engine.
* Built-in [Proof of Solvency](https://iwilcox.me.uk/2014/proving-bitcoin-reserves) Audit.
* Built-in ticket system for customer support.
* Usability and scalibility.
* Websocket API and high frequency trading support.
* Support multiple digital currencies (eg. Bitcoin, Litecoin, Dogecoin etc.).
* Easy customization of payment processing for both fiat and digital currencies.
* SMS and Google Two-Factor authenticaton.
* [KYC Verification](http://en.wikipedia.org/wiki/Know_your_customer).
* Powerful admin dashboard and management tools.
* Highly configurable and extendable.
* Industry standard security out of box.
* Active community behind.
* Free and open-source.
* Maintained by [Mauro Delazeri - maurodelazeri@gmail.com]


### Mobile Apps ###

* [Boilr](https://github.com/andrefbsantos/boilr) - Cryptocurrency and bullion price alarms for Android

### Requirements

* Linux / Mac OSX
* Ruby 2.1.0
* Rails 4.0+
* Git 1.7.10+
* Redis 2.0+
* MySQL
* RabbitMQ

### Getting started

* [Setup on Mac OS X](doc/setup-local-osx.md)
* [Setup on Ubuntu](doc/setup-local-ubuntu.md)
* [Deploy production server](doc/deploy-production-server.md)

### API

You can interact with Hitback through API:

* [API v2]
* [Websocket API]

Here're some API clients and/or wrappers:

* [hitback-client-ruby] ruby client of both HTTP/Websocket API.
* [hitback-client-python] python client written.
* [hitback-client-python] python wrapper.
* [hitbackJavaClient] java client written.
* [yunbi-client-php]php client.

### Custom Style

Hitback front-end based Bootstrap 3.0 version and Sass, and you can custom exchange style for your mind.

* change bootstrap default variables in `vars/_bootstrap.css.scss`
* change hitback custom default variables in `vars/_basic.css.scss`
* add your custom variables in `vars/_custom.css.scss`
* add your custom css style in `layouts/_custom.css.scss`
* add or change features style in `features/_xyz.css.scss'

`vars/_custom.css.scss` can overwrite `vars/_basic.css.scss` defined variables
`layout/_custom.css.scss` can overwrite `layout/_basic.css.scss` and `layoputs/_header.css.scss` style
