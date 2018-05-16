tests-accessing
testNegativeColor

	| component javascript expectedConfiguration |

	component := HighchartsSeriesXrange new.
	component negativeColor: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'xrange';
		at: 'negativeColor' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript