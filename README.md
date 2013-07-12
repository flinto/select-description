# Flinto Select Description

Shows and hides elements corresponding to the currently chosen option in an HTML select.

## Installation

Download and include the jquery.flinto-select-description.js file in your project after including jQuery.

````html
<script src="jquery.flinto-select-description.js"></script>
````

## Usage

Add a data-description attributes to the options with the ID of an element to show when that option is chosen.

````html
<select id="example">
	<option value="foo" data-description="foo-description">Foo</option>
	<option value="bar" data-description="bar-description">Bar</option>
</select>

<p id="foo-description">This is a description of Foo</p>
<p id="foo-description">This is a description of Bar</p>
````

Initialize the plugin by calling `selectDescription()` on the select element you'd like to use it on.

````javascript
$('select#example').selectDescription()
````