other
javascriptContents
	| stream |

	stream := PrintStream on: String new.
	self javascriptContentOn: stream.
	^stream contents