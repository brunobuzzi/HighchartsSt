accessing
selectorsToInclude

	"^ (OrderedCollection new addAll: super selectorsToInclude)
		addAll: #(jshighstockJs jshighchartsmoreJs modulesexportingJs);
		asArray"

	^OrderedCollection new
		addAll: super selectorsToInclude;
		addAll: #(jshighstockJs jshighchartsmoreJs modulesexportingJs);
		asArray