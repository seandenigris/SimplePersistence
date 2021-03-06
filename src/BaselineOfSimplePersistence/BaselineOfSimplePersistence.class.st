Class {
	#name : #BaselineOfSimplePersistence,
	#superclass : #BaselineOf,
	#category : 'BaselineOfSimplePersistence'
}

{ #category : #baselines }
BaselineOfSimplePersistence >> baseline: spec [
	<baseline>

	spec for: #common do: [
		spec
			baseline: 'Magritte' with: [
				spec repository: 'github://seandenigris/Magritte' ];
			package: 'SimplePersistence-Core' with: [
				spec requires: #('Magritte' "for browser"). ];
			package: 'SimplePersistence-Tests' with: [
				spec requires: #('SimplePersistence-Core' ). ].
		spec 
			group: 'Core' with: #('SimplePersistence-Core' ); 
			group: 'Tests' with: #('SimplePersistence-Tests');
			group: 'CI' with: #('Core' 'Tests');
			group: 'default' with: #('Core' ) ].
		
	spec for: #'pharo2.x' do: [
		spec 
			package: 'SimplePersistence-Core' with: [
				spec requires: #('SimplePersistence-Platform' ). ];
			package: 'SimplePersistence-Platform' with: 'SimplePersistence-Platform.pharo20'. ].
	
	  
]
