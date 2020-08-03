RichClipboard is a clipboard manager for Squeak which stores clipboard entries (clippings) to allow for further usage. It enhances the basic functions of cut, copy, and paste from the default clipboard in Squeak.

For first time setup, execute: `RichClipboard default openInWorld`

Visit the Github repository here: https://github.com/hpi-swa-teaching/RichClipboard/

Instance Variables  
	storage:				<RCStorage>  
	systemClipboard:		<Clipboard>  
	openWindows:  		<LinkedList>  
	isTestInstance: 			<Boolean> 
				
storage  
	- Where all clipboard entries are stored.
	
systemClipboard  
	- The default Clipboard object in Squeak.
	
openWindows  
	- A list of all currently open RCClippingsWindow objects.
	
isTestInstance  
	- Boolean for whether the RichClipboard is being used for testing, in which case an RCSystemClipboardNullObject is used instead of the default clipboard.
	