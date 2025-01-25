<!-- PROJECT LOGO -->
<div align="center">
  <img src="https://avatars.githubusercontent.com/u/3853896" alt="Logo" width="128" height="128">
  <h2>Aseprite-Library</h3>
  <p>A lua library for making Aseprite scripts & extensions</p>
  <div>
    <a href="https://github.com/RampantDespair/Aseprite-Library/issues"><img alt="Report Bug" src="https://img.shields.io/badge/Report%20Bug-red"></a>
    <a href="https://github.com/RampantDespair/Aseprite-Library/issues"><img alt="Request Feature" src="https://img.shields.io/badge/Request%20Feature-green"></a>
  </div>
  <a href="https://github.com/RampantDespair/Aseprite-Library?tab=GPL-2.0-1-ov-file">
    <img alt="License" src="https://img.shields.io/github/license/RampantDespair/Aseprite-Library">
  </a>
</div>

<!-- PROJECT SHIELDS -->
<hr>
<div align="center">
  <a href="https://www.aseprite.org/"><img alt="Aseprite" src="https://img.shields.io/badge/Aseprite-gray?logo=aseprite"></a>
</div>
<div align="center">
  <a href="https://www.lua.org/"><img alt="Lua" src="https://img.shields.io/badge/v5.4.6-blue?logo=lua&label=Lua&labelColor=gray"></a>
</div>
<hr>

<!-- ABOUT THE PROJECT -->

## About The Project

This project was made to remove the hassle of having to constantly look for functions on the [api page](https://www.aseprite.org/api).
<br>
With that in mind, this lua library lets view functions and fields on your project itself.

<!-- SOCIALS -->

## Socials

Reddit thread: [[Release] Two Aseprite Projects: Script Development Library & Feature-Rich Extension](https://www.reddit.com/r/aseprite/comments/1i94hds/release_two_aseprite_projects_script_development/)

<!-- INSTALLATION -->

## Installation

1.  Download the [Lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension on the VSCode Marketplace

From here you have 2 choices:

2.  Download the [library file](https://github.com/RampantDespair/Aseprite-Library/blob/main/Aseprite-Library.lua) and paste it into your project anywhere

OR (Better, because using this method will make you able to stay synced to this repository.)

2.  Add the [Aseprite-Library](https://github.com/RampantDespair/Aseprite-Library) repository as a submodule to your project by running the following command `git submodule add https://github.com/RampantDespair/Aseprite-Library lib/Aseprite-Library`

3.  Add the following to your `.vscode\settings.json` file (if it doesn't exist, just create it)

```json
{
  "Lua.workspace.library": ["lib\\Aseprite-Library\\Aseprite-Library.lua"]
}
```

4.  Start writing your script :)

<!-- EXAMPLE -->

## Example

If you want to see a real usage example, you can go check out my [Aseprite-Extension](https://github.com/RampantDespair/Aseprite-Extension).

<!-- IMPORTANT -->

## Important

Do not import the library file into your actual script (dofile/require), because this library is to be used strictly in development, not in production.

<!-- CONTRIBUTING -->

## Contributing

If you have a suggestion that would make this better, please fork the repo and create a pull request.
<br>
You can also simply open an issue with the tag "enhancement".
<br>
Any contributions you make are **greatly appreciated**.

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

- [Aseprite API](https://www.aseprite.org/api)
- [Lua Language Server](https://luals.github.io/)
