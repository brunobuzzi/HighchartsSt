tests-accessing
testStep

	| component javascript expectedConfiguration |

	component := HighchartsSeriesAreasplinerange new.
	component step: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'areasplinerange';
		at: 'step' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript