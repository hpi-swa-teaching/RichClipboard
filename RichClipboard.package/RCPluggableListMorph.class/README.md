An RCPluggableListMorph is the counterpart to the RCClippingsList. It is responsible for providing search functionality similar to that of the System Browser, where one can simply type the search term into the window. In addition, it is responsible for creating a small menu on right click to delete a clipboard entry.

Instance Variables
	deleteCallback:				<Symbol>
	deleteCallbackObject:		<RCClippingsList>
	itemMenu:					<MenuMorph | nil>

## Design Choice

We had to separate this from RCClippingsList because a combination of PluggableListMorph and LazyListMorph is needed in order to search in the list (in the way typical to Squeak).
