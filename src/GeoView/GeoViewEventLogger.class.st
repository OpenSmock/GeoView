Class {
	#name : #GeoViewEventLogger,
	#superclass : #BlCustomEventHandler,
	#category : #'GeoView-Events'
}

{ #category : #'api - accessing' }
GeoViewEventLogger >> eventsToHandle [

	^ {
		  GeoViewCursorCoordinatesChangedEvent.
		  GeoViewCenterChangedEvent.
		  GeoViewScaleChangedEvent.
		  GeoViewPickingEvent.
		  GeoViewLayerAddedEvent.
		  GeoViewLayerRemovedEvent.
		  GeoViewDomainObjectsLayerProcessDataChanged.
		  GeoViewObjectSelectionChanged.
		  GeoViewObjectSelectionAdded.
		  GeoViewObjectSelectionRemoved.
		  GeoViewObjectSelectionCleared }
]

{ #category : #events }
GeoViewEventLogger >> geoViewCenterChangedEvent: anEvent [

	anEvent traceCr.
]

{ #category : #events }
GeoViewEventLogger >> geoViewCursorCoordinatesChangedEvent: anEvent [

	anEvent traceCr.
]

{ #category : #events }
GeoViewEventLogger >> geoViewLayerAddedEvent: anEvent [

	anEvent traceCr.
]

{ #category : #events }
GeoViewEventLogger >> geoViewLayerProcessDataChanged: anEvent [

	anEvent traceCr.
]

{ #category : #events }
GeoViewEventLogger >> geoViewLayerRemovedEvent: anEvent [

	anEvent traceCr.
]

{ #category : #events }
GeoViewEventLogger >> geoViewObjectSelectionAdded: anEvent [

	anEvent traceCr
]

{ #category : #events }
GeoViewEventLogger >> geoViewObjectSelectionChanged: anEvent [

	anEvent traceCr
]

{ #category : #events }
GeoViewEventLogger >> geoViewObjectSelectionCleared: anEvent [

	anEvent traceCr
]

{ #category : #events }
GeoViewEventLogger >> geoViewObjectSelectionRemoved: anEvent [

	anEvent traceCr
]

{ #category : #events }
GeoViewEventLogger >> geoViewPickingEvent: anEvent [

	anEvent pickingResult traceCr
]

{ #category : #events }
GeoViewEventLogger >> geoViewScaleChangedEvent: anEvent [

	anEvent traceCr.
]
