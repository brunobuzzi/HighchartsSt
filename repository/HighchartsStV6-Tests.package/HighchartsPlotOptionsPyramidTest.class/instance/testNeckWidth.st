tests-accessing
testNeckWidth

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsPyramid new.
	component neckWidth: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'neckWidth' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript