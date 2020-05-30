instance creation
newWithClippingsList: clippingsList
	^  self basicNew 
					listMorph: clippingsList;
					on: clippingsList
					list: #clippings
					selected: #selectedClippingIndex
					changeSelected: #selectedClippingIndex:
					menu: nil
					keystroke: #arrowKey:from:;
					initialize;
					yourself