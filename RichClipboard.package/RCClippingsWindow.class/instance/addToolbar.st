initialize-release
addToolbar
	| pluggablePanelFrame |
	
	pluggablePanelFrame := LayoutFrame new.
	pluggablePanelFrame leftFraction: 0;
										rightFraction: 1;
										topFraction: 1;
										bottomFraction: 1;
										topOffset: -1 * self class defaultBottomBarHeight.
											
	toolbarMorph := PluggablePanelMorph new.
	toolbarMorph color: Color white.
	toolbarMorph borderColor: Color black.
    toolbarMorph borderWidth: 1.
	
	self addMorph: toolbarMorph fullFrame: pluggablePanelFrame