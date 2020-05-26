as yet unclassified
testCommandRegistered
	"A new open command should be registered when a RichClipboard is
	initialized"
	| numberRegisteredCommands richClipboard |
	numberRegisteredCommands := TheWorldMenu registeredOpenCommands size.
	richClipboard := RichClipboard new.
	self assert: numberRegisteredCommands + 1 = TheWorldMenu registeredOpenCommands size.
	richClipboard destroy