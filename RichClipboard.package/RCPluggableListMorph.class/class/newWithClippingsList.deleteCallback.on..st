instance creation
newWithClippingsList: clippingsList deleteCallback: deleteCallback on: anObject
	^  self basicNew listMorph: clippingsList;
							   on: clippingsList
									list: #clippings
									selected: #selectedClippingIndex
									changeSelected: #selectedClippingIndex:
									menu: nil
									keystroke: #arrowKey:from:;
								deleteCallback: deleteCallback on: anObject;
								initialize;
								yourself