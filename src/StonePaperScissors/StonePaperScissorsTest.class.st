Class {
	#name : 'StonePaperScissorsTest',
	#superclass : 'TestCase',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'testplayAgainstPaper' }
StonePaperScissorsTest >> testPaperAgainstPaper [
self assert: (Paper new play: Paper new) equals: #draw.
]

{ #category : 'testPaperAgainstScissors' }
StonePaperScissorsTest >> testPaperAgainstScissorsIsWinning [
self assert: (Paper new play: Scissors new) equals: #scissors.
]

{ #category : 'testPaperAgainstStone' }
StonePaperScissorsTest >> testPaperAgainstStoneIsWinning [
self assert: (Paper new play: Stone new) equals: #paper
]

{ #category : 'testScissorsAgainstStoneIsWinning' }
StonePaperScissorsTest >> testScissorAgainstStoneIsWinning [
self assert: (Scissors new play: Stone new) equals: #stone.
]

{ #category : 'testScissorsAgainstPaperIsWinning' }
StonePaperScissorsTest >> testScissorAgsinstPaperIsWinning [
self assert: (Scissors new play: Paper new) equals: #scissors
]

{ #category : 'testplayAgainstScissors' }
StonePaperScissorsTest >> testScissorsAgainstScissors [
self assert: (Scissors new play: Scissors new) equals: #draw.
]

{ #category : 'testStoneAgainstPaperIsWinning' }
StonePaperScissorsTest >> testStoneAgainstPaperIsWinning [
self assert: (Stone new play: Paper new) equals: #paper
]

{ #category : 'testStoneAgainstScissorsIsWinning' }
StonePaperScissorsTest >> testStoneAgainstScissorsIsWinning [
self assert: (Stone new play: Scissors new) equals: #stone
]

{ #category : 'testplayAgainstStone' }
StonePaperScissorsTest >> testStoneAgainstStone [
self assert: (Stone new play: Stone new) equals: #draw
]
