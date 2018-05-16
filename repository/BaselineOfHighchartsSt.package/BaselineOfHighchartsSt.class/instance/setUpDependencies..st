baseline
setUpDependencies: spec

	spec
		baseline: 'RenoirSt'
		with: [ spec
				repository: 'github://brunobuzzi/RenoirSt:v4.0.0/source';
				loads: #('Deployment-Seaside-Extensions') ].

	spec
		baseline: 'Boardwalk'
		with: [ spec
				repository: 'github://brunobuzzi/Boardwalk:v1.0.0/source';
				loads: #('Deployment') ]			
