Class {
	#name : 'ENegation',
	#superclass : 'EExpression',
	#instVars : [
		'expression'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'expression:' }
ENegation class >> expression: anExpression [
^ self new expression: anExpression 
]

{ #category : 'evaluate' }
ENegation >> evaluate [
^ expression.
]

{ #category : 'expression:' }
ENegation >> expression: anExpression [
expression := anExpression evaluate negated.
]
