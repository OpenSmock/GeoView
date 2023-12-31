"
I am the ProjectionManager.
"
Trait {
	#name : #MapProjectionManager,
	#traits : 'MolComponentType',
	#classTraits : 'MolComponentType classTrait',
	#category : #'GeoView-MapProjection'
}

{ #category : #'accessing - events' }
MapProjectionManager classSide >> producedComponentEvents [
<componentContract>		
	^{ MapProjectionManagerEvents }
]

{ #category : #'accessing - parameters' }
MapProjectionManager classSide >> providedComponentParameters [
<componentContract>		
	^{ MapProjectionManagerParameters }
]

{ #category : #'accessing - services' }
MapProjectionManager classSide >> providedComponentServices [
<componentContract>	
	^{ MapProjectionManagerServices } 
]
