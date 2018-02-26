tests-accessing
testPointRange

	| component javascript expectedConfiguration |

	component := HighstockSeriesArea new.
	component pointRange: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'area';
		at: 'pointRange' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript