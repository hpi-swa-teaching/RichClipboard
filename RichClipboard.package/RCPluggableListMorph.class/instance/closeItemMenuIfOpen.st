event handling
closeItemMenuIfOpen
	itemMenu ifNotNil: [
		itemMenu delete.
		itemMenu := nil
	]
