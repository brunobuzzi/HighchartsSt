as yet unclassified
testPointInterval

	| component stream |

	component := HighstockSeriesScatter new.
	component pointInterval: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"pointInterval":"test"}'