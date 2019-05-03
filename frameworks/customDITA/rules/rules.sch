<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
	xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
	
	
	
	<sch:pattern id="avoidElements">
		<sch:rule context="u">
			<sch:report test="true()" see="http://www.oxygenxml.com">
				The underline element &lt;u> should not be used. See the style guide for details.
			</sch:report>
		</sch:rule>
		
		
	</sch:pattern>
</sch:schema>