Class {
	#name : 'EAddition',
	#superclass : 'Object',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'evaluate' }
EAddition >> evaluate [
^ right + left .
]

{ #category : 'left:' }
EAddition >> left: anExpression [
left:= anExpression evaluate.
]

{ #category : 'negated' }
EAddition >> negated [ 
^ ENegation new expression: self .
]

{ #category : 'right:' }
EAddition >> right: anExpression [
right:= anExpression evaluate.
]
