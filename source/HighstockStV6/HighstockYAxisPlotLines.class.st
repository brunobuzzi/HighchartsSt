"
An array of objects representing plot lines on the X axis
"
Class {
	#name : #HighstockYAxisPlotLines,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockYAxisPlotLines >> className: aString [

	"A custom class name, in addition to the default highcharts-plot-
line, to apply to each individual line.
"

	configurationOptions at: 'className' put: aString
]

{ #category : #accessing }
HighstockYAxisPlotLines >> color: aColor [

	"The color of the line.
Defaults to null."

	configurationOptions at: 'color' put: aColor
]

{ #category : #accessing }
HighstockYAxisPlotLines >> dashStyle: aString [

	"The dashing or dot style for the plot line. For possible values see
this overview.
Defaults to Solid."

	configurationOptions at: 'dashStyle' put: aString
]

{ #category : #accessing }
HighstockYAxisPlotLines >> events: anObject [

	"An object defining mouse events for the plot line. Supported properties
are click, mouseover, mouseout, mousemove.
"

	configurationOptions at: 'events' put: anObject
]

{ #category : #accessing }
HighstockYAxisPlotLines >> id: aString [

	"An id used for identifying the plot line in Axis.removePlotLine.
Defaults to null."

	configurationOptions at: 'id' put: aString
]

{ #category : #accessing }
HighstockYAxisPlotLines >> label [

	"Text labels for the plot bands
"
	^configurationOptions at: 'label' ifAbsentPut: [HighstockYAxisPlotLinesLabel new]
]

{ #category : #accessing }
HighstockYAxisPlotLines >> value: aNumber [

	"The position of the line in axis units.
Defaults to null."

	configurationOptions at: 'value' put: aNumber
]

{ #category : #accessing }
HighstockYAxisPlotLines >> width: aNumber [

	"The width or thickness of the plot line.
Defaults to null."

	configurationOptions at: 'width' put: aNumber
]

{ #category : #accessing }
HighstockYAxisPlotLines >> zIndex: aNumber [

	"The z index of the plot line within the chart.
Defaults to null."

	configurationOptions at: 'zIndex' put: aNumber
]