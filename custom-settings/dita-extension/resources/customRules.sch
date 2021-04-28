<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2"
    xmlns:sqf="http://www.schematron-quickfix.com/validator/process">
    <sch:pattern>
        <sch:rule context="ol">
            <sch:assert test="count(li) > 1" sqf:fix="addLi">An ordered list should have more than one list item.</sch:assert>
            
            <!-- Quick fix that adds a new list item -->
            <sqf:fix id="addLi">
                <sqf:description>
                    <sqf:title>Add new list item</sqf:title>
                    <sqf:p>Add a new list item as last item in the list</sqf:p>
                </sqf:description>
                <sqf:add node-type="element" target="li" position="last-child"/>
            </sqf:fix>
        </sch:rule>
    </sch:pattern>
</sch:schema>