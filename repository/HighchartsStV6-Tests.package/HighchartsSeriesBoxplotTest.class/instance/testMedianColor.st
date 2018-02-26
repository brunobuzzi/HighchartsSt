tests-accessing
testMedianColor

	| component javascript expectedConfiguration |

	component := HighchartsSeriesBoxplot new.
	component medianColor: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'boxplot';
		at: 'medianColor' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript