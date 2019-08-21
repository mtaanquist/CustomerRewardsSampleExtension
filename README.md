# Single App Template

This is a template you can clone to get started with a new single extension project. It has the .gitignore files and folder structure you will need, and there are only a few things you need to do before you can get started.

## Usage

Follow these steps to use this template:

1. Press this "Use this template" link above to create a new repository either in your own account, or the Consortio IT organisation.

If, for some reason, this doesn't work for you, you can download a zipped release from the 'Release' tab above as well.

2. Generate a new GUID for the `id` field inside `app.json`. Each extension has to have a unique identifier in order to not conflict. You can generate a new GUID by opening PowerShell and typing in the following command: 
```
[guid]::NewGuid()
```
3. Fill in any other information in the `name`, `brief`, and `description` fields in `app.json`.
4. Ensure that you have at least one `idRange` defined in the `idRanges`, e.g.:
```
"idRanges": [
  {
    "from": 50100,
    "to": 50149
  }
],
```
*Note:* If you're using a developer license, you can use any range from 50000 to 99999. 

5. Set the correct platform, based on the system version of Business Central. If in doubt, you need can find this from opening the Business Central client, and opening the "About Microsoft Dynamics 365 Business Central" (desktop client) or "Help and Support" (web client, from the question mark). If it says `14.0.34251.0`, then the platform and application is `14.0.0.0`. Example:
```
"platform": "14.0.0.0",
"application": "14.0.0.0",
```

For more information on the `app.json` file, please refer to [Microsoft's documentation](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-json-files#Appjson). You can also hover over most of the fields in VS Code and it'll give you an explanation.

## Next Steps
If you started from creating this as a template, you can now commit your changes and continue working. If you're using a console for it, you can use the following commands:
```
$ git add -A
$ git commit -m "Update app.json"
```

If you created it by downloading the ZIP-file, you'll need to first initialise a new Git and commit it:
```
$ git init
$ git add -A
$ git commit -m "Initial commit"
```

## File Structure
An explanation of the folders and files included in the template, that are not in the standard "AL: Go!"-template.

**File: `.vscode/settings.json`**

This file holds the company-wide default settings for a new workspace. You may need to make changes to the `al.assemblyProbingPaths` if you include other .NET assemblies.

**Folder: `assets`**

Use this folder for storing static files, such as images, and documentation.

**File: `assets/rulesets/Company.ruleset.json`**

Defines the CodeCop and AppSourceCop rule modifications for the project. To see what the rules are in detail, look up the code on one of the two pages below:
* [CodeCop](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/analyzers/codecop)
* [AppSourceCop](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/analyzers/appsourcecop)

If any of the rules here are causing you issues, you can overturn them by changing the `action` property to one of the following values: `Warning`, `Info`, `None`.

**Folder: `libs`**

Contains any necessary DLL-files for the project to compile, which aren't part of the normal .NET assembly. These will get committed to the Git repository, so that anyone cloning the project can still compile and build the extension.

**Folder: `src`**

Contains a folder for each object type, for organising your project files in. For ease of navigation, you should remove any folders for objects that aren't needed.

**File: `src/dotnet.al`**

Place any assembly definitions in this file, to have them all centered in one location, rather than several places through the project. Please note: If you are using .NET assemblies in your project, then the setting `target` in `app.json` _must_ be set to `Internal`.

## Questions or Feedback

Feel free to open an Issue if you have any issues or feedback to this.
