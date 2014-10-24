# bootstrap-reload.js

A lightweight (full: 1.6kb, min: 946 bytes) plugin to add loader to Bootstrap panels (akin to semantic-ui loader) + auto fetch data from server.

Also includes handler for manual trigger and timed intervals.

## Dependancy

<a href="https://github.com/jquery/jquery" target="_blank">jQuery</a>

## Usage

`````html
<div class="container">
	<!--refresh widget-->
        <div class="panel panel-default" data-url="/fetch-data">
          <div class="panel-heading"><a class="pull-right" href="#"><span class="fa fa-refresh"></span></a> Refresh Widget</div>
          <div class="panel-body panel-refresh">
         	<div class="refresh-container"><i class="refresh-spinner fa fa-spinner fa-spin fa-5x"></i></div>
            <h4>Refresh Me</h4>
              <div class="refresh-data"> 
              	<!-- The Received data will be placed here -->
              </div>
          </div>
        </div>
    <!--refresh widget-->
</div>
`````

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