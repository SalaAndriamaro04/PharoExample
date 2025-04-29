Class {
	#name : 'ENegation',
	#superclass : 'Object',
	#instVars : [
		'expression'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'evaluate' }
ENegation >> evaluate [
^ expression.
]

{ #category : 'expression:' }
ENegation >> expression: anExpression [
expression := anExpression evaluate negated.
]

{ #category : 'negated' }
ENegation >> negated [
^ ENegation new expression: self

"^ self class new expression: self"
]
