tests-accessing
testBorderWidth

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreaspline new.
	component borderWidth: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'areaspline';
		at: 'borderWidth' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript