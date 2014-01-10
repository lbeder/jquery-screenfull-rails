# jquery-screenfull-rails

Simple jQuery wrapper around the screenfull.js library for cross-browser usage of the JavaScript [Fullscreen API](https://developer.mozilla.org/en/DOM/Using_full-screen_mode), which lets you bring the page or any element into fullscreen. Smoothens out the browser implementation differences, so you don't have too.

## Install

In your Gemfile, add:

```ruby
gem 'jquery-screenfull-rails'
```
Add it to your JavaScript manifest file:

``` js
//= require jquery.screenfull
```

## Usage

The plugin provides you with the following functionality:

### Fullscreen an element on click

```javascript
$('img').fullScreen();
```

### Detect if full screen is enabled on the browser

```javascript
var enabled = $.isFullScreenEnabled();
```

### Events

#### fullscreen:enter
Triggered when entering full screen.

#### fullscreen:exit
Triggered when exiting full screen.

#### Example:
```javascript
$('img').fullScreen().
  on('fullscreen:enter', function() {
    console.log('Entering full screen...');
  }).
  on('fullscreen:exit', function() {
    console.log('Exiting full screen...');
  });
```

## Credits and Contributors

This gem was inspired by the [screenfull.js](https://github.com/sindresorhus/screenfull.js) library.

## License

The MIT License (MIT)

Copyright (c) 2014

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
