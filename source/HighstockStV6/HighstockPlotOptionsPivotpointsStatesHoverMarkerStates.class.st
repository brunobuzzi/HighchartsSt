"
States for a single point marker.
"
Class {
	#name : #HighstockPlotOptionsPivotpointsStatesHoverMarkerStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockPlotOptionsPivotpointsStatesHoverMarkerStates >> hover [

	"The hover state for a single point marker.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockPlotOptionsPivotpointsStatesHoverMarkerStatesHover new]
]

{ #category : #accessing }
HighstockPlotOptionsPivotpointsStatesHoverMarkerStates >> select [

	"The appearance of the point marker when selected. In order to
allow a point to be selected, set the series.allowPointSelect
option to true.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockPlotOptionsPivotpointsStatesHoverMarkerStatesSelect new]
]
