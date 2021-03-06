'From Cuis 4.2 of 25 July 2013 [latest update: #2964] on 1 November 2016 at 10:48:19 pm'!

!Character class methodsFor: 'instance creation' stamp: 'jmv 11/1/2016 22:28:41'!
numericValue: anInteger
	"Answer the Character whose value is anInteger."

	"Just use the CharacterTable. It is faster."
	"^ Character isImmediateClass
		ifTrue: [ self immediateNumericValue: anInteger ]
		ifFalse: [ self nonImmediateNumericValue: anInteger ]."

	^CharacterTable at: anInteger + 1! !

!Character class methodsFor: 'accessing untypeable characters' stamp: 'jmv 11/1/2016 22:31:20'!
arrowDown
	"
	Character arrowDown
	"
	^ $! !

!Character class methodsFor: 'accessing untypeable characters' stamp: 'jmv 11/1/2016 22:32:55'!
arrowLeft
	"
	Character arrowLeft
	"
	^ $! !

!Character class methodsFor: 'accessing untypeable characters' stamp: 'jmv 11/1/2016 22:32:46'!
arrowRight
	"
	Character arrowRight
	"
	^ $! !

!Character class methodsFor: 'accessing untypeable characters' stamp: 'jmv 11/1/2016 22:33:10'!
arrowUp
	"
	Character arrowUp
	"
	^ $! !

!Character class methodsFor: 'accessing untypeable characters' stamp: 'jmv 11/1/2016 22:33:59'!
euro
	"The Euro currency sign, that E with two dashes.
	Cuis uses ISO Latin 9 (ISO 8859-15) character encoding.
	Each character is 1 byte"

	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:34:52'!
CC
	"
	Character CC
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:35:04'!
HH
	"
	Character HH
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:35:21'!
NN
	"
	Character NN
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:35:31'!
PP
	"
	Character PP
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:35:52'!
QQ
	"
	Character QQ
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:03'!
RR
	"
	Character RR
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:15'!
ZZ
	"
	Character ZZ
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:26'!
aleph
	"
	Character aleph
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:37'!
bullet
	"
	Character bullet
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:45'!
circle
	"
	Character circle
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:36:57'!
contourIntegral
	"
	Character contourIntegral
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:37:05'!
degree
	"
	Character degree
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:37:18'!
doesNotExist
	"
	Character doesNotExist
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:37:39'!
dot
	"
	Character dot
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:37:49'!
emptySet
	"
	Character emptySet
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:37:57'!
exists
	"
	Character exists
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:38:06'!
forAll
	"
	Character forAll
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:38:15'!
greaterNotEqual
	"
	Character greaterNotEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:38:23'!
greaterOrEqual
	"
	Character greaterOrEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:38:36'!
greaterOverEqual
	"
	Character greaterOverEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:38:49'!
identical
	"
	Character identical
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:39:40'!
integral
	"
	Character integral
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:39:49'!
lessNotEqual
	"
	Character lessNotEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:39:57'!
lessOrEqual
	"
	Character lessOrEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:06'!
lessOverEqual
	"
	Character lessOverEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:14'!
notEqual
	"
	Character notEqual
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:22'!
notIdentical
	"
	Character notIdentical
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:31'!
odot
	"
	Character odot
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:41'!
oplus
	"
	Character oplus
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:50'!
otimes
	"
	Character otimes
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:40:58'!
partial
	"
	Character partial
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:41:09'!
strictlyEquivalent
	"
	Character strictlyEquivalent
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:41:16'!
summation
	"
	Character summation
	"
	^ $�! !

!Character class methodsFor: 'accessing mathematical symbols' stamp: 'jmv 11/1/2016 22:41:25'!
times
	"
	Character times
	"
	^ $�! !

