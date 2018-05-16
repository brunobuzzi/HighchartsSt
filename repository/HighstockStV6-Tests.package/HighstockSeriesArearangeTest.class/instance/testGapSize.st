tests-accessing
testGapSize

	| component javascript expectedConfiguration |

	component := HighstockSeriesArearange new.
	component gapSize: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'arearange';
		at: 'gapSize' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript