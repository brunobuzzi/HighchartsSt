tests-accessing
testIndex

	| component javascript expectedConfiguration |

	component := HighchartsSeriesHeatmap new.
	component index: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'heatmap';
		at: 'index' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript