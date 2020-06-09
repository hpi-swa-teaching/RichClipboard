testing
testOpenRCContextMenu
	| rcContextMenu |

	rcContextMenu := RCContextMenu newWithStorage: self storage.
	self shouldnt: [ rcContextMenu openInWorld ] raise: Error.
	rcContextMenu delete