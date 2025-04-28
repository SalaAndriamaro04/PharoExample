"
EarthMap for each country chosen
"
Class {
	#name : 'EarthMap',
	#superclass : 'Object',
	#instVars : [
		'countries'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'accessing' }
EarthMap >> countries [

	^ countries
]

{ #category : 'accessing' }
EarthMap >> countries: anObject [

	countries := anObject
]

{ #category : 'importCountriesFrom:' }
EarthMap >> importCountriesFrom: aFilename [
|xmlTree|
xmlTree := self xmlTreeFromFile: aFilename .
xmlTree nodes first nodes do:[:node | (node class = XMLElement) ifTrue: [ self importCountryFromXMLNode: node]].



]

{ #category : 'importCountryFromXMLNode' }
EarthMap >> importCountryFromXMLNode: aXMLElement [
countries add: (EarthMapCountry new fromXML: aXMLElement)
]

{ #category : 'openPopulatedCanvas' }
EarthMap >> openPopulatedCanvas [
self populatedCanvas open
]

{ #category : 'populatedCanvas' }
EarthMap >> populatedCanvas [
^ RSCanvas new
addAll: (countries collect: [ :country | country asRSShape ]);
@ RSCanvasController;
yourself
]

{ #category : 'xmlTreeFromFile' }
EarthMap >> xmlTreeFromFile: aFileName [
^ aFileName asFileReference readStreamDo: [ :stream |
(XMLDOMParser parse: stream) document ]
]
