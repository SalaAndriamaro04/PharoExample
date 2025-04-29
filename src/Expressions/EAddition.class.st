Class {
	#name : 'EAddition',
	#superclass : 'EExpression',
	#instVars : [
		'left',
		'right'
	],
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'fivePlusThree' }
EAddition class >> fivePlusThree [
<sampleInstance>
| ep1 ep2 |
ep1 := EConstant new value: 5.
ep2 := EConstant new value: 3.
^ self new left: ep1 ; right: ep2
]

{ #category : 'left:right:' }
EAddition class >> left: anInteger right: anInteger2 [
^ self new left: anInteger ; right: anInteger2
]

{ #category : 'evaluate' }
EAddition >> evaluate [
^ right + left .
]

{ #category : 'left:' }
EAddition >> left: anExpression [
left:= anExpression evaluate.
]

{ #category : 'right:' }
EAddition >> right: anExpression [
right:= anExpression evaluate.
]
