An RCContextMenu allows the user to paste one of their five most recent clippings. It is opened by pressing `ctrl + alt + v`. 

Instance Variables
	clippingsList:		<RCClippingsList>
	richClipboard:		<RichClipboard>

## Design Choice

We decided to implement this as a separate class instead of making both this and RCClippingsWindow inherit from the same superclass, because the context menu is so small that the added complexity of a common superclass would be too high.