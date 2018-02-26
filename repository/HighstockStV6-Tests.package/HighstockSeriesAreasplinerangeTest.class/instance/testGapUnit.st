tests-accessing
testGapUnit

	| component javascript expectedConfiguration |

	component := HighstockSeriesAreasplinerange new.
	component gapUnit: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'areasplinerange';
		at: 'gapUnit' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript