tests-accessing
testEdgeWidth

	| component javascript expectedConfiguration |

	component := HighchartsPlotOptionsErrorbar new.
	component edgeWidth: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'edgeWidth' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript