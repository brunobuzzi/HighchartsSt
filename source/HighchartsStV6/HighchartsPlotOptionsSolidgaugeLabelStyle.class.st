"
Styles for the series label. The color defaults to the series
color, or a contrast color if onArea.
"
Class {
	#name : #HighchartsPlotOptionsSolidgaugeLabelStyle,
	#superclass : #HighchartsComponent,
	#category : 'HighchartsStV6'
}

{ #category : #accessing }
HighchartsPlotOptionsSolidgaugeLabelStyle >> fontWeight: aString [


	configurationOptions at: 'fontWeight' put: aString
]