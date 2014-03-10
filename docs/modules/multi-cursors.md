---
layout: docs
title: Cursors Module - Scribe
permalink: /docs/modules/multi-cursors/
stability: yellow
---

# Multiple Cursors

The Multiple Cursors modules enables the display of multiple external cursors inside the Scribe editor.

<div class='scribe-wrapper'>
  <div id='multi-cursor-editor'></div>
</div>

<script src="{{ site.baseurl }}/js/scribe.js"></script>
<script>
var editor = new Scribe('#multi-cursor-editor');
editor.insertText(0, 'Upon great pedestals founded in the deep waters stood two great kings of stone: still with blurred eyes and crannied brows they frowned upon the North.\n\nThe left hand of each was raised palm outwards in gesture of warning; in each right hand there was an axe; upon each head there was a crumbling helm and crown.\n\nGreat power and majesty they still wore, the silent wardens of a long-vanished kingdom.');

module = editor.addModule('multi-cursor', {
  timeout: 5000
});
setTimeout(function() {
  module.setCursor('merry', 0, 'Merry', 'rgba(0,153,255,0.9)');
  module.setCursor('pippin', editor.getText().indexOf('\n'), 'Pippin', 'rgba(255,153,51,0.9)');
  module.setCursor('frodo', editor.getText().length, 'Frodo', 'rgba(153,0,153,0.9)');
}, 500);
</script>

### Configuration

| Parameter  | Description
|------------|-------------
| `template` | _String_ HTML template to use for cursor element.
| `timeout`  | _Number_ of milliseconds of inaction before cursor flag is hidden.

### Methods

- `setCursor(id, index, text, color)`

| Parameter | Description
|-----------|-------------
| `id`      | _String_ id of cursor
| `index`   | _Number_ position to place the cursor
| `text`    | _String_ text to place above cursor
| `color`   | _String_ Color of cursor. Can be any valid CSS color.

### Example

{% highlight javascript %}

var editor = new Scribe('#editor');
var module = editor.addModule('multi-cursor', {
  timeout: 10000
});

module.setCursor('id-1234', 10, 'Frodo', '#ff00ff');

{% endhighlight %}