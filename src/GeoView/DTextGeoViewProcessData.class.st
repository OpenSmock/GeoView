Class {
	#name : #DTextGeoViewProcessData,
	#superclass : #DLeafShapeGeoViewProcessData,
	#category : #'GeoView-ProcessDatas'
}

{ #category : #private }
DTextGeoViewProcessData >> createGShape2D [ 

	^ SmockGText2D new
]

{ #category : #processing }
DTextGeoViewProcessData >> processUpdatedData: aKey incoming: aDText with: aGText2D context: aContext [
	
	super processUpdatedData: aKey incoming: aDText with: aGText2D context: aContext.
	
	aGText2D text: aDText text.
	aGText2D smockFont: aDText smockFont.
	aGText2D xAlign: aDText xAlign.
	aGText2D yAlign: aDText yAlign.
		
	aDText isDrawModeUser ifTrue:[ "no yet supported" ].
		
	^ aGText2D 
]
