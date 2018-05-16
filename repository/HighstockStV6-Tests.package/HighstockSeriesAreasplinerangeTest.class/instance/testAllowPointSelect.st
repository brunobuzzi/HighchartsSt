tests-accessing
testAllowPointSelect

	| component javascript expectedConfiguration |

	component := HighstockSeriesAreasplinerange new.
	component allowPointSelect: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'areasplinerange';
		at: 'allowPointSelect' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript