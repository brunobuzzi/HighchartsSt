accessing
arearange

	"The area range series is a carteseian series with higher and lower values
for each point along an X axis, where the area between the values is shaded.
Requires highcharts-more.js.
"
	^configurationOptions at: 'arearange' ifAbsentPut: [HighchartsPlotOptionsArearange new]