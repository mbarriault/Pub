# Pub
=====

GUI for Homebrew.

## Design Notes
===============

Pub should exist in a client/server architecture. The server (codenamed "Bartender") will perform all `brew` duties, contain the Objective-C/Ruby bridge. The server will be implented as a thin wrapper around a framework (Bartender.framework), which will be included in the client so it can act as a standalone. Beyond the `brew` commands, Bartender can also periodically `brew update`, send notifications to the user, and be controlled via a command prompt or over the network.

The client (codenamed "Menu") can run either as standalone, or as a client connected to Bartender (which can run locally, which will `brew update` and notify even if Pub isn't running, or over the network).

Menu has two main design elements
* Be friendly and familiar to the casual user. This means the overall layout will be inspired by the App Store, Ubuntu Software Center, Steam, etc.
* Be useful to the power user. Keyboard shortcuts, quick access, detailed information, etc.

## End Goals
============

The realistic goal: Provide a graphical user interface to common `brew` commands.

The idealistic goal: Provide an intuitive graphical user interface to all `brew` commands, being able to do this remotely, with convenient notifications for users, and promotion for useful/upcoming projects.

The unrealistic but would be wicked awesome goal: Become the official GUI for Homebrew.

## UI Notes
===========

The app on startup should quietly run `brew update` and open with a welcome screen that instructs the user on basic functions. This can be dismissed at any time, and future runs will show a few promotional panels of useful, upcoming, or popular projects, perhaps dynamically sourced from Github/etc statistics. If the user begins typing in this screen (regardless of element focus) it should immediately switch to the package list view and begin searching through all available packages (`brew search`). Vim-like keystrokes should be available (`jk` to navigate the list, maybe `hl` to toggle between view modes, listing all packages, installed, upgradeable, etc).

## Possible challenges
======================

The biggest challenge I foresee will be handling `brew edit` (and `brew create`) functionality. When running locally, this is not a problem, as we can just design the app to handle `.rb` documents and set the editor variable to itself. Remotely, we may want to not call `brew edit` and instead open the formula file directly, passing it through the network, edit and send it back.

## Style
========

This will be dictated. The app should open with a smallish window that shows a large banner taking 2/3 upper portion, with two smaller panels (width-wise) below showcasing popular brews. A toolbar at the top has backward/forward navigation buttons and a search bar. A status bar slides and extends from the bottom for any brew operation, it should `brew update` on launch. Clicking the status bar at any time will slide the terminal view from the bottom-up (think Notification Center on iOS) showing the detailed status of the update. At the welcome screen, any typing should begin a search. A filter bar should appear allowing selection between available/installed/upgradeable/dependencies of/etc. The welcome screen should disappear in favour of table view (maybe table view should slide down from top?) listing matching results and other information (long description, size, installed flags, etc). After selecting one, table should squish leftward with a detail panel slide in from the right, with an install/upgrade/remove button, description, dependencies, dependency of, etc. Installing will pop down the status bar (like with update), and clicking it as expected should bring up the detail view. Extra notes of the formula should pop up after install, or errors/etc. Clicking edit on a formula should slide up terminal-like detail view, but with editable text view.