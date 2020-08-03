RichClipboard is a clipboard manager for Squeak which stores clipboard entries (clippings) to allow for further usage. It enhances the basic functions of cut, copy, and paste from the default clipboard in Squeak.

For first time setup, execute: `RichClipboard default openInWorld`. After updating, execute: `RichClipboard resetDefaultInstance`.

Visit the Github repository here: https://github.com/hpi-swa-teaching/RichClipboard/

Instance Variables  
	storage:				<RCStorage>  
	systemClipboard:		<Clipboard | RCSystemClipboardMockObject>  
	openWindows:  		<LinkedList>  
	isTestInstance: 			<Boolean> 
	
isTestInstance  
	- Boolean for whether the RichClipboard is being used for testing, in which case an RCSystemClipboardMockObject is used instead of the default clipboard.

Class Variables
	DefaultInstance			<RichClipboard | nil>
				
## Design Choice

We decided to make RichClipboard responsible for managing private mode because it has to be consistent across all open windows.
