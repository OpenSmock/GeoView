Class {
	#name : #DPolylineGeoViewProcessData,
	#superclass : #DLeafShapeGeoViewProcessData,
	#category : #'GeoView-GShape-ProcessData'
}

{ #category : #private }
DPolylineGeoViewProcessData >> createGShape2D [ 

	^ SmockGPolyline2D new
]

{ #category : #processing }
DPolylineGeoViewProcessData >> processUpdatedData: aKey incoming: aDPolyline with: aGPolyline2D context: aContext [

	| points |
	super processUpdatedData: aKey incoming: aDPolyline with: aGPolyline2D context: aContext.
	(aDPolyline points isNil or:[ aDPolyline points isEmpty]) ifTrue:[ ^ aGPolyline2D ].
	
	aDPolyline isDrawModeDevice ifTrue:[ 
		points := aDPolyline points
	] ifFalse: [ 
		( aDPolyline isDrawModeUser or:[ aDPolyline isDrawModeUserProjected ] ) ifTrue:[
			points := aDPolyline points collect:[:pt |
				self processor projection projCartToPixel: pt
			].
		].
	].

	aGPolyline2D points: points.
	
	^ aGPolyline2D 
]
