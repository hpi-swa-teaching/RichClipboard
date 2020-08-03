An RCClippingsList is used to display, sort and filter clippings as well as copy selected clippings back to the clipboard.

Instance Variables
	belongsToContextMenu:		<Boolean | nil>
	lastEventWasMouseEvent:		<Boolean | nil>
	regexFilter:						<RxsRegex | nil>
	richClipboard:					<RichClipboard>
	sortBlock:						<Block | nil>

sortBlock
	- A Block which applies and returns the currently selected sorting order (set by e.g. sortByDate).

## Design Choice

We use lastEventWasMouseEvent so as to not copy a clipping back to the clipboard in case of a KeyboardEvent (see selectedClippingIndex:)