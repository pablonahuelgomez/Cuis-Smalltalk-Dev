'From Cuis 4.2 of 25 July 2013 [latest update: #2615] on 1 December 2015 at 10:42:32.953137 am'!

!Scanner class methodsFor: 'cached class state' stamp: 'jmv 12/1/2015 10:34'!
doItCharacterValue
	^26! !


!SHParserST80 methodsFor: 'character testing' stamp: 'jmv 12/1/2015 10:30'!
isSelectorCharacter: aCharacter
	"Actually meaning 'isBinarySelectorCharacter'. i.e. can aCharacter be part of a binary selector? "
	aCharacter isValidInIdentifiers ifTrue: [^false].
	aCharacter isSeparator ifTrue: [^false].
	"$- is specified here as NOT being a selector char, but it can appear as the 
	first char in a binary selector. That case is handled specially elsewhere"
	('"#$'':().;[]{}^_-'  includes: aCharacter) 
		ifTrue:[^false].
	aCharacter asciiValue = Scanner doItCharacterValue ifTrue: [^false "the doIt char"].
	aCharacter asciiValue = 0 ifTrue: [^false].
	"Any other char is ok as a binary selector char."
	^true
! !


!Scanner methodsFor: 'expression types' stamp: 'jmv 12/1/2015 10:30'!
scanAllTokenPositionsInto: aBlock
	"Evaluate aBlock with the start and end positions of all separate non-white-space tokens, including comments."

	| lastMark |
	lastMark := 1.
	[currentComment ifNotNil:
		[currentComment do:
			[:cmnt| | idx |
			 idx := source originalContents indexOfSubCollection: cmnt startingAt: lastMark.
			 (idx > 0 and: [idx < mark]) ifTrue:
				[aBlock value: idx - 1 value: (lastMark := idx + cmnt size)]].
		 currentComment := nil].
	mark ifNotNil:
		[(token == #- 
		  and: [(self typeTableAt: hereChar) == #xDigit]) ifTrue:
			[| savedMark |
			 savedMark := mark.
			 self scanToken.
			 token := token negated.
			 mark := savedMark].
		"Compensate for the fact that the parser uses two character lookahead.  Normally we must
		  remove the extra two characters.  But this mustn't happen for the last token at the end of stream."
		 aBlock
			value: mark
			value: (source position - (aheadChar = Scanner doItCharacterValue ifTrue: [hereChar = Scanner doItCharacterValue asCharacter ifTrue: [0] ifFalse: [1]] ifFalse: [2]))].
	 (tokenType == #rightParenthesis
	  or: [tokenType == #doIt]) ifTrue:
		[^self].
	tokenType == #leftParenthesis
		ifTrue: 
			[self scanToken; scanAllTokenPositionsInto: aBlock]
		ifFalse: 
			[(tokenType == #word or: [tokenType == #keyword or: [tokenType == #colon]])
				ifTrue: 
					[self scanLitWord.
					 token == #true ifTrue: [token := true].
					 token == #false ifTrue: [token := false].
					 token == #nil ifTrue: [token := nil]]
				ifFalse:
					[(token == #- 
					  and: [(self typeTableAt: hereChar) == #xDigit])
						ifTrue: 
							[self scanToken.
							 token := token negated]]].
		self scanToken ] repeat! !


!Scanner class methodsFor: 'class initialization' stamp: 'jmv 12/1/2015 10:42'!
initialize
	"
	Scanner initialize
	"
	self initTypeTable! !

!Scanner class methodsFor: 'cached class state' stamp: 'jmv 12/1/2015 10:24'!
initTypeTable
	| newTable |
	newTable := Array new: 256 withAll: #xIllegal. "default"
	newTable atAll: #(9 10 12 13 32 ) put: #xDelimiter. "tab lf ff cr space"

	1 to: 255
		do: [:index |
			(Character value: index) isValidInIdentifiers
				ifTrue: [
					"Digits and $_ are overwritten later"
					newTable at: index put: #xLetter ]].

	newTable atAll: ($0 asciiValue to: $9 asciiValue) put: #xDigit.
	newTable atAll:  '!!%&+-*/\������,<=>������������?@~��������������' asByteArray put: #xBinary.

	newTable at: 30 put: #doIt.
	newTable at: Scanner doItCharacterValue put: #doIt.
	newTable at: $" asciiValue put: #xDoubleQuote.
	newTable at: $# asciiValue put: #xLitQuote.
	newTable at: $$ asciiValue put: #xDollar.
	newTable at: $' asciiValue put: #xSingleQuote.
	newTable at: $: asciiValue put: #xColon.
	newTable at: $( asciiValue put: #leftParenthesis.
	newTable at: $) asciiValue put: #rightParenthesis.
	newTable at: $. asciiValue put: #period.
	newTable at: $; asciiValue put: #semicolon.
	newTable at: $[ asciiValue put: #leftBracket.
	newTable at: $] asciiValue put: #rightBracket.
	newTable at: ${ asciiValue put: #leftBrace.
	newTable at: $} asciiValue put: #rightBrace.
	newTable at: $^ asciiValue put: #upArrow.
	newTable at: $_ asciiValue put: #xUnderscore.
	newTable at: $| asciiValue put: #verticalBar.
	TypeTable := newTable "bon voyage!!"

	"
	Scanner initTypeTable
	"! !


!Parser methodsFor: 'scanning' stamp: 'jmv 12/1/2015 10:30'!
advance
	| this |
	prevMark := hereMark.
	prevEnd := hereEnd.
	this := here.
	here := token.
	hereType := tokenType.
	hereMark := mark.
	hereEnd := source position - (source atEnd ifTrue: [hereChar = Scanner doItCharacterValue asCharacter ifTrue: [0] ifFalse: [1]] ifFalse: [2]).
	self scanToken.
	"Transcript show: 'here: ', here printString, ' mark: ', hereMark printString, ' end: ', hereEnd printString; cr."
	^this! !

Scanner initialize!
