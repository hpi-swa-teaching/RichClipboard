as yet unclassified
testCommandUnregistered
	"The open command should be unregistered when the RichClipboard is
	destroyed "
	| numberRegisteredCommands richClipboard |
	richClipboard := RichClipboard new.
	numberRegisteredCommands := TheWorldMenu registeredOpenCommands size.
	richClipboard destroy.
	self assert: numberRegisteredCommands - 1 = TheWorldMenu registeredOpenCommands size