display
update
	self storage getAll do: [:clipping |
		self addMorphBack: (RCClipping newForClipping: clipping)
	]