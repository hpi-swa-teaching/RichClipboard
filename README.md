# RichClipboard
![Tests](https://github.com/hpi-swa-teaching/RichClipboard/workflows/Tests/badge.svg)

**RichClipboard** is a clipboard manager for Squeak which stores clipboard entries (clippings) to allow for further usage. It enhances the basic functions of cut, copy, and paste from the default clipboard in Squeak.

![Example RichClipboard](./screenshots/richclipboard-example.png)

## Installation

1. Execute the following snippet in any text field to install the latest stable version of RichClipboard:
```
Metacello new
	baseline: 'RichClipboard';
	repository: 'github://hpi-swa-teaching/RichClipboard';
	load
```
2. Run `RichClipboard default openInWorld` to set up RichClipboard for the first time. Alternatively, if RichClipboard was updated, you must run `RichClipboard resetDefaultInstance` instead.
3. RichClipboard can subsequently be opened by selecting `RichClipboard` from Apps-Menu.

## Usage

All text copied in Squeak is automatically added to RichClipboard.

### Copy back to the clipboard

To copy an entry back to the clipboard, you have to click it with the left mouse button in RichClipboard.

### Delete entry

- To delete a single entry, it must be clicked with the right mouse button. Then, 'delete' must be selected in the context menu that opens.
- To delete all entries, the button 'Clear all' can be used.

### Insert one of the last five clippings

One of the last five clippings can also be inserted using the RichClipboard context menu. This can be opened in any editor with 'ctrl+alt+v'.

### Filter, Sort, Search

In the RichClipboard window there are some filtering, searching and sorting options.

- By using the buttons 'a-z' or 'z-a' and 'new-old' or 'old-new' the clippings can be sorted alphabetically or by copy time.
- A text can be searched for as in the system browser. That means: Click on the RichClipboard window and then enter the search term.
- To search for a regex, click on the 'Regex Search' button and then enter the regex in the search bar. With 'Enter' the search can be confirmed.

It is also possible to open several windows at the same time, in which different filter, search and sort functions can be selected.

### Private Mode

By clicking on 'Toggle Private Mode', RichClipboard switches to (or from) Private Mode. In Private Mode, newly copied text is no longer included in RichClipboard. In addition, all copied text is removed from the clipboard after a few seconds. Whether RichClipboard is in Private Mode is indicated by the appendix '(Private Mode)' in the window title (of all open windows).
  
## Contributing

If you'd like to contribute, have a look in the [wiki](https://github.com/hpi-swa-teaching/RichClipboard/wiki), where we've set up a series of guidelines for development.

A list of possible user stories for further development can be found under `TODO` in the [project board](https://github.com/hpi-swa-teaching/RichClipboard/projects/1) (from the repo: `Projects` > `Rich Clipboard`).

## History

This project was started in summer term 2020 as part of the Software Engineering course at HPI.

Contributers:  
Siddeshkanth Logonathan, Jeffrey Johnson, Leonard Seibold, Martin Graf, Daniel Woelki  
(swt20-14)
