'From Cuis 4.2 of 25 July 2013 [latest update: #2463] on 24 August 2015 at 10:59:20.175164 am'!

!LayoutMorph methodsFor: 'convenience methods' stamp: 'DM 8/21/2015 17:23'!
addMorphKeepMorphHeight: aMorph
	"Convenience method.
	Add others as necessary."
	self addMorph: aMorph layoutSpec: (LayoutSpec new useMorphHeight)! !


!SystemDictionary methodsFor: 'code authors' stamp: 'jmv 8/24/2015 10:58'!
knownInitialsAndNames
	"This list could include people who hasn't contributed code to the Cuis image, but some optional package."
"
| all ok |
all _ Smalltalk allContributors asSet.
ok _ (Smalltalk knownInitialsAndNames collect: [ :pair | pair first ]) asSet.
(all copyWithoutAll: ok) print

		initials         				name"
^ #(
	#('ab' 						'Alexandre Bergel')
	#('abc' 					'Colin Putney')
	#('acg' 					'Andrew C. Greenberg')
	#('ads' 					'Adam Spitz')
	#('AFi' 						'Alain Fischer')
	#('ajh' 					'Anthony Hannan')
	#('al' 						'Adrian Lienhard')
	#('aoy' 					'Andres Otaduy')
	#('apb' 					'Andrew P. Black')
	#('ar' 						'Andreas Raab')
	#('asm' 					'Alejandro Magistrello')
	#('avi' 						'Avi Bryant')
	#('BenComan' 			'Ben Coman')
	#('bf' 						'Bert Freudenberg')
	#('BG' 						'Boris Gaertner')
	#('BJP' 					'Bijan Parsia')
	#('bkv' 					'Brent Vukmer')
	#('bolot' 					'Bolot Kerimbaev')
	#('bp' 						'Bernhard Pieber')
	#('BP' 						'Brent Pinkney') 
	#('brp' 					'Brent Pinkney')
	#('cbc' 					'Chris Cunningham')
	#('cbr'						'Casey Ransberger')
	#('ccn' 					'Chris Norton')
	#('cmm' 					'Chris Muller')
	#('crl' 						'Craig Latta')
	#('cwp' 					'Colin Putney')
	#('das' 					'David A Smith')
	#('dc' 						'Damien Cassou')
	#('dew' 					'Doug Way')
	#('dgd' 					'Diego Gomez Deck')
	#('dkh'					'Dale Henrichs')
	#('dhn'	 				'Dan Norton')
	#('dhhi' 					'Dan Ingalls')
	#('di' 						'Dan Ingalls')
	#('djp' 					'David J. Pennell')
	#('DKL'					'Daniel K Lyons ')
	#('DM' 					'Duncan Mak')
	#('DSM' 					'Duane Maxwell')
	#('DSG'					'David Graham')
	#('dtl' 						'Dave Lewis')
	#('dvf' 					'Daniel Vainsencher')
	#('eat' 					'Eric Arseneau Tremblay')
	#('eem'					'Eliot Emilio Miranda')
	#('eliot'					'Eliot Emilio Miranda')
	#('efc' 					'Eddie Cottongim')
	#('em' 					'Ernest Micklei?')
	#('emm' 					'Ernest Micklei')
	#('fbs' 					'Frank Shearar')
	#('FBS' 					'Frank Shearar')
	#('fc' 						'Frank Caggiano')
	#('fcs' 					'Frank Sergeant')
	#('FernandoOlivero' 		'Fernando Olivero')
	#('FernanodOlivero' 		'Fernando Olivero')
	#('GabrielOmarCotelli' 	'Gabriel Omar Cotelli')
	#('gh' 						'Goran Krampe (nee Hultgren)')
	#('gk' 						'Goran Krampe (nee Hultgren)')
	#('gm' 					'German Morales')
	#('go' 						'Georg Gollmann')
	#('gsa' 					'German Arduino')
	#('HB' 						'Hari Balaraman')
	#('hjh' 					'Hannes Hirzel')
	#('hmm' 					'Hans-Martin Mosner')
	#('hsj' 					'Henrik Sperre Johansen')
	#('Igor.Stasenko' 		'Igor Stasenko')
	#('ikp' 					'Ian Piumarta')
	#('Jb' 						'Jean Baptiste Arnaud')
	#('jcg' 					'Joshua Gargus')
	#('jdr' 						'Javier Diaz-Reinoso')
	#('je' 						'Joern Eyrich')
	#('jf' 						'Julian Fitzell')
	#('JF' 						'Julian Fitzell')
	#('jhm' 					'John Maloney')
	#('jlb' 						'Jim Benson')
	#('jm' '					John Maloney')
	#('jmb' 					'Hans Baveco')
	#('JMG'					'Jeff Gonis')
	#('JMM' 					'John McIntosh')
	#('jmv' 					'Juan Vuletich')
	#('JMV' 					'Juan Vuletich')
	#('jp' 						'Joseph Pelrine')
	#('jrm' 					'John-Reed Maffeo')
	#('jrp' 						'John Pierce')
	#('jsp' 					'Jeff Pierce')
	#('KenD' 					'Ken Dickey')
	#('kfr' 						'Karl Ramberg')
	#('KLC'			 		'Ken Causey')
	#('kph'					'Keith Hodges')
	#('KTT' 					'Kurt Thams')
	#('laza' 					'Alexander Lazarevic')
	#('LC' 						'Leandro Caniglia')
	#('len' 					'Luciano Esteban Notarfrancesco')
	#('lr' 						'Lukas Renggli')
	#('Lukas Renggli' 		'Lukas Renggli')
	#('ls' 						'Lex Spoon')
	#('md' 					'Marcus Denker')
	#('MarcusDenker' 		'Marcus Denker')
	#('marcus.denker' 		'Marcus Denker')
	#('mdr' 					'Mike Rutenberg')
	#('mga' 					'Markus Galli')
	#('mha' 					'Michael Haupt')
	#('mir' 					'Michael Rueger')
	#('mjg' 					'Mark Guzdial')
	#('mk' 					'Matej Kosik')
	#('MPH' 					'Michael Hewner')
	#('mpw' 					'Marcel Weiher')
	#('MPW' 					'Marcel Weiher')
	#('mrm' 					'Martin McClure')
	#('mtf' 					'Matthew Fulmer')
	#('mu' 					'Masashi Umezawa')
	#('nb' 						'Naala Brewer')
	#('nice'				 	'Nicolas Cellier')
	#('nk' 						'Ned Konz')
	#('nop' 					'Jay Carlson')
	#('NS' 						'Nathanael Schaerli')
	#('panda' 					'Michael Rueger')
	#('pb'						'Phil Bellalouna')
	#('PHK' 					'Peter Keeler')
	#('Pmm' 					'Philippe Marschall')
	#('pnm' 					'Paul McDonough')
	#('r++' 					'Gerardo Richarte')
	#('raa' 					'Bob Arning')
	#('RAA' 					'Bob Arning')
	#('raok' 					'Richard A. O''Keefe')
	#('rca' 					'Russell Allen')
	#('reThink'			 	'Paul McDonough')
	#('rew' 					'Roger Whitney')
	#('rhi' 						'Robert Hirschfeld')
	#('RJT' 					'Ron Teitelbaum')
	#('rr' 						'Romain Robbes')
	#('rss' 					'Ron Spengler')
	#('rw' 						'Robert Withers')
	#('rww' 					'Robert Withers')
	#('Sames' 				'Samuel S. Shuster')
	#('sbw' 					'Stephan B. Wessels')
	#('sd' 						'Stephane Ducasse')
	#('SD' 						'Stephane Ducasse')
	#('sge' 					'Steve Elkins')
	#('sma' 					'Stefan Matthias Aust')
	#('sps' 					'Steven Swerling')
	#('SqR' 					'Andres Valloud')
	#('sqr' 					'Andres Valloud')
	#('sr' 						'Stephan Rudlof')
	#('SSS' 					'Samuel S. Shuster')
	#('stephane.ducasse' 	'Stephane Ducasse')
	#('stephaneducasse' 	'Stephane Ducasse')
	#('stp' 					'Stephen Travis Pope')
	#('sumim' 				'Masato Sumi')
	#('svp' 					'Stephen Vincent Pair')
	#('sw' 						'Scott Wallace')
	#('TAG' 					'Travis Griggs')
	#('tak' 					'Takashi Yamamiya')
	#('tao' 					'Tim Olson')
	#('TBn' 					'Torsten Bergmann')
	#('tfei' 					'The Fourth Estate, Inc.')
	#('tfel' 					'Tim Felgentreff')
	#('th' 						'Torge Husfeldt')
	#('tk' 						'Ted Kaehler')
	#('tlk' 						'Tom Koenig')
	#('tpr' 					'Tim Rowledge')
	#('TPR' 					'Tim Rowledge')
	#('tween' 					'Andy Tween')
	#('ul' 						'Levente Uzonyi')
	#('vb' 						'Vassili Bykov')
	#('ward' 					'Ward Cunningham')
	#('wiz' 					'Jerome Peace')
	#('wod' 					'Bill Dargel')
	#('yo' 						'Yoshiki Ohshima')
	#('zz' 						'Serge Stinckwich'))! !


!CodePackageListWindow methodsFor: 'GUI building' stamp: 'DM 8/21/2015 17:23'!
buildMorphicWindow
	" 
	CodePackageListWindow open: CodePackageList new
	"
	| dirtyFlags names fileNames upperRow  description summary backColor labelBackground |
	backColor := self textBackgroundColor.	
	labelBackground := Theme current background.
	
	dirtyFlags := PluggableListMorph
		model: model 
		listGetter: #packageDirtyFlags
		indexGetter: #selectionIndex
		indexSetter: #selectionIndex:.
	dirtyFlags color: backColor.
	dirtyFlags := LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: ' Unsaved?');
		addMorphUseAll: dirtyFlags.

	names := PluggableListMorph
		model: model 
		listGetter: #packageNames
		indexGetter: #selectionIndex
		indexSetter: #selectionIndex:.
	names color: backColor.
	names := LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: ' Package Name');
		addMorphUseAll: names.

	fileNames := PluggableListMorph
		model: model 
		listGetter: #packageFullNames
		indexGetter: #selectionIndex
		indexSetter: #selectionIndex:.
	fileNames color: backColor.
	fileNames := LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: ' File Name');
		addMorphUseAll: fileNames.

	upperRow := LayoutMorph newRow.
	upperRow
		addMorph: dirtyFlags proportionalWidth: 0.13;
		addAdjusterAndMorph: names proportionalWidth: 0.27;
		addAdjusterAndMorph: fileNames proportionalWidth: 0.6.
		
	description := TextModelMorph
		textProvider: model
		textGetter: #description 
		textSetter: #description:.

	summary := TextModelMorph
		textProvider: model
		textGetter: #summary.

	self layoutMorph
		addMorph: upperRow proportionalHeight: 0.5;
		addAdjusterAndMorph: self buildButtonPane proportionalHeight: 0.1;
		addAdjusterAndMorph: summary proportionalHeight: 0.18;
		addAdjusterAndMorph: description proportionalHeight: 0.22;
		addAdjusterAndMorph: self buildRequirementsPane proportionalHeight: 0.2.
	self setLabel: 'Installed Packages'! !


!ChangeSorterWindow methodsFor: 'GUI building' stamp: 'DM 8/22/2015 12:34'!
buildMorphicWindow
	"Add a set of change sorter views to the given top view offset by the given amount. To create a single change sorter, call this once with an offset of 0@0. To create a dual change sorter, call it twice with offsets of 0@0 and 0.5@0."

	| dirtyFlags changeSetList classList messageList upperPanes backColor labelBackground |
	backColor _ self textBackgroundColor.
	labelBackground _ Theme current background.
	model myChangeSet ifNil: [
		self flag: #ojo. "Or whatever was last changed, or is top of list, or whatever"
		model myChangeSet: ChangeSet changeSetForBaseSystem ].

	dirtyFlags _ PluggableListMorph
		model: model
		listGetter: #changeSetDirtyFlags
		indexGetter: nil
		indexSetter: nil.
	dirtyFlags color: backColor.
	dirtyFlags _ LayoutMorph newColumn
		color: Theme current background;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: ' Unsaved?');
		addMorphUseAll: dirtyFlags.

	changeSetList _ (PluggableListMorphByItem
				model: model
				listGetter: #changeSetList
				indexGetter: #currentCngSet
				indexSetter: #showChangeSetNamed:
				mainView: self
				menuGetter: #changeSetMenu
				keystrokeAction: #changeSetListKey:from:)
			autoDeselect: false.
	changeSetList color: backColor.
	changeSetList _ LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: 'Change Set name');
		addMorphUseAll: changeSetList.

	classList _ PluggableListMorphByItem
				model: model
				listGetter: #classList
				indexGetter: #currentClassName
				indexSetter: #currentClassName:
				mainView: self
				menuGetter: #classListMenu
				keystrokeAction: #classListKey:from:.
	classList color: backColor.
	classList _ LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: 'Classes');
		addMorphUseAll: classList.

	upperPanes _ LayoutMorph newRow.
	upperPanes
		addMorph: dirtyFlags proportionalWidth: 0.13;
		addAdjusterAndMorph: changeSetList proportionalWidth: 0.47;
		addAdjusterAndMorph: classList proportionalWidth: 0.4.

	messageList _ PluggableListMorphByItem
				model: model
				listGetter: #messageList
				indexGetter: #currentSelector
				indexSetter: #currentSelector:
				mainView: self
				menuGetter: #messageMenu
				keystrokeAction: #messageListKey:from:.
	messageList color: backColor.
	messageList _ LayoutMorph newColumn
		color: labelBackground;
		addMorph: (RectangleLikeMorph new color: Color transparent) fixedHeight: 4;
		addMorphKeepMorphHeight: (StringMorph new contents: 'Methods');
		addMorphUseAll: messageList.

	self layoutMorph
		addMorph: upperPanes proportionalHeight: 0.25;
		addAdjusterAndMorph: messageList proportionalHeight: 0.2;
		addAdjusterAndMorph: self buildLowerPanes proportionalHeight: 0.55.

	self setLabel: model labelString! !

