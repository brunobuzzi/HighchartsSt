tests-accessing
testXAxis

	| component javascript expectedConfiguration |

	component := HighstockSeriesCandlestick new.
	component xAxis: 'test'.
	javascript := String streamContents: [ :stream | component javascriptContentOn: stream ].
	expectedConfiguration := Dictionary new
		at: 'type' put: 'candlestick';
		at: 'xAxis' put: 'test';
		yourself.
	self assert: javascript equals: expectedConfiguration asJavascript