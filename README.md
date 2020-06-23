# RichClipboard
(swt20-14)

## Installation

## Usage

**Caution:** The functionality of `ctrl+v` will be overwritten upon using RichClipboard. For the time being, it is still impossible to uninstall RichClipboard and that's why it shouldn't be installed in an important Squeak Image.

1. (If installing via .sar) Drag the .sar file into the squeak image.
2. Open `RichClipboard`  
    1. Execute `RichClipboard default openInWorld`. (**Notice:** this has to be executed only the first time)
    2. RichClipboard can be subsequently be opened by selecting RichClipboard from Apps-Menu.
3. Use RichClipboard  
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

