as yet unclassified
testLinecap

	| component stream |

	component := HighchartsSeriesArearange new.
	component linecap: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"linecap":"test"}'