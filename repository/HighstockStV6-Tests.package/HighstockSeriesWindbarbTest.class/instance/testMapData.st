tests-accessing
testMapData

	| component javascript expectedConfiguration |

	component := HighstockSeriesWindbarb new.
	component mapData: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'windbarb';
		at: 'mapData' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript