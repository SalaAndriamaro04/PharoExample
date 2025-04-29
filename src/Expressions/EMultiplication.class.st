Class {
	#name : 'EMultiplication',
	#superclass : 'Object',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'evaluate' }
EMultiplication >> evaluate [
^ (right * left).
]

{ #category : 'left:' }
EMultiplication >> left: anExpression [
left := anExpression evaluate.
]

{ #category : 'negated' }
EMultiplication >> negated [ 
^ ENegation new expression: self.
]

{ #category : 'right:' }
EMultiplication >> right: anExpression [
right := anExpression evaluate.
]
