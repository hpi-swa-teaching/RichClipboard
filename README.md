# RichClipboard
![CI](https://github.com/hpi-swa-teaching/RichClipboard/workflows/CI/badge.svg)

**RichClipboard** is a clipboard manager for Squeak which stores data copied to the clipboard to allow for further usage. It enhances the basic functions of cut, copy, and paste from the default clipboard in Squeak.

![Example RichClipboard](./screenshots/richclipboard-example.png)

## Installation

**Caution:** The functionality of `ctrl+v` will be overwritten upon using RichClipboard. For the time being, it is still impossible to uninstall RichClipboard and that's why it shouldn't be installed in an important Squeak Image.

1. Execute the following snippet in any text field to install the latest stable version of RichClipboard:
```
Metacello new
	baseline: 'RichClipboard';
	repository: 'github://hpi-swa-teaching/RichClipboard';
	load
```
2. Run `RichClipboard default openInWorld` to set up the RichClipboard for the first time.
3. RichClipboard can be subsequently be opened by selecting `RichClipboard` from Apps-Menu.

## Usage

- All entries that have been copied in Squeak will automatically be copied to RichClipboard.
- In order to copy an entry back to RichClipboard, just click the desired entry and it will be deleted and re-copied back to the RichClipboard.
- The last 5 copied entries are accessible by the RichClipboard Context-Menu. This is accessed by pressing `ctrl+v`.
- There are some additonal functionalities in RichClipboard which are a filtering function, a searching function and sorting functions.
  - Clicking `a-z` or `z-a` causes the entries to be sorted by ascending or descending alphabetical order and clicking `new-old` or `old-new` causes the entries to be sorted by the time it was copied to the RichClipboard.
  - We can search for an entry or entries just by typing our desired word in the RichClipboard Window.
  - In order to search for an entry or entries based on a certain pattern (Regex), click `Regex Search` and give in the desired pattern.
  - It is also possible to have more than one RichClipboard window open at the same time so that one can apply different sorting, searching and filtering functionality in parallel.
- Clicking `Toggle Private Mode` toggles between private mode and public mode. The important point is that in private mode, the copied entries will not be stored in RichClipboard.
  - To be able to determine whether RichClipboard is in private mode or not, look for the window title `(Private Mode)`. If it isn't present, that means that it isn't in private mode.
  
## Contributing

If you'd like to contribute, have a look in the [wiki](https://github.com/hpi-swa-teaching/RichClipboard/wiki), where we've set up a series of guidelines for development.

## History

This project was started in summer term 2020 as part of the Software Engineering course at HPI.

Contributers:  
Siddeshkanth Logonathan, Jeffrey Johnson, Leonard Seibold, Martin Graf, Daniel Woelki  
(swt20-14)
