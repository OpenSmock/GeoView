Class {
	#name : #GeoViewLayer,
	#superclass : #Object,
	#instVars : [
		'isVisible',
		'processDataChangedBlock',
		'name',
		'announcer'
	],
	#category : #'GeoView-Core'
}

{ #category : #testing }
GeoViewLayer class >> isAbstract [ 

	^ self == GeoViewLayer 
]

{ #category : #accessing }
GeoViewLayer >> announcer [

	^ announcer ifNil:[ announcer := Announcer new ]
]

{ #category : #testing }
GeoViewLayer >> haveGeoObjects [

	^ false
]

{ #category : #'API -- drawing' }
GeoViewLayer >> isVisible [

	^ isVisible ifNil:[ isVisible := true ]
]

{ #category : #'API -- drawing' }
GeoViewLayer >> isVisible: aBoolean [

	isVisible := false
]

{ #category : #accessing }
GeoViewLayer >> name [

	^ name
]

{ #category : #accessing }
GeoViewLayer >> name: anObject [

	name := anObject
]

{ #category : #'API -- symbology' }
GeoViewLayer >> symbologyProvider: aSymbologyProvider [

	self explicitRequirement
]

{ #category : #'API -- drawing' }
GeoViewLayer >> updateGraphicModel [

	self explicitRequirement
]