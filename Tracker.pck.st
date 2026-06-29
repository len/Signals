'From Cuis7.9 [latest update: #8030] on 30 June 2026 at 1:26:28 am'!
'Description A tracker implemented with Signals.'!
!provides: 'Tracker' 1 82!
!requires: 'Signals' 1 490 nil!
SystemOrganization addCategory: #'Tracker-Kernel'!
SystemOrganization addCategory: #'Tracker-Morphic'!
SystemOrganization addCategory: #'Tracker-Theme'!


!classDefinition: #DarkerTheme category: #'Tracker-Theme'!
Theme subclass: #DarkerTheme
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Theme'!
!classDefinition: 'DarkerTheme class' category: #'Tracker-Theme'!
DarkerTheme class
	instanceVariableNames: ''!

!classDefinition: #Tracker category: #'Tracker-Kernel'!
ActiveModel subclass: #Tracker
	instanceVariableNames: 'instruments tracks sequence label bpm swing level inputOctave cursorPattern cursorLine cursorTrack playheadPattern playheadLine followPlayhead playStartPattern playStartLine playEndPattern playEndLine playingMask loop anyTrackSoloed ticksToLine peakLeft peakRight buses random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Tracker class' category: #'Tracker-Kernel'!
Tracker class
	instanceVariableNames: ''!

!classDefinition: #TrackerWindow category: #'Tracker-Morphic'!
SystemWindow subclass: #TrackerWindow
	instanceVariableNames: 'instrumentEditor instrumentRack adjuster meter arranger patternEditor lowerPane'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'TrackerWindow class' category: #'Tracker-Morphic'!
TrackerWindow class
	instanceVariableNames: ''!

!classDefinition: #InstrumentRackMorph category: #'Tracker-Morphic'!
ScrollerMorph subclass: #InstrumentRackMorph
	instanceVariableNames: 'tracker'
	classVariableNames: 'ClipboardBuffer'
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'InstrumentRackMorph class' category: #'Tracker-Morphic'!
InstrumentRackMorph class
	instanceVariableNames: ''!

!classDefinition: #InstrumentEditorMorph category: #'Tracker-Morphic'!
ZoomerMorph subclass: #InstrumentEditorMorph
	instanceVariableNames: 'tracker'
	classVariableNames: 'ClipboardBuffer'
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'InstrumentEditorMorph class' category: #'Tracker-Morphic'!
InstrumentEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #ArrangerMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #ArrangerMorph
	instanceVariableNames: 'tracker font clipboard selectionStart showCursor pauseBlinking'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'ArrangerMorph class' category: #'Tracker-Morphic'!
ArrangerMorph class
	instanceVariableNames: ''!

!classDefinition: #MultitrackMeterMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #MultitrackMeterMorph
	instanceVariableNames: 'tracker leftMargin meterWidth meterSpacing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'MultitrackMeterMorph class' category: #'Tracker-Morphic'!
MultitrackMeterMorph class
	instanceVariableNames: ''!

!classDefinition: #PatternEditorMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #PatternEditorMorph
	instanceVariableNames: 'tracker cursorPosition font labelFont labelMonoFont editStep showCursor pauseBlinking selectionLineStart selectionTrackStart showFXColumns'
	classVariableNames: 'ClipboardBuffer FXColors TrackColors'
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'PatternEditorMorph class' category: #'Tracker-Morphic'!
PatternEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #TransportStatusMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #TransportStatusMorph
	instanceVariableNames: 'tracker font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'TransportStatusMorph class' category: #'Tracker-Morphic'!
TransportStatusMorph class
	instanceVariableNames: ''!

!classDefinition: #Instrument category: #'Tracker-Kernel'!
Object subclass: #Instrument
	instanceVariableNames: 'label patchMorph patch track trigger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Instrument class' category: #'Tracker-Kernel'!
Instrument class
	instanceVariableNames: ''!

!classDefinition: #Pattern category: #'Tracker-Kernel'!
Object subclass: #Pattern
	instanceVariableNames: 'blocks length lpb'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Pattern class' category: #'Tracker-Kernel'!
Pattern class
	instanceVariableNames: ''!

!classDefinition: #Track category: #'Tracker-Kernel'!
Object subclass: #Track
	instanceVariableNames: 'tracker muted soloed instrument ticksToTrigger trigger tuning'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Track class' category: #'Tracker-Kernel'!
Track class
	instanceVariableNames: ''!

!classDefinition: #Trigger category: #'Tracker-Kernel'!
Object subclass: #Trigger
	instanceVariableNames: 'instrument note velocity fx1 fx2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Trigger class' category: #'Tracker-Kernel'!
Trigger class
	instanceVariableNames: ''!

!classDefinition: #Tuning category: #'Tracker-Kernel'!
Object subclass: #Tuning
	instanceVariableNames: 'intervals label noteNames'
	classVariableNames: 'EDO12 Library'
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Tuning class' category: #'Tracker-Kernel'!
Tuning class
	instanceVariableNames: ''!


!Tracker commentStamp: '<historical>' prior: 0!
This is the model of a tracker. It holds a whole song or project (instruments, tracks and sequence of patterns, and global settings like BPM, swing, etc), and it also keeps track of runtime state (cursor position, playhead position, etc).!

!Instrument commentStamp: '<historical>' prior: 0!
An instrument has a patch of signal processing modules, and interprets tracker triggers by changing parameters of the modules in the associated patch. An instrument has an arbitrary patch, it can be a musical instrument like a synthesizer or it could also be a send effect (like a reverb) that processes the output of other instruments. Instruments are designed to be monophonic (they play one note at a time).!

!Pattern commentStamp: '<historical>' prior: 0!
A pattern is a grid of triggers (notes and effect commands). The columns represet tracks (or channels).!

!Track commentStamp: '<historical>' prior: 0!
A track can play one instrument at a time. It can be muted or soloed, and it can be set to an arbitrary tuning. If the tuning is other than the standard 12-EDO, it internally maps arbitrary notes to fractional 12-EDO notes (using floats instead of the standard MIDI 0 to 127 integers).!

!Trigger commentStamp: '<historical>' prior: 0!
A trigger is a cell in a pattern. It can contain any of the following (optional) parameters: an instrument number (1 to 255), a note to play (0 to 127 as MIDI, and -1 to represent note off), a velocity value (0 to 128), and two effect commands.

Effect commands:
∙ Cxy cut to velocity x (0 = minimum, F = maximum) after y/12 of a line
∙ Rxy retrigger every y/12 of a line, and change velocity according to x (see below)
∙ Gxx glide to note in xx/16 lines (01 = 1/16 of a line, 10 = 1 line, FF = almost 16 lines)
∙ Uxx / Dxx slide note up/down by xx/16 semitones (10 = 1 semitone)
∙ +xx / -xx finetune note up/down by xx/256 of a note depending on the selected tuning system
∙ Sxx set sample offset (00 = start, FF = end)
∙ <xy / >xy slide speed to x/16 in y lines and play backwards / forward (4 = half speed, 8 = normal, F = almost double)
∙ Lxx set instrument volume level to xx (00 = minimum, FF = maximum)
∙ Pxx set instrument pan (00 = left, 80 = center, FF = right)
∙ Ixx / Oxx adjust intrument volume level up/down
∙ Jxx / Kxx adjust instrument pan left/right
∙ 0xx to 9xx set control input
∙ Fxx set BPM to xx
∙ Qxx delay trigger by xx/256 of a line (00 = no delay, 01 = 1/256 of a line, FF = 1/256 before next line)
∙ Yxx set the probability of playing the trigger (00 = never, FF = always)

Retrigger velocity change:
∙ 0 no velocity change
∙ 1, 2, 3, 4, 5 reduce velocity by substracting 1/32, 1/16, 1/8, 1/4, 1/2
∙ 6, 7 scale down velocity multuplying by 2/3, 1/2
∙ 8 no velocity change
∙ 9, A, B, C, D increase velocity by adding 1/32, 1/16, 1/8, 1/4, 1/2
∙ E, F scale up velocity multiplying by 3/2, 2

Commands Rxy and Cxy interpret the nibble x as a time span in units of 1/12 of a line (0 = instantly, B = 1/12 before next line).
!

!Tuning commentStamp: '<historical>' prior: 0!
A tuning system is defined by a list of intervals from the root note, in cents of a semitone. The last interval is assumed to be the octave (normally 1200.0 cents, but not always). This is the same definition of tuning system that Scala uses. We also include optional names for the notes, in order to support special notation for some tunings such as 31-EDO.!

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
acceptButton
	^ self successColor! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
background
	^ Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
buttonColorFrom: paneColor
	^ paneColor adjustSaturation: -0.03 brightness: -0.1! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
buttonLabel
	^ Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
cancelButton
	^ self errorColor! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
errorColor
	^ Color lightRed! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
failureColor
	^ Color yellow duller! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
focusIndicator
	^ self textHighlight lighter! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
listMultiHighlightFocused: aBoolean
	^ (self listHighlightFocused: aBoolean) 
		adjustSaturation: 0.0 brightness: 0.15! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
paneBackgroundFrom: aColor
"	^ aColor adjustSaturation: 0 brightness: -0.7"
	^ aColor alphaMixed: 0.14 with: Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
scrollbarButtonColor
	^Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
scrollbarColor
	^ Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
scrollbarSliderShadowColor
	^Color black! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
shout
	"
	SHTextStylerST80 releaseClassCachedState
	"
	| green yellow pink blue lilac |
	"fav:"
	yellow := '#F6FA70'.
	blue := '#80DAFF'.
"	blue := '#62CDFF'."
	green := '#B4FF9F'.
	pink := '#FF8AAE'.
"	orange := '#FFCBA3'."
	lilac := '#ACBCFF'.
	"classic:"
"	yellow := '#FFFE82'.
	blue := '#9ED6FF'.
	green := '#ADFFD3'.
	purple := '#FF709C'."
	"fluo:"
"	green := '#A3F307'.
	yellow := '#e2f9e2'.
	purple := '#f50b86'.
	blue := '#05f9e2'."
	"neon:"
"	yellow := '#F6FA70'.
	blue := '#0079FF'.
	green := '#00DFA2'.
	purple := '#FF0060'."

	^ {
		#selector  				-> nil.
		#defaults 				-> #white.
		#undefined 				-> #white. "#(lightRed lighter lighter lighter lighter)."
		#comment 				-> #(lightGray lighter).
		#literals 				-> blue.
		#pseudoVariables 		-> pink. "and bold"
		#messages 				-> #(white).
		#incompleteMessages	-> #(white).
		#arguments 				-> yellow.
		#instVar 				-> lilac.
		#tempBar 				-> #(white darker).
"		#tempVars				-> '#F0FFC4'."
"		#tempVars				-> '#ADFFD3'."
		#tempVars				-> green.
"		#blockTemps				-> '#5CFFA7'."
		#blockTemps				-> green.
"		#block 					-> #(white)."
		#blockLevelZero		-> #(white).
		#blockLevelOne 		-> #(red muchLighter).
		#blockLevelTwo 		-> #(yellow muchLighter).
		#blockLevelThree 		-> #(green muchLighter).
		#blockLevelFour 		-> #(blue muchLighter).
		#blockLevelFive 		-> #(white darker).
		#blockLevelSix 		-> #(white darker).
		#blockLevelSeven 		-> #(white darker).
		#methodTags 			-> #(lightGray lighter). "#(hotPink)"
	}
	
"
		SHTextStylerST80 initialize
" 
! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
successColor
	^ Color lightGreen duller! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
text
	^ Color white! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 27/Jun/2026, 9:53:18 pm (UTC)'!
textAutoHighlight
"	^ (Color colorFrom: '#FF005C') alpha: 0.5"
"	^ (Color colorFrom: '#ff2f8e') alpha: 0.5"
	^ (Color colorFrom: '#FF4466') alpha: 0.5! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
textCursor
	^ Color white! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
textHighlight
	^ Color gray "Color r: 0.2 g: 0.35 b: 0.45"! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
unfocusedTextHighlightFrom: aColor
	^aColor adjustSaturation: 0.0 brightness: -0.08! !

!DarkerTheme methodsFor: 'colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
windowLabel
	^ `Color gray: 0.2`! !

!DarkerTheme methodsFor: 'icons' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
closeIcon
	^ self cancelIcon! !

!DarkerTheme methodsFor: 'initialization' stamp: 'Install-Tracker 4/Jun/2026, 9:16:51 am (UTC)'!
initialize
	super initialize.
"
	TTFontReader smalltalkAssignmentArrowGlyphCodePoint: 16r2B05.
	TTFontReader smalltalkReturnArrowGlyphCodePoint: 16r2B06.
	TrueTypeFontFamily readAllTrueTypeFontsIn: DirectoryEntry trueTypeFontsDirectory / 'DejaVu' / 'DejaVuSans'.
	
	TrueTypeFontFamily readAllTrueTypeFontsIn: DirectoryEntry trueTypeFontsDirectory / 'JetBrainsMono'.
	TrueTypeFontFamily readAllTrueTypeFontsIn: DirectoryEntry trueTypeFontsDirectory / 'Commodore 64'.

	PreferenceSet setDefaultFont: 'DejaVu Sans'.
	PreferenceSet defaultFontSize: 18.
"
	Preferences
		at: #focusFollowsMouse put: true;
		at: #showAssignmentAsLeftArrow put: true;
		at: #biggerCursors put: false;
		at: #dismissAllOnOptionClose put: true;
		at: #subPixelRenderColorFonts put: true;
		at: #italicsInShout put: true;
		at: #shoutInWorkspaces put: true;
		at: #optionalButtons put: false;
		at: #showAnnotations put: true.

	PreferenceSet defaultFontSize: 18.

	SHTextStylerST80 initialize! !

!DarkerTheme methodsFor: 'menu colors' stamp: 'len 17/Jun/2026, 10:50:11 am (UTC)'!
menu
	^ Color darkGray! !

!DarkerTheme methodsFor: 'menu colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
menuText
	^ Color white! !

!DarkerTheme methodsFor: 'menu colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
menuTitleBar
	^ self menu darker! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
buttonBorderWidth
	^ 1! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
buttonPaneHeight
	"Answer the user's preferred default height for button panes."

	^(Preferences at: #standardButtonFont) lineSpacing * 10 // 8! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
embossedButtonLabels
	^ false! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
embossedTitles
	^ false! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
fullScreenDeskMargin
	^ 0! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 18/Jun/2026, 2:04:07 pm (UTC)'!
layoutAdjusterThickness
	^ 4! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
roundButtons
	^ true! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
roundWindowCorners
	^ true! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
roundedButtonRadius
	^ 4! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
roundedWindowRadius
	^6! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
scrollbarShowButtons
	^ false! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
scrollbarThickness
	^ 16! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
useUniformColors
	^false! !

!DarkerTheme methodsFor: 'other options' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
windowBorderWidth
	^ 6! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
browser
	^ `(Color fromHexString: '#00FFAB') duller`
"	^ Color lightGreen duller"! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
changeList
	^ Color lightCyan duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
changeSorter
	^ Color lightCyan duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
debugger
	^ Color lightRed darker! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 20/Jun/2026, 11:19:46 am (UTC)'!
defaultButtonColor
	^ self defaultWindowColor lighter "lighter"! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
defaultWindowColor
	^ `Color hue: 212 chroma: 0.015 luminance: 0.35`! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
fileContentsBrowser
	^ Color tan! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
fileList
	^ Color lightMagenta duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
messageNames
	^ Color lightBlue duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
messageSet
	^ Color lightBlue duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
packageList
	^ Color tan! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
testRunner
	^ Color blue quiteWhiter duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
transcript
	^ Color lightOrange! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
versionsBrowser
	^ Color pink whiter duller! !

!DarkerTheme methodsFor: 'tool colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
workspace
	^ Color lightYellow duller! !

!DarkerTheme methodsFor: 'widget colors' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
textPane
	^ Color black! !

!DarkerTheme methodsFor: 'private - shout mappings' stamp: 'len 11/Apr/2026, 5:42:14 am (UTC)'!
generateShoutConfig

	| styles colors |
	styles := OrderedCollection new.
	colors := self shout as: Dictionary.

	{
		{self undefined. colors at: #undefined}.
		{self defaults . colors at: #defaults}.
		{self pseudoVariables . colors at: #pseudoVariables. #bold}.
		{self literals . colors at: #literals}.
		{self instVar . colors at: #instVar}.
		{self messages . colors at: #messages}.
		{self blockLevelZero . colors at: #blockLevelZero}.
		{self blockLevelOne . colors at: #blockLevelOne}.
		{self blockLevelTwo . colors at: #blockLevelTwo}.
		{self blockLevelThree . colors at: #blockLevelThree}.
		{self blockLevelFour . colors at: #blockLevelFour}.
		{self blockLevelFive . colors at: #blockLevelFive}.
		{self blockLevelSix . colors at: #blockLevelSix}.
		{self blockLevelSeven . colors at: #blockLevelSeven}.
		{self tempBar . colors at: #tempBar}.
		{self methodTags . colors at: #methodTags . #bold}.
		{self globals . colors at: #defaults . #bold}.
		{self incompleteMessages . colors at: #incompleteMessages . #underlined}.
		{self argumentTypes . colors at: #arguments . self italic}.
		{self symbols . colors at: #messages . #bold}.
		{self pattern . colors at: #selector . #bold}.
		{self ansiAssignment . nil . #bold}.
		{self assignment . nil . #bold}.
		{self return . nil . #bold}.
		{self tempVars . colors at: #tempVars . self italic}.
		{self blockTemps . colors at: #blockTemps . self italic}
	} do: [ :style |
		styles addAll:
			(style first
				collect: [ :category | | elements |
					elements _ style asOrderedCollection.
					elements at: 1 put: category.
					Array withAll: elements ])].

	"Miscellaneous remainder after factoring out commonality:"
	styles addAll: {
		{#unfinishedString . colors at: #undefined . #normal}.
		{#undefinedIdentifier . colors at: #undefined .#bold}.
		{#unfinishedComment . colors at: #undefined . self italic}.
		{#comment . colors at: #comment . self italic}.
		{#string . colors at: #literals . #normal}.
		{#literal . nil . self italic}.
		{#incompleteIdentifier . colors at: #incompleteMessages . {#italic. #underlined}}.
		{#classVar . colors at: #instVar . #bold}.
	}.

	^ styles! !

!DarkerTheme class methodsFor: 'as yet unclassified' stamp: 'len 11/Apr/2026, 5:49:05 am (UTC)'!
initialize
	super initialize.
	self beCurrent! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 10:27:25 am (UTC)'!
bpm
	^ bpm! !

!Tracker methodsFor: 'accessing' stamp: 'len 22/Jun/2026, 11:28:20 am (UTC)'!
bpm: anInteger
	bpm := anInteger.
	self triggerEvent: #bpmChanged: with: bpm! !

!Tracker methodsFor: 'accessing' stamp: 'len 5/Mar/2026, 8:36:52 am (UTC)'!
buses
	^ buses! !

!Tracker methodsFor: 'accessing' stamp: 'len 7/Jan/2026, 9:00:57 am (UTC)'!
followPlayhead
	^ followPlayhead! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 5:09:15 pm (UTC)'!
inputOctave
	^ inputOctave! !

!Tracker methodsFor: 'accessing' stamp: 'len 22/Jun/2026, 11:59:12 am (UTC)'!
inputOctave: anInteger
	inputOctave := anInteger.
	self triggerEvent: #inputOctaveChanged: with: inputOctave! !

!Tracker methodsFor: 'accessing' stamp: 'len 18/Feb/2026, 9:58:40 am (UTC)'!
instruments
	^ instruments! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026, 8:05:40 am (UTC)'!
label
	^ label! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026, 8:05:55 am (UTC)'!
label: aString
	label := aString.
	self triggerEvent: #labelChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026, 7:02:29 am (UTC)'!
level
	^ level! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026, 7:20:55 am (UTC)'!
level: aNumber
	level := aNumber min: 1.0 max: 0.0.
	self triggerEvent: #levelChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026, 3:29:37 pm (UTC)'!
peakLeft
	^ peakLeft := peakLeft * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026, 3:29:52 pm (UTC)'!
peakRight
	^ peakRight := peakRight * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026, 9:39:00 am (UTC)'!
sequence
	^ sequence! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026, 9:40:24 am (UTC)'!
sequencePatternNumbers
	| unique |
	unique := self sequenceUniquePatterns.
	^ sequence collect: [:each| unique indexOf: each key]! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026, 9:40:36 am (UTC)'!
sequenceUniquePatterns
	| answer |
	answer := OrderedCollection new.
	sequence do: [:each| (answer identityIncludes: each key) ifFalse: [answer add: each key]].
	^ answer! !

!Tracker methodsFor: 'accessing' stamp: 'len 9/Feb/2026, 6:41:17 pm (UTC)'!
swing
	^ swing! !

!Tracker methodsFor: 'accessing' stamp: 'len 22/Jun/2026, 11:28:24 am (UTC)'!
swing: aNumber
	swing := aNumber min: 1.0 max: 0.0.
	self triggerEvent: #swingChanged: with: swing! !

!Tracker methodsFor: 'accessing' stamp: 'len 14/Mar/2026, 11:24:45 am (UTC)'!
tpl
	"Answer the number of ticks per line."
	^ Module controlRate * 60.0 / (bpm * self playingPattern lpb)! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 2:18:23 pm (UTC)'!
tracks
	^ tracks! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026, 10:06:02 am (UTC)'!
cursorLine
	^ cursorLine! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026, 10:08:09 am (UTC)'!
cursorPattern
	^ cursorPattern! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026, 9:37:16 am (UTC)'!
cursorTrack
	^ cursorTrack! !

!Tracker methodsFor: 'cursor' stamp: 'len 22/Jun/2026, 11:59:35 am (UTC)'!
inputOctaveDown
	inputOctave > 0 ifFalse: [^ self].
	self inputOctave: inputOctave - 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 22/Jun/2026, 11:59:57 am (UTC)'!
inputOctaveUp
	inputOctave < 9 ifFalse: [^ self].
	self inputOctave: inputOctave + 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Mar/2026, 11:22:50 am (UTC)'!
moveCursorBeatDown
	self moveCursorLineDown: self selectedPattern lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Mar/2026, 11:22:59 am (UTC)'!
moveCursorBeatUp
	self moveCursorLineUp: self selectedPattern lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:47:39 pm (UTC)'!
moveCursorLineBottom
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorLine := self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026, 3:27:29 pm (UTC)'!
moveCursorLineDown
	self moveCursorLineDown: 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:47:25 pm (UTC)'!
moveCursorLineDown: anInteger
	| n |
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorLine := cursorLine + anInteger.
	n := self selectedPattern length.
	cursorLine > n ifTrue:
		[cursorPattern < sequence size
			ifTrue:
				[cursorPattern := cursorPattern + 1.
				cursorLine := cursorLine - n min: self selectedPattern length.
				self triggerEvent: #cursorChanged]
			ifFalse: [cursorLine := n]].
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:47:34 pm (UTC)'!
moveCursorLineTop
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorLine := 1.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026, 3:27:36 pm (UTC)'!
moveCursorLineUp
	self moveCursorLineUp: 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:47:20 pm (UTC)'!
moveCursorLineUp: anInteger
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorLine := cursorLine - anInteger.
	cursorLine < 1 ifTrue:
		[cursorPattern > 1
			ifTrue:
				[cursorPattern := cursorPattern - 1.
				cursorLine := self selectedPattern length + cursorLine max: 1.
				self triggerEvent: #cursorPatternChanged: with: cursorPattern]
			ifFalse: [cursorLine := 1]].
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:46:59 pm (UTC)'!
moveCursorPatternDown
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorPattern < sequence size ifFalse: [^ self].
	cursorPattern := cursorPattern + 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 13/Jun/2026, 5:47:06 pm (UTC)'!
moveCursorPatternUp
	self isPlaying ifTrue: [self followPlayhead: false].
	cursorPattern > 1 ifFalse: [^ self].
	cursorPattern := cursorPattern - 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Feb/2026, 12:54:17 pm (UTC)'!
moveCursorTrackLeft
	self setCursorTrack: cursorTrack - 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Feb/2026, 12:54:07 pm (UTC)'!
moveCursorTrackRight
	self setCursorTrack: cursorTrack + 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 22/Jun/2026, 9:27:57 am (UTC)'!
setCursorTrack: anInteger
	((anInteger between: 1 and: tracks size) and: [cursorTrack ~= anInteger]) ifFalse: [^ self].
	cursorTrack := anInteger.
	self triggerEvent: #cursorChanged.
	self triggerEvent: #selectedTrackTuningChanged: with: self selectedTrack tuning! !

!Tracker methodsFor: 'initialization' stamp: 'len 28/Jun/2026, 8:21:01 am (UTC)'!
initialize
	instruments := Dictionary new.
	tracks := #().
	sequence := #().
	bpm := 120.
	swing := 0.0.
	level := 1.0.
	inputOctave := 4.
	cursorPattern := 1.
	cursorLine := 1.
	cursorTrack := 1.
	playheadPattern := 1.
	playheadLine := 0.
	followPlayhead := true.
	loop := false.
	playStartPattern := 1.
	playStartLine := 1.
	anyTrackSoloed := false.
	buses := (Array new: 10) at: 1 put: Bus new; yourself. "the master bus at 0"
	peakLeft := 0.0.
	peakRight := 0.0.
	random := Random new.

	self insertTrack: 1.
	self insertPattern: 1.
	self selectedPattern track: 1 at: 1 position: 2 put: 1 "set instrument to 1"! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 9:20:33 am (UTC)'!
deletePattern
	sequence size > 1 ifFalse: [^ self]. "don't delete last pattern"
	self deletePattern: cursorPattern! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 9:23:15 am (UTC)'!
deletePattern: anInteger
	sequence := (sequence copyFrom: 1 to: anInteger - 1), (sequence copyFrom: anInteger + 1 to: sequence size).
	cursorPattern := cursorPattern min: sequence size.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026, 10:00:10 am (UTC)'!
deleteTrigger
	self selectedPattern track: cursorTrack at: cursorLine put: nil! !

!Tracker methodsFor: 'patterns' stamp: 'len 10/Jan/2026, 3:55:11 pm (UTC)'!
insertPattern
	self insertPattern: (cursorPattern := cursorPattern + 1).
	cursorLine := cursorLine min: self selectedPattern length! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 9:21:43 am (UTC)'!
insertPattern: anInteger
	| answer |
	answer := Pattern new: tracks size.
	sequence := (sequence copyFrom: 1 to: anInteger - 1), {answer -> (tracks collect: [:each| true])}, (sequence copyFrom: anInteger to: sequence size).
	self triggerEvent: #sequenceChanged.
	^ answer! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 12:37:25 pm (UTC)'!
insertSequence: anArray
	"Insert a list of patterns and masks after the current pattern."
	sequence := (sequence copyFrom: 1 to: cursorPattern), (anArray collect: [:each| each key -> each value copy]), (sequence copyFrom: cursorPattern + 1 to: sequence size).
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 18/Feb/2026, 9:58:40 am (UTC)'!
selectedInstrument
	^ instruments at: (self selectedInstrumentNumber ifNil: [^ nil]) ifAbsentPut: [Instrument new]! !

!Tracker methodsFor: 'patterns' stamp: 'len 18/Feb/2026, 9:41:16 am (UTC)'!
selectedInstrumentNumber
	^​ self selectedPattern track: cursorTrack instrumentAbove: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Feb/2026, 3:39:55 pm (UTC)'!
selectedInstrumentNumberAtTrack: trackIndex
	^​ self selectedPattern track: trackIndex instrumentAbove: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 9:22:40 am (UTC)'!
selectedPattern
	^ (sequence at: cursorPattern) key! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026, 9:55:05 am (UTC)'!
selectedTrigger
	^ self selectedPattern track: cursorTrack at: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Jan/2026, 9:40:37 am (UTC)'!
selectedTriggerAt: position put: value
	self selectedPattern track: cursorTrack at: cursorLine position: position put: value! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Jan/2026, 9:41:51 am (UTC)'!
selectedTriggerPut: aTrigger
	self selectedPattern track: cursorTrack at: cursorLine put: aTrigger! !

!Tracker methodsFor: 'patterns' stamp: 'len 22/Jan/2026, 7:16:23 am (UTC)'!
setSelectedPatternLength: anInteger
	self assert: self isPlaying not.
	self selectedPattern length: anInteger.
	cursorLine <= anInteger ifFalse: [cursorLine := anInteger. self triggerEvent: #cursorChanged].
	(playheadPattern = cursorPattern and: [playheadLine <= anInteger])
		ifFalse: [playheadLine := anInteger - 1. self triggerEvent: #playheadChanged]! !

!Tracker methodsFor: 'patterns' stamp: 'len 14/Jun/2026, 7:42:11 pm (UTC)'!
swapInstrument: anInteger with: anotherInteger
	| instrument1 instrument2 |
	anInteger = anotherInteger ifTrue: [^ self].
	instrument1 := instruments at: anInteger ifAbsent: [].
	instrument2 := instruments at: anotherInteger ifAbsent: [].
	self sequenceUniquePatterns do: [:each| each swapInstrument: anInteger with: anotherInteger].
	instrument1 ifNil: [instruments removeKey: anotherInteger ifAbsent: []] ifNotNil: [instruments at: anotherInteger put: instrument1].
	instrument2 ifNil: [instruments removeKey: anInteger ifAbsent: []] ifNotNil: [instruments at: anInteger put: instrument2].
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026, 9:23:00 am (UTC)'!
swapPattern: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	sequence swap: anInteger with: anotherInteger.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 22/Jun/2026, 10:49:25 am (UTC)'!
followPlayhead: aBoolean
	followPlayhead = aBoolean ifTrue: [^ self].
	followPlayhead := aBoolean.
	self triggerEvent: #followPlayheadChanged: with: aBoolean! !

!Tracker methodsFor: 'playing' stamp: 'len 2/Jan/2026, 8:12:17 am (UTC)'!
isPlaying
	^ AudioPlayer isPlaying: self! !

!Tracker methodsFor: 'playing' stamp: 'len 13/Jun/2026, 5:38:02 pm (UTC)'!
isPlayingFollowingPlayhead
	^ followPlayhead and: [self isPlaying]! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026, 9:29:54 am (UTC)'!
loop: aBoolean
	loop := aBoolean! !

!Tracker methodsFor: 'playing' stamp: 'len 28/Jun/2026, 8:23:14 am (UTC)'!
play
	self isPlaying ifTrue: [^ self].
	playStartPattern := 1.
	playStartLine := 1.
	playEndPattern := sequence size.
	playEndLine := sequence last key length.
	playingMask := nil.
	playheadPattern := cursorPattern.
	playheadLine := cursorLine - 1.
	ticksToLine := 0.
	buses from: 2 to: buses size put: nil. "remove all buses except the master bus"
	"if playing from the begining, reset all modules (for reproducibility):"
	(playheadPattern = 1 and: [playheadLine = 0]) ifTrue: [instruments do: [:each| each reset]].
	Smalltalk garbageCollect. "just in case, to make a GC less likely during playback"
	AudioPlayer startPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 28/Jun/2026, 8:22:48 am (UTC)'!
playFrom: startPattern line: startLine to: endPattern line: endLine tracks: tracksToPlay
	self isPlaying ifTrue: [^ self].
	playStartPattern := startPattern.
	playStartLine := startLine.
	playEndPattern := endPattern.
	playEndLine := endLine.
	playingMask := tracksToPlay ifNotNil: [(1 to: tracks size) collect: [:i| tracksToPlay includes: i]].
	playheadPattern := playStartPattern.
	playheadLine := playStartLine - 1.
	ticksToLine := 0.
	buses from: 2 to: buses size put: nil. "remove all buses except the master bus"
	AudioPlayer startPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 13/Jun/2026, 4:36:52 pm (UTC)'!
playLine
	| pattern mask ticksPerLine ticksSwing |
	"Advance playhead:"
	playheadLine := playheadLine + 1.
	(playheadPattern = playEndPattern and: [playheadLine > playEndLine]) ifTrue:
		[loop ifTrue: [playheadPattern := playStartPattern. playheadLine := playStartLine] ifFalse: [playheadLine := playheadLine - 1. ^ self]].
	playheadLine > (sequence at: playheadPattern) key length ifTrue:
		[playheadPattern < playEndPattern
			ifTrue: [playheadLine := 1. playheadPattern := playheadPattern + 1]
			ifFalse: [loop ifTrue: [playheadPattern := playStartPattern. playheadLine := playStartLine] ifFalse: [^ self]]].
	"Notify playhead change and update cursor if following playhead:"
	self triggerEvent: #playheadChanged.
	followPlayhead ifTrue:
		[cursorPattern := playheadPattern.
		cursorLine := playheadLine.
		self triggerEvent: #cursorChanged].
	"Play current line:"
	pattern := self playingPattern.
	mask := self playingMask.
	tracks withIndexDo: [:track :i|
		| p |
		track forgetScheduledTrigger. "this prevents commands like Rxy and Cxy from bleeding into the next line"
		(mask at: i) ifTrue: [(pattern track: i at: playheadLine) ifNotNil: [:aTrigger|
			((p := aTrigger probability) = 1.0 or: [random next <= p]) ifTrue: [track scheduleTrigger: aTrigger]]]].
	ticksPerLine := self tpl.
	ticksToLine := ticksToLine + ticksPerLine.
	ticksSwing := ticksPerLine * 0.333 * swing squared.
	(playheadLine \\ pattern lpb) even ifTrue: [ticksSwing := ticksSwing negated].
	ticksToLine := ticksToLine + ticksSwing! !

!Tracker methodsFor: 'playing' stamp: 'len 28/Jun/2026, 8:22:09 am (UTC)'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	| blockSize i masterGain mask masterBus |
	blockSize := Module blockSize.
	i := startIndex.
	self assert: n \\ blockSize = 0.
	masterGain := level * 0.25. "leave -12 dB of headroom"
	mask := self playingMask.
	masterBus := buses at: 1.
	n // blockSize timesRepeat:
		[ticksToLine > 0 ifTrue: [ticksToLine := ticksToLine - 1] ifFalse: [self playLine. mask := self playingMask].
		buses do: [:each| each ifNotNil: [each clear]].
		mask withIndexDo: [:enabled :trackIndex| enabled ifTrue: [(tracks at: trackIndex) tick]].
		masterBus leftBuffer *= masterGain.
		masterBus rightBuffer *= masterGain.
		peakLeft := peakLeft max: masterBus leftBuffer peak.
		peakRight := peakRight max: masterBus rightBuffer peak.
		masterBus mixInto: anAudioBuffer startingAt: i.
		i := i + blockSize].
	^ n! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026, 10:14:07 am (UTC)'!
playheadLine
	^ playheadLine! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026, 10:13:55 am (UTC)'!
playheadPattern
	^ playheadPattern! !

!Tracker methodsFor: 'playing' stamp: 'len 8/Mar/2026, 12:19:48 pm (UTC)'!
playingMask
	^ playingMask ifNil: [(sequence at: playheadPattern) value]! !

!Tracker methodsFor: 'playing' stamp: 'len 21/Feb/2026, 9:27:08 am (UTC)'!
playingPattern
	^ (sequence at: playheadPattern) key! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026, 10:22:44 am (UTC)'!
stop
	self isPlaying ifFalse: [^ self].
	AudioPlayer stopPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 13/Jun/2026, 5:45:20 pm (UTC)'!
toggleFollowPlayhead
	self followPlayhead: followPlayhead not! !

!Tracker methodsFor: 'serialization' stamp: 'len 9/Jun/2026, 4:25:53 pm (UTC)'!
asJsonWithBuffers: bufferList
	| uniquePatterns |
	uniquePatterns := self sequenceUniquePatterns.
	^ OrderedDictionary new
		at: #bpm put: bpm;
		at: #swing put: swing;
		at: #level put: level;
		at: #tracks put: (tracks collect: [:each| each asJson]);
		at: #sequence put: (self sequence collect: [:each|
			OrderedDictionary new
				at: #pattern put: (uniquePatterns indexOf: each key);
				at: #mask put: each value;
				yourself]);
		at: #patterns put: (uniquePatterns collect: [:each| each asJson]);
		at: #instruments put: (instruments collect: [:each| each asJsonWithBuffers: bufferList]);
		yourself! !

!Tracker methodsFor: 'serialization' stamp: 'len 15/Jun/2026, 3:46:45 pm (UTC)'!
readFrom: aStream
	| numberOfBuffers bufferList json |
	aStream useBytes.
	numberOfBuffers := aStream nextInt32BigEndian: true.
	bufferList := (1 to: numberOfBuffers) collect: [:i| Float32Array newFromStream: aStream].
	aStream useByteCharacters.
	json := Json readFrom: aStream.
	^ self readFromJson: json buffers: bufferList! !

!Tracker methodsFor: 'serialization' stamp: 'len 9/Jun/2026, 4:30:40 pm (UTC)'!
readFromJson: json buffers: bufferList
	| uniquePatterns tracksJson |
	bpm := json at: #bpm.
	swing := json at: #swing.
	level := json at: #level.
	cursorPattern := 1.
	cursorLine := 1.
	cursorTrack := 1.
	playheadPattern := 1.
	playheadLine := 0.
	sequence := #().
	tracks := #().
	(tracksJson := json at: #tracks) isInteger
		ifTrue: [tracksJson timesRepeat: [self addTrack]]
		ifFalse: [tracksJson size timesRepeat: [self addTrack].
			tracksJson with: tracks do: [:trackJson :track| track readFromJson: trackJson]].
	anyTrackSoloed := tracks anySatisfy: [:any| any soloed].
	uniquePatterns := (json at: #patterns) collect: [:each| Pattern new readFromJson: each].
	sequence := (json at: #sequence) collect: [:each| (uniquePatterns at: (each at: #pattern)) -> (each at: #mask)].
	instruments := Dictionary new.
	(json at: #instruments) keysAndValuesDo: [:key :value| instruments at: key asNumber put: (Instrument new readFromJson: value buffers: bufferList)]! !

!Tracker methodsFor: 'serialization' stamp: 'len 9/Feb/2026, 9:22:08 am (UTC)'!
writeOn: aStream
	| bufferList json |
	bufferList := OrderedCollection new.
	json := self asJsonWithBuffers: bufferList.
	aStream nextInt32Put: bufferList size bigEndian: true.
	bufferList do: [:each| each writeOn: aStream].
	json jsonWriteOn: aStream! !

!Tracker methodsFor: 'tracks' stamp: 'len 9/Jun/2026, 4:19:44 pm (UTC)'!
addTrack
	^ self insertTrack: tracks size + 1! !

!Tracker methodsFor: 'tracks' stamp: 'len 9/Jan/2026, 8:08:32 am (UTC)'!
anyTrackSoloed
	^ anyTrackSoloed! !

!Tracker methodsFor: 'tracks' stamp: 'len 14/Jan/2026, 5:49:04 am (UTC)'!
deleteTrack
	tracks size > 1 ifFalse: [^ self]. "don't delete last track"
	self deleteTrack: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 22/Feb/2026, 12:53:48 pm (UTC)'!
deleteTrack: anInteger
	tracks := (tracks copyFrom: 1 to: anInteger - 1), (tracks copyFrom: anInteger + 1 to: tracks size).
	self sequenceUniquePatterns do: [:each| each deleteTrack: anInteger].
	sequence := sequence collect: [:each| each key -> ((each value copyFrom: 1 to: anInteger - 1), (each value copyFrom: anInteger + 1 to: each value size))].
	self setCursorTrack: (cursorTrack min: tracks size).
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 10/Jun/2026, 10:05:33 am (UTC)'!
insertTrack: anInteger
	| answer |
	answer := Track new setTracker: self.
	tracks := (tracks copyFrom: 1 to: anInteger - 1), {answer}, (tracks copyFrom: anInteger to: tracks size).
	self sequenceUniquePatterns do: [:each| each insertTrack: anInteger].
	sequence := sequence collect: [:each| each key -> ((each value copyFrom: 1 to: anInteger - 1), {true}, (each value copyFrom: anInteger to: each value size))].
	self triggerEvent: #tracksChanged.
	^ answer! !

!Tracker methodsFor: 'tracks' stamp: 'len 21/Feb/2026, 9:29:22 am (UTC)'!
selectedMask
	^ (sequence at: cursorPattern) value! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026, 8:35:44 am (UTC)'!
selectedTrack
	^ tracks at: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 22/Jun/2026, 9:21:56 am (UTC)'!
setSelectedTrackTuning: aTuningOrNil
	self selectedTrack tuning: aTuningOrNil.
	self triggerEvent: #selectedTrackTuningChanged: with: self selectedTrack tuning! !

!Tracker methodsFor: 'tracks' stamp: 'len 10/Jun/2026, 10:05:54 am (UTC)'!
swapTrack: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	tracks swap: anInteger with: anotherInteger.
	"swap pattern blocks:"
	self sequenceUniquePatterns do: [:each| each swapTrack: anInteger with: anotherInteger].
	"swap masks:"
	sequence do: [:each| each value swap: anInteger with: anotherInteger].
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026, 8:33:12 am (UTC)'!
toggleTrackMask
	self toggleTrackMask: cursorTrack at: cursorPattern! !

!Tracker methodsFor: 'tracks' stamp: 'len 21/Feb/2026, 9:30:16 am (UTC)'!
toggleTrackMask: trackIndex at: patternIndex
	| mask |
	mask := (sequence at: patternIndex) value.
	mask at: trackIndex put: (mask at: trackIndex) not.
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026, 9:42:36 am (UTC)'!
toggleTrackMute
	self toggleTrackMute: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 31/Dec/2025, 3:37:29 pm (UTC)'!
toggleTrackMute: trackIndex
	| track |
	track := tracks at: trackIndex.
	track muted: track muted not.
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026, 9:42:28 am (UTC)'!
toggleTrackSolo
	self toggleTrackSolo: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 9/Jan/2026, 8:08:18 am (UTC)'!
toggleTrackSolo: trackIndex
	| track |
	track := tracks at: trackIndex.
	track soloed: track soloed not.
	anyTrackSoloed := tracks anySatisfy: [:any| any soloed].
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'ui' stamp: 'len 9/Apr/2026, 11:50:20 am (UTC)'!
open
	^ TrackerWindow open: self label: label! !

!Tracker class methodsFor: 'as yet unclassified' stamp: 'len 5/Apr/2026, 10:24:41 am (UTC)'!
fileReaderServicesForFileEntry: filename suffix: suffix
	suffix = 'song' ifTrue: [^ {self serviceLoadSong}].
	^ #()! !

!Tracker class methodsFor: 'as yet unclassified' stamp: 'len 9/Apr/2026, 11:47:00 am (UTC)'!
fromFileEntry: aFileEntry
	| answer |
	answer := aFileEntry readStreamDo: [:s| self new readFrom: s binary].
	(aFileEntry name endsWith: '.song') ifTrue: [answer label: (aFileEntry name allButLast: 5)].
	^ answer! !

!Tracker class methodsFor: 'as yet unclassified' stamp: 'len 9/Apr/2026, 12:22:28 pm (UTC)'!
openFromFileEntry: aFileEntry
	^​ (self fromFileEntry: aFileEntry) open fitAllPatchesToInstrumentEditorBounds! !

!Tracker class methodsFor: 'as yet unclassified' stamp: 'len 9/Apr/2026, 11:48:19 am (UTC)'!
serviceLoadSong
	^ (SimpleServiceEntry
		provider: self
		label: 'open in tracker'
		selector: #openFromFileEntry:
		description:'open in tracker'
		buttonLabel: 'open in tracker') argumentGetter: [:fileList| fileList selectedFileEntry]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 27/Jun/2026, 9:31:01 pm (UTC)'!
fitAllPatchesToInstrumentEditorBounds
	| bounds |
	layoutMorph layoutSubmorphs.
	bounds := instrumentEditor localBounds insetBy: 8.
	model instruments do: [:each| each patchMorph fitTo: bounds]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 3/Jun/2026, 12:00:30 pm (UTC)'!
openProject
	model isPlaying ifTrue: [model stop].
	self request: 'Project name' initialAnswer: '' do: [:name|
		(self class package packageDirectory / 'data' / 'projects' // (name, '.song')) readStreamDo: [:s| model readFrom: s binary].
		model label: name.
		self setLabel: name.
		self fitAllPatchesToInstrumentEditorBounds.
		model triggerEvent: #cursorChanged]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 9/Apr/2026, 8:02:54 am (UTC)'!
saveProject
	self request: 'Project name' initialAnswer: (model label ifNil: '') do: [:newName|
		model label: newName.
		(self class package packageDirectory / 'data' / 'projects' // (newName, '.song')) writeStreamDo: [:s| model writeOn: s].
		self setLabel: newName]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 23/Jun/2026, 3:46:18 pm (UTC)'!
setInstrumentEditorMode: editorMode
	instrumentEditor visible = editorMode ifTrue: [^ self].
	instrumentEditor visible: editorMode.
	adjuster visible: editorMode.
	instrumentRack visible: editorMode not.
	editorMode ifFalse: [instrumentRack forceUpdate]. "in case the order of the modules changed"
	"why need to do this? otherwise the lower pane doesn't expand properly when going to the smaller instrument rack:"
	lowerPane delete.
	layoutMorph addMorph: lowerPane proportionalHeight: (editorMode ifTrue: [0.5] ifFalse: [1.0]).
	self triggerEvent: #instrumentEditorModeChanged: with: editorMode! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 23/Jun/2026, 3:46:55 pm (UTC)'!
toggleInstrumentRackOrEditor
	self setInstrumentEditorMode: instrumentEditor visible not! !

!TrackerWindow methodsFor: 'events' stamp: 'len 25/Jun/2026, 4:52:47 pm (UTC)'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $o ifTrue: [self openProject. ^ true].
	anEvent keyCharacter = $s ifTrue: [self saveProject. ^ true].
	anEvent keyCharacter = $e ifTrue: "switch between instrument editor and rack"
		[| oldKeyboardFocus focusedModule |
		anEvent hand deleteBalloon. "because it doesn't disappear by itself, it's a bug in morphic"
		oldKeyboardFocus := anEvent hand keyboardFocus.
		focusedModule := (oldKeyboardFocus ownerChain detect: [:one| one isKindOf: RackableMorph] ifNone: []) ifNotNil: [:aRackableMorph| aRackableMorph model].
		self toggleInstrumentRackOrEditor.
		anEvent hand newKeyboardFocus: ((oldKeyboardFocus notNil and: [oldKeyboardFocus isInWorld]) ifTrue: [oldKeyboardFocus] ifFalse: [self]).
		layoutMorph layoutSubmorphs.
		focusedModule ifNotNil: [instrumentEditor focusOnModule: focusedModule].
		^ true].
	anEvent keyCharacter = $d ifTrue: [instrumentEditor duplicateInstrument. ^ true].
	anEvent keyCharacter = $r ifTrue: [instrumentEditor renameInstrument. ^ true].
"	anEvent keyCharacter = $e ifTrue: [instrumentEditor exportInstrument. ^ true].
	anEvent keyCharacter = $i ifTrue: [instrumentEditor importInstrument. ^ true]."
	anEvent keyCharacter = $] ifTrue: [model inputOctaveUp. ^ true].
	anEvent keyCharacter = $[ ifTrue: [model inputOctaveDown. ^ true].
	anEvent keyCharacter = $n ifTrue: [model insertPattern. ^ true].
	anEvent keyCharacter = $N ifTrue: [model deletePattern. ^ true].
	anEvent keyCharacter = $t ifTrue: [model addTrack. ^ true].
	anEvent keyCharacter = $T ifTrue: [model deleteTrack. ^ true].
	anEvent keyCharacter = $m ifTrue: [model toggleTrackMask. ^ true].
	anEvent keyCharacter isDigit ifTrue:
		[model setCursorTrack: ('1234567890' indexOf: anEvent keyCharacter).
		^ true].
	^ false! !

!TrackerWindow methodsFor: 'events' stamp: 'len 21/Jun/2026, 2:42:50 pm (UTC)'!
keyStroke: anEvent
	anEvent isSpace ifTrue: [model isPlaying ifTrue: [model stop] ifFalse: [model loop: anEvent secondaryModifierPressed not; followPlayhead: true; play]. anEvent wasHandled: true. ^ self].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	^ super keyStroke: anEvent! !

!TrackerWindow methodsFor: 'initialization' stamp: 'len 29/Jun/2026, 5:38:58 pm (UTC)'!
buildMorphicWindow
	| lowerLeftPane sequencerScroller patternEditorScroller bar transport bpmControl swingControl barFont |
	instrumentEditor := InstrumentEditorMorph new setTracker: model.
	instrumentRack := InstrumentRackMorph new setTracker: model.
	meter := MultitrackMeterMorph new setTracker: model.
	arranger := ArrangerMorph new setTracker: model.
	patternEditor := PatternEditorMorph new setTracker: model.
	model when: #cursorChanged send: #ensureCursorVisible to: self.
	barFont := FontFamily defaultFamilyPointSize: 16.
	bar := ControlPanel newRow gap: 24; axisEdgeWeight: 0.0; color: Color darkGray.
	transport := TransportStatusMorph new setTracker: model.
	bar addMorph: transport.
	(bpmControl := Control min: 10.0 max: 360.0 value: 120.0)
		label: 'Beats per minute';
		printer: [:x| (x printStringFractionDigits: 1), ' BPM'];
		fineStep: 0.1 / 255.0;
		baseValue: model bpm;
		receive: #baseValue: from: model when: #bpmChanged:;
		when: #changed: send: #bpm: to: model.
	bar addMorph: (TextualControlMorph new control: bpmControl).
	(swingControl := Control min: 0.0 max: 1.0 value: 0.0)
		label: 'Swing';
		printer: [:x| '⇄ ', (x * 100) rounded printString, '%'];
		baseValue: model swing;
		receive: #baseValue: from: model when: #swingChanged:;
		when: #changed: send: #swing: to: model.
	bar addMorph: (TextualControlMorph new control: swingControl).
	bar addMorph: (ToggleButtonMorph new font: barFont; state: model followPlayhead; when: #changed: send: #followPlayhead: to: model; receive: #state: from: model when: #followPlayheadChanged:; "label: '⇩';" icon: (IconMorph new viewBox: (0 @ -960 extent: 960 @ 960); pathData: 'M233.33-161.33 80-315.33l46.67-46L200-290v-470.67h66.67V-290l72.66-71.33 46.67 46-152.67 154Zm252.67-38V-266h394v66.67H486Zm0-247.34v-66.66h394v66.66H486ZM486-694v-66.67h394V-694H486Z'); setBalloonText: 'Follow playhead').
	bar addMorph: (PulldownListMorph new
		options: (0 to: 9);
		state: model inputOctave;
		labels: ((0 to: 9) collect: [:each| 'C', each printString]);
		when: #changed: send: #inputOctave: to: model;
		receive: #state: from: model when: #inputOctaveChanged:;
		setBalloonText: 'Octave for keyboard input').
	bar addMorph: (PulldownListMorph new
		options: Tuning library;
		state: model selectedTrack tuning;
		when: #changed: send: #setSelectedTrackTuning: to: model;
		receive: #state: from: model when: #selectedTrackTuningChanged:;
"		receive: #options: from: Tuning when: #tuningsLibraryChanged:;"
		setBalloonText: 'Tuning system').
	bar addMorph: (ToggleButtonMorph new font: barFont; state: false; when: #changed: send: #setInstrumentEditorMode: to: self; receive: #state: from: self when: #instrumentEditorModeChanged:; icon: (IconMorph new viewBox: (0 @ -960 extent: 960 @ 960); pathData: 'M602.67-120v-123.33h-156V-650H358v126.67H80V-840h278v123.33h244.67V-840H880v316.67H602.67V-650h-89.34v340h89.34v-126.67H880V-120H602.67Zm-456-653.33V-590v-183.33ZM669.33-370v183.33V-370Zm0-403.33V-590v-183.33Zm0 183.33h144v-183.33h-144V-590Zm0 403.33h144V-370h-144v183.33ZM146.67-590h144.66v-183.33H146.67V-590Z'); setBalloonText: 'Instrument editor mode').
	bar addMorph: (ToggleButtonMorph new font: barFont; state: false; when: #changed: send: #setGeneratorsMode: to: self; receive: #state: from: self when: #generatorsModeChanged:; icon: (IconMorph new viewBox: (0 @ -960 extent: 960 @ 960); pathData: 'M280-240v-480h80v480h-80ZM440-80v-800h80v800h-80ZM120-400v-160h80v160h-80Zm480 160v-480h80v480h-80Zm160-160v-160h80v160h-80Z'); setBalloonText: 'Generators mode').
	bar addMorph: (ToggleButtonMorph new font: barFont; state: false; when: #changed: send: #setMixerMode: to: self; receive: #state: from: self when: #mixerModeChanged:; icon: (IconMorph new viewBox: (0 @ -960 extent: 960 @ 960); pathData: 'M200-160v-280h-80v-80h240v80h-80v280h-80Zm0-440v-200h80v200h-80Zm160 0v-80h80v-120h80v120h80v80H360Zm80 440v-360h80v360h-80Zm240 0v-120h-80v-80h240v80h-80v120h-80Zm0-280v-360h80v360h-80Z'); setBalloonText: 'Mixer mode').
	lowerPane := LinearLayoutMorph newRow color: Color transparent.
	lowerLeftPane := LinearLayoutMorph newColumn color: Color transparent.
	sequencerScroller := ScrollerMorph new vertical: true; scrollable: arranger.
	patternEditorScroller := ScrollerMorph new horizontal: true; scrollable: patternEditor.
	lowerLeftPane
		addMorph: meter layoutSpec: LayoutSizeSpec new useMorphHeight;
		addMorph: sequencerScroller layoutSpec: LayoutSizeSpec new.
	lowerPane
		addMorph: lowerLeftPane layoutSpec: (LayoutSizeSpec new useMorphWidth);
		addMorph: patternEditorScroller layoutSpec: LayoutSizeSpec new.
	layoutMorph
		addMorph: bar fixedHeight: 36;
		addMorph: instrumentRack fixedHeight: 180.
	layoutMorph addMorph: instrumentEditor proportionalHeight: 0.5.
	adjuster := layoutMorph addAdjusterMorph submorphs first.
	layoutMorph addMorph: lowerPane "proportionalHeight: 1.0".
	instrumentEditor hide.
	adjuster hide! !

!TrackerWindow methodsFor: 'initialization' stamp: 'len 9/Apr/2026, 4:59:23 pm (UTC)'!
defaultColor
	^ Color black! !

!TrackerWindow methodsFor: 'initialization' stamp: 'len 26/Jun/2026, 10:38:44 am (UTC)'!
outOfWorld: aWorld
	model stop.
	super outOfWorld: aWorld! !

!TrackerWindow methodsFor: 'private' stamp: 'len 15/Jun/2026, 4:22:24 pm (UTC)'!
ensureCursorVisible
	patternEditor owner scrollToMakeVisible: (patternEditor externalizeBoundingRectOf: patternEditor activeBounds).
	arranger owner scrollToMakeVisible: (arranger externalizeBoundingRectOf: arranger activeBounds)! !

!TrackerWindow methodsFor: 'GUI building' stamp: 'len 18/Jun/2026, 2:37:08 pm (UTC)'!
windowColor
	^ Color gray! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 20/Jun/2026, 8:31:27 pm (UTC)'!
duplicateInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Duplicate to instrument number' initialAnswer: '' verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker instruments at: s asNumber put: instrument copy]! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:26:06 am (UTC)'!
exportInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: newName.
		(self class package packageDirectory / 'data' / 'projects' // (newName, '.patch')) writeStreamDo: [:s| instrument writeOn: s].
		tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:25:59 am (UTC)'!
importInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: nil.
		(self class package packageDirectory / 'data' / 'projects' // (newName, '.patch')) readStreamDo: [:s| instrument readFrom: s binary].
		instrument label: newName.
		self fitPatchToBounds.
		tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 20/Jun/2026, 8:31:27 pm (UTC)'!
moveInstrumentDown
	tracker selectedInstrumentNumber ifNotNil: [:anInteger| anInteger > 1 ifTrue: [tracker swapInstrument: anInteger with: anInteger - 1]]! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 20/Jun/2026, 8:31:27 pm (UTC)'!
moveInstrumentUp
	tracker selectedInstrumentNumber ifNotNil: [:anInteger| anInteger < 255 ifTrue: [tracker swapInstrument: anInteger with: anInteger + 1]]! !

!InstrumentRackMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:25:45 am (UTC)'!
renameInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName| instrument label: newName. tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentRackMorph methodsFor: 'events' stamp: 'len 20/Jun/2026, 8:33:00 pm (UTC)'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $i ifTrue: [tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument inspect]. ^ true].
	^ false! !

!InstrumentRackMorph methodsFor: 'events' stamp: 'len 20/Jun/2026, 8:31:27 pm (UTC)'!
handleOptionHotkey: anEvent
	anEvent shiftPressed ifTrue:
		[anEvent isArrowDown ifTrue: [tracker moveInstrumentDown. ^ true].
		anEvent isArrowUp ifTrue: [tracker moveInstrumentUp. ^ true]].
	^ false! !

!InstrumentRackMorph methodsFor: 'events' stamp: 'len 20/Jun/2026, 8:44:35 pm (UTC)'!
keyStroke: anEvent
	| c i |
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	(anEvent secondaryModifierPressed and: [self handleOptionHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument track ifNotNil: [:aTrack|
			anEvent primaryModifierPressed ifTrue: [tracker toggleTrackSolo: (tracker tracks indexOf: aTrack)] ifFalse: [tracker toggleTrackMute: (tracker tracks indexOf: aTrack)]]].
		^ self].
	anEvent anyModifierKeyPressed ifFalse:
		[c := anEvent keyCharacter.
		c = $a ifTrue: [anEvent wasHandled: true. tracker selectedInstrument ifNotNil: [:anInstument| anInstument noteOff]. ^ self].
		(i := 'zsxdcvgbhnjmq2w3er5t6y7ui9o0p' indexOf: c) > 0 ifTrue:
			[anEvent wasHandled: true. tracker selectedInstrument ifNotNil: [:anInstument| anInstument noteOn: tracker selectedTrack inputCenterKey + i - 1]. ^ self]].
	^ super keyStroke: anEvent! !

!InstrumentRackMorph methodsFor: 'initialization' stamp: 'len 20/Jun/2026, 8:48:17 pm (UTC)'!
initialize
	super initialize.
	self horizontal: true.
	self scrollable: RackMorph new! !

!InstrumentRackMorph methodsFor: 'initialization' stamp: 'len 26/Jun/2026, 6:30:24 pm (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	aTracker
		when: #cursorChanged send: #update to: self;
		when: #tracksChanged send: #update to: self.
	self update! !

!InstrumentRackMorph methodsFor: 'private' stamp: 'len 28/Jun/2026, 9:10:18 am (UTC)'!
forceUpdate
	scrollable patch: tracker selectedInstrument patch; update! !

!InstrumentRackMorph methodsFor: 'private' stamp: 'len 21/Jun/2026, 11:38:20 am (UTC)'!
rack
	^ scrollable! !

!InstrumentRackMorph methodsFor: 'private' stamp: 'len 28/Jun/2026, 9:10:41 am (UTC)'!
update
	scrollable patch: (tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument patch])! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 8/Jun/2026, 8:28:14 am (UTC)'!
clipboardCopy
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [ClipboardBuffer := each model copy. ^ self]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 8/Jun/2026, 8:28:18 am (UTC)'!
clipboardCut
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [ClipboardBuffer := each model copy. each delete. ^ self]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 28/Jun/2026, 10:50:15 am (UTC)'!
clipboardPaste
	ClipboardBuffer ifNil: [^ self].
	self patchMorph ifNotNil: [:aPatchMorph|
		aPatchMorph addMorph: ClipboardBuffer copy patchable position: ((aPatchMorph internalizeFromWorld: self activeHand morphPosition))]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 19/Apr/2026, 3:52:50 pm (UTC)'!
duplicateInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Duplicate to instrument number' initialAnswer: '' verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker instruments at: s asNumber put: instrument copy]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:26:14 am (UTC)'!
exportInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: newName.
		(self class package packageDirectory / 'data' / 'projects' // (newName, '.patch')) writeStreamDo: [:s| instrument writeOn: s].
		tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 28/Jun/2026, 10:50:22 am (UTC)'!
fitPatchToBounds
	self patchMorph ifNotNil: [:aPatchMorph| aPatchMorph fitTo: (self localBounds insetBy: 8)]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 28/Jun/2026, 10:50:33 am (UTC)'!
focusOnModule: aModule
	| patchMorph patchable boundsInPatch boundsInZoomer zoomerCenter |
	patchMorph := self patchMorph ifNil: [^ self].
	patchable := patchMorph submorphs detect: [:one| (one isKindOf: PatchableMorph) and: [one model == aModule]] ifNone: [^ self].
	patchable comeToFront.
	boundsInPatch := patchable fullBoundsInOwner.
	boundsInZoomer := patchMorph externalizeBoundingRectOf: boundsInPatch.
	zoomerCenter := extent / 2.0.
	patchMorph translateBy: zoomerCenter - boundsInZoomer center.
	"patchMorph scaleBy: ((extent x / boundsInZoomer width asFloat min: extent y / boundsInZoomer height asFloat) * 0.3) around: zoomerCenter"! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:26:20 am (UTC)'!
importInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: nil.
		(self class package packageDirectory / 'data' / 'projects' // (newName, '.patch')) readStreamDo: [:s| instrument readFrom: s binary].
		instrument label: newName.
		self fitPatchToBounds.
		tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:20:07 pm (UTC)'!
moveInstrumentDown
	tracker selectedInstrumentNumber ifNotNil: [:anInteger| anInteger > 1 ifTrue: [tracker swapInstrument: anInteger with: anInteger - 1]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:20:46 pm (UTC)'!
moveInstrumentUp
	tracker selectedInstrumentNumber ifNotNil: [:anInteger| anInteger < 255 ifTrue: [tracker swapInstrument: anInteger with: anInteger + 1]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 21/Jun/2026, 7:26:25 am (UTC)'!
renameInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName| instrument label: newName. tracker triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'drawing' stamp: 'len 6/Apr/2026, 12:01:18 pm (UTC)'!
drawOn: aCanvas
"	self patch ifNotNil: [aCanvas frameRectangle: self patch fullBoundsInOwner borderWidth: 2 color: Color white]. "! !

!InstrumentEditorMorph methodsFor: 'events' stamp: 'len 18/Jun/2026, 8:40:20 am (UTC)'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	anEvent keyCharacter = $i ifTrue: [tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument inspect]. ^ true].
	^ false! !

!InstrumentEditorMorph methodsFor: 'events' stamp: 'len 15/Jun/2026, 4:20:23 pm (UTC)'!
handleOptionHotkey: anEvent
	anEvent shiftPressed ifTrue:
		[anEvent isArrowDown ifTrue: [tracker moveInstrumentDown. ^ true].
		anEvent isArrowUp ifTrue: [tracker moveInstrumentUp. ^ true]].
	^ false! !

!InstrumentEditorMorph methodsFor: 'events' stamp: 'len 14/Jun/2026, 7:43:19 pm (UTC)'!
keyStroke: anEvent
	| c i |
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	(anEvent secondaryModifierPressed and: [self handleOptionHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	anEvent keyCharacter = $` ifTrue: [anEvent wasHandled: true. self fitPatchToBounds. ^ self].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument track ifNotNil: [:aTrack|
			anEvent primaryModifierPressed ifTrue: [tracker toggleTrackSolo: (tracker tracks indexOf: aTrack)] ifFalse: [tracker toggleTrackMute: (tracker tracks indexOf: aTrack)]]].
		^ self].
	anEvent anyModifierKeyPressed ifFalse:
		[c := anEvent keyCharacter.
		c = $a ifTrue: [anEvent wasHandled: true. tracker selectedInstrument ifNotNil: [:anInstument| anInstument noteOff]. ^ self].
		(i := 'zsxdcvgbhnjmq2w3er5t6y7ui9o0p' indexOf: c) > 0 ifTrue:
			[anEvent wasHandled: true. tracker selectedInstrument ifNotNil: [:anInstument| anInstument noteOn: tracker selectedTrack inputCenterKey + i - 1]. ^ self]].
	^ super keyStroke: anEvent! !

!InstrumentEditorMorph methodsFor: 'initialization' stamp: 'len 26/Jun/2026, 6:30:33 pm (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	aTracker
		when: #cursorChanged send: #update to: self;
		when: #tracksChanged send: #update to: self.
	self update! !

!InstrumentEditorMorph methodsFor: 'private' stamp: 'len 28/Jun/2026, 10:49:21 am (UTC)'!
patchMorph
	^ submorphs detect: [:one| one isKindOf: PatchMorph] ifNone: []! !

!InstrumentEditorMorph methodsFor: 'private' stamp: 'len 28/Jun/2026, 10:50:44 am (UTC)'!
update
	| selectedPatch |
	selectedPatch := tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument patchMorph].
	selectedPatch = self patchMorph ifFalse:
		[self removeAllMorphs.
		selectedPatch ifNotNil: [self addMorph: selectedPatch]].
	self redrawNeeded! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026, 9:11:15 am (UTC)'!
clipboardCopy
	clipboard := selectionStart isNil
		ifTrue: [{tracker sequence at: tracker cursorPattern}]
		ifFalse: [((selectionStart min: tracker cursorPattern) to: (selectionStart max: tracker cursorPattern)) collect: [:i| tracker sequence at: i]]! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026, 9:10:50 am (UTC)'!
clipboardCut
	| cursor |
	selectionStart isNil ifTrue: "cut the pattern at cursor"
		[clipboard := {tracker sequence at: tracker cursorPattern}.
		tracker deletePattern.
		^ self].
	cursor := tracker cursorPattern.
	clipboard := ((selectionStart min: cursor) to: (selectionStart max: cursor)) collect: [:i| tracker sequence at: i].
	(selectionStart max: cursor) to: (selectionStart min: cursor) by: -1 do: [:i| tracker deletePattern: i].
	selectionStart := nil! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 21/Feb/2026, 11:59:25 am (UTC)'!
clipboardPaste
	selectionStart := nil.
	clipboard ifNotNil: [tracker insertSequence: (clipboard collect: [:each| each key -> each value])]! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 21/Feb/2026, 11:59:27 am (UTC)'!
clipboardPasteNew
	selectionStart := nil.
	clipboard ifNotNil: [tracker insertSequence: (clipboard collect: [:each| each key copy -> each value])]! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:15:15 pm (UTC)'!
moveSelectedPatternsDown
	| start end |
	selectionStart
		ifNotNil: [start := selectionStart min: tracker cursorPattern.
			end := selectionStart max: tracker cursorPattern]
		ifNil: [start := end := tracker cursorPattern].
	end < tracker sequence size ifFalse: [^ self].
	end to: start by: -1 do: [:i| tracker swapPattern: i with: i + 1].
	tracker moveCursorPatternDown.
	selectionStart ifNotNil: [selectionStart := selectionStart + 1]! !

!ArrangerMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:14:04 pm (UTC)'!
moveSelectedPatternsUp
	| start end |
	selectionStart
		ifNotNil: [start := selectionStart min: tracker cursorPattern.
			end := selectionStart max: tracker cursorPattern]
		ifNil: [start := end := tracker cursorPattern].
	start > 1 ifFalse: [^ self].
	start to: end do: [:i| tracker swapPattern: i with: i - 1].
	tracker moveCursorPatternUp.
	selectionStart ifNotNil: [selectionStart := selectionStart - 1]! !

!ArrangerMorph methodsFor: 'drawing' stamp: 'len 19/Apr/2026, 9:56:56 am (UTC)'!
activeBounds
	"Answer a subrectangle of the bounds of the receiver that should preferably be kept visible inside a scroller."
	| blockHeight charWidth |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	^ 0 @ ((tracker cursorPattern - 1) * blockHeight) extent: self morphWidth @ blockHeight! !

!ArrangerMorph methodsFor: 'drawing' stamp: 'len 21/Jun/2026, 5:24:59 pm (UTC)'!
drawOn: aCanvas
	| x y s charWidth blockHeight blockWidth space cursorTrack cursorPattern patternNumbers oldPatternNumbers |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	blockWidth := charWidth / 2.0.
	space := charWidth/4.0.
	x := blockHeight + space.
	cursorTrack := tracker cursorTrack.
	"draw tracks background:"
	tracker tracks withIndexDo: [:track :i|
		aCanvas fillRectangle: (x @ 0 extent: blockWidth @ extent y) color: ((PatternEditorMorph trackColor: i) lightnessAndChromaBy: (i = cursorTrack ifTrue: [0.6] ifFalse: [0.4])).
		x := x + blockWidth + space].
	y := 0.
	"draw selection:"
	selectionStart ifNotNil:
		[aCanvas fillRectangle: (0 @ (((selectionStart min: tracker cursorPattern) - 1) * blockHeight) corner: self morphWidth @ (((selectionStart max: tracker cursorPattern)) * blockHeight)) color: PatternEditorMorph selectionColor].
	"draw sequence and cursor:"
	cursorPattern := tracker cursorPattern.
	patternNumbers := tracker sequencePatternNumbers.
	oldPatternNumbers := OrderedCollection new.
	1 to: tracker sequence size do: [:i| | p c |
		i = cursorPattern ifTrue:
			[self hasKeyboardFocus
				ifTrue: [aCanvas fillRectangle: (0@y extent: blockHeight @ blockHeight) color: (showCursor ifTrue: [PatternEditorMorph cursorColor] ifFalse: [PatternEditorMorph cursorColor alpha: 0.7])]
				ifFalse: [aCanvas fillRectangle: (0@y extent: blockHeight @ blockHeight) color: (PatternEditorMorph cursorColor alpha: 0.7)]].
		p := patternNumbers at: i.
		(oldPatternNumbers includes: p) ifFalse: [aCanvas frameRectangle: (4@(y+4) extent: blockHeight -8 @ (blockHeight - 8)) borderWidth: 1 color: Color white cornerRadius: 8].
		s := p printStringBase: 16 nDigits: 2.
		c := Color white.
		(oldPatternNumbers includes: p) ifTrue: [i = cursorPattern ifFalse: [c := Color veryLightGray]] ifFalse: [oldPatternNumbers add: p].
		aCanvas drawString: s at: blockHeight - (charWidth*2.5) @ (y+(charWidth/2.0)) font: font color: c.
		y := y + blockHeight].
	y := 0.
	"draw pattern blocks:"
	tracker sequence do: [:each|
		x := blockHeight + space.
		tracker tracks withIndexDo: [:track :i|
			(each key isEmptyTrack: i) ifFalse: [aCanvas fillRectangle: (x @ y extent: blockWidth @ blockHeight) color: ((each value at: i) ifTrue: [(PatternEditorMorph trackColor: i)] ifFalse: [Color black])].
			x := x + blockWidth + space].
		y := y + blockHeight].
	y := tracker cursorPattern - 1 * blockHeight + (tracker cursorLine * blockHeight / tracker selectedPattern length asFloat).
	"draw pattern line cursor and playhead:"
	aCanvas line: blockHeight + 1 @ y to: extent x - 4 @ y width: 3 color: Color veryVeryLightGray.
	tracker isPlaying ifTrue:
		[y := tracker playheadPattern - 1 * blockHeight + (tracker playheadLine * blockHeight / tracker playingPattern length asFloat).
		aCanvas line: blockHeight + 1 @ y to: extent x - 4 @ y width: 3 color: Color white]! !

!ArrangerMorph methodsFor: 'drawing' stamp: 'len 19/Feb/2026, 2:44:53 pm (UTC)'!
requiresVectorCanvas
	^ true! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 24/Jun/2026, 6:55:38 am (UTC)'!
handleCommandHotkey: anEvent
"	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	anEvent keyCharacter = $V ifTrue: [self clipboardPasteNew. ^ true]."
	anEvent keyCharacter = $i ifTrue: [tracker selectedPattern ifNotNil: [:aPattern| aPattern inspect]. ^ true].
	^ false! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 22/Feb/2026, 9:31:30 am (UTC)'!
handleNavigationKey: anEvent
	selectionStart := nil.
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown]! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 15/Jun/2026, 4:10:21 pm (UTC)'!
handleOptionHotkey: anEvent
	anEvent shiftPressed ifTrue:
		[anEvent isArrowUp ifTrue: [self moveSelectedPatternsUp. ^ true].
		anEvent isArrowDown ifTrue: [self moveSelectedPatternsDown. ^ true]].
	^ false! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 23/Feb/2026, 9:09:28 am (UTC)'!
handleSelectionKey: anEvent
	selectionStart isNil ifTrue: [selectionStart := tracker cursorPattern].
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown]! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 23/Jun/2026, 9:32:14 pm (UTC)'!
handlesMouseDown: anEvent
	^ anEvent mouseButton2Pressed or: [anEvent mouseButton1Pressed]! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 14/Jun/2026, 8:21:44 pm (UTC)'!
keyStroke: anEvent
	(anEvent secondaryModifierPressed and: [self handleOptionHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	anEvent isArrow ifTrue:
		[anEvent wasHandled: true.
		anEvent shiftPressed ifTrue: [self handleSelectionKey: anEvent. ^ self].
		self handleNavigationKey: anEvent.
		^ self].
	^ super keyStroke: anEvent! !

!ArrangerMorph methodsFor: 'events' stamp: 'len 24/Feb/2026, 8:43:39 am (UTC)'!
keyboardFocusChange: aBoolean
	aBoolean ifTrue: [self startBlinking] ifFalse: [self stopBlinking].
	self redrawNeeded! !

!ArrangerMorph methodsFor: 'geometry' stamp: 'len 21/Feb/2026, 9:41:06 am (UTC)'!
minimumExtent
	| blockHeight blockWidth charWidth space |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	blockWidth := charWidth / 2.0.
	space := charWidth / 4.0.
	^ (blockWidth + space) * tracker tracks size + blockWidth + blockHeight @ (blockHeight * tracker sequence size)! !

!ArrangerMorph methodsFor: 'initialization' stamp: 'len 10/Mar/2026, 12:03:12 pm (UTC)'!
initialize
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
	showCursor := true.
	pauseBlinking := false! !

!ArrangerMorph methodsFor: 'initialization' stamp: 'len 2/Jan/2026, 12:33:30 pm (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #cursorChanged send: #redrawNeeded to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	self update! !

!ArrangerMorph methodsFor: 'menu' stamp: 'len 24/Jun/2026, 6:56:23 am (UTC)'!
menuNshortcutsSpecsDo: aBlock
	#(
		#(120	'Copy (c)'	 	$c 	nil 	clipboardCopy 		nil 	'Copy selection')
		#(130	'Cut (x)' 			$x 	nil 	clipboardCut		nil 	'Cut selection')
		#(140	'Paste (v)' 		$v 	nil 	clipboardPaste		nil 	'Paste references')
		#(150	'Paste copy (V)' 	$V 	nil 	clipboardPasteNew	nil 	'Paste new copies')
	) do: aBlock! !

!ArrangerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026, 8:38:55 am (UTC)'!
onBlinkCursor
	"Blink the cursor"
	showCursor := showCursor not | pauseBlinking.
	pauseBlinking := false.
	"cursorRect ifNotNil: [ :r | self invalidateLocalRect: r]"
	self redrawNeeded! !

!ArrangerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026, 8:38:48 am (UTC)'!
pauseBlinking
	"Show a solid cursor (non blinking) for a short while."
	pauseBlinking := true.
	"Show cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := true.
		self redrawNeeded]! !

!ArrangerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026, 8:38:27 am (UTC)'!
startBlinking
	"And show the cursor"
	pauseBlinking := true.
	"Start blinking in a short while"
	showCursor := true.
	self startStepping: #onBlinkCursor stepTime: 500! !

!ArrangerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026, 8:38:38 am (UTC)'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	"Hide cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := false.
		self redrawNeeded]! !

!ArrangerMorph methodsFor: 'private' stamp: 'len 31/Dec/2025, 3:21:20 pm (UTC)'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026, 9:36:41 am (UTC)'!
colorForMeterValue: aNumber
	"White up to -12 dB, yellow from -12 dB to -3 dB, red over -3 dB."
	^ aNumber > 0.7 ifTrue: [Color redCathode] ifFalse: [aNumber > 0.25 ifTrue: [Color lemonPhosphor] ifFalse: [Color white]]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 16/Jun/2026, 7:37:49 am (UTC)'!
drawOn: aCanvas
	| v x y leftMaster rightMaster peak |
	leftMaster := rightMaster := 0.0.
	tracker tracks withIndexDo: [:track :i|
		(v := track meterValue) > 0.001 ifTrue:
			[x := meterSpacing * (i-1) + leftMargin.
			y := self yForMeterValue: v.
			aCanvas fillRectangle: (x @ y corner: x + meterWidth @ extent y) color: (PatternEditorMorph trackColor: i).
			leftMaster := leftMaster + track meterLeftValue.
			rightMaster := rightMaster + track meterRightValue]].
	leftMaster := leftMaster * tracker level * 0.25. "internally we leave -12 dB of headroom"
	rightMaster := rightMaster * tracker level * 0.25.
	x := meterSpacing * (-2) + leftMargin.
	y := self yForMeterValue: rightMaster.
	aCanvas fillRectangle: (x @ y corner: x + meterWidth @ (extent y - 2)) color: (self colorForMeterValue: rightMaster).
	peak := tracker peakRight.
	y := self yForMeterValue: peak.
	aCanvas line: x @ y to: x + meterWidth @ y width: 2 color: (self colorForMeterValue: peak).
	x := meterSpacing * (-3) + leftMargin.
	y := self yForMeterValue: leftMaster.
	aCanvas fillRectangle: (x @ y corner: x + meterWidth @ (extent y - 2)) color: (self colorForMeterValue: leftMaster).
	peak := tracker peakLeft.
	y := self yForMeterValue: peak.
	aCanvas line: x @ y to: x + meterWidth @ y width: 2 color: (self colorForMeterValue: peak).
	y := extent y - 4 - (extent y - 8 * tracker level) max: 0.
	aCanvas strokeWidth: 1.0 color: Color white do: [aCanvas moveTo: x - 8 @ (y - 4); lineTo: x - 8 @ (y + 4); lineTo: x - 2 @ y; closePath]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 24/Jan/2026, 7:11:16 am (UTC)'!
requiresVectorCanvas
	^ true ! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 25/Jan/2026, 12:46:18 pm (UTC)'!
yForMeterValue: aNumber
	"Answer the y coordinate for the given linear meter value (RMS or peak).
	We map it logarithmically to the height of the morph. We ignore values below -60 dB or over 0 dB."
	^ extent y - (extent y * (aNumber linearToDecibels + 60.0 max: 0.0) / 60.0) max: 0.0! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 24/Feb/2026, 10:31:47 am (UTC)'!
handlesKeyboardFocus
	^ false! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 24/Jan/2026, 7:14:37 am (UTC)'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 6/Feb/2026, 10:57:18 am (UTC)'!
mouseScroll: anEvent localPosition: localEventPosition
	| step |
	step := 0.01.
	anEvent shiftPressed ifTrue: [step := step * 0.1].
	anEvent direction = #up ifTrue: [step := step negated] ifFalse: [anEvent direction = #down ifFalse: [^ self]].
	tracker level: tracker level + step.
	self showBalloon: tracker level linearToDecibelsPrintString! !

!MultitrackMeterMorph methodsFor: 'geometry' stamp: 'len 31/Dec/2025, 4:16:09 pm (UTC)'!
minimumExtent
	^ meterSpacing * (tracker tracks size + 1) @ 64! !

!MultitrackMeterMorph methodsFor: 'initialization' stamp: 'len 10/Mar/2026, 12:03:03 pm (UTC)'!
initialize
	| font charWidth |
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
	charWidth := font widthOf: $X.
	leftMargin := charWidth * 3 + (charWidth/4.0).
	meterWidth := charWidth / 2.0.
	meterSpacing := meterWidth + (charWidth/4.0)! !

!MultitrackMeterMorph methodsFor: 'initialization' stamp: 'len 24/Jan/2026, 7:21:32 am (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #levelChanged send: #redrawNeeded to: self! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 18/Jan/2026, 7:01:38 pm (UTC)'!
step
	(tracker isPlaying or: [tracker tracks anySatisfy: [:any| any meterValue > 0.01]]) ifTrue: [self redrawNeeded]! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 18/Jan/2026, 6:59:32 pm (UTC)'!
stepTime
	^ 100! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 28/Dec/2025, 9:24:02 am (UTC)'!
wantsSteps
	^ true! !

!MultitrackMeterMorph methodsFor: 'private' stamp: 'len 31/Dec/2025, 3:43:38 pm (UTC)'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 11/Mar/2026, 7:45:09 am (UTC)'!
adjustFontSizeBy: anInteger
	| pointSizes |
	pointSizes := font family pointSizes select: [:each| each between: 6 and: 36]. "not too small, not too big"
	font := font family atPointSize: (pointSizes atPin: (pointSizes indexOf: font pointSize) + anInteger).
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 26/Jun/2026, 9:38:40 pm (UTC)'!
clipboardCopy
	| pattern |
	selectionLineStart ifNil: [ClipboardBuffer := {{(tracker selectedTrigger ifNil: [^ self]) copy}}. ^ self].
	pattern := tracker selectedPattern.
	ClipboardBuffer := self selectedLines collect: [:i| self selectedTracks collect: [:k| pattern track: k at: i]]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 25/Jun/2026, 8:00:00 pm (UTC)'!
clipboardCut
	self clipboardCopy; deleteSelection! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 8/Jun/2026, 8:28:49 am (UTC)'!
clipboardPaste
	| i0 k0 pattern |
	selectionLineStart := selectionTrackStart := nil.
	pattern := tracker selectedPattern.
	k0 := tracker cursorTrack - 1.
	i0 := tracker cursorLine - 1.
	(ClipboardBuffer ifNil: [^ self]) withIndexDo: [:line :i|
		line withIndexDo: [:trigger :k|
			(k0 + k <= tracker tracks size and: [i0 + i <= pattern length])
				ifTrue: [pattern track: k0 + k at: i0 + i put: trigger copy]]].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 26/Jun/2026, 9:39:25 pm (UTC)'!
deleteSelection
	| pattern |
	pattern := tracker selectedPattern.
	selectionLineStart ifNil:
		[pattern track: tracker cursorTrack at: tracker cursorLine put: nil.
		self redrawNeeded.
		^ self].
	self selectedLines do: [:i|
		self selectedTracks do: [:k|
			pattern track: k at: i put: nil]].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 11:29:58 am (UTC)'!
moveCursorColumnLeft
	cursorPosition <= 2
		ifTrue:
			[tracker cursorTrack = 1 ifTrue: [^ self].
			cursorPosition := self lastColumnPosition.
			tracker moveCursorTrackLeft]
		ifFalse:
			[cursorPosition := #(1 1 1 3 3 4 4 4 6 6 6) at: cursorPosition].
	self showFXBalloon.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 11:30:06 am (UTC)'!
moveCursorColumnRight
	cursorPosition >= self lastColumnPosition
		ifTrue:
			[tracker cursorTrack = tracker tracks size ifTrue: [^ self].
			cursorPosition := 1.
			tracker moveCursorTrackRight]
		ifFalse:
			[cursorPosition := #(3 3 4 6 6 9 9 9) at: cursorPosition].
	self showFXBalloon.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 11:29:41 am (UTC)'!
moveCursorLeft
	cursorPosition = 1
		ifTrue:
			[tracker cursorTrack = 1 ifTrue: [^ self].
			cursorPosition := self lastPosition.
			tracker moveCursorTrackLeft]
		ifFalse:
			[cursorPosition := cursorPosition - 1].
	self showFXBalloon.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 11:29:48 am (UTC)'!
moveCursorRight
	cursorPosition = self lastPosition
		ifTrue:
			[tracker cursorTrack = tracker tracks size ifTrue: [^ self].
			cursorPosition := 1.
			tracker moveCursorTrackRight]
		ifFalse:
			[cursorPosition := cursorPosition + 1].
	self showFXBalloon.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:02:52 pm (UTC)'!
moveSelectedTracksLeft
	| trackStart trackEnd |
	selectionTrackStart
		ifNotNil: [trackStart := selectionTrackStart min: tracker cursorTrack.
			trackEnd := selectionTrackStart max: tracker cursorTrack]
		ifNil: [trackStart := trackEnd := tracker cursorTrack].
	trackStart > 1 ifFalse: [^ self].
	trackStart to: trackEnd do: [:i| tracker swapTrack: i with: i - 1].
	tracker moveCursorTrackLeft.
	selectionTrackStart ifNotNil: [selectionTrackStart := selectionTrackStart - 1]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 4:03:57 pm (UTC)'!
moveSelectedTracksRight
	| trackStart trackEnd |
	selectionTrackStart
		ifNotNil: [trackStart := selectionTrackStart min: tracker cursorTrack.
			trackEnd := selectionTrackStart max: tracker cursorTrack]
		ifNil: [trackStart := trackEnd := tracker cursorTrack].
	trackEnd < tracker tracks size ifFalse: [^ self].
	trackEnd to: trackStart by: -1 do: [:i| tracker swapTrack: i with: i + 1].
	tracker moveCursorTrackRight.
	selectionTrackStart ifNotNil: [selectionTrackStart := selectionTrackStart + 1]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 3:59:42 pm (UTC)'!
moveSelectedTriggersDown
	| pattern lineStart lineEnd trackStart trackEnd |
	pattern := tracker selectedPattern.
	selectionLineStart
		ifNotNil: [lineStart := selectionLineStart min: tracker cursorLine.
			lineEnd := selectionLineStart max: tracker cursorLine.
			trackStart := selectionTrackStart min: tracker cursorTrack.
			trackEnd := selectionTrackStart max: tracker cursorTrack]
		ifNil: [lineStart := lineEnd := tracker cursorLine.
			trackStart := trackEnd := tracker cursorTrack].
	lineEnd < pattern length ifFalse: [^ self].
	lineEnd to: lineStart by: -1 do: [:i|
		trackStart to: trackEnd do: [:k|
			pattern track: k swap: i with: i + 1]].
	tracker moveCursorLineDown.
	selectionLineStart ifNotNil: [selectionLineStart := selectionLineStart + 1]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 3:59:53 pm (UTC)'!
moveSelectedTriggersUp
	| pattern lineStart lineEnd trackStart trackEnd |
	pattern := tracker selectedPattern.
	selectionLineStart
		ifNotNil: [lineStart := selectionLineStart min: tracker cursorLine.
			lineEnd := selectionLineStart max: tracker cursorLine.
			trackStart := selectionTrackStart min: tracker cursorTrack.
			trackEnd := selectionTrackStart max: tracker cursorTrack]
		ifNil: [lineStart := lineEnd := tracker cursorLine.
			trackStart := trackEnd := tracker cursorTrack].
	lineStart > 1 ifFalse: [^ self].
	lineStart to: lineEnd do: [:i|
		trackStart to: trackEnd do: [:k|
			pattern track: k swap: i with: i - 1]].
	tracker moveCursorLineUp.
	selectionLineStart ifNotNil: [selectionLineStart := selectionLineStart - 1]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 9/Mar/2026, 12:44:57 pm (UTC)'!
playSelection
	| cursorPattern cursorLine cursorTrack |
	cursorPattern := tracker cursorPattern.
	cursorLine := tracker cursorLine.
	cursorTrack := tracker cursorTrack.
	selectionLineStart ifNil: [tracker playFrom: cursorPattern line: cursorLine to: cursorPattern line: cursorLine tracks: {cursorTrack}. ^ self].
	tracker playFrom: cursorPattern line: (selectionLineStart min: cursorLine) to: cursorPattern line: (selectionLineStart max: cursorLine) tracks: ((selectionTrackStart min: cursorTrack) to: (selectionTrackStart max: cursorTrack))! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 27/Jun/2026, 8:00:24 am (UTC)'!
selectAll
	self selectedTracks size = tracker tracks size ifFalse: "extend selection to all tracks"
		[selectionLineStart ifNil: [selectionLineStart := tracker cursorLine].
		selectionTrackStart := 1.
		tracker setCursorTrack: tracker tracks size.
		^ self redrawNeeded].
	self selectedLines size = tracker selectedPattern length ifFalse: "extend selection to all the pattern"
		[selectionLineStart := 1.
		tracker moveCursorLineBottom.
		^ self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 26/Jun/2026, 9:42:28 pm (UTC)'!
selectedTriggersDo: aBlock
	| pattern |
	pattern := tracker selectedPattern.
	self selectedLines do: [:i|
		self selectedTracks do: [:k|
			(pattern track: k at: i) ifNotNil: aBlock]]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 14/Mar/2026, 11:30:14 am (UTC)'!
setPatternLPB
	self request: 'LPB' initialAnswer: tracker selectedPattern lpb printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker selectedPattern lpb: s asNumber. self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 4/Jan/2026, 8:52:47 am (UTC)'!
setPatternLength
	tracker isPlaying ifTrue: [^ self].
	self request: 'Pattern length' initialAnswer: tracker selectedPattern length printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker setSelectedPatternLength: s asNumber. self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 10/Jun/2026, 7:01:54 pm (UTC)'!
setTrackTuning
	| menu |
	menu := MenuMorph new.
	Tuning library do: [:each| menu add: each label target: tracker action: #setSelectedTrackTuning: argument: each].
	menu invokeModal! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Jun/2026, 11:30:38 am (UTC)'!
toggleShowFXColumns
	showFXColumns := showFXColumns not.
	cursorPosition := cursorPosition min: self lastPosition.
	self showFXBalloon.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 8/Jun/2026, 12:30:47 pm (UTC)'!
activeBounds
	"Answer a subrectangle of the bounds of the receiver that should preferably be kept visible inside a scroller.
	We use the bounds of the currently selected trigger, so when we move the cursor the current trigger is kept visible."
	| lineSpacing charWidth x y |
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	y := self morphHeight / 2.0.
	x := (self trackWidthInCharacters + 0.5) * (tracker cursorTrack - 1) + 2.5.
	^​ x * charWidth @ y extent: self trackWidthInCharacters * charWidth @ lineSpacing! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 15/Jun/2026, 11:27:24 am (UTC)'!
cursorRect
	| lineSpacing charWidth cursorWidth x y |
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	y := self morphHeight / 2.0.
	cursorWidth := cursorPosition = 3 ifTrue: [3] ifFalse: [1].
	x := (self trackWidthInCharacters + 0.5) * (tracker cursorTrack - 1) + 2.5 + cursorPosition - 1.
	cursorPosition > 2 ifTrue: [x := x + 0.5].
	cursorPosition > 3 ifTrue: [x := x + 2.5].
	cursorPosition > 5 ifTrue: [x := x + 0.5].
	cursorPosition > 8 ifTrue: [x := x + 0.5].
	^​ x * charWidth @ y extent: cursorWidth * charWidth @ lineSpacing! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 15/Jun/2026, 11:59:45 am (UTC)'!
drawCursorOn: aCanvas
	| cursorRect |
	cursorRect := self cursorRect.
	aCanvas fillRectangle: (0 @ cursorRect top extent: self morphWidth @ cursorRect height) color: `Color white alpha: 0.1`.
	self hasKeyboardFocus ifFalse: [aCanvas frameRectangle: cursorRect borderWidth: 1 color: self class cursorColor. ^ self].
	aCanvas fillRectangle: cursorRect color: (showCursor ifTrue: [self class cursorColor] ifFalse: [self class cursorColor alpha: 0.7])! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 22/Feb/2026, 12:01:27 pm (UTC)'!
drawOn: aCanvas
	self drawTracksOn: aCanvas.
	self drawCursorOn: aCanvas.
	self drawPatternOn: aCanvas! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 13/Jun/2026, 5:35:31 pm (UTC)'!
drawPatternOn: aCanvas
	| lineSpacing charWidth y unsetColor noteColor velocityColor pattern endLine middle startLine darkColor lightColor xLeft xRight beatColor trackWidth |
	pattern := tracker selectedPattern.
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	trackWidth := charWidth * (self trackWidthInCharacters + 0.5).
	unsetColor := self class unsetColor.
	noteColor := Color white.
	velocityColor := self class velocityColor.
	middle := self morphHeight / 2.0.
	startLine := tracker cursorLine - ((middle - self headerHeight) / lineSpacing) truncated max: 1.
	y := middle - (lineSpacing * (tracker cursorLine - startLine)).
	endLine := startLine + (self morphHeight - y / lineSpacing) truncated - 1 min: pattern length.
	xLeft := 1.
	xRight := self morphWidth - ((font widthOf: $X)*2) - xLeft.
	lightColor := Color veryLightGray.
	darkColor := Color lightGray.
	beatColor := Color white alpha: 0.08.
	"Draw playhead line:"
	(tracker isPlaying and: [tracker playheadPattern = tracker cursorPattern and: [tracker playheadLine between: startLine and: endLine]])
		ifTrue: [aCanvas fillRectangle: (0@(tracker playheadLine - startLine * lineSpacing + y) extent: extent x @ lineSpacing) color: self class playheadColor].
	"Draw selection:"
	selectionLineStart ifNotNil:
		[| sl0 sl1 st0 st1 |
		sl0 := selectionLineStart min: tracker cursorLine.
		sl1 := selectionLineStart max: tracker cursorLine.
		st0 := selectionTrackStart min: tracker cursorTrack.
		st1 := selectionTrackStart max: tracker cursorTrack.
		(sl0 <= endLine and: [sl1 >= startLine]) ifTrue:
			[sl0 := sl0 max: startLine.
			sl1 := sl1 min: endLine.
			aCanvas fillRectangle: (st0 - 1 * trackWidth + (charWidth * 2.5) @ ((sl0 - startLine) * lineSpacing + y) extent: (trackWidth * (st1 - st0) + trackWidth - (charWidth * 0.5)) @ (lineSpacing * (sl1 - sl0) + lineSpacing)) color: self class selectionColor]].
	"Draw lines:"
	startLine to: endLine do: [:i|
		| s c x k |
		"Draw line offsets at left and right, and highlight lines at beats:"
		i - 1 \\ pattern lpb = 0
			ifTrue: [i = tracker cursorLine ifFalse: [aCanvas fillRectangle: (0@y extent: extent x @ lineSpacing) color: beatColor]. c := lightColor]
			ifFalse: [c := darkColor].
		s := i - 1 printStringBase: 16 nDigits: 2.
		aCanvas drawString: s at: xLeft @ y font: font color: c.
		aCanvas drawString: s at: xRight @ y font: font color: c.
		"Draw triggers:"
		k := 0.
		x := charWidth * 2.5.
		pattern
			line: i
			instrumentDo: [:instrument|
				instrument ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x]
			noteDo: [:note|
				k := k + 1.
				note ifNil: [s := '···'. c := unsetColor] ifNotNil: [:v| s := v = -1 ifTrue: ['OFF'] ifFalse: [(tracker tracks at: k) noteStringFrom: v]. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 3.5 + x]
			velocityDo: [:velocity|
				velocity ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := velocityColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x]
			effectsDo: [:fx|
				showFXColumns ifTrue:
					[fx
						ifNil: [aCanvas drawString: '···' at: x @ y font: font color: unsetColor]
						ifNotNil: [:v| | cmd |
							cmd := v bitShift: -8.
							aCanvas drawString: (Character codePoint: cmd) asString, ((v bitAnd: 16rFF) printStringBase: 16 nDigits: 2) at: x @ y font: font color: (FXColors at: cmd ifAbsent: [unsetColor])].
					x := charWidth * 3.5 + x]]
			emptyTriggersDo:
				["aCanvas image: emptyTriggerImage at: x @ y.
				x := trackWidth + x"
				k := k + 1.
				aCanvas drawString: '··' at: x @ y font: font color: unsetColor.
				x := charWidth * 2.5 + x.
				aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
				x := charWidth * 3.5 + x.
				aCanvas drawString: '··' at: x @ y font: font color: unsetColor.
				x := charWidth * 2.5 + x.
				showFXColumns ifTrue:
					[aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
					x := charWidth * 3.5 + x.
					aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
					x := charWidth * 3.5 + x]].
		y := y + lineSpacing]! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 29/Jun/2026, 7:31:45 am (UTC)'!
drawTracksOn: aCanvas
	| color textColor charWidth trackWidth x mask headerLineWidth maxTrackLabelWidth fittingTrackLabel highlightedTrackStart highlightedTrackEnd |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self trackWidthInCharacters.
	maxTrackLabelWidth := trackWidth - (labelMonoFont widthOfString: 'SM') - 2.
	headerLineWidth := 7.5. "originally was charWidth/2.0, but we don't want to change with the font size"
	x := charWidth * 2.5.
	mask := tracker selectedMask.
	selectionLineStart
		ifNotNil: [highlightedTrackStart := selectionTrackStart min: tracker cursorTrack.
			highlightedTrackEnd := selectionTrackStart max: tracker cursorTrack]
		ifNil: [highlightedTrackStart := highlightedTrackEnd := tracker cursorTrack].
	tracker tracks withIndexDo: [:track :i| | trackColor trackLabel |
		trackColor := self class trackColor: i.
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor lightnessAndChromaBy: (i = tracker cursorTrack ifTrue: [0.25] ifFalse: [0.2]))."
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor darker: (i = tracker cursorTrack ifTrue: [0.54] ifFalse: [0.6]))."
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor alpha: (i = tracker cursorTrack ifTrue: [0.1] ifFalse: [0.02]))."
		(i between: highlightedTrackStart and: highlightedTrackEnd) ifTrue: [aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor lightnessAndChromaBy: 0.25)].
		((mask at: i) and: [track enabled])
			ifTrue:
				[color := trackColor.
				textColor := Color white]
			ifFalse:
				[color := trackColor darker: 0.25.
				textColor := Color white darker: 0.25].
		aCanvas fillRectangle: (x @ 0 extent: trackWidth @ headerLineWidth) color: color.
		(tracker selectedInstrumentNumberAtTrack: i) ifNotNil: [:k|
			trackLabel := k printStringBase: 16 nDigits: 2.
			tracker instruments at: k ifPresent: [:anInstrument| anInstrument label ifNotNil: [:aString| trackLabel := trackLabel, ' ', aString]].
			fittingTrackLabel := trackLabel.
			[(labelFont widthOfString: fittingTrackLabel) > maxTrackLabelWidth] whileTrue: [trackLabel := trackLabel allButLast. fittingTrackLabel := trackLabel, '…'].
			aCanvas drawString: fittingTrackLabel at: x @ 8 font: labelFont color: textColor].
		x := x + trackWidth.
		track muted ifTrue: [aCanvas drawString: 'M' at: x - (labelMonoFont widthOf: $M) @ 8 font: labelMonoFont color: textColor].
		track soloed ifTrue: [aCanvas drawString: 'S' at: x - (labelMonoFont widthOfString: 'SM') - 1 @ 8 font: labelMonoFont color: textColor].
		x := x + (charWidth/2.0)].
	aCanvas fillRectangle: (x @ 0 corner: extent x @ headerLineWidth) color: Color darkGray! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 8/Jun/2026, 12:30:47 pm (UTC)'!
trackWidthInCharacters
	^ showFXColumns ifTrue: [15] ifFalse: [8]! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 18/Jun/2026, 4:17:59 pm (UTC)'!
aboutToBeGrabbedBy: aHand
	^ MovingHelperMorph new target: self; offset: (self owner internalizeFromWorld: aHand morphPosition) - self morphPosition! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 27/Jun/2026, 7:56:45 am (UTC)'!
handleCommandHotkey: anEvent
	"Font size:"
	anEvent keyCharacter = $- ifTrue: [self adjustFontSizeBy: -1. ^ true].
	anEvent keyCharacter = $= ifTrue: [self adjustFontSizeBy: 1. ^ true].
	"Show/hide FX columns:"
	anEvent keyCharacter = $' ifTrue: [self toggleShowFXColumns. ^ true].
	"Pattern properties:"
"	anEvent keyCharacter = $l ifTrue: [self setPatternLength. ^ true].
	anEvent keyCharacter = $b ifTrue: [self setPatternLPB. ^ true]."
	"Tuning:"
"	anEvent keyCharacter = $u ifTrue: [self setTrackTuning. ^ true]."
	"Inspecting:"
	anEvent keyCharacter = $i ifTrue: [tracker selectedTrigger ifNotNil: [:aTrigger| aTrigger inspect]. ^ true].
	"Clipboard:"
"	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true]."
	anEvent keyCharacter = $a ifTrue: [self selectAll. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 29/Jun/2026, 7:43:27 am (UTC)'!
handleInputKey: anEvent
	| c i |
	(tracker followPlayhead and: [tracker isPlaying]) ifTrue: [^ false]. "avoid input if following playhead"
	anEvent isBackspace ifTrue:
		[selectionLineStart isNil
			ifTrue: [tracker selectedTriggerAt: cursorPosition put: nil. self redrawNeeded]
			ifFalse: [self deleteSelection].
		^ true].
	anEvent keyCharacter = $] ifTrue: [self selectedTriggersDo: [:each| each transposeBy: (tracker selectedTrack tuning size)]. self redrawNeeded. ^ true].
	anEvent keyCharacter = $[ ifTrue: [self selectedTriggersDo: [:each| each transposeBy: (tracker selectedTrack tuning size negated)]. self redrawNeeded. ^ true].
	anEvent keyCharacter = $} ifTrue: [self selectedTriggersDo: [:each| each transposeBy: 1]. self redrawNeeded. ^ true].
	anEvent keyCharacter = ${ ifTrue: [self selectedTriggersDo: [:each| each transposeBy: -1]. self redrawNeeded. ^ true].
	cursorPosition = 3 ifTrue: "notes"
		[c := anEvent keyCharacter.
		c = $a ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: -1. "note off"
			tracker moveCursorLineDown: editStep.
			^ true].
		(i := 'zsxdcvgbhnjmq2w3er5t6y7ui9o0p' indexOf: c) > 0 ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: tracker selectedTrack inputCenterKey + i - 1.
			tracker moveCursorLineDown: editStep.
			^ true].
		^ false].
	(cursorPosition = 6 or: [cursorPosition = 9]) ifTrue: "FX commands"
		[('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ<>+-' includes: (c := anEvent keyCharacter asUppercase)) ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: c codePoint.
			self moveCursorRight.
			^ true].
		^ false].
	(i := '0123456789ABCDEF' indexOf: anEvent keyCharacter asUppercase) > 0 ifTrue:
		[tracker selectedTriggerAt: cursorPosition put: i - 1.
		(#(2 5) includes: cursorPosition) ifTrue:
			[cursorPosition := cursorPosition - 1.
			self showFXBalloon.
			tracker moveCursorLineDown: editStep.
			^ true].
		(#(8 11) includes: cursorPosition) ifTrue:
			[cursorPosition := cursorPosition - 2.
			self showFXBalloon.
			tracker moveCursorLineDown: editStep.
			^ true].	
		self moveCursorRight.
		^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 5/Jun/2026, 4:24:43 pm (UTC)'!
handleKeyStroke: anEvent
	(anEvent secondaryModifierPressed and: [self handleOptionHotkey: anEvent]) ifTrue: [^ true].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue: [^ true].
	(anEvent shiftPressed and: [anEvent isArrow]) ifTrue: [self handleSelectionKey: anEvent. ^ true].
	anEvent isReturnKey ifTrue: [tracker isPlaying ifTrue: [tracker stop] ifFalse: [tracker loop: anEvent secondaryModifierPressed. self playSelection]. ^ true].
	anEvent isNavigation ifTrue: [self handleNavigationKey: anEvent. ^ true].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		anEvent primaryModifierPressed ifTrue: [tracker toggleTrackSolo] ifFalse: [tracker toggleTrackMute]. ^ true].
	(anEvent anyModifierKeyPressed not and: [self handleInputKey: anEvent]) ifTrue: [^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 13/Jun/2026, 5:48:24 pm (UTC)'!
handleNavigationKey: anEvent
	selectionLineStart := selectionTrackStart := nil.
	anEvent isArrowUp ifTrue: [tracker moveCursorLineUp. ^ true].
	anEvent isArrowDown ifTrue: [tracker moveCursorLineDown. ^ true].
	anEvent isArrowLeft ifTrue:
		[anEvent primaryModifierPressed ifTrue: [self moveCursorColumnLeft] ifFalse: [self moveCursorLeft].
		^ true].
	anEvent isArrowRight ifTrue:
		[anEvent primaryModifierPressed ifTrue: [self moveCursorColumnRight] ifFalse: [self moveCursorRight].
		^ true].
	anEvent isArrowRight ifTrue: [self moveCursorRight. ^ true].
	anEvent isPageUp ifTrue: [tracker moveCursorBeatUp. ^ true].
	anEvent isPageDown ifTrue: [tracker moveCursorBeatDown. ^ true].
	anEvent isHome ifTrue: [tracker moveCursorLineTop. ^ true].
	anEvent isEnd ifTrue: [tracker moveCursorLineBottom. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Jun/2026, 3:59:53 pm (UTC)'!
handleOptionHotkey: anEvent
	anEvent shiftPressed ifTrue:
		[anEvent isArrowUp ifTrue: [self moveSelectedTriggersUp. ^ true].
		anEvent isArrowDown ifTrue: [self moveSelectedTriggersDown. ^ true].
		anEvent isArrowLeft ifTrue: [self moveSelectedTracksLeft. ^ true].
		anEvent isArrowRight ifTrue: [self moveSelectedTracksRight. ^ true]].
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp. ^ true].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown. ^ true].
	anEvent isArrowLeft ifTrue: [tracker moveCursorTrackLeft. ^ true].
	anEvent isArrowRight ifTrue: [tracker moveCursorTrackRight. ^ true].
	anEvent isBackspace ifTrue: [tracker deleteTrigger. self redrawNeeded. ^ true].
	anEvent isEsc ifTrue: [tracker toggleFollowPlayhead. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 13/Jun/2026, 5:42:28 pm (UTC)'!
handleSelectionKey: anEvent
	selectionLineStart isNil ifTrue:
		[selectionLineStart := tracker cursorLine.
		selectionTrackStart := tracker cursorTrack].
	(anEvent isArrowUp and: [tracker cursorLine > 1]) ifTrue: [tracker moveCursorLineUp].
	(anEvent isArrowDown and: [tracker cursorLine < tracker selectedPattern length]) ifTrue: [tracker moveCursorLineDown].
	anEvent isArrowLeft ifTrue: [tracker moveCursorTrackLeft].
	anEvent isArrowRight ifTrue: [tracker moveCursorTrackRight]! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 18/Jun/2026, 4:59:04 pm (UTC)'!
handlesMouseDown: anEvent
	^ anEvent mouseButton2Pressed or: [anEvent mouseButton1Pressed]! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Jun/2026, 1:45:29 pm (UTC)'!
handlesMouseScroll: anEvent
	^ #(up down) identityIncludes: anEvent direction! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 10/Jan/2026, 4:03:58 pm (UTC)'!
keyStroke: anEvent
	(self handleKeyStroke: anEvent) ifTrue: [anEvent wasHandled: true. ^ self].
	^ super keyStroke: anEvent! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 8/Jun/2026, 12:30:47 pm (UTC)'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	| charWidth trackWidth x |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self trackWidthInCharacters + (charWidth/2.0).
	x := localEventPosition x - (charWidth * 2.5).
	x < 0.0 ifTrue: [^ self].
	tracker setCursorTrack: (x / trackWidth) truncated + 1.
	selectionLineStart := nil! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Jun/2026, 1:47:28 pm (UTC)'!
mouseScroll: anEvent localPosition: localEventPosition
	anEvent direction = #up ifTrue: [tracker moveCursorLineUp] ifFalse: [tracker moveCursorLineDown]! !

!PatternEditorMorph methodsFor: 'focus handling' stamp: 'len 9/Jan/2026, 8:20:32 am (UTC)'!
keyboardFocusChange: aBoolean
	aBoolean ifTrue: [self startBlinking] ifFalse: [self stopBlinking].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'geometry' stamp: 'len 8/Jun/2026, 12:30:47 pm (UTC)'!
minimumExtent
	| n |
	n := tracker tracks size.
	^ (font widthOf: $X) * (n * (self trackWidthInCharacters + 0.5) + 4.5) @ (font lineSpacing * 16)! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 8/Jun/2026, 8:49:20 am (UTC)'!
initialize
	super initialize.
"	font := FontFamily familyName: 'impulseBig' pointSize: 18."
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
"	font := FontFamily familyName: 'Commodore 64 Angled' pointSize: 14."
	labelFont := FontFamily defaultFamilyPointSize: 15.
	labelMonoFont := font.
	editStep := 1.
	showCursor := true.
	pauseBlinking := false.
	showFXColumns := true! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 22/Jun/2026, 9:20:55 am (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	cursorPosition := 1.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #updateTracks to: self.
	aTracker when: #cursorChanged send: #updateCursor to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	aTracker when: #instrumentLabelChanged send: #redrawNeeded to: self.
	aTracker when: #selectedTrackTuningChanged: send: #redrawNeeded to: self.
	self updateTracks! !

!PatternEditorMorph methodsFor: 'menu' stamp: 'len 24/Jun/2026, 6:59:06 am (UTC)'!
menuNshortcutsSpecsDo: aBlock
	#(
		#(100	'Set Length (l)' 	$l 	nil 	setPatternLength 	nil 	'Set pattern length')
		#(110	'Set LPB (b)' 		$b 	nil 	setPatternLPB 		nil 	'Set pattern lines per beat')
		#(120	'Copy (c)'	 	$c 	nil 	clipboardCopy 		nil 	'Copy selection to clipboard')
		#(130	'Cut (x)' 			$x 	nil 	clipboardCut		nil 	'Cut selection to clipboard')
		#(140	'Paste (v)' 		$v 	nil 	clipboardPaste		nil 	'Paste from clipboard')
	) do: aBlock! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 26/Jun/2026, 8:30:17 am (UTC)'!
balloonTextForFX: anInteger
	| command v |
	command := anInteger bitShift: -8.
	command = 67 "C (cut)" ifTrue:
		[^ 'Cut velocity to ', (((anInteger bitShift: -4) bitAnd: 16rF) / 15.0 * 100.0) rounded printString, '% after ', ((anInteger bitAnd: 16rF)/12) printString, ' lines'].
	command = 82 "R (retrigger)" ifTrue:
		[| velocityChange |
		velocityChange := #('' '-1/32' '-1/16' '-1/8' '-1/4' '-1/2' '×2/3' '×1/2' '' '+1/32' '+1/16' '+1/8' '+1/4' '+1/2' '×3/2' '×2') at: ((anInteger bitShift: -4) bitAnd: 16rF) + 1.
		velocityChange ifNotEmpty: [velocityChange := ' changing velocity by ', velocityChange].
		^ 'Retrigger every ', (anInteger bitAnd: 16rF) printString, '/12 of a line', velocityChange].
	v := anInteger bitAnd: 16rFF.
	command = 85 "U (slide pitch up)" ifTrue: [^ 'Slide pitch up by ', (v / 16.0 printStringFractionDigits: 2), ' semitones'].
	command = 68 "D (slide pitch down)" ifTrue: [^ 'Slide pitch down by ', (v / 16.0 printStringFractionDigits: 2), ' semitones'].
	command = 43 "+ (finetune note up)" ifTrue: [^ 'Finetune note up by ', (v / 256.0 printStringFractionDigits: 2)].
	command = 45 "- (finetune note down)" ifTrue: [^ 'Finetune note down by ', (v / 256.0 printStringFractionDigits: 2)].
	command = 71 "G (glide to note)" ifTrue: [^ 'Glide to note in ', (v / 16.0 printStringFractionDigits: 2), ' lines'].
	command = 76 "L (volume level)" ifTrue: [^ 'Set volume level to ', (v / 255.0 * 100.0) rounded printString, '%'].
	command = 80 "P (pan)" ifTrue: [^ 'Set pan to ', (v = 128 ifTrue: ['center'] ifFalse: [v < 128 ifTrue: [(128 - v / 128.0 * 100.0) rounded printString, '% left'] ifFalse: [(v - 128 / 127.0 * 100.0) rounded printString, '% right']])].
	command = 73 "I (volume level up)" ifTrue: [^ 'Fade in by ', (v / 255.0 * 100.0) rounded printString, '%'].
	command = 79 "O (volume level down)" ifTrue: [^ 'Fade out by ', (v / 255.0 * 100.0) rounded printString, '%'].
	command = 74 "J (pan left)" ifTrue: [^ 'Pan left by ', (v / 255.0 * 100.0) rounded printString, '%'].
	command = 75 "K (pan right)" ifTrue: [^ 'Pan right by ', (v / 255.0 * 100.0) rounded printString, '%'].
	"Sample commands:"
	command = 83 "S (sample offset)" ifTrue: [^ 'Set sample offset to ', v printString, '/255'].
	command = 60 "< (speed backwards)" ifTrue:
		[| speed lines |
		speed := ((anInteger bitShift: -4) bitAnd: 16rF) / 8.0.
		lines := anInteger bitAnd: 16rF.
		^ lines = 0 ifTrue: ['Play backwards at speed ', (speed printStringFractionDigits: 2), '×'] ifFalse: ['Slide to play backwards at speed ', (speed printStringFractionDigits: 2), '× in ', lines printString, ' lines']].
	command = 62 "< (speed forward)" ifTrue:
		[| speed lines |
		speed := ((anInteger bitShift: -4) bitAnd: 16rF) / 8.0.
		lines := anInteger bitAnd: 16rF.
		^ lines = 0 ifTrue: ['Play forward at speed ', (speed printStringFractionDigits: 2), '×'] ifFalse: ['Slide to play forward at speed ', (speed printStringFractionDigits: 2), '× in ', lines printString, ' lines']].
	"Control change commands:"
	(command between: 48 and: 57) "0 to 9" ifTrue: [^ 'Set control ', (command - 47) printString, ' to ', v printString].
	"Global commands:"
	command = 70 "F (set bpm)" ifTrue: [^ 'Set tempo to ', (v max: 1) printString, ' BPM'].
	command = 89 "Y (trigger probability)" ifTrue: [^ 'Play trigger with ', (v / 255.0 * 100) rounded printString, '% probability'].
	command = 81 "Q (trigger delay)" ifTrue: [^ 'Delay trigger by ', v printString, '/256 of a line'].
	^ nil! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 30/Dec/2025, 6:25:06 pm (UTC)'!
headerHeight
	^ labelFont lineSpacing + 8! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 8/Jun/2026, 12:14:37 pm (UTC)'!
lastColumnPosition
	^ self lastPosition - (showFXColumns ifTrue: [2] ifFalse: [1])! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 8/Jun/2026, 12:13:37 pm (UTC)'!
lastPosition
	^ showFXColumns ifTrue: [11] ifFalse: [5]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 15/Jun/2026, 12:02:36 pm (UTC)'!
onBlinkCursor
	"Blink the cursor"
	showCursor := showCursor not | pauseBlinking.
	pauseBlinking := false.
	"cursorRect ifNotNil: [ :r | self invalidateLocalRect: r]"
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026, 8:18:12 am (UTC)'!
pauseBlinking
	"Show a solid cursor (non blinking) for a short while."
	pauseBlinking := true.
	"Show cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := true.
		self redrawNeeded
		"cursorRect ifNotNil: [:r| self invalidateLocalRect: r]"]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 26/Jun/2026, 9:36:08 pm (UTC)'!
selectedLines
	| cursorLine |
	cursorLine := tracker cursorLine.
	selectionLineStart ifNil: [^ {cursorLine}].
	^ (selectionLineStart min: cursorLine) to: (selectionLineStart max: cursorLine)! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 26/Jun/2026, 9:37:04 pm (UTC)'!
selectedTracks
	| cursorTrack |
	cursorTrack := tracker cursorTrack.
	selectionTrackStart ifNil: [^ {cursorTrack}].
	^ (selectionTrackStart min: cursorTrack) to: (selectionTrackStart max: cursorTrack)! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 15/Jun/2026, 11:27:38 am (UTC)'!
showFXBalloon
	self deleteBalloon.
	cursorPosition > 5 ifFalse: [^ self].
	tracker selectedTrigger ifNotNil: [:trigger|
		(cursorPosition < 9 ifTrue: [trigger fx1] ifFalse: [trigger fx2])
			ifNotNil: [:fx| (self balloonTextForFX: fx) ifNotNil: [:text| self showBalloon: text at: self cursorRect bottomCenter]]]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026, 8:35:08 am (UTC)'!
startBlinking
	"And show the cursor"
	pauseBlinking := true.
	"Start blinking in a short while"
	showCursor := true.
	self startStepping: #onBlinkCursor stepTime: 500! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026, 8:33:48 am (UTC)'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	"Hide cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := false.
		self redrawNeeded
		"textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]"]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 15/Jun/2026, 10:24:42 am (UTC)'!
updateCursor
	(tracker followPlayhead and: [tracker isPlaying]) ifTrue: [	selectionLineStart := selectionTrackStart := nil].
	self redrawNeeded.
	self showFXBalloon! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Mar/2026, 12:05:48 pm (UTC)'!
updateTracks
	self ensureMinimumExtent.
	self redrawNeeded! !

!PatternEditorMorph class methodsFor: 'class initialization' stamp: 'len 25/Jun/2026, 1:48:13 pm (UTC)'!
initialize
	"
	self initialize
	"
	super initialize.
	"Load the monospaced font we need for the pattern editor:"
	(FontFamily availableFamilies includesKey: 'JetBrains Mono NL') ifFalse:
		[TrueTypeFontFamily readAllTrueTypeFontsIn: DirectoryEntry trueTypeFontsDirectory / 'JetBrainsMono'].
	TrackColors := (0 to: 6) collect: [:i| Color okl: 0.7 c: 0.4 h: i * (360.0 / 7) + 10.0]. "roygbiv shifted 10°"
	FXColors := Array new: 256 withAll: self unsetColor.
	"Controls:"
	'0123456789' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 80)].
	"Velocity:"
	'C' do: [:c| FXColors at: c codePoint put: self velocityColor].
	"Samples:"
	'S<>' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 220)].
	"Pitch:"
	'UDG+-' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 280)].
	"Volume and Pan:"
	'LPIOJK' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 160)].
	"Other:"
	'FQRY' do: [:c| FXColors at: c codePoint put: (Color okl: 0.95 c: 0 h: 0)]! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026, 12:58:39 pm (UTC)'!
cursorColor
	^ Color redCathode! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 13/Jun/2026, 4:44:14 pm (UTC)'!
playheadColor
	^ self cursorColor alpha: 0.3! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026, 1:07:38 pm (UTC)'!
selectionColor
	^ self cursorColor alpha: 0.4! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 10/Jun/2026, 10:03:41 am (UTC)'!
trackColor: anInteger
	^ TrackColors atWrap: anInteger! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 9/Mar/2026, 10:13:37 am (UTC)'!
unsetColor
	^ Color lightGray! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 9/Mar/2026, 10:12:29 am (UTC)'!
velocityColor
	^ `Color okl: 0.95 c: 0.2 h: 120`! !

!TransportStatusMorph methodsFor: 'drawing' stamp: 'len 23/Jun/2026, 3:54:25 pm (UTC)'!
drawOn: aCanvas
	aCanvas drawString: '▶' at: 4 @ 0 font: font color: (tracker isPlaying ifTrue: [PatchMorph waveformColor] ifFalse: [Color black])
		
"	tracker isPlaying ifTrue:
		[aCanvas drawString: '▶' '◼' at: 4 @ 0 font: font color: PatchMorph waveformColor]"! !

!TransportStatusMorph methodsFor: 'events' stamp: 'len 24/Feb/2026, 10:31:36 am (UTC)'!
handlesKeyboardFocus
	^ false! !

!TransportStatusMorph methodsFor: 'geometry' stamp: 'len 22/Jun/2026, 11:23:36 am (UTC)'!
minimumExtent
	^ (font widthOfString: 'X') *  1.5 @ font lineSpacing! !

!TransportStatusMorph methodsFor: 'initialization' stamp: 'len 22/Jun/2026, 11:23:50 am (UTC)'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: 15.
"	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15."
	self morphExtent: self minimumExtent! !

!TransportStatusMorph methodsFor: 'initialization' stamp: 'len 22/Jun/2026, 11:58:31 am (UTC)'!
setTracker: aTracker
	tracker := aTracker.
	tracker when: #playingStatusChanged send: #redrawNeeded to: self! !

!Instrument methodsFor: 'accessing' stamp: 'len 28/Dec/2025, 8:47:17 am (UTC)'!
label
	^ label! !

!Instrument methodsFor: 'accessing' stamp: 'len 28/Dec/2025, 8:47:23 am (UTC)'!
label: aString
	label := aString! !

!Instrument methodsFor: 'accessing' stamp: 'len 27/Jun/2026, 9:35:46 pm (UTC)'!
meterLeftValue
	^ patch meterLeftValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 27/Jun/2026, 9:35:56 pm (UTC)'!
meterRightValue
	^ patch meterRightValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 27/Jun/2026, 9:36:05 pm (UTC)'!
meterValue
	^ patch meterValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 28/Jun/2026, 9:12:07 am (UTC)'!
patch
	^ patch! !

!Instrument methodsFor: 'accessing' stamp: 'len 27/Jun/2026, 9:35:23 pm (UTC)'!
patchMorph
	^ patchMorph! !

!Instrument methodsFor: 'accessing' stamp: 'len 29/Jun/2026, 7:53:22 am (UTC)'!
setOwnerTrack: aTrack
	track ifNotNil: [track forgetInstrument].
	track := aTrack.
	track ifNotNil: [patch buses: track tracker buses; enabled: track enabled]! !

!Instrument methodsFor: 'accessing' stamp: 'len 3/Jan/2026, 8:40:08 am (UTC)'!
track
	^ track! !

!Instrument methodsFor: 'copying' stamp: 'len 19/Apr/2026, 3:49:45 pm (UTC)'!
copy
	| buffers |
	buffers := OrderedCollection new.
	^ self class new readFromJson: (self asJsonWithBuffers: buffers) buffers: buffers! !

!Instrument methodsFor: 'initialization' stamp: 'len 28/Jun/2026, 7:05:01 pm (UTC)'!
initialize
	patchMorph := PatchMorph new.
	patch := patchMorph patch! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:37:04 pm (UTC)'!
handleCut: anInteger
	| velocity time |
	velocity := ((anInteger bitShift: -4) bitAnd: 16rF) / 15.0.
	(time := anInteger bitAnd: 16rF) = 0 ifTrue: [^ patch setVelocity: velocity].
	track scheduleTrigger: (Trigger new velocity: (velocity * 128.0) truncated) after: time / 12.0 * track tracker tpl! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:38:19 pm (UTC)'!
handleFX: anInteger
	| command v |
	command := anInteger bitShift: -8.
	command = 67 "C (cut)" ifTrue: [^ self handleCut: anInteger].
	command = 82 "R (retrigger)" ifTrue: [^ self handleRetrigger: anInteger].
	v := anInteger bitAnd: 16rFF.
	"Pre-mixer commands (modify the instrument output to the master bus only):"
	command = 76 "L (volume level)" ifTrue: [patch setLevel:​ v / 255.0. ^ self].
	command = 80 "P (pan)" ifTrue: [patch setPan: v / 256.0 * 2.0 - 1.0. ^ self].
	command = 73 "I (volume level up)" ifTrue: [patch adjustLevelBy: v / 255.0].
	command = 79 "O (volume level down)" ifTrue: [patch adjustLevelBy: v / -255.0].
	command = 74 "J (pan left)" ifTrue: [patch adjustPanBy: v / -255.0].
	command = 75 "K (pan right)" ifTrue: [patch adjustPanBy: v / 255.0].
	"Sample commands:"
	command = 83 "S (sample offset)" ifTrue: [patch setOffset: v / 255.0. ^ self].
	"Control change commands:"
	(command between: 48 and: 57) "0 to 9" ifTrue: [patch controlBus at: command - 47 put: v / 255.0. ^ self].
	"Global commands:"
	command = 70 "F (set bpm)" ifTrue: [track tracker bpm: (v max: 1). ^ self]! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:53:41 pm (UTC)'!
handlePostNoteFX: anInteger
	"Note: pitch slide effects must be handled *after* the note on, otherwise the slide gets overridden."
	| command v |
	command := anInteger bitShift: -8.
	v := anInteger bitAnd: 16rFF.
	command = 85 "U (slide pitch up)" ifTrue: [patch adjustNoteBy: v / 16.0 glide:  track tracker tpl. ^ self].
	command = 68 "D (slide pitch down)" ifTrue: [patch adjustNoteBy: v / -16.0 glide:  track tracker tpl. ^ self].
	command = 60 "< (speed backwards)" ifTrue: [patch setSpeed: ((v bitShift: -4) / -8.0 nthRoot: 3) glide: (v bitAnd: 16rF) * track tracker tpl. ^ self].
	command = 62 "> (speed forward)" ifTrue: [patch setSpeed: ((v bitShift: -4) / 8.0 nthRoot: 3) glide: (v bitAnd: 16rF) * track tracker tpl. ^ self]! !

!Instrument methodsFor: 'playing' stamp: 'len 25/Jun/2026, 11:43:17 am (UTC)'!
handleRetrigger: anInteger
	| time velocity x |
	(time := anInteger bitAnd: 16rF) = 0 ifTrue: [^ self].
	velocity := (trigger velocity ifNil: [128.0]) / 128.0.
	x := (anInteger bitShift: -4) bitAnd: 16rF.
	(x between: 0 and: 5) ifTrue: [velocity := velocity - (#(0 0.03 0.06 0.12 0.25 0.5) at: x + 1) max: 0.0].
	(x between: 6 and: 7) ifTrue: [velocity := velocity * (#(0.666 0.5) at: x - 5)].
	(x between: 8 and: 13) ifTrue: [velocity := velocity + (#(0 0.03 0.06 0.12 0.25 0.5) at: x - 7)].
	(x between: 14 and: 15) ifTrue: [velocity := velocity / (#(0.666 0.5) at: x - 13)].
	track scheduleTrigger: (trigger copy velocity: (velocity * 128.0) truncated) after: time / 12.0 * track tracker tpl! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:42:13 pm (UTC)'!
noteOff
	patch noteOff! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:46:33 pm (UTC)'!
noteOn: midiKey
	self noteOn: midiKey glide: 0.0! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:46:22 pm (UTC)'!
noteOn: midiKey glide: numberOfLines
	patch noteOn: (track tuningOrNil ifNil: [midiKey] ifNotNil: [:aTuning| aTuning map: midiKey]) glide: (numberOfLines * track tracker tpl) truncated! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:50:15 pm (UTC)'!
playTrigger
	trigger isNoteOn
		ifTrue:
			[patch setVelocity: (trigger velocity ifNil: [128.0]) / 128.0.
			trigger isReverse "new notes start at the begining with normal speed, or at the end if playing backwards"
				ifTrue: [patch setOffset: 1.0; speed:​ -1.0]
				ifFalse: [patch setOffset: 0.0; speed:​ 1.0].
			trigger fx1 ifNotNil: [:fx| self handleFX: fx].
			trigger fx2 ifNotNil: [:fx| self handleFX: fx].
			self noteOn: trigger note + trigger noteShift glide: trigger glide.
			trigger fx1 ifNotNil: [:fx| self handlePostNoteFX: fx].
			trigger fx2 ifNotNil: [:fx| self handlePostNoteFX: fx]]
		ifFalse:
			[trigger velocity ifNotNil: [:vel| patch setVelocity: vel / 128.0].
			trigger fx1 ifNotNil: [:fx| self handleFX: fx; handlePostNoteFX: fx].
			trigger fx2 ifNotNil: [:fx| self handleFX: fx; handlePostNoteFX: fx].
			trigger isNoteOff ifTrue: [patch noteOff]].
	trigger := nil! !

!Instrument methodsFor: 'playing' stamp: 'len 27/Jun/2026, 9:50:35 pm (UTC)'!
reset
	patch reset! !

!Instrument methodsFor: 'playing' stamp: 'len 5/Jan/2026, 12:45:17 pm (UTC)'!
scheduleTrigger: aTrigger
	trigger := aTrigger! !

!Instrument methodsFor: 'playing' stamp: 'len 29/Jun/2026, 7:51:25 am (UTC)'!
tick
	patchMorph uninstallDisconnectedSignals.
	patch enabled: track enabled; clear.
	trigger ifNotNil: [self playTrigger].
	patch tick! !

!Instrument methodsFor: 'serialization' stamp: 'len 27/Jun/2026, 9:30:32 pm (UTC)'!
asJsonWithBuffers: aList
	| patchables wires patchablesJson wiresJson |
	patchables := (patchMorph submorphs select: [:m| m isKindOf: PatchableMorph]) sort: [:a :b| a morphPosition x <= b morphPosition x].
	wires := patchMorph submorphs select: [:m| m isKindOf: WireMorph].
	patchablesJson := patchables collect: [:each|
		OrderedDictionary new
			at: #class put: each model class name;
			at: #x put: each morphPosition x;
			at: #y put: each morphPosition y;
			at: #module put: (each model asJsonWithBuffers: aList);
			yourself].
	wiresJson := wires collect: [:each|
		| wireJson |
		wireJson := OrderedDictionary new
			at: #source put: (patchables indexOf: each source patchableOwner);
			at: #output put: each source selector;
			at: #target put: (patchables indexOf: each target patchableOwner);
			at: #input put: each target selector;
			yourself.
		each isControlWire ifTrue: [wireJson at: #depth put: (each source model modulations at: each target control)].
		wireJson].
	^ OrderedDictionary new
		at: #modules put: patchablesJson;
		at: #wires put: wiresJson;
		at: #label put: (label ifNil: '');
		yourself! !

!Instrument methodsFor: 'serialization' stamp: 'len 15/Jun/2026, 3:46:40 pm (UTC)'!
readFrom: aStream
	| numberOfBuffers bufferList json |
	aStream useBytes.
	numberOfBuffers := aStream nextInt32BigEndian: true.
	bufferList := (1 to: numberOfBuffers) collect: [:i| Float32Array newFromStream: aStream].
	aStream useByteCharacters.
	json := Json readFrom: aStream.
	^ self readFromJson: json buffers: bufferList! !

!Instrument methodsFor: 'serialization' stamp: 'len 29/Jun/2026, 11:59:05 am (UTC)'!
readFromJson: json buffers: bufferList
	| patchables |
	patchables := (json at: #modules) collect: [:each|
		| module |
		module := (Smalltalk at: (each at: #class) asSymbol) new.
		module readFromJson: (each at: #module) buffers: bufferList.
		module patchable morphPosition: (each at: #x) @ (each at: #y)].
	patchables do: [:each| patchMorph addMorph: each].
	(json at: #wires) do: [:each|
		| output input |
		output := (patchables at: (each at: #source)) outputs detect: [:one| one selector = (each at: #output)].
		input := (patchables at: (each at: #target)) inputs detect: [:one| one selector = (each at: #input)].
		output addConnectionTo: input.
		each at: #depth ifPresent: [:depth| output model modulations at: input control put: depth]].
	patchMorph redrawNeeded.
	label := json at: #label! !

!Instrument methodsFor: 'serialization' stamp: 'len 5/Feb/2026, 10:57:19 am (UTC)'!
writeOn: aStream
	| bufferList json |
	bufferList := OrderedCollection new.
	json := self asJsonWithBuffers: bufferList.
	aStream nextInt32Put: bufferList size bigEndian: true.
	bufferList do: [:each| each writeOn: aStream].
	json jsonWriteOn: aStream! !

!Pattern methodsFor: 'accessing' stamp: 'len 18/Dec/2025, 9:32:38 am (UTC)'!
length
	^ length! !

!Pattern methodsFor: 'accessing' stamp: 'len 26/Dec/2025, 6:55:31 pm (UTC)'!
length: anInteger
	anInteger > length ifTrue: [blocks := blocks collect: [:each| each ifNotNil: [each, (Array new: anInteger - length)]]].
	anInteger < length ifTrue: [blocks := blocks collect: [:each| each ifNotNil: [each copyFrom: 1 to: anInteger]]].
	length := anInteger! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Mar/2026, 11:31:54 am (UTC)'!
lpb
	^ lpb ifNil: [4]! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Mar/2026, 11:26:07 am (UTC)'!
lpb: anInteger
	lpb := anInteger! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Jun/2026, 7:35:57 pm (UTC)'!
swapInstrument: anInteger with: anotherInteger
	blocks do: [:each| each ifNotNil: [each do: [:trigger| trigger ifNotNil:
				[trigger instrument = anInteger
					ifTrue: [trigger instrument: anotherInteger]
					ifFalse: [trigger instrument = anotherInteger ifTrue: [trigger instrument: anInteger]]]]]].! !

!Pattern methodsFor: 'accessing' stamp: 'len 26/Dec/2025, 7:03:30 pm (UTC)'!
track: trackIndex at: index
	^ (blocks at: trackIndex) ifNotNil: [:anArray| anArray at: index]! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025, 1:18:02 pm (UTC)'!
track: trackIndex at: line position: position put: value
	| block trigger |
	block := (blocks at: trackIndex) ifNil: [value ifNil: [^ self]. blocks at: trackIndex put: (Array new: length)].
	trigger := (block at: line) ifNil: [value ifNil: [^ self]. block at: line put: Trigger new].
	trigger at: position put: value.
	trigger isEmpty ifTrue:
		[block at: line put: nil.
		(block allSatisfy: [:each| each isNil]) ifTrue: [blocks at: trackIndex put: nil]]! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025, 1:42:43 pm (UTC)'!
track: trackIndex at: index put: aTrigger
	| block |
	block := (blocks at: trackIndex) ifNil: [aTrigger ifNil: [^ self]. blocks at: trackIndex put: (Array new: length)].
	block at: index put: aTrigger.
	(aTrigger isNil and: [block allSatisfy: [:each| each isNil]]) ifTrue: [blocks at: trackIndex put: nil]! !

!Pattern methodsFor: 'accessing' stamp: 'len 11/Mar/2026, 12:54:58 pm (UTC)'!
track: trackIndex instrumentAbove: line
	"Answer the instrument set for the given track at or above the given line. This is the instrument that will play that line when the playhead reaches it."
	| block |
	block := (blocks at: trackIndex) ifNil: [^ nil].
	line to: 1 by: -1 do: [:j| (block at: j) ifNotNil: [:aTrigger| aTrigger instrument ifNotNil: [:anInteger| ^ anInteger = 0 ifFalse: [anInteger]]]].
	^ nil! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Jun/2026, 1:50:33 pm (UTC)'!
track: trackIndex swap: index1 with: index2
	(blocks at: trackIndex) ifNotNil: [:anArray| anArray swap: index1 with: index2]! !

!Pattern methodsFor: 'copying' stamp: 'len 26/Dec/2025, 7:01:58 pm (UTC)'!
postCopy
	blocks := blocks collect: [:eachBlock| eachBlock ifNotNil: [eachBlock collect: [:each| each copy]]]! !

!Pattern methodsFor: 'initialization' stamp: 'len 14/Mar/2026, 11:26:57 am (UTC)'!
initialize: anInteger
	length := 64.
	lpb := 4.
	blocks := Array new: anInteger! !

!Pattern methodsFor: 'serialization' stamp: 'len 14/Mar/2026, 11:28:00 am (UTC)'!
asJson
	| answer blocksJson |
	(answer := OrderedDictionary new)
		at: #length put: length;
		at: #lpb put: lpb.
	blocksJson := blocks collect: [:eachBlock|
		| blockJson |
		blockJson := OrderedCollection new.
		eachBlock ifNotNil:
			[eachBlock withIndexDo: [:each :i|
				each ifNotNil:
					[blockJson add: (OrderedDictionary new at: #line put: i; at: #trigger put: each asJson; yourself)]]].
		blockJson asArray].
	answer at: #blocks put: blocksJson.
	^ answer! !

!Pattern methodsFor: 'serialization' stamp: 'len 14/Mar/2026, 11:28:37 am (UTC)'!
readFromJson: json
	| blocksJson |
	length := json at: #length.
	lpb := json at: #lpb ifAbsent: [4].
	blocksJson := json at: #blocks.
	blocks := Array new: blocksJson size.
	blocksJson withIndexDo: [:eachBlockJson :t|
		eachBlockJson do: [:rowJson|
			self track: t at: (rowJson at: #line) put: (Trigger new readFromJson: (rowJson at: #trigger))]]! !

!Pattern methodsFor: 'testing' stamp: 'len 17/Feb/2026, 12:36:54 pm (UTC)'!
hasReferenceToInstrument: anInteger
	^ blocks anySatisfy: [:block| block notNil and: [block anySatisfy: [:trigger| trigger notNil and: [trigger instrument = anInteger]]]]! !

!Pattern methodsFor: 'testing' stamp: 'len 27/Dec/2025, 7:24:12 pm (UTC)'!
isEmptyTrack: anInteger
	^ (blocks at: anInteger) isNil! !

!Pattern methodsFor: 'tracks' stamp: 'len 24/Dec/2025, 11:51:22 am (UTC)'!
deleteTrack: anInteger
	"Remove the track at the given index."
	blocks := (blocks copyFrom: 1 to: anInteger - 1), (blocks copyFrom: anInteger + 1 to: blocks size)! !

!Pattern methodsFor: 'tracks' stamp: 'len 26/Dec/2025, 6:55:53 pm (UTC)'!
insertTrack: anInteger
	"Add a track at the given index."
	blocks := (blocks copyFrom: 1 to: anInteger - 1), {nil}, (blocks copyFrom: anInteger to: blocks size)! !

!Pattern methodsFor: 'tracks' stamp: 'len 31/Dec/2025, 3:48:08 pm (UTC)'!
swapTrack: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	blocks swap: anInteger with: anotherInteger! !

!Pattern methodsFor: 'private' stamp: 'len 1/Mar/2026, 7:22:10 am (UTC)'!
line: anInteger instrumentDo: instrumentBlock noteDo: noteBlock velocityDo: velocityBlock effectsDo: effectsBlock emptyTriggersDo: emptyBlock
	blocks do: [:each|
		each
			ifNil: [emptyBlock value]
			ifNotNil:
				[(each at: anInteger)
					ifNil: [emptyBlock value]
					ifNotNil: [:trigger|
						instrumentBlock value: trigger instrument.
						noteBlock value: trigger note.
						velocityBlock value: trigger velocity.
						effectsBlock value: trigger fx1; value: trigger fx2]]]! !

!Pattern class methodsFor: 'instance creation' stamp: 'len 26/Dec/2025, 11:03:15 pm (UTC)'!
new: anInteger
	^ self new initialize: anInteger! !

!Track methodsFor: 'accessing' stamp: 'len 9/Jan/2026, 8:09:05 am (UTC)'!
enabled
	^ soloed or: [muted not and: [tracker anyTrackSoloed not]]! !

!Track methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:53:29 pm (UTC)'!
inputCenterKey
	^ (tracker inputOctave - 4) * (tuning ifNil: [12] ifNotNil: [tuning size]) + 60! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026, 12:28:45 pm (UTC)'!
instrument
	^ instrument! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026, 12:28:15 pm (UTC)'!
meterLeftValue
	^ (instrument ifNil: [^ 0.0]) meterLeftValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026, 12:28:15 pm (UTC)'!
meterRightValue
	^ (instrument ifNil: [^ 0.0]) meterRightValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026, 12:28:15 pm (UTC)'!
meterValue
	^ (instrument ifNil: [^ 0.0]) meterValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025, 9:11:15 am (UTC)'!
muted
	^ muted! !

!Track methodsFor: 'accessing' stamp: 'len 31/Dec/2025, 3:30:46 pm (UTC)'!
muted: aBoolean
	muted := aBoolean! !

!Track methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 10:11:16 am (UTC)'!
noteStringFrom: note
	"Answer a string to represent the given MIDI note, depending on the tuning of this track."
	^ (tuning ifNil: [^ note noteToName]) noteStringFrom: note! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025, 9:44:47 am (UTC)'!
soloed
	^ soloed! !

!Track methodsFor: 'accessing' stamp: 'len 22/Dec/2025, 10:32:01 am (UTC)'!
soloed: aBoolean
	soloed := aBoolean! !

!Track methodsFor: 'accessing' stamp: 'len 26/Feb/2026, 10:20:51 am (UTC)'!
tracker
	^ tracker! !

!Track methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:55:24 pm (UTC)'!
tuning
	^ tuning ifNil: [Tuning edo12]! !

!Track methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:56:58 pm (UTC)'!
tuning: aTuning
	tuning := aTuning = Tuning edo12 ifFalse: [aTuning]! !

!Track methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:55:28 pm (UTC)'!
tuningOrNil
	^ tuning! !

!Track methodsFor: 'initialization' stamp: 'len 26/Feb/2026, 10:36:32 am (UTC)'!
initialize
	muted := false.
	soloed := false! !

!Track methodsFor: 'initialization' stamp: 'len 3/Jan/2026, 8:47:12 am (UTC)'!
setTracker: aTracker
	tracker := aTracker! !

!Track methodsFor: 'playing' stamp: 'len 17/Feb/2026, 12:28:32 pm (UTC)'!
forgetInstrument
	instrument := nil! !

!Track methodsFor: 'playing' stamp: 'len 13/Jun/2026, 4:34:28 pm (UTC)'!
forgetScheduledTrigger
	trigger := nil! !

!Track methodsFor: 'playing' stamp: 'len 3/Mar/2026, 4:13:06 pm (UTC)'!
playTrigger
	trigger instrument ifNotNil: [:anInteger|
		instrument ifNotNil: [instrument setOwnerTrack: nil].
		instrument := tracker instruments at: anInteger ifAbsent: [].
		instrument ifNotNil: [instrument setOwnerTrack: self "; reset"]].
	instrument ifNotNil: [instrument scheduleTrigger: trigger].
	trigger := nil! !

!Track methodsFor: 'playing' stamp: 'len 9/Jun/2026, 2:47:27 pm (UTC)'!
scheduleTrigger: aTrigger
	"Schedule aTrigger to play either immediatly if delay = 0, or after the number of ticks required by the delay.
	The delay is specified by a Qxx command, where xx specifies the delay in steps of 1/256th the duration of a line."
	| triggerDelay |
	(triggerDelay := aTrigger delay) = 0
		ifTrue: [self scheduleTrigger: aTrigger after: 0]
		ifFalse: [self scheduleTrigger: aTrigger after: triggerDelay / 256.0 * tracker tpl]! !

!Track methodsFor: 'playing' stamp: 'len 26/Feb/2026, 4:30:14 pm (UTC)'!
scheduleTrigger: aTrigger after: ticks
	"Schedule aTrigger to play after the required number of ticks."
	trigger := aTrigger.
	ticksToTrigger := ticks! !

!Track methodsFor: 'playing' stamp: 'len 17/Feb/2026, 12:28:15 pm (UTC)'!
tick
	trigger ifNotNil: [ticksToTrigger > 0 ifTrue: [ticksToTrigger := ticksToTrigger - 1] ifFalse: [self playTrigger]].
	instrument ifNotNil: [instrument tick]! !

!Track methodsFor: 'serialization' stamp: 'len 9/Jun/2026, 4:23:45 pm (UTC)'!
asJson
	| answer |
	(answer := OrderedDictionary new)
		at: #muted put: muted;
		at: #soloed put: soloed.
	tuning ifNotNil: [:aTuning| answer at: #tuning put: aTuning asJson].
	^ answer! !

!Track methodsFor: 'serialization' stamp: 'len 9/Jun/2026, 4:24:44 pm (UTC)'!
readFromJson: json
	muted := json at: #muted.
	soloed := json at: #soloed.
	json at: #tuning ifPresent: [:tuningJson| tuning := Tuning new readFromJson: tuningJson]! !

!Trigger methodsFor: 'accessing' stamp: 'len 13/Jun/2026, 8:28:39 am (UTC)'!
at: position put: value
	position = 1 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)]].
	position = 2 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16rF0) bitOr: value]].
	position = 3 ifTrue: [^ note := value].
	position = 4 ifTrue: [^ velocity := value ifNotNil: [(((velocity ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)) min: 16r80]].
	position = 5 ifTrue: [^ velocity := value ifNotNil: [(((velocity ifNil: [0]) bitAnd: 16rF0) bitOr: value) min: 16r80]].
	position = 6 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 7 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 8 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	position = 9 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 10 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 11 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	^ self error: 'out of bounds'! !

!Trigger methodsFor: 'accessing' stamp: 'len 26/Feb/2026, 4:26:06 pm (UTC)'!
delay
	"Answer the delay for this trigger, i.e. the parameter of the effect command Q."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 81 "Q" ifTrue: [^ fx1 bitAnd: 16rFF]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 81 "Q" ifTrue: [^ fx2 bitAnd: 16rFF]].
	^ 0! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 2:03:26 pm (UTC)'!
fx1
	^ fx1! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 1:35:00 pm (UTC)'!
fx1: anInteger
	fx1 := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 1:35:18 pm (UTC)'!
fx2
	^ fx2! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 1:35:04 pm (UTC)'!
fx2: anInteger
	fx2 := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 26/Jun/2026, 10:06:58 am (UTC)'!
glide
	"Answer the glide or portamento effect for this trigger in number of lines.
	This is the value of the parameter of the effect command G."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 71 "G" ifTrue: [^ (fx1 bitAnd: 16rFF) / 16.0]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 71 "G" ifTrue: [^ (fx2 bitAnd: 16rFF) / 16.0]].
	^ 0! !

!Trigger methodsFor: 'accessing' stamp: 'len 24/Dec/2025, 8:57:45 am (UTC)'!
instrument
	^ instrument! !

!Trigger methodsFor: 'accessing' stamp: 'len 24/Dec/2025, 8:59:14 am (UTC)'!
instrument: anInteger
	instrument := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 1:34:20 pm (UTC)'!
note
	^ note! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025, 1:34:28 pm (UTC)'!
note: anInteger
	note := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 14/Jun/2026, 10:12:35 am (UTC)'!
noteShift
	"If the receiver has any +xx or -xx finetuning effects, answer the shift amount from -1.0 (previous note) to +1.0 (next note). Otherwise answer 0."
	| answer cmd |
	answer := 0.0.
	fx1 ifNotNil:
		[(cmd := fx1 bitShift: -8) = 43 "+xx (finetune note up)"
			ifTrue: [answer := (fx1 bitAnd: 16rFF) / 256.0 + answer]
			ifFalse: [cmd = 45 "-xx (finetune note down)" ifTrue: [answer := (fx1 bitAnd: 16rFF) / -256.0 + answer]]].
	fx2 ifNotNil:
		[(cmd := fx2 bitShift: -8) = 43 "+xx (finetune note up)"
			ifTrue: [answer := (fx2 bitAnd: 16rFF) / 256.0 + answer]
			ifFalse: [cmd = 45 "-xx (finetune note down)" ifTrue: [answer := (fx2 bitAnd: 16rFF) / -256.0 + answer]]].
	^ answer! !

!Trigger methodsFor: 'accessing' stamp: 'len 9/Mar/2026, 10:28:01 am (UTC)'!
probability
	"Answer the probability for this trigger, i.e. the parameter of the effect command Yxx."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 89 "Y" ifTrue: [^ (fx1 bitAnd: 16rFF) / 255.0]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 89 "Y" ifTrue: [^ (fx2 bitAnd: 16rFF) / 255.0]].
	^ 1.0! !

!Trigger methodsFor: 'accessing' stamp: 'len 19/Dec/2025, 12:13:34 pm (UTC)'!
velocity
	^ velocity! !

!Trigger methodsFor: 'accessing' stamp: 'len 13/Jun/2026, 8:18:59 am (UTC)'!
velocity: anInteger
	velocity := anInteger min: 128 max: 0! !

!Trigger methodsFor: 'serialization' stamp: 'len 6/Feb/2026, 8:11:33 am (UTC)'!
asJson
	| answer |
	answer := OrderedDictionary new.
	note ifNotNil: [answer at: #note put: note].
	instrument ifNotNil: [answer at: #instrument put: instrument].
	velocity ifNotNil: [answer at: #velocity put: velocity].
	fx1 ifNotNil: [answer at: #fx1 put: fx1].
	fx2 ifNotNil: [answer at: #fx2 put: fx2].
	^ answer! !

!Trigger methodsFor: 'serialization' stamp: 'len 6/Feb/2026, 8:13:53 am (UTC)'!
readFromJson: json
	note := json at: #note ifAbsent: [].
	instrument := json at: #instrument ifAbsent: [].
	velocity := json at: #velocity ifAbsent: [].
	fx1 := json at: #fx1 ifAbsent: [].
	fx2 := json at: #fx2 ifAbsent: []! !

!Trigger methodsFor: 'testing' stamp: 'len 27/Dec/2025, 1:32:35 pm (UTC)'!
isEmpty
	^ note isNil and: [instrument isNil and: [velocity isNil and: [fx1 isNil and: [fx2 isNil]]]]! !

!Trigger methodsFor: 'testing' stamp: 'len 18/Feb/2026, 4:33:07 pm (UTC)'!
isNoteOff
	^ note notNil and: [note < 0]! !

!Trigger methodsFor: 'testing' stamp: 'len 18/Feb/2026, 4:28:26 pm (UTC)'!
isNoteOn
	^ note notNil and: [note >= 0]! !

!Trigger methodsFor: 'testing' stamp: 'len 9/Jun/2026, 7:43:58 am (UTC)'!
isReverse
	"Answer true if the receiver has an effect <xx to play a sample backwards."
	^ (fx1 notNil and: [(fx1 bitShift: -8) = 60]) or: [fx2 notNil and: [(fx2 bitShift: -8) = 60]]! !

!Trigger methodsFor: 'transformations' stamp: 'len 11/Jun/2026, 9:06:34 am (UTC)'!
transposeBy: steps
	self isNoteOn ifTrue: [(note + steps between: 0 and: 127) ifTrue: [note := note + steps]]! !

!Tuning methodsFor: 'accessing' stamp: 'len 9/Jun/2026, 7:00:32 pm (UTC)'!
intervals
	^ intervals! !

!Tuning methodsFor: 'accessing' stamp: 'len 9/Jun/2026, 11:47:48 am (UTC)'!
label
	^ label! !

!Tuning methodsFor: 'accessing' stamp: 'len 9/Jun/2026, 8:27:37 pm (UTC)'!
map: midiKey
	"Map a MIDI key in this tuning to a MIDI key in the standard 12-TET tuning.
	Assumes root key = C4 (MIDI key 60), i.e. it maps the root at MIDI key 60 to the standard C4 at 261.63 Hz."
	| cents degree octave relativeNote |
	relativeNote := midiKey - 60.0.
	octave := relativeNote // intervals size.
	degree := relativeNote \\ intervals size.
	cents := octave * intervals last + (degree < 1.0 ifTrue: [intervals first * degree] ifFalse: [intervals atLinear: degree]).
	^ (60 noteToHertz * (2.0 raisedTo: cents / 1200.0)) hertzToNote! !

!Tuning methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 4:38:45 pm (UTC)'!
noteStringFrom: midiKey
	"Answer a string to represent the given MIDI note."
	| relativeMidiKey n degree |
	relativeMidiKey := midiKey rounded - 60.
	n := intervals size.
	degree := relativeMidiKey \\ n.
"	degreeString := degreeNames ifNotNil: [degreeNames at: degree+1] ifNil: [degree printStringBase: 10 length: 2 padded: true].
	degreeString size = 1 ifTrue: [degreeString := degreeString, '-'].
	^ degreeString, (relativeMidiKey // n + 4) printString
	"
	^ (degree < 10 ifTrue: [' ', degree printString] ifFalse: [degree printString]), (#('₀' '₁' '₂' '₃' '₄' '₅' '₆' '₇' '₈' '₉') at: relativeMidiKey // n + 5 ifAbsent: ['?'])! !

!Tuning methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:58:10 pm (UTC)'!
period
	^ intervals last! !

!Tuning methodsFor: 'accessing' stamp: 'len 10/Jun/2026, 6:57:38 pm (UTC)'!
size
	^ intervals size! !

!Tuning methodsFor: 'serialization' stamp: 'len 10/Jun/2026, 7:28:58 pm (UTC)'!
asJson
	| answer |
	(answer := OrderedDictionary new)
		at: #label put: label;
		at: #intervals put: intervals.
	noteNames ifNotNil: [answer at: #noteNames put: (noteNames collect: [:each| each asUtf8Bytes])].
	^ answer! !

!Tuning methodsFor: 'serialization' stamp: 'len 10/Jun/2026, 7:28:49 pm (UTC)'!
readFromJson: json
	label := json at: #label.
	intervals := (json at: #intervals) asFloat32Array.
	json at: #noteNames ifPresent: [:anArray| noteNames := anArray asArray collect: [:each| CharacterSequence fromUtf8Bytes: each asByteArray]]! !

!Tuning methodsFor: 'private' stamp: 'len 9/Jun/2026, 6:56:45 pm (UTC)'!
intervals: anArray
	intervals := anArray asFloat32Array! !

!Tuning methodsFor: 'private' stamp: 'len 9/Jun/2026, 11:48:00 am (UTC)'!
label: aString
	label := aString! !

!Tuning methodsFor: 'private' stamp: 'len 10/Jun/2026, 7:12:06 pm (UTC)'!
noteNames: anArray
	noteNames := anArray! !

!Tuning methodsFor: 'comparing' stamp: 'len 22/Jun/2026, 9:20:21 pm (UTC)'!
= aTuning
	^ self class = aTuning class and: [intervals = aTuning intervals]! !

!Tuning methodsFor: 'comparing' stamp: 'len 22/Jun/2026, 9:20:29 pm (UTC)'!
hash
	^ intervals hash! !

!Tuning methodsFor: 'printing' stamp: 'len 22/Jun/2026, 9:23:34 am (UTC)'!
printOn: aStream
	aStream nextPutAll: (label ifNil: [^ super printOn: aStream])! !

!Tuning class methodsFor: 'library' stamp: 'len 9/Jun/2026, 3:14:43 pm (UTC)'!
library
	^ Library! !

!Tuning class methodsFor: 'class initialization' stamp: 'len 10/Jun/2026, 7:01:07 pm (UTC)'!
initialize
	super initialize.
	EDO12 := nil.
	Library := OrderedCollection new.
	Library addAll: {self edo7. self edo12. self edo19. self edo31. self edo: 53. self fiveLimitJustIntonation. self pythagorean. self harmonic: 8}! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 9/Jun/2026, 6:59:43 pm (UTC)'!
edo: anInteger
	^ self label: anInteger printString, '-EDO' intervals: ((1 to: anInteger) collect: [:i| 1200.0 * i / anInteger])! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:06 pm (UTC)'!
edo12
	^ EDO12 ifNil: [EDO12 := (self edo: 12) noteNames: #('C' 'C♯' 'D' 'D♯' 'E' 'F' 'F♯' 'G' 'G♯' 'A' 'A♯' 'B')]! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:07 pm (UTC)'!
edo19
	^ (self edo: 19) noteNames: #('C' 'C♯' 'D♭' 'D' 'D♯' 'E♭' 'E' 'E♯' "=F♭" 'F' 'F♯' 'G♭' 'G' 'G♯' 'A♭' 'A' 'A♯' 'B♭' 'B' 'B♯' "=C♭")! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:06 pm (UTC)'!
edo31
	^ (self edo: 31) noteNames: #('C' 'C↑' 'C♯' 'D♭' 'D↓' 'D' 'D↑' 'D♯' 'E♭' 'E↓' 'E' 'E↑' 'F↓' 'F' 'F↑' 'F♯' 'G♭' 'G↓' 'G' 'G↑' 'G♯' 'A♭' 'A↓' 'A' 'A↑' 'A♯' 'B♭' 'B↓' 'B' 'B↑' 'C↓')! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:06 pm (UTC)'!
edo7
	^ (self edo: 7) noteNames: #('C' 'D' 'E' 'F' 'G' 'A' 'B')! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:07 pm (UTC)'!
fiveLimitJustIntonation
	^ (self label: '5-Limit JI' ratios: {16/15. 9/8. 6/5. 5/4. 4/3. 45/32. 3/2. 8/5. 5/3. 9/5. 15/8. 2/1}) noteNames: #('C' 'C♯' 'D' 'E♭' 'E↓' "syntonic E, lower than Pythagorean by ~21.5¢" 'F' "'F♯↓'" 'F↡'  "lower than Pythagorean F♯" 'G' 'G♯' 'A↓' "syntonic A" 'B♭' 'B↓' "syntonic B")! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 9/Jun/2026, 6:59:10 pm (UTC)'!
harmonic: n
	^ self label: 'Harmonic ', n printString ratios: ((n to: n*2) collect: [:m| m / n])! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 9/Jun/2026, 6:58:37 pm (UTC)'!
label: aString intervals: anArray
	^ self new label: aString; intervals: anArray! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 9/Jun/2026, 6:58:52 pm (UTC)'!
label: aString ratios: aCollection
	^ self label: aString intervals: (aCollection collect: [:each| (each log: 2.0) * 1200.0]) sorted! !

!Tuning class methodsFor: 'instance creation' stamp: 'len 10/Jun/2026, 7:12:06 pm (UTC)'!
pythagorean
	^ (self label: 'Pythagorean' ratios: {256/243. 9/8. 32/27. 81/64. 4/3. 1024/729. 3/2. 128/81. 27/16. 16/9. 243/128. 2/1}) noteNames: #('C' 'C♯' 'D' 'D♯' 'E' 'F' 'F♯' 'G' 'G♯' 'A' 'A♯' 'B')
! !

!Morph methodsFor: '*tracker' stamp: 'len 15/Jun/2026, 1:17:50 pm (UTC)'!
showBalloon: stringOrText at: localPosition
	"Pop up a balloon containing the given string,
	first removing any existing BalloonMorphs in the world."

	| balloon |
	self world ifNotNil: [:w|
		balloon := HoverHelpMorph contents: stringOrText doWordWrap: false.
		"Do it in a while. In some cases, processing the event that
		might have triggered us might also remove any Help Balloon"
		UISupervisor whenUIinSafeState: [balloon popUpForHand: w activeHand; target: self getter: nil; morphPosition: (self externalizeToWorld: localPosition)]]! !
DarkerTheme initialize!
PatternEditorMorph initialize!
Tuning initialize!
