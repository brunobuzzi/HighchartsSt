accessing
events

	"Events for each single point.
"
	^configurationOptions at: 'events' ifAbsentPut: [HighstockPlotOptionsAtrPointEvents new]