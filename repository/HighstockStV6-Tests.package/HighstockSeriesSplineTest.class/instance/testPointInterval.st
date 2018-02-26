tests-accessing
testPointInterval

	| component javascript expectedConfiguration |

	component := HighstockSeriesSpline new.
	component pointInterval: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'spline';
		at: 'pointInterval' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript