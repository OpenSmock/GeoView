Class {
	#name : #GeoViewManagerBlocAeImpl,
	#superclass : #GeoViewManagerImpl,
	#category : #'GeoView-Molecule-Impl'
}

{ #category : #'layer creation' }
GeoViewManagerBlocAeImpl >> createGeoObjectsLayer: aName [

	| layer |
	layer := GeoViewGeoObjectsLayer new.
	layer name: aName.
	^ layer
]

{ #category : #initialization }
GeoViewManagerBlocAeImpl >> createView [

	| element |
	element := BlGeoViewAeElement new.
	self installEventHandlers: element.

	self view: element.
]

{ #category : #initialization }
GeoViewManagerBlocAeImpl >> installEventHandlers: aBlElement [

	"Layers events"
	aBlElement addEventHandlerOn: GeoViewGeoObjectLayerProcessDataChanged do: [ :e | self layerHasBeenUpdated: e ].
	aBlElement addEventHandlerOn: GeoViewLayerAddedEvent do: [ :e | self layerAdded: e ]. 
	aBlElement addEventHandlerOn: GeoViewLayerRemovedEvent do: [ :e | self layerRemoved: e ]. 
	
	"Projection events"
	aBlElement addEventHandlerOn: GeoViewMapProjectionChangedEvent do: [ :e | self mapProjectionHasChanged: e ]. 
		
	"Selection events"
	aBlElement addEventHandlerOn: GeoViewObjectSelectionChanged do: [ :e | self strategyRequestSetSelection: e objectIndexesList ].
	aBlElement addEventHandlerOn: GeoViewObjectSelectionAdded do: [ :e | self strategyRequestAddSelection: e objectIndexesList ].
	aBlElement addEventHandlerOn: GeoViewObjectSelectionRemoved do: [ :e | self strategyRequestRemoveSelection: e objectIndexesList ].
	aBlElement addEventHandlerOn: GeoViewObjectSelectionCleared do: [ :e | self strategyRequestClearSelection ]
]

{ #category : #'services - drawing' }
GeoViewManagerBlocAeImpl >> requestViewUpdate [

	self view requestRepaint
]