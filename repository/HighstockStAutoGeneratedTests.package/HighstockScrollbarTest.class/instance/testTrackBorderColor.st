as yet unclassified
testTrackBorderColor

	| component stream |

	component := HighstockScrollbar new.
	component trackBorderColor: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"trackBorderColor":"test"}'