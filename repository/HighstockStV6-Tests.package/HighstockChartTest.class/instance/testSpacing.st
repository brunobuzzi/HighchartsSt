tests-accessing
testSpacing

	| component javascript expectedConfiguration |

	component := HighstockChart new.
	component spacing: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'spacing' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript