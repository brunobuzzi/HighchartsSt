tests-accessing
testZMin

	| component javascript expectedConfiguration |

	component := HighchartsSeriesBubble new.
	component zMin: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'bubble';
		at: 'zMin' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript