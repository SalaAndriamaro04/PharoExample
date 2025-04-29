Class {
	#name : 'EConstant',
	#superclass : 'Object',
	#instVars : [
		'value'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'evaluate' }
EConstant >> evaluate [
^ value .
]

{ #category : 'negated' }
EConstant >> negated [
^ ENegation new expression: self
]

{ #category : 'value:' }
EConstant >> value: anInteger [
value := anInteger
]
