Class {
	#name : 'CounterTest',
	#superclass : 'TestCase',
	#category : 'MyCounter',
	#package : 'MyCounter'
}

{ #category : 'testDecrement' }
CounterTest >> testDecrement [
| c |
c := Counter new.
c decrement.
self assert: c count equals: -1.

]

{ #category : 'testIncrement' }
CounterTest >> testIncrement [
| c |
c := Counter new.
c increment.
self assert: c count equals: 1.

]
