Class {
	#name : #GeoPolygonProcessData,
	#superclass : #GeoShapeProcessData,
	#category : #'GeoView-ProcessDatas'
}

{ #category : #processing }
GeoPolygonProcessData >> processCreatedData: aKey incoming: aGeoPolygon with: aDPolygon context: aContext [
	| dPolygon points |
	dPolygon := aDPolygon ifNil:[SmockDPolygon new].
	super processCreatedData: aKey incoming: aGeoPolygon with: dPolygon context: aContext.
	
	points := aGeoPolygon absolutePositions collect: [ :e | self processor projection projLatLonToCart: e].
	dPolygon points: points.
	
	^dPolygon
]

{ #category : #processing }
GeoPolygonProcessData >> processUpdatedData: aKey incoming: aGeoPolygon with: aDPolygon context: aContext [
	| dPolygon points |
	dPolygon := aDPolygon.
	super processUpdatedData: aKey incoming: aGeoPolygon with: aDPolygon context: aContext.
	
	points := aGeoPolygon absolutePositions collect: [ :e | self processor projection projLatLonToCart: e].
	dPolygon points: points.
	
	^dPolygon
]
