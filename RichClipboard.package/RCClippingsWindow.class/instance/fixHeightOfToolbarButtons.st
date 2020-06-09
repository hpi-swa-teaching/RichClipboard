initialize-release
fixHeightOfToolbarButtons
	toolbarMorph submorphsDo: [ :submorph |
		submorph height: self class defaultBottomBarHeight - 4
	]