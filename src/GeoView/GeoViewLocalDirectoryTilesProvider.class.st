Class {
	#name : #GeoViewLocalDirectoryTilesProvider,
	#superclass : #GeoViewTilesProvider,
	#instVars : [
		'tileDirectory',
		'imageType'
	],
	#category : #'GeoView-Map'
}

{ #category : #constants }
GeoViewLocalDirectoryTilesProvider class >> defaultDirectory [

	^ FileLocator imageDirectory / 'map' / 'r'
]

{ #category : #accessing }
GeoViewLocalDirectoryTilesProvider >> imageType [

	^ imageType
]

{ #category : #accessing }
GeoViewLocalDirectoryTilesProvider >> imageType: anObject [

	imageType := anObject
]

{ #category : #accessing }
GeoViewLocalDirectoryTilesProvider >> tileDirectory [

	^ tileDirectory ifNil: [
		  tileDirectory := self class defaultDirectory ]
]

{ #category : #accessing }
GeoViewLocalDirectoryTilesProvider >> tileDirectory: anObject [

	tileDirectory := anObject
]

{ #category : #request }
GeoViewLocalDirectoryTilesProvider >> tileFilenameFor: aZoomLevel x: anXCoordinate y: anYCoordinate [

	| filename types |
	filename := self tileDirectory asFileReference.
	filename exists ifFalse: [ ^ nil ].

	filename := filename / aZoomLevel asString.
	filename := filename / anXCoordinate asString.
	filename := filename / anYCoordinate asString.

	imageType ifNil:[
		"trying to find the type of the image"	
		types := #( 'jpg' 'png' ).
		imageType := types detect:[ :e | (filename , (e asString)) exists ] ifNone:[ ^ nil ].
	].
	
	filename := filename , imageType asString.

	^ filename
]

{ #category : #request }
GeoViewLocalDirectoryTilesProvider >> tileFor: aZoomLevel x: anXCoordinate y: anYCoordinate [

	| filename |
	filename := self tileFilenameFor: aZoomLevel x: anXCoordinate y: anYCoordinate.
	filename ifNil: [ ^ nil ].
	filename parent asFileReference ensureCreateDirectory.
	filename exists ifTrue: [ ^ filename ].
	^ nil
]
