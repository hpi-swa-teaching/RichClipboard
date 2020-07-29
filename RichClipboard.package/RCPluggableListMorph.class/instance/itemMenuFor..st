event handling
itemMenuFor: index 
	itemMenu := MenuMorph new.
	itemMenu add: (self class deleteOptionText) 
				target: (self deleteCallbackObject)
				selector: (self deleteCallback) 
				argument: (self modelIndexFor: index).
	
	^ itemMenu
