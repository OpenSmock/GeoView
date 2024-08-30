Trait {
	#name : #TGeoViewHandleProcessDatas,
	#category : #'GeoView-Core'
}

{ #category : #'API -- process datas' }
TGeoViewHandleProcessDatas >> getAllProcessData [

	self explicitRequirement
]

{ #category : #'API -- process datas' }
TGeoViewHandleProcessDatas >> getProcessDataFor: aGeoObjectClass [

	self explicitRequirement
]

{ #category : #'API -- process datas' }
TGeoViewHandleProcessDatas >> removeProcessDataFor: aGeoObjectClass [

	self explicitRequirement
]

{ #category : #'API -- process datas' }
TGeoViewHandleProcessDatas >> setDefaultProcessData: aDataProcessor [

	self explicitRequirement
]

{ #category : #'API -- process datas' }
TGeoViewHandleProcessDatas >> setProcessData: aProcessData for: aGeoObjectClass [

	self explicitRequirement
]