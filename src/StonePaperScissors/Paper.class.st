Class {
	#name : 'Paper',
	#superclass : 'StonePaperScissorsTest',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'play:' }
Paper >> play: anotherTool [
^ anotherTool playAgainstPaper.
]

{ #category : 'playAgainstPaper' }
Paper >> playAgainstPaper [
^ #draw.
]

{ #category : 'playAgainstScissors' }
Paper >> playAgainstScissors [ 
^ #scissors.
]

{ #category : 'playAgainstStone' }
Paper >> playAgainstStone [
^ #paper.
]
