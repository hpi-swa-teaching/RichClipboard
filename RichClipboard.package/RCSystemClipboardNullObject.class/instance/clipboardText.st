accessing
clipboardText
	^ [ 
			clippings first 
		] on: Error do: [ 
			'some clipboard entry' asText
		]