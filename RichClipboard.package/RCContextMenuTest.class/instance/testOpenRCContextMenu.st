testing
testOpenRCContextMenu
	| rcContextMenu |

	rcContextMenu := RCContextMenu newWithStorage: self storage
											andSystemClipboard: systemClipboard.
	self shouldnt: [ rcContextMenu openInWorld ] raise: Error.
	rcContextMenu delete