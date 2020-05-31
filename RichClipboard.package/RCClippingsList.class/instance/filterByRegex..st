regex
filterByRegex: regexString
	regexFilter := regexString asRegex.
	self changed: #clippings