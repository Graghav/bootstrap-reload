# bootstrap-reload.js

A lightweight (full: 1.6kb, min: 946 bytes) plugin to add loader to Bootstrap panels (akin to semantic-ui loader) + auto fetch data from server.

Also includes handler for manual trigger and timed intervals.

## Dependancy

<a href="https://github.com/jquery/jquery" target="_blank">jQuery</a>

## Usage

`````javascript
$(".panel").reload(options);

`````

## Options / Defaults

`````javascript

{
	autoReload: false,
	time: 3000,
	refreshContainer: '.refresh-container',
	dataContainer: '.data-container',
	beforeReload: function() {},
	afterReload: function() {}
}

`````

Based upon the initial work by <a href="http://www.bootply.com/5ZBF2BDQpV#" target="_blank">Snippets</a>