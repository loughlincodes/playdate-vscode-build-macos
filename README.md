# playdate-vscode-build-macos
 Playdate VSCode Template for MacOS.  Just a simple starting point for your project.  You can easily build and run your project in the Playdate simulator with a single key stroke.

<img src="https://i.imgur.com/f6eIbi7.gif" width="400" height="240" />


## Requirements
You'll need the following installed on your system to ensure the VS Code build and run process works:

- [VS Code](https://code.visualstudio.com)
- [Node](https://nodejs.org/)
- [Playdate SDK](https://play.date/dev/)

## Getting Started
This repository is a **template repo** that you can use to create your own repositories with the same directory structure, branches, and files. It's easy to get started - just click "Use this template" to create your very own repo:

<img src="https://i.imgur.com/y5yqeRj.png" width="500" height="118" />

Once you've created your new repo, follow these steps:

1. Clone or download the repo.
2. Open up VS Code and choose "Run > Run Without Debugging" to launch the project in the Playdate simulator.
3. To make building and running even quicker, assign a keyboard shortcut to the "Run Without Debugging" option.
4. Look forward to your IGN lifetime achievement award

## Output
The build file gets outputted to `bin/Output.pdx`.  
You can change this by editing the `playdate.output` property in `.vscode/settings.json`.

## Ackowledgements
This repo is a total mash up of the following excellent work by two developers who have way better Playdate and VSCode skills than I do.  I just tweaked their code to suit my needs and thought I'd share it in this repo in case anyone else finds it useful.  Credit where credit is due:

* **https://github.com/Whitebrim/VSCode-PlaydateTemplate**<br>The Playdate template that I tweaked ever so slightly for this repo

* **https://github.com/orta/vscode-playdate**<br>VSCode magic to allow the build and run process
