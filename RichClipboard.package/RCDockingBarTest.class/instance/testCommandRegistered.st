testing
testCommandRegistered
	| numberRegisteredCommands richClipboard |
	
	numberRegisteredCommands := TheWorldMenu registeredOpenCommands size.
	richClipboard := RichClipboard new.
	self assert: numberRegisteredCommands + 1 = TheWorldMenu registeredOpenCommands size.
	richClipboard destroy