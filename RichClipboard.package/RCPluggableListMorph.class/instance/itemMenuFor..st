event handling
itemMenuFor: index 
	itemMenu := MenuMorph new.
	itemMenu add: (self class deleteOptionText) 
				target: (self deleteCallbackObject) 
				selector: (self deleteCallback) 
				argument: index.
	
	^ itemMenu
