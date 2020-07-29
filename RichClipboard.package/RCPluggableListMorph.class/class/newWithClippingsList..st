instance creation
newWithClippingsList: clippingsList
	| newListMorph |
	
	newListMorph := self basicNew.
	newListMorph listMorph: clippingsList.
	newListMorph  on: clippingsList
					list: #clippings
					selected: #selectedClippingIndex
					changeSelected: #selectedClippingIndex:
					menu: nil
					keystroke: #arrowKey:from:.
	newListMorph deleteCallback: #removeAt: on: clippingsList.
	newListMorph initialize.
	
	^  newListMorph