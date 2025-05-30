Class {
	#name : 'EMultiplicationTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : 'testEvaluate' }
EMultiplicationTest >> testEvaluate [
| ep1 ep2 |
ep1 := (EConstant new value: 5).
ep2 := (EConstant new value: 3).
self assert: (EMultiplication new right: ep1; left: ep2) evaluate
equals: 15
]

{ #category : 'testEvaluateNegated' }
EMultiplicationTest >> testEvaluateNegated [
| ep1 ep2 |
ep1 := EConstant new value: 5.
ep2 := EConstant new value: 3.
self assert: (EMultiplication new right: ep1; left: ep2) negated
evaluate equals: -15
]

{ #category : 'testEvaluateWithClassCreationMessage' }
EMultiplicationTest >> testEvaluateWithClassCreationMessage [
| ep1 ep2 |
ep1 := EConstant new value: 5.
ep2 := EConstant new value: 3.
self assert: (EMultiplication new left: ep1; right: ep2) evaluate
equals: 15
]
