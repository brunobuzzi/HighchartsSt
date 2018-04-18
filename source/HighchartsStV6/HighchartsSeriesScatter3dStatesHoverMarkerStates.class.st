"
States for a single point marker.
"
Class {
	#name : #HighchartsSeriesScatter3dStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsSeriesScatter3dStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighchartsSeriesScatter3dStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighchartsSeriesScatter3dStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighchartsSeriesScatter3dStatesHoverMarkerStatesSelect new]
]