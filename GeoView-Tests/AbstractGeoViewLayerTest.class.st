"
A GeoViewLayerTest is a test class for testing the behavior of GeoViewLayer
"
Class {
	#name : #AbstractGeoViewLayerTest,
	#superclass : #TestCase,
	#category : #'GeoView-Tests-Cases'
}

{ #category : #tests }
AbstractGeoViewLayerTest >> testAnnouncer [

	| layer announcer |
	layer := AbstractGeoViewLayer new.
	announcer := layer announcer.
	self assert: announcer notNil.
	self assert: (announcer isKindOf: Announcer).
	
	"test twice call to check if this is the same object"
	self assert: layer announcer identicalTo: announcer.
	
]

{ #category : #tests }
AbstractGeoViewLayerTest >> testHaveGeoObjects [

	| layer |
	layer := AbstractGeoViewLayer new.
	self deny: layer haveGeoObjects.
]

{ #category : #tests }
AbstractGeoViewLayerTest >> testIsVisible [

	| layer |
	layer := AbstractGeoViewLayer new.
	self assert: layer isVisible.
	
	layer isVisible: false.
	self deny: layer isVisible.
]

{ #category : #tests }
AbstractGeoViewLayerTest >> testName [

	| layer |
	layer := AbstractGeoViewLayer new.
	self assert: layer name isNil.
	
	layer name: 'myLayer'.
	self assert: layer name equals: 'myLayer'
]