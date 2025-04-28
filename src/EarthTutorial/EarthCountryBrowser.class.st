"
Add flag with the interface of the chosen country
"
Class {
	#name : 'EarthCountryBrowser',
	#superclass : 'SpPresenterWithModel',
	#instVars : [
		'countryList',
		'countryCode',
		'countryFlag'
	],
	#category : 'EarthTutorial',
	#package : 'EarthTutorial'
}

{ #category : 'connectPresenters' }
EarthCountryBrowser >> connectPresenters [
countryList whenSelectedItemChangedDo: [ :item |
self onCountrySelected: item ].
]

{ #category : 'defaultLayout' }
EarthCountryBrowser >> defaultLayout [
^ SpBoxLayout newTopToBottom
add: (SpBoxLayout newLeftToRight
add: countryList expand: true;
add: countryCode width: 40)
height: self class toolbarHeight;
add: countryFlag height: 350;
yourself
]

{ #category : 'flagForCountryCode:' }
EarthCountryBrowser >> flagForCountryCode: astring [
| request pngArray |
request := ZnClient new.
request get:
'https://flagcdn.com/w320/' , astring asLowercase , '.png'.
request isSuccess ifTrue: [
pngArray := request response contents.
^ ImageReadWriter formFromStream: (ReadStream on: pngArray) ].
^ BorderedMorph new asForm
]

{ #category : 'initializePresenters' }
EarthCountryBrowser >> initializePresenters [
super initializePresenters.
countryList := self newDropList.
countryList display: [ :item | item name ].
countryList sortingBlock: [ :a :b | a model name < b model name ].
countryList items: self model countries.
countryCode := self newTextInput.
countryCode editable: false.
countryCode text: ' -- '.
countryFlag := self newImage
]

{ #category : 'onCountrySelected:' }
EarthCountryBrowser >> onCountrySelected: countryItem [
countryCode text: ' ' , countryItem code.
self showflag:countryItem .

]

{ #category : 'showFlag:' }
EarthCountryBrowser >> showflag: aString [
 countryFlag image: (self flagForCountryCode: aString code).
]
