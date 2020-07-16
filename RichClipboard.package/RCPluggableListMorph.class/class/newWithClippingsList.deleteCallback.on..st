instance creation
newWithClippingsList: clippingsList deleteCallback: deleteCallback on: anObject
	| newListMorph |
	
	newListMorph := self basicNew.
	newListMorph listMorph: clippingsList.
	newListMorph  on: clippingsList
					list: #clippings
					selected: #selectedClippingIndex
					changeSelected: #selectedClippingIndex:
					menu: nil
					keystroke: #arrowKey:from:.
	newListMorph deleteCallback: deleteCallback on: anObject.
	newListMorph initialize.
	
	^  newListMorph