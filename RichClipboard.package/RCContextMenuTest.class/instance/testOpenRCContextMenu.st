testing
testOpenRCContextMenu
	| rcContextMenu |

	rcContextMenu := RCContextMenu new.
	self shouldnt: [ rcContextMenu openInWorld ] raise: Error.
	rcContextMenu delete