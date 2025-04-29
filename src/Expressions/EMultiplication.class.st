Class {
	#name : 'EMultiplication',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'fiveTimesThree' }
EMultiplication class >> fiveTimesThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant constant5.
ep2 := EConstant constant3.
^ self new left: ep1 ; right: ep2
]

{ #category : 'left:right:' }
EMultiplication class >> left: anExp right: anExp2 [
^ self new left: anExp ; right: anExp2 .
]

{ #category : 'evaluate' }
EMultiplication >> evaluate [
^ (right * left).
]

{ #category : 'left:' }
EMultiplication >> left: anExpression [
left := anExpression evaluate.
]

{ #category : 'right:' }
EMultiplication >> right: anExpression [
right := anExpression evaluate.
]
