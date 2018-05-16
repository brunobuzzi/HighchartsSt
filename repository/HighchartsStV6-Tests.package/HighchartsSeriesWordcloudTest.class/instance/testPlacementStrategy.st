tests-accessing
testPlacementStrategy

	| component javascript expectedConfiguration |

	component := HighchartsSeriesWordcloud new.
	component placementStrategy: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'wordcloud';
		at: 'placementStrategy' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript