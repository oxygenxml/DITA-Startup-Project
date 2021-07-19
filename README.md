# Startup DITA Project

This is a startup DITA Project that imposes custom settings for DITA editing. When the project is open in the Oxygen Project view, it will impose a custom set of options, as well as an imposed custom DITA framework extension.

## Project Structure

The project contains the following folder structure:

*   _custom-settings/frameworks_ - Contains custom [DITA and DITA Map framework extensions](https://www.oxygenxml.com/doc/ug-editor/topics/framework-customization-script.html).
*   _custom-settings/learned-words_ - Contains learned words for the English dictionary.
*   _filters_ - This initially empty folder can be updated to contain [DITAVAL Filter files](https://www.oxygenxml.com/doc/ug-editor/topics/dita-ditaval-file.html) used to profile the DITA content when publishing.
*   _images_ - Contains images used in the DITA project.
*   _oxygen-term-checker_ - Contains a [terminology file](https://www.oxygenxml.com/doc/ug-editor/topics/terminology-checker-addon.html) with an example rule.
*   _publishing_ - Contains a [DITA-OT project file](https://www.oxygenxml.com/doc/ug-editor/topics/dita_open_toolkit_project.html) and a [publishing template](https://www.oxygenxml.com/doc/ug-editor/topics/whr-publishing-template-2.html).
*   _reusables_ - Contains various reusable components. For example, in the "reusable_components.dita" topic, you can add various DITA elements (such as notes, paragraphs, lists, and list items) that are reused in various places in the project. See [more about reusing DITA content](https://www.oxygenxml.com/doc/ug-editor/topics/eppo-create-conref.html).
*   _topics_ - Contains all the DITA topics in the project.

## Settings Saved At Project Level

Most of the preference pages in the **Preferences** folder can be saved at [project level](https://www.oxygenxml.com/doc/ug-editor/topics/sharing-projects.html). When the project is open in the Project view, the following options are imposed:

*   The **Editor / Spell Check** preferences page is saved at project level with automatic spell checking enabled.
*   The **Editor / Spell Check / Dictionaries** preferences page is saved at project level and all [learned words](https://www.oxygenxml.com/doc/ug-editor/topics/learned-words.html) are saved in the _custom-settings/learned-words/en.tdi_ file.
*   The **Editor / Edit Modes / Author** preferences page is saved at project level.
*   The **DITA / Maps** preferences page is saved at project level.
*   The **Document Type Association** preferences page disables certain framework configurations that are not useful (e.g. **DocBook 5**).
*   The **Document Type Association / Locations** preferences page references two custom framework configurations that are described further.

## Framework Customizations

The editing environment for DITA **Maps** and **Topics** can be customized by extending their current frameworks.

The framework extension for editing **DITA Topics** is defined in the _custom-settings/frameworks/dita-extension/dita-extension.exf_ [framework script file](https://www.oxygenxml.com/doc/ug-editor/topics/framework-customization-script-usecases.html). You can add your own custom actions to the toolbars, menus, or contextual menus, and add, change, or remove transformation scenarios or validation scenarios.

*   You can customize the existing [DITA Topic file templates](https://www.oxygenxml.com/doc/ug-editor/topics/customizing-templates.html) by making changes to the _custom-settings/frameworks/dita-extension/templates/_ folder.

*   The content completion configuration extension file _custom-settings/frameworks/dita-extension/resources/cc_config_ext.xml_ allows you to [customize various aspects](https://www.oxygenxml.com/doc/ug-editor/topics/rendering-elements-cc-author.html) of the content completion feature.

*   You can add [custom Schematron validation rules](https://blog.oxygenxml.com/topics/SchematronBCs.html) in the _custom-settings/frameworks/dita-extension/resources/customRules.sch_ Schematron file.

*   You can also [customize the visual editing](https://blog.oxygenxml.com/topics/customizeDITACSS.html) by modifying the CSS _custom-settings/frameworks/dita-extension/css/custom.css_.

The framework extension for editing **DITA Maps** is defined in the _custom-settings/frameworks/dita-map-extension/dita-map-extension.exf_ [framework script file](https://www.oxygenxml.com/doc/ug-editor/topics/framework-customization-script-usecases.html) and can me customized in a similar way. You can customize the existing [DITA Map file templates](https://www.oxygenxml.com/doc/ug-editor/topics/customizing-templates.html) by making changes to the _custom-settings/frameworks/dita-map-extension/templates/_ folder.

### Renaming/Moving Topics and Other Resources

The project has a folder named _Main Files_ with a reference to the main DITA map. This enables the [_Main Files_](https://www.oxygenxml.com/doc/ug-editor/topics/dita-main-files.html) support in the project, allowing you to rename or move files while the references to those files are automatically updated.

### Terminology Checking

For checking terminology, you can use the Oxygen [Terminology Checker add-on](https://www.oxygenxml.com/doc/ug-editor/topics/terminology-checker-addon.html?). You can add terminology rules to the _oxygen-term-checker_ folder. For example, the Oxygen user manual uses a set of Vale rules to check for [common terminology problems](https://github.com/oxygenxml/userguide/tree/master/DITA/oxygen-term-checker).

## Publishing

You can publish the content of the _project.ditamap_ in two ways:

*   You can open the DITA-OT project file named _publish-project.xml_ from the _publishing_ subfolder and two predefined publishing scenarios become available. You can read more about DITA-OT project files [here in the user's manual](https://www.oxygenxml.com/doc/ug-editor/topics/dita_open_toolkit_project.html).
*   You can also open the _project.ditamap_ file in the DITA Maps Manager view, invoke the "Configure Transformation Scenario(s)" dialog box, and in the Project section, there are two predefined transformation scenarios (one for WebHelp, the other for PDF) that use the publishing template archived in the zip file. This [past webinar](https://www.oxygenxml.com/events/2018/webinar_creating_custom_publishing_templates_for_webhelp_and_pdf_output.html) shows more details about creating and customizing a publishing template.
