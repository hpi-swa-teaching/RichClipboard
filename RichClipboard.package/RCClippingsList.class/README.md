An RCClippingsList is a LazyListMorph used to display, sort and filter clippings as well as copy selected clippings back to the clipboard.

Instance Variables  
	contextMenuIsOpen:		<Boolean>  
	isInPrivateMode:		 	<Boolean>  
	regexFilter:					<String>  
	sortBlock:					<Collection>  
	storage:					<RCStorage>  
	systemClipboard:			<Clipboard>  

contextMenuIsOpen  
	- If the RCContextMenu is open, we want to paste the selected clipping. Otherwise, we copy it back to the clipboard.

isInPrivateMode  
	- If not in private mode, we want the clipping we just selected to be deleted and reinserted as the most recent clipping (instead of duplicating it).

regexFilter  
	- A String asRegex used to filter clippings.

sortBlock  
	- A Collection used to sort the clippings in a desired way.

storage  
	- An RCStorage used to retrieve stored clipping data.

systemClipboard  
	- The Squeak Clipboard object where clippings are copied to upon selection.
