Class {
	#name : 'EConstantTest',
	#superclass : 'TestCase',
	#category : 'Expressions',
	#package : 'Expressions'
}

{ #category : ' testEvaluate' }
EConstantTest >> testEvaluate [
self assert: (EConstant new value: 5) evaluate equals: 5.
]

{ #category : 'testNegated' }
EConstantTest >> testNegated [
self assert: (EConstant new value: 6) negated evaluate equals: -6
]
