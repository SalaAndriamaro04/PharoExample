Class {
	#name : 'Scissors',
	#superclass : 'StonePaperScissorsTest',
	#category : 'StonePaperScissors',
	#package : 'StonePaperScissors'
}

{ #category : 'play:' }
Scissors >> play: anotherTool [
^ anotherTool playAgainstScissors.
]

{ #category : 'playAgainstPaper' }
Scissors >> playAgainstPaper [ 
^ #scissors .
]

{ #category : 'playAgainstScissors' }
Scissors >> playAgainstScissors [
^ #draw.
]

{ #category : 'playAgainstStone' }
Scissors >> playAgainstStone [
^ #stone.
]
