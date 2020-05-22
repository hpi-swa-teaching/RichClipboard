baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				package: 'RichClipboard';
				package: 'RichClipboard-Tests' with: [
					spec requires: #('RichClipboard')];
				yourself.
			spec
				group: 'default' with: #('RichClipboard');
				group: 'tests' with: #('RichClipboard-Tests')];
				yourself
