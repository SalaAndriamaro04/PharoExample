Class {
	#name : 'EExpression',
	#superclass : 'Object',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'negated' }
EExpression >> negated [
^ ENegation new expression: self
]
