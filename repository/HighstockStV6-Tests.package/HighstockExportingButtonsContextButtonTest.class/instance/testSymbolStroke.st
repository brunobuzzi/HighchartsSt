tests-accessing
testSymbolStroke

	| component javascript expectedConfiguration |

	component := HighstockExportingButtonsContextButton new.
	component symbolStroke: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'symbolStroke' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript