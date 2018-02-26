tests-accessing
testPointDescriptionFormatter

	| component javascript expectedConfiguration |

	component := HighchartsSeriesPyramid new.
	component pointDescriptionFormatter: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'pyramid';
		at: 'pointDescriptionFormatter' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript