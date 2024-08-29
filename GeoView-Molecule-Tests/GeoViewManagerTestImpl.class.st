Class {
	#name : #GeoViewManagerTestImpl,
	#superclass : #GeoViewManagerImpl,
	#category : #'GeoView-Molecule-Tests-Utils'
}

{ #category : #'layer creation' }
GeoViewManagerTestImpl >> createLayer: aKey [

	^ GeoViewObjectTestLayer new
]

{ #category : #initialization }
GeoViewManagerTestImpl >> createView [

	self view: GeoViewTestWidget new
]

{ #category : #'services - map projection' }
GeoViewManagerTestImpl >> getMapProjection [
]