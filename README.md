# Flinto Select Description

Shows and hides elements corresponding to the currently chosen option in an HTML select. Add a data-description attributes to the options with the ID of an element to show.

## Usage

````html
<select id="example">
	<option value="foo" data-description="foo-description">Foo</option>
	<option value="bar" data-description="bar-description">Bar</option>
</select>
````

````javascript
$('select#example').selectDescription()
````