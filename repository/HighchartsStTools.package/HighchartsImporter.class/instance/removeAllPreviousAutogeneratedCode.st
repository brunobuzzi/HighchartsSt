removing code
removeAllPreviousAutogeneratedCode
	self allAutogeneratedClasses do: [ :each | each removeFromSystem ].
	Smalltalk fixObsoleteReferences.
	Behavior removeAllObsoleteSubclasses.