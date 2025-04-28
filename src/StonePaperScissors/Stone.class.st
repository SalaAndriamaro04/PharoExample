Class {
	#name : 'Stone',
	#superclass : 'StonePaperScissorsTest',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'play:' }
Stone >> play: anotherTool [
^ anotherTool playAgainstStone.
]

{ #category : 'playAgainstPaper' }
Stone >> playAgainstPaper [ 
^ #paper.
]

{ #category : 'playAgainstScissors' }
Stone >> playAgainstScissors [ 
^ #stone.
]

{ #category : 'playAgainstStone' }
Stone >> playAgainstStone [
^ #draw.
]
