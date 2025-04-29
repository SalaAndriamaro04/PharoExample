Class {
	#name : 'EConstant',
	#superclass : 'EExpression',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'constant3' }
EConstant class >> constant3 [
<sampleInstance>
^ self new value: 3
]

{ #category : 'constant5' }
EConstant class >> constant5 [
^ self new value: 5
]

{ #category : 'value:' }
EConstant class >> value: anInteger [
^ self new value: anInteger
]

{ #category : 'evaluate' }
EConstant >> evaluate [
^ value .
]

{ #category : 'value:' }
EConstant >> value: anInteger [
value := anInteger
]
