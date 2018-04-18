"
A wrapper object for all the series options in specific states.
"
Class {
	#name : #HighstockSeriesPsarIkhStates,
	#superclass : #HighchartsComponent,
	#category : 'HighstockStV6'
}

{ #category : #accessing }
HighstockSeriesPsarIkhStates >> hover [

	"Options for the hovered series. These settings override the normal
state options when a series is moused over or touched.
"
	^configurationOptions at: 'hover' ifAbsentPut: [HighstockSeriesPsarIkhStatesHover new]
]

{ #category : #accessing }
HighstockSeriesPsarIkhStates >> normal [

	"Overrides for the normal state.
"
	^configurationOptions at: 'normal' ifAbsentPut: [HighstockSeriesPsarIkhStatesNormal new]
]

{ #category : #accessing }
HighstockSeriesPsarIkhStates >> select [

	"Specific options for point in selected states, after being selected
by allowPointSelect or
programmatically.
"
	^configurationOptions at: 'select' ifAbsentPut: [HighstockSeriesPsarIkhStatesSelect new]
]