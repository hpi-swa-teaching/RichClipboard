An RCStorage is a simple data structure singleton used only to store clippings copied to the clipboard (RCStorageItems). It consists of a LinkedList (storageBackend) with additional helper functions. 

RCStorage triggers a #clippingsChanged event whenever the list content changes.

Instance Variables  
	storageBackend:				<LinkedList>  
	richClipboard:					<RichClipboard> 
						
## Design Choice

We decided not to implement any search/sort/filter functions here, and instead in RCClippingsList (which has one instance per window), so that we can display multiple search/sort/filter settings of the data in different windows.