as yet unclassified
testCheckboxClick

	| component stream |

	component := HighchartsSeriesPieEvents new.
	component checkboxClick: 'test'.
	stream := WriteStream on: String new.
	component javascriptContentOn: stream.

	self assert: stream contents = '{"checkboxClick":"test"}'