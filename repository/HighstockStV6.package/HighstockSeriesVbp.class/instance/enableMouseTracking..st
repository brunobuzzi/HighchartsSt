accessing
enableMouseTracking: aBoolean

	"Enable or disable the mouse tracking for a specific series. This
includes point tooltips and click events on graphs and points. For
large datasets it improves performance.
Defaults to false."

	configurationOptions at: 'enableMouseTracking' put: aBoolean