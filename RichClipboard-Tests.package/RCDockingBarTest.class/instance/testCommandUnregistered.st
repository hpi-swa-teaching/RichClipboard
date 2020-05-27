testing
testCommandUnregistered
	| numberRegisteredCommands richClipboard |
	
	richClipboard := RichClipboard new.
	numberRegisteredCommands := TheWorldMenu registeredOpenCommands size.
	richClipboard destroy.
	self assert: numberRegisteredCommands - 1 = TheWorldMenu registeredOpenCommands size