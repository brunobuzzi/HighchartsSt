as yet unclassified
testSoftMax

	| component stream |

	component := HighchartsYAxis new.
	component softMax: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"softMax":"test"}'