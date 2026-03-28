'From Cuis7.7 [latest update: #7797] on 28 March 2026 at 9:47:15 pm'!
'Description A tracker implemented with Signals.'!
!provides: 'Tracker' 1 11!
!requires: 'Signals' 1 490 nil!
SystemOrganization addCategory: #'Tracker-Kernel'!
SystemOrganization addCategory: #'Tracker-Morphic'!


!classDefinition: #TrackerWindow category: #'Tracker-Morphic'!
SystemWindow subclass: #TrackerWindow
	instanceVariableNames: 'instrumentEditor meter sequencer patternEditor lowerPane'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'TrackerWindow class' category: #'Tracker-Morphic'!
TrackerWindow class
	instanceVariableNames: ''!

!classDefinition: #InstrumentEditorMorph category: #'Tracker-Morphic'!
ZoomerMorph subclass: #InstrumentEditorMorph
	instanceVariableNames: 'tracker clipboard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'InstrumentEditorMorph class' category: #'Tracker-Morphic'!
InstrumentEditorMorph class
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
	instanceVariableNames: 'tracker cursorPosition font labelFont labelMonoFont centerKey editStep showCursor pauseBlinking clipboard selectionLineStart selectionTrackStart'
	classVariableNames: 'FXColors'
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'PatternEditorMorph class' category: #'Tracker-Morphic'!
PatternEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #SequencerMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #SequencerMorph
	instanceVariableNames: 'tracker font clipboard selectionStart showCursor pauseBlinking'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'SequencerMorph class' category: #'Tracker-Morphic'!
SequencerMorph class
	instanceVariableNames: ''!

!classDefinition: #TrackerBarMorph category: #'Tracker-Morphic'!
BoxMorph subclass: #TrackerBarMorph
	instanceVariableNames: 'tracker font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Morphic'!
!classDefinition: 'TrackerBarMorph class' category: #'Tracker-Morphic'!
TrackerBarMorph class
	instanceVariableNames: ''!

!classDefinition: #Instrument category: #'Tracker-Kernel'!
Object subclass: #Instrument
	instanceVariableNames: 'label patch modules noteReceivers velocityReceivers gateReceivers samples audioOutput controlValues note noteIncrement glideTicks track trigger'
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
	instanceVariableNames: 'tracker color muted soloed instrument ticksToTrigger trigger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Track class' category: #'Tracker-Kernel'!
Track class
	instanceVariableNames: ''!

!classDefinition: #Tracker category: #'Tracker-Kernel'!
Object subclass: #Tracker
	instanceVariableNames: 'instruments tracks sequence label bpm swing level inputCenterKey cursorPattern cursorLine cursorTrack playheadPattern playheadLine followPlayhead playStartPattern playStartLine playEndPattern playEndLine playingMask loop anyTrackSoloed ticksToLine peakLeft peakRight buses random'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Tracker-Kernel'!
!classDefinition: 'Tracker class' category: #'Tracker-Kernel'!
Tracker class
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


!Trigger commentStamp: '<historical>' prior: 0!
A trigger is a cell in a pattern. It can contain any of the following (optional) parameters: an instrument number, a note to play, a velocity value, and two effect commands.

Commands:
∙ Cxy set velocity to x (0.0 to 1.0) after (y+1)/16 of a line
∙ Rxx retrigger every (xx+1)/256 of a line
∙ Gxx glide to note at speed xx in 1/16th of a line
∙ Lxx set instrument volume level to xx (0.0 to 1.0)
∙ Pxx set instrument pan (00 = left, 80 = center, FF = right)
∙ Ixx / Oxx adjust volume level up/down
∙ Jxx / Kxx adjust pan left/right
∙ Uxx / Dxx adjust note up/down
∙ +xx / -xx adjust velocity up/down
∙ Sxx set sample offset
∙ <xx / >xx set speed to xx and play backwards / forward
∙ 0xx to 9xx set control input (0 = 0, 7F = 1.0, 80 = -1)
∙ Fxx set BPM to xx
∙ Qxx delay trigger by xx/256 of a line
∙ Yxx set the probability of playing the trigger (0 = never, FF = always)
!

!TrackerWindow methodsFor: 'actions' stamp: 'len 18/Feb/2026 17:48:03'!
openProject
	self request: 'Project name' initialAnswer: '' do: [:name|
		(self class package packageDirectory / 'library' // (name, '.song')) readStreamDo: [:s| model readFrom: s binary].
		model label: name.
		self setLabel: name.
		model triggerEvent: #cursorChanged]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 18/Feb/2026 17:46:40'!
saveProject
	self request: 'Project name' initialAnswer: (model label ifNil: '') do: [:newName|
		model label: newName.
		(self class package packageDirectory / 'library' // (newName, '.song')) writeStreamDo: [:s| model writeOn: s].
		self setLabel: newName]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 7/Jan/2026 14:25:54'!
setBPM
	self request: 'BPM' initialAnswer: model bpm printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| model bpm: s asNumber]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 15/Mar/2026 15:08:22'!
setSwing
	self request: 'Swing' initialAnswer: (model swing * 100) truncated printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 0 and: 100]] do: [:s| model swing: s asNumber / 100.0]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 17/Feb/2026 19:20:00'!
toggleLowerPane
	lowerPane visible: lowerPane visible not.
	instrumentEditor layoutSpec proportionalHeight: (lowerPane visible ifTrue: [0.38] ifFalse: [1.0])! !

!TrackerWindow methodsFor: 'events' stamp: 'len 15/Mar/2026 18:55:17'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $f ifTrue: [self setBPM. ^ true].
	anEvent keyCharacter = $g ifTrue: [self setSwing. ^ true].
	anEvent keyCharacter = $o ifTrue: [self openProject. ^ true].
	anEvent keyCharacter = $s ifTrue: [self saveProject. ^ true].
	anEvent keyCharacter = $j ifTrue: [self toggleLowerPane. ^ true].
	anEvent keyCharacter = $r ifTrue: [instrumentEditor renameInstrument. ^ true].
	anEvent keyCharacter = $e ifTrue: [instrumentEditor exportInstrument. ^ true].
	anEvent keyCharacter = $i ifTrue: [instrumentEditor importInstrument. ^ true].
	anEvent keyCharacter = $] ifTrue: [model inputOctaveUp. ^ true].
	anEvent keyCharacter = $[ ifTrue: [model inputOctaveDown. ^ true].
	anEvent keyCharacter = $n ifTrue: [model insertPattern. ^ true].
	anEvent keyCharacter = $N ifTrue: [model deletePattern. ^ true].
	anEvent keyCharacter = $t ifTrue: [model addTrack. ^ true].
	anEvent keyCharacter = $T ifTrue: [model deleteTrack. ^ true].
	anEvent keyCharacter = $m ifTrue: [model toggleTrackMask. ^ true].
	^ false! !

!TrackerWindow methodsFor: 'events' stamp: 'len 9/Mar/2026 22:25:11'!
keyStroke: anEvent
	anEvent isSpace ifTrue: [model isPlaying ifTrue: [model stop] ifFalse: [model loop: anEvent secondaryModifierPressed; play]. ^ true].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	^ super keyStroke: anEvent! !

!TrackerWindow methodsFor: 'initialization' stamp: 'len 20/Feb/2026 22:52:02'!
buildMorphicWindow
	| lowerLeftPane sequencerScroller patternEditorScroller bar |
	instrumentEditor := InstrumentEditorMorph new setTracker: model.
	meter := MultitrackMeterMorph new setTracker: model.
	sequencer := SequencerMorph new setTracker: model.
	patternEditor := PatternEditorMorph new setTracker: model.
	instrumentEditor when: #instrumentLabelChanged send: #redrawNeeded to: patternEditor. "to redraw instrument label in the track header"
	bar := TrackerBarMorph new setTracker: model.
	lowerPane := LinearLayoutMorph newRow.
	lowerLeftPane := LinearLayoutMorph newColumn.
	sequencerScroller := ScrollerMorph new vertical: true; scrollable: sequencer.
	patternEditorScroller := ScrollerMorph new horizontal: true; scrollable: patternEditor.
	lowerLeftPane
		addMorph: meter layoutSpec: LayoutSizeSpec new useMorphHeight;
		addMorph: sequencerScroller layoutSpec: LayoutSizeSpec new.
	lowerPane
		addMorph: lowerLeftPane layoutSpec: (LayoutSizeSpec new useMorphWidth);
		addMorph: patternEditorScroller layoutSpec: LayoutSizeSpec new.
	self layoutMorph
		addMorph: bar fixedHeight: 24;
		addMorph: instrumentEditor proportionalHeight: 0.38;
		addMorph: lowerPane proportionalHeight: 1.0 - 0.38! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:24:19'!
clipboardCopy
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [clipboard := each model copy. ^ self]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:23:50'!
clipboardCut
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [clipboard := each model copy. each delete. ^ self]]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 18/Feb/2026 17:29:51'!
clipboardPaste
	| patch |
	clipboard ifNil: [^ self].
	patch := self patch ifNil: [^ self].
	patch addMorph: clipboard copy patchable position: ((patch internalizeFromWorld: self activeHand morphPosition))! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 20/Feb/2026 22:49:40'!
exportInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: newName.
		(self class package packageDirectory / 'library' // (newName, '.patch')) writeStreamDo: [:s| instrument writeOn: s].
		self triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 20/Feb/2026 22:49:59'!
importInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName|
		instrument label: newName.
		(self class package packageDirectory / 'library' // (newName, '.patch')) readStreamDo: [:s| instrument readFrom: s binary].
		self triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'actions' stamp: 'len 20/Feb/2026 22:50:13'!
renameInstrument
	| instrument |
	instrument := tracker selectedInstrument ifNil: [^ self].
	self request: 'Instrument name' initialAnswer: (instrument label ifNil: ['']) do: [:newName| instrument label: newName. self triggerEvent: #instrumentLabelChanged]! !

!InstrumentEditorMorph methodsFor: 'drawing' stamp: 'len 20/Feb/2026 22:55:16'!
drawOn: aCanvas
"	aCanvas fillRectangle: self localBounds color: tracker selectedTrack backgroundColor"! !

!InstrumentEditorMorph methodsFor: 'events' stamp: 'len 15/Mar/2026 18:55:03'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	^ false! !

!InstrumentEditorMorph methodsFor: 'events' stamp: 'len 24/Mar/2026 01:22:06'!
keyStroke: anEvent
	| c i |
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
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
			[anEvent wasHandled: true. tracker selectedInstrument ifNotNil: [:anInstument| anInstument noteOn: i + tracker inputCenterKey - 1]. ^ self]].
	^ super keyStroke: anEvent! !

!InstrumentEditorMorph methodsFor: 'initialization' stamp: 'len 18/Feb/2026 17:30:12'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #cursorChanged send: #update to: self.
	self update! !

!InstrumentEditorMorph methodsFor: 'private' stamp: 'len 18/Feb/2026 16:16:00'!
patch
	^ submorphs detect: [:one| one isKindOf: PatchMorph] ifNone: []! !

!InstrumentEditorMorph methodsFor: 'private' stamp: 'len 20/Feb/2026 20:35:37'!
update
	| selectedPatch |
	selectedPatch := tracker selectedInstrument ifNotNil: [:anInstrument| anInstrument patch].
	selectedPatch = self patch ifFalse:
		[self removeAllMorphs.
		selectedPatch ifNotNil: [self addMorph: selectedPatch]].
	self redrawNeeded! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 16:36:41'!
colorForMeterValue: aNumber
	"White up to -12 dB, yellow from -12 dB to -3 dB, red over -3 dB."
	^ aNumber > 0.7 ifTrue: [Color redCathode] ifFalse: [aNumber > 0.25 ifTrue: [Color lemonPhosphor] ifFalse: [Color white]]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 10/Mar/2026 18:58:12'!
drawOn: aCanvas
	| v x y leftMaster rightMaster peak |
	leftMaster := rightMaster := 0.0.
	tracker tracks withIndexDo: [:track :i|
		(v := track meterValue) > 0.001 ifTrue:
			[x := meterSpacing * (i-1) + leftMargin.
			y := self yForMeterValue: v.
			aCanvas fillRectangle: (x @ y corner: x + meterWidth @ extent y) color: track color.
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

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 24/Jan/2026 14:11:16'!
requiresVectorCanvas
	^ true ! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 25/Jan/2026 19:46:18'!
yForMeterValue: aNumber
	"Answer the y coordinate for the given linear meter value (RMS or peak).
	We map it logarithmically to the height of the morph. We ignore values below -60 dB or over 0 dB."
	^ extent y - (extent y * (aNumber linearToDecibels + 60.0 max: 0.0) / 60.0) max: 0.0! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 17:31:47'!
handlesKeyboardFocus
	^ false! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 24/Jan/2026 14:14:37'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!MultitrackMeterMorph methodsFor: 'events' stamp: 'len 6/Feb/2026 17:57:18'!
mouseScroll: anEvent localPosition: localEventPosition
	| step |
	step := 0.01.
	anEvent shiftPressed ifTrue: [step := step * 0.1].
	anEvent direction = #up ifTrue: [step := step negated] ifFalse: [anEvent direction = #down ifFalse: [^ self]].
	tracker level: tracker level + step.
	self showBalloon: tracker level linearToDecibelsPrintString! !

!MultitrackMeterMorph methodsFor: 'geometry' stamp: 'len 31/Dec/2025 23:16:09'!
minimumExtent
	^ meterSpacing * (tracker tracks size + 1) @ 64! !

!MultitrackMeterMorph methodsFor: 'initialization' stamp: 'len 10/Mar/2026 19:03:03'!
initialize
	| font charWidth |
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
	charWidth := font widthOf: $X.
	leftMargin := charWidth * 3 + (charWidth/4.0).
	meterWidth := charWidth / 2.0.
	meterSpacing := meterWidth + (charWidth/4.0)! !

!MultitrackMeterMorph methodsFor: 'initialization' stamp: 'len 24/Jan/2026 14:21:32'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #levelChanged send: #redrawNeeded to: self! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 19/Jan/2026 02:01:38'!
step
	(tracker isPlaying or: [tracker tracks anySatisfy: [:any| any meterValue > 0.01]]) ifTrue: [self redrawNeeded]! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 19/Jan/2026 01:59:32'!
stepTime
	^ 100! !

!MultitrackMeterMorph methodsFor: 'stepping' stamp: 'len 28/Dec/2025 16:24:02'!
wantsSteps
	^ true! !

!MultitrackMeterMorph methodsFor: 'private' stamp: 'len 31/Dec/2025 22:43:38'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 11/Mar/2026 14:45:09'!
adjustFontSizeBy: anInteger
	| pointSizes |
	pointSizes := font family pointSizes select: [:each| each between: 6 and: 36]. "not too small, not too big"
	font := font family atPointSize: (pointSizes atPin: (pointSizes indexOf: font pointSize) + anInteger).
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026 16:13:28'!
clipboardCopy
	| pattern |
	selectionLineStart ifNil: [clipboard := {{(tracker selectedTrigger ifNil: [^ self]) copy}}. ^ self].
	pattern := tracker selectedPattern.
	clipboard := ((selectionLineStart min: tracker cursorLine) to: (selectionLineStart max: tracker cursorLine))
		collect: [:i|
			((selectionTrackStart min: tracker cursorTrack) to: (selectionTrackStart max: tracker cursorTrack)) 				collect: [:k| pattern track: k at: i]]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 22/Feb/2026 22:24:00'!
clipboardCut
	self clipboardCopy; selectionDelete! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 22/Feb/2026 22:16:31'!
clipboardPaste
	| i0 k0 pattern |
	selectionLineStart := selectionTrackStart := nil.
	pattern := tracker selectedPattern.
	k0 := tracker cursorTrack - 1.
	i0 := tracker cursorLine - 1.
	(clipboard ifNil: [^ self]) withIndexDo: [:line :i|
		line withIndexDo: [:trigger :k|
			(k0 + k <= tracker tracks size and: [i0 + i <= pattern length])
				ifTrue: [pattern track: k0 + k at: i0 + i put: trigger copy]]].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Mar/2026 19:14:42'!
moveCursorColumnLeft
	cursorPosition <= 2
		ifTrue:
			[tracker cursorTrack = 1 ifTrue: [^ self].
			tracker moveCursorTrackLeft.
			cursorPosition := self tracksMaxPosition - 2]
		ifFalse:
			[cursorPosition := #(1 1 1 3 3 4 4 4 6 6 6) at: cursorPosition].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 15/Mar/2026 19:14:19'!
moveCursorColumnRight
	cursorPosition >= (self tracksMaxPosition - 2)
		ifTrue:
			[tracker cursorTrack = tracker tracks size ifTrue: [^ self].
			tracker moveCursorTrackRight.
			cursorPosition := 1]
		ifFalse:
			[cursorPosition := #(3 3 4 6 6 9 9 9) at: cursorPosition].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 1/Jan/2026 16:37:27'!
moveCursorLeft
	cursorPosition = 1
		ifTrue:
			[tracker cursorTrack = 1 ifTrue: [^ self].
			tracker moveCursorTrackLeft.
			cursorPosition := self tracksMaxPosition]
		ifFalse:
			[cursorPosition := cursorPosition - 1].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 1/Jan/2026 16:37:49'!
moveCursorRight
	cursorPosition = self tracksMaxPosition
		ifTrue:
			[tracker cursorTrack = tracker tracks size ifTrue: [^ self].
			tracker moveCursorTrackRight.
			cursorPosition := 1]
		ifFalse:
			[cursorPosition := cursorPosition + 1].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 9/Mar/2026 19:44:57'!
playSelection
	| cursorPattern cursorLine cursorTrack |
	cursorPattern := tracker cursorPattern.
	cursorLine := tracker cursorLine.
	cursorTrack := tracker cursorTrack.
	selectionLineStart ifNil: [tracker playFrom: cursorPattern line: cursorLine to: cursorPattern line: cursorLine tracks: {cursorTrack}. ^ self].
	tracker playFrom: cursorPattern line: (selectionLineStart min: cursorLine) to: cursorPattern line: (selectionLineStart max: cursorLine) tracks: ((selectionTrackStart min: cursorTrack) to: (selectionTrackStart max: cursorTrack))! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 24/Feb/2026 01:30:51'!
selectedTriggersDo: aBlock
	| pattern |
	selectionLineStart ifNil: [tracker selectedTrigger ifNotNil: aBlock. ^ self].
	pattern := tracker selectedPattern.
	(selectionLineStart min: tracker cursorLine) to: (selectionLineStart max: tracker cursorLine) do: [:i|
		(selectionTrackStart min: tracker cursorTrack) to: (selectionTrackStart max: tracker cursorTrack) do: [:k|
			(pattern track: k at: i) ifNotNil: aBlock]]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026 16:14:01'!
selectionDelete
	| pattern |
	pattern := tracker selectedPattern.
	selectionLineStart ifNil:
		[pattern track: tracker cursorTrack at: tracker cursorLine put: nil.
		self redrawNeeded.
		^ self].
	(selectionLineStart min: tracker cursorLine) to: (selectionLineStart max: tracker cursorLine) do: [:i|
		(selectionTrackStart min: tracker cursorTrack) to: (selectionTrackStart max: tracker cursorTrack) do: [:k|
			pattern track: k at: i put: nil]].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 14/Mar/2026 18:30:14'!
setPatternLPB
	self request: 'LPB' initialAnswer: tracker selectedPattern lpb printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker selectedPattern lpb: s asNumber. self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 4/Jan/2026 15:52:47'!
setPatternLength
	tracker isPlaying ifTrue: [^ self].
	self request: 'Pattern length' initialAnswer: tracker selectedPattern length printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker setSelectedPatternLength: s asNumber. self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 1/Mar/2026 14:29:42'!
drawCursorOn: aCanvas
	| lineSpacing charWidth cursorWidth x y cursorRect |
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	y := self morphHeight / 2.0.
	aCanvas fillRectangle: (0 @ y extent: self morphWidth @ lineSpacing) color: (Color white alpha: 0.1).
	cursorWidth := cursorPosition = 3 ifTrue: [3] ifFalse: [1].
	x := (self tracksWidthInCharacters + 0.5) * (tracker cursorTrack - 1) + 2.5 + cursorPosition - 1.
	cursorPosition > 2 ifTrue: [x := x + 0.5].
	cursorPosition > 3 ifTrue: [x := x + 2.5].
	cursorPosition > 5 ifTrue: [x := x + 0.5].
	cursorPosition > 8 ifTrue: [x := x + 0.5].
	cursorRect := x * charWidth @ y extent: cursorWidth * charWidth @ lineSpacing.
	self hasKeyboardFocus ifFalse: [aCanvas frameRectangle: cursorRect borderWidth: 1 color: self class cursorColor. ^ self].
	aCanvas fillRectangle: cursorRect color: (showCursor ifTrue: [self class cursorColor] ifFalse: [self class cursorColor alpha: 0.7])! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 22/Feb/2026 19:01:27'!
drawOn: aCanvas
	self drawTracksOn: aCanvas.
	self drawCursorOn: aCanvas.
	self drawPatternOn: aCanvas! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 14/Mar/2026 18:33:11'!
drawPatternOn: aCanvas
	| lineSpacing charWidth y unsetColor noteColor velocityColor pattern endLine middle startLine darkColor lightColor xLeft xRight beatColor trackWidth |
	pattern := tracker selectedPattern.
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	trackWidth := charWidth * (self tracksWidthInCharacters + 0.5).
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
	beatColor := Color white alpha: 0.1.
	"Draw playhead line:"
	(tracker isPlaying and: [tracker playheadPattern = tracker cursorPattern and: [tracker playheadLine between: startLine and: endLine]])
		ifTrue: [aCanvas fillRectangle: (0@(tracker playheadLine - startLine * lineSpacing + y) extent: extent x @ lineSpacing) color: beatColor].
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
		| s c x |
		"Draw line offsets at left and right, and highlight lines at beats:"
		i - 1 \\ pattern lpb = 0
			ifTrue: [i = tracker cursorLine ifFalse: [aCanvas fillRectangle: (0@y extent: extent x @ lineSpacing) color: beatColor]. c := lightColor]
			ifFalse: [c := darkColor].
		s := i - 1 printStringBase: 16 nDigits: 2.
		aCanvas drawString: s at: xLeft @ y font: font color: c.
		aCanvas drawString: s at: xRight @ y font: font color: c.
		"Draw triggers:"
		x := charWidth * 2.5.
		pattern
			line: i
			instrumentDo: [:instrument|
				instrument ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x]
			noteDo: [:note|
				note ifNil: [s := '···'. c := unsetColor] ifNotNil: [:v| s := self noteStringFrom: v. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 3.5 + x]
			velocityDo: [:velocity|
				velocity ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := velocityColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x]
			effectsDo: [:fx|
				fx
					ifNil: [aCanvas drawString: '···' at: x @ y font: font color: unsetColor]
					ifNotNil: [:v| | cmd |
						cmd := v bitShift: -8.
						aCanvas drawString: (Character codePoint: cmd) asString, ((v bitAnd: 16rFF) printStringBase: 16 nDigits: 2) at: x @ y font: font color: (FXColors at: cmd)].
				x := charWidth * 3.5 + x]
			emptyTriggersDo:
				["aCanvas image: emptyTriggerImage at: x @ y.
				x := trackWidth + x"
				aCanvas drawString: '··' at: x @ y font: font color: unsetColor.
				x := charWidth * 2.5 + x.
				aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
				x := charWidth * 3.5 + x.
				aCanvas drawString: '··' at: x @ y font: font color: unsetColor.
				x := charWidth * 2.5 + x.
				aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
				x := charWidth * 3.5 + x.
				aCanvas drawString: '···' at: x @ y font: font color: unsetColor.
				x := charWidth * 3.5 + x].
		y := y + lineSpacing]! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 11/Mar/2026 15:11:42'!
drawTracksOn: aCanvas
	| color textColor charWidth trackWidth x mask headerLineWidth maxTrackLabelWidth fittingTrackLabel |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self tracksWidthInCharacters.
	maxTrackLabelWidth := trackWidth - (labelMonoFont widthOfString: 'SM') - 2.
	headerLineWidth := 7.5. "originally was charWidth/2.0, but we don't want to change with the font size"
	x := charWidth * 2.5.
	mask := tracker selectedMask.
	tracker tracks withIndexDo: [:track :i| | trackColor trackLabel |
		trackColor := track color.
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor lightnessAndChromaBy: (i = tracker cursorTrack ifTrue: [0.25] ifFalse: [0.2]))."
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor darker: (i = tracker cursorTrack ifTrue: [0.54] ifFalse: [0.6]))."
"		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor alpha: (i = tracker cursorTrack ifTrue: [0.1] ifFalse: [0.02]))."
		i = tracker cursorTrack ifTrue: [aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: track backgroundColor" Color random"].
		((mask at: i) and: [track enabled])
			ifTrue:
				[color := trackColor.
				textColor := Color white]
			ifFalse:
				[color := trackColor darker: 0.25.
				textColor := Color white darker: 0.25].
		aCanvas fillRectangle: (x @ 0 extent: trackWidth @ headerLineWidth) color: color.
		trackLabel := i printString.
		(tracker selectedInstrumentNumberAtTrack: i) ifNotNil: [:k|
			trackLabel := trackLabel, '/', (k printStringBase: 16 nDigits: 2).
			tracker instruments at: k ifPresent: [:anInstrument| anInstrument label ifNotNil: [:aString| trackLabel := trackLabel, ' ', aString]]].
		fittingTrackLabel := trackLabel.
		[(labelFont widthOfString: fittingTrackLabel) > maxTrackLabelWidth] whileTrue: [trackLabel := trackLabel allButLast. fittingTrackLabel := trackLabel, '…'].
		aCanvas drawString: fittingTrackLabel at: x @ 8 font: labelFont color: textColor.
		x := x + trackWidth.
		track muted ifTrue: [aCanvas drawString: 'M' at: x - (labelMonoFont widthOf: $M) @ 8 font: labelMonoFont color: textColor].
		track soloed ifTrue: [aCanvas drawString: 'S' at: x - (labelMonoFont widthOfString: 'SM') - 1 @ 8 font: labelMonoFont color: textColor].
		x := x + (charWidth/2.0)].
	aCanvas fillRectangle: (x @ 0 corner: extent x @ headerLineWidth) color: Color darkGray! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 7/Feb/2026 19:18:41'!
tracksWidthInCharacters
	^ 15! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Mar/2026 19:17:43'!
handleCommandHotkey: anEvent
	"Font size:"
	anEvent keyCharacter = $- ifTrue: [self adjustFontSizeBy: -1. ^ true].
	anEvent keyCharacter = $= ifTrue: [self adjustFontSizeBy: 1. ^ true].
	"Pattern properties:"
	anEvent keyCharacter = $l ifTrue: [self setPatternLength. ^ true].
	anEvent keyCharacter = $b ifTrue: [self setPatternLPB. ^ true].
	"Clipboard:"
	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 16/Mar/2026 21:41:10'!
handleInputKey: anEvent
	| c i |
	anEvent isBackspace ifTrue:
		[selectionLineStart isNil
			ifTrue: [tracker selectedTriggerAt: cursorPosition put: nil. self redrawNeeded]
			ifFalse: [self selectionDelete].
		^ true].
	anEvent keyCharacter = $] ifTrue: [self selectedTriggersDo: [:each| each transposeBy: 12]. self redrawNeeded. ^ true].
	anEvent keyCharacter = $[ ifTrue: [self selectedTriggersDo: [:each| each transposeBy: -12]. self redrawNeeded. ^ true].
	anEvent keyCharacter = $} ifTrue: [self selectedTriggersDo: [:each| each transposeBy: 1]. self redrawNeeded. ^ true].
	anEvent keyCharacter = ${ ifTrue: [self selectedTriggersDo: [:each| each transposeBy: -1]. self redrawNeeded. ^ true].
	cursorPosition = 3 ifTrue:
		[c := anEvent keyCharacter.
		c = $a ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: -1. "note off"
			tracker moveCursorLineDown: editStep.
			^ true].
		(i := 'zsxdcvgbhnjmq2w3er5t6y7ui9o0p' indexOf: c) > 0 ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: i + tracker inputCenterKey - 1.
			tracker moveCursorLineDown: editStep.
			^ true].
		^ false].
	(cursorPosition = 6 or: [cursorPosition = 9]) ifTrue:
		[('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ<>+-' includes: (c := anEvent keyCharacter asUppercase)) ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: c codePoint.
			self moveCursorRight.
			^ true].
		^ false].
	(i := '0123456789ABCDEF' indexOf: anEvent keyCharacter asUppercase) > 0 ifTrue:
		[tracker selectedTriggerAt: cursorPosition put: i - 1.
		(#(2 5) includes: cursorPosition) ifTrue:
			[cursorPosition := cursorPosition - 1.
			tracker moveCursorLineDown: editStep.
			^ true].
		(#(8 11) includes: cursorPosition) ifTrue:
			[cursorPosition := cursorPosition - 2.
			tracker moveCursorLineDown: editStep.
			^ true].	
		self moveCursorRight.
		^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 9/Mar/2026 22:28:05'!
handleKeyStroke: anEvent
	(anEvent secondaryModifierPressed and: [self handleOptionHotkey: anEvent]) ifTrue: [^ true].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue: [^ true].
	(anEvent shiftPressed and: [anEvent isArrow]) ifTrue: [self handleSelectionKey: anEvent. ^ true].
	anEvent isReturnKey ifTrue: [tracker stop; loop: anEvent secondaryModifierPressed. self playSelection. ^ true].
	anEvent isNavigation ifTrue: [self handleNavigationKey: anEvent. ^ true].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		anEvent primaryModifierPressed ifTrue: [tracker toggleTrackSolo] ifFalse: [tracker toggleTrackMute]. ^ true].
	(anEvent anyModifierKeyPressed not and: [self handleInputKey: anEvent]) ifTrue: [^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Mar/2026 19:19:22'!
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

!PatternEditorMorph methodsFor: 'events' stamp: 'len 22/Feb/2026 20:04:05'!
handleOptionHotkey: anEvent
	anEvent shiftPressed ifTrue:
		[anEvent isArrowUp ifTrue: [tracker moveSelectedPatternUp. ^ true].
		anEvent isArrowDown ifTrue: [tracker moveSelectedPatternDown. ^ true].
		anEvent isArrowLeft ifTrue: [tracker moveSelectedTrackLeft. ^ true].
		anEvent isArrowRight ifTrue: [tracker moveSelectedTrackRight. ^ true]].
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp. ^ true].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown. ^ true].
	anEvent isArrowLeft ifTrue: [tracker moveCursorTrackLeft. ^ true].
	anEvent isArrowRight ifTrue: [tracker moveCursorTrackRight. ^ true].
	anEvent isBackspace ifTrue: [tracker deleteTrigger. self redrawNeeded. ^ true].
	anEvent isEsc ifTrue: [tracker toggleFollowPlayhead. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 23/Feb/2026 16:14:11'!
handleSelectionKey: anEvent
	selectionLineStart isNil ifTrue:
		[selectionLineStart := tracker cursorLine.
		selectionTrackStart := tracker cursorTrack].
	(anEvent isArrowUp and: [tracker cursorLine > 1]) ifTrue: [tracker moveCursorLineUp].
	(anEvent isArrowDown and: [tracker cursorLine < tracker selectedPattern length]) ifTrue: [tracker moveCursorLineDown].
	anEvent isArrowLeft ifTrue: [tracker moveCursorTrackLeft].
	anEvent isArrowRight ifTrue: [tracker moveCursorTrackRight]! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 21/Jan/2026 15:58:15'!
handlesMouseDown: anEvent
	^ true! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 10/Jan/2026 23:03:58'!
keyStroke: anEvent
	(self handleKeyStroke: anEvent) ifTrue: [anEvent wasHandled: true. ^ self].
	^ super keyStroke: anEvent! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 15:33:19'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	| charWidth trackWidth x |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self tracksWidthInCharacters + (charWidth/2.0).
	x := localEventPosition x - (charWidth * 2.5).
	x < 0.0 ifTrue: [^ self].
	tracker setCursorTrack: (x / trackWidth) truncated + 1.
	selectionLineStart := nil! !

!PatternEditorMorph methodsFor: 'focus handling' stamp: 'len 9/Jan/2026 15:20:32'!
keyboardFocusChange: aBoolean
	aBoolean ifTrue: [self startBlinking] ifFalse: [self stopBlinking].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'geometry' stamp: 'len 7/Feb/2026 19:19:15'!
minimumExtent
	| n |
	n := tracker tracks size.
	^ (font widthOf: $X) * (n * (self tracksWidthInCharacters + 0.5) + 4.5) @ (font lineSpacing * 16)! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 11/Mar/2026 15:05:33'!
initialize
	super initialize.
"	font := FontFamily familyName: 'impulseBig' pointSize: 18."
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
"	font := FontFamily familyName: 'Commodore 64 Angled' pointSize: 14."
	labelFont := FontFamily defaultFamilyPointSize: 15.
	labelMonoFont := font.
	centerKey := 60. "C4"
	editStep := 1.
	showCursor := true.
	pauseBlinking := false! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 14/Mar/2026 18:36:21'!
setTracker: aTracker
	tracker := aTracker.
	cursorPosition := 1.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #updateTracks to: self.
	aTracker when: #cursorChanged send: #updateCursor to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	self updateTracks! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 31/Dec/2025 01:25:06'!
headerHeight
	^ labelFont lineSpacing + 8! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 2/Jan/2026 01:15:37'!
noteStringFrom: note
	note ifNil: [^ '···'].
	note = -1 ifTrue: [^ 'OFF'].
	^ note semitonesToName! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026 15:22:29'!
onBlinkCursor
	"Blink the cursor"
	showCursor := showCursor not | pauseBlinking.
	pauseBlinking := false.
	"cursorRect ifNotNil: [ :r | self invalidateLocalRect: r]"
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026 15:18:12'!
pauseBlinking
	"Show a solid cursor (non blinking) for a short while."
	pauseBlinking := true.
	"Show cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := true.
		self redrawNeeded
		"cursorRect ifNotNil: [:r| self invalidateLocalRect: r]"]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026 15:35:08'!
startBlinking
	"And show the cursor"
	pauseBlinking := true.
	"Start blinking in a short while"
	showCursor := true.
	self startStepping: #onBlinkCursor stepTime: 500! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Jan/2026 15:33:48'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	"Hide cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := false.
		self redrawNeeded
		"textCursorRect ifNotNil: [ :r | self invalidateLocalRect: r ]"]! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 20/Dec/2025 20:21:18'!
tracksMaxPosition
	^ 11! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Mar/2026 19:07:27'!
updateCursor
	(tracker followPlayhead and: [tracker isPlaying]) ifTrue: [	selectionLineStart := selectionTrackStart := nil].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'private' stamp: 'len 9/Mar/2026 19:05:48'!
updateTracks
	self ensureMinimumExtent.
	self redrawNeeded! !

!PatternEditorMorph class methodsFor: 'class initialization' stamp: 'len 9/Mar/2026 17:33:34'!
initialize
	"
	self initialize
	"
	super initialize.
	FXColors := Array new: 256 withAll: self unsetColor.
	"Controls:"
	'0123456789' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 80)].
	"Velocity:"
	'C+-' do: [:c| FXColors at: c codePoint put: self velocityColor].
	"Samples:"
	'S<>' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 220)].
	"Pitch:"
	'UDG' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: -20)].
	"Volume and Pan:"
	'LIOJK' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0.3 h: 160)].
	"Other:"
	'FQRY' do: [:c| FXColors at: c codePoint put: (Color okl: 0.85 c: 0 h: 0)]! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026 19:58:39'!
cursorColor
	^ Color redCathode! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026 20:07:38'!
selectionColor
	^ self cursorColor alpha: 0.4! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 9/Mar/2026 17:13:37'!
unsetColor
	^ Color lightGray! !

!PatternEditorMorph class methodsFor: 'colors' stamp: 'len 9/Mar/2026 17:12:29'!
velocityColor
	^ `Color okl: 0.95 c: 0.2 h: 120`! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026 16:11:15'!
clipboardCopy
	clipboard := selectionStart isNil
		ifTrue: [{tracker sequence at: tracker cursorPattern}]
		ifFalse: [((selectionStart min: tracker cursorPattern) to: (selectionStart max: tracker cursorPattern)) collect: [:i| tracker sequence at: i]]! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 23/Feb/2026 16:10:50'!
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

!SequencerMorph methodsFor: 'actions' stamp: 'len 21/Feb/2026 18:59:25'!
clipboardPaste
	selectionStart := nil.
	clipboard ifNotNil: [tracker insertSequence: (clipboard collect: [:each| each key -> each value])]! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 21/Feb/2026 18:59:27'!
clipboardPasteNew
	selectionStart := nil.
	clipboard ifNotNil: [tracker insertSequence: (clipboard collect: [:each| each key copy -> each value])]! !

!SequencerMorph methodsFor: 'drawing' stamp: 'len 24/Feb/2026 17:51:21'!
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
		aCanvas fillRectangle: (x @ 0 extent: blockWidth @ extent y) color: (track color lightnessAndChromaBy: (i = cursorTrack ifTrue: [0.6] ifFalse: [0.4])).
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
			(each key isEmptyTrack: i) ifFalse: [aCanvas fillRectangle: (x @ y extent: blockWidth @ blockHeight) color: ((each value at: i) ifTrue: [track color] ifFalse: [Color black])].
			x := x + blockWidth + space].
		y := y + blockHeight].
	y := tracker cursorPattern - 1 * blockHeight + (tracker cursorLine * blockHeight / tracker selectedPattern length asFloat).
	"draw pattern line cursor and playhead:"
	aCanvas line: blockHeight + 1 @ y to: extent x @ y width: 2 color: PatternEditorMorph cursorColor.
	tracker isPlaying ifTrue:
		[y := tracker playheadPattern - 1 * blockHeight + (tracker playheadLine * blockHeight / tracker playingPattern length asFloat).
		aCanvas line: blockHeight + 1 @ y to: extent x @ y width: 2 color: Color white]! !

!SequencerMorph methodsFor: 'drawing' stamp: 'len 19/Feb/2026 21:44:53'!
requiresVectorCanvas
	^ true! !

!SequencerMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 01:15:39'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	anEvent keyCharacter = $V ifTrue: [self clipboardPasteNew. ^ true].
	^ false! !

!SequencerMorph methodsFor: 'events' stamp: 'len 22/Feb/2026 16:31:30'!
handleNavigationKey: anEvent
	selectionStart := nil.
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown]! !

!SequencerMorph methodsFor: 'events' stamp: 'len 23/Feb/2026 16:09:28'!
handleSelectionKey: anEvent
	selectionStart isNil ifTrue: [selectionStart := tracker cursorPattern].
	anEvent isArrowUp ifTrue: [tracker moveCursorPatternUp].
	anEvent isArrowDown ifTrue: [tracker moveCursorPatternDown]! !

!SequencerMorph methodsFor: 'events' stamp: 'len 9/Mar/2026 22:27:01'!
keyStroke: anEvent
	anEvent isArrow ifTrue:
		[anEvent wasHandled: true.
		anEvent shiftPressed ifTrue: [^ self handleSelectionKey: anEvent].
		^ self handleNavigationKey: anEvent].
	(anEvent primaryModifierPressed and: [self handleCommandHotkey: anEvent]) ifTrue:
		[anEvent wasHandled: true.
		^ self].
	^ super keyStroke: anEvent! !

!SequencerMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 15:43:39'!
keyboardFocusChange: aBoolean
	aBoolean ifTrue: [self startBlinking] ifFalse: [self stopBlinking].
	self redrawNeeded! !

!SequencerMorph methodsFor: 'geometry' stamp: 'len 21/Feb/2026 16:41:06'!
minimumExtent
	| blockHeight blockWidth charWidth space |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	blockWidth := charWidth / 2.0.
	space := charWidth / 4.0.
	^ (blockWidth + space) * tracker tracks size + blockWidth + blockHeight @ (blockHeight * tracker sequence size)! !

!SequencerMorph methodsFor: 'initialization' stamp: 'len 10/Mar/2026 19:03:12'!
initialize
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 15.
	showCursor := true.
	pauseBlinking := false! !

!SequencerMorph methodsFor: 'initialization' stamp: 'len 2/Jan/2026 19:33:30'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #cursorChanged send: #redrawNeeded to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	self update! !

!SequencerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026 15:38:55'!
onBlinkCursor
	"Blink the cursor"
	showCursor := showCursor not | pauseBlinking.
	pauseBlinking := false.
	"cursorRect ifNotNil: [ :r | self invalidateLocalRect: r]"
	self redrawNeeded! !

!SequencerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026 15:38:48'!
pauseBlinking
	"Show a solid cursor (non blinking) for a short while."
	pauseBlinking := true.
	"Show cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := true.
		self redrawNeeded]! !

!SequencerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026 15:38:27'!
startBlinking
	"And show the cursor"
	pauseBlinking := true.
	"Start blinking in a short while"
	showCursor := true.
	self startStepping: #onBlinkCursor stepTime: 500! !

!SequencerMorph methodsFor: 'private' stamp: 'len 24/Feb/2026 15:38:38'!
stopBlinking
	"And do not show cursor anymore."
	self stopStepping: #onBlinkCursor.
	"Hide cursor right now if needed:"
	showCursor ifFalse:
		[showCursor := false.
		self redrawNeeded]! !

!SequencerMorph methodsFor: 'private' stamp: 'len 31/Dec/2025 22:21:20'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!TrackerBarMorph methodsFor: 'drawing' stamp: 'len 15/Mar/2026 15:09:21'!
drawOn: aCanvas
	| color |
	aCanvas fillRectangle: (0 @ 0 extent: extent) color: Color darkGray.
	aCanvas line: 0@(extent y-1) to: extent-(0@1) width: 1 color: Color gray.
	color := Color white.
	aCanvas
		drawString: (tracker isPlaying ifTrue: ['▶'] ifFalse: ['◼']) at: 4 @ 0 font: font color: color;
		drawString: (tracker bpm printStringFractionDigits: 1), ' BPM ⇄ ', (tracker swing * 100) truncated printString, '%' at: 32 @ 2 font: font color: color;
		drawString: '↧' at: 240 @ 3 font: font color: (tracker followPlayhead ifTrue: [color] ifFalse: [Color lightGray]);
		drawString: tracker inputCenterKey semitonesToName at: 280 @ 3 font: font color: color.
"	tracker selectedInstrumentNumber ifNotNil: [:instrumentNumber|
		patchLabel := (instrumentNumber printStringBase: 16 nDigits: 2), ' ', (tracker selectedInstrument ifNil: ['EMPTY'] ifNotNil: [:anInstrument| anInstrument label ifNil: ['']]).
		aCanvas drawString: patchLabel at: (extent x - 4 - (font widthOfString: patchLabel)) @ 2 font: font color: color]"! !

!TrackerBarMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 17:31:36'!
handlesKeyboardFocus
	^ false! !

!TrackerBarMorph methodsFor: 'geometry' stamp: 'len 7/Jan/2026 14:33:18'!
minimumExtent
	^ 200 @ font lineSpacing! !

!TrackerBarMorph methodsFor: 'initialization' stamp: 'len 10/Mar/2026 19:04:30'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: 15! !

!TrackerBarMorph methodsFor: 'initialization' stamp: 'len 15/Mar/2026 15:02:29'!
setTracker: aTracker
	tracker := aTracker.
	tracker
		when: #playingStatusChanged send: #redrawNeeded to: self;
		when: #bpmChanged send: #redrawNeeded to: self;
		when: #swingChanged send: #redrawNeeded to: self;
		when: #followPlayheadChanged send: #redrawNeeded to: self;
		when: #inputCenterKeyChanged send: #redrawNeeded to: self! !

!Instrument methodsFor: 'accessing' stamp: 'len 28/Dec/2025 15:47:17'!
label
	^ label! !

!Instrument methodsFor: 'accessing' stamp: 'len 28/Dec/2025 15:47:23'!
label: aString
	label := aString! !

!Instrument methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:14:01'!
meterLeftValue
	^ (audioOutput ifNil: [^ 0.0]) meterLeftValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:14:10'!
meterRightValue
	^ (audioOutput ifNil: [^ 0.0]) meterRightValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 18/Jan/2026 02:25:34'!
meterValue
	^ (audioOutput ifNil: [^ 0.0]) meterValue! !

!Instrument methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:39:10'!
patch
	^ patch! !

!Instrument methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:28:32'!
setOwnerTrack: aTrack
	track ifNotNil: [track forgetInstrument].
	track := aTrack! !

!Instrument methodsFor: 'accessing' stamp: 'len 3/Jan/2026 15:40:08'!
track
	^ track! !

!Instrument methodsFor: 'initialization' stamp: 'len 24/Mar/2026 01:54:35'!
initialize
	controlValues := Float32Array new: 10.
	patch := PatchMorph new.
	patch when: #recomputeNeeded send: #scheduleRecompute to: self.
	glideTicks := 0! !

!Instrument methodsFor: 'playing' stamp: 'len 3/Mar/2026 19:20:04'!
adjustLevelBy: aNumber
	audioOutput ifNotNil: [audioOutput adjustLevelBy: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 3/Mar/2026 19:21:57'!
adjustNoteBy: aNumber
	noteReceivers do: [:each| each adjustNoteBy: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 3/Mar/2026 19:20:31'!
adjustPanBy: aNumber
	audioOutput ifNotNil: [audioOutput adjustPanBy: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 7/Mar/2026 18:50:20'!
adjustVelocityBy: aNumber
	velocityReceivers do: [:each| each adjustVelocityBy: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 23/Mar/2026 19:34:40'!
gateOn
	gateReceivers do: [:each| each gateOn]! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:54:14'!
handleFX: anInteger
	| command |
	command := anInteger bitShift: -8.
	command = 67 "C (cut velocity)" ifTrue: [track scheduleTrigger: (Trigger new velocity: ((anInteger bitShift: -4) bitAnd: 16rF) / 15.0) after: (anInteger bitAnd: 16rF) + 1 / 16.0 * track tracker tpl. ^ self].
	command = 82 "R (retrigger)" ifTrue: [track scheduleTrigger: (trigger copy velocity: nil) after: (anInteger bitAnd: 16rFF) + 1 / 256.0 * track tracker tpl. ^ self].
	command = 76 "L (volume level)" ifTrue: [self setLevel:​ (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	command = 80 "P (pan)" ifTrue: [self setPan:  (anInteger bitAnd: 16rFF) / 255.0 * 2.0 - 1.0. ^ self].
	command = 73 "I (volume level up)" ifTrue: [self adjustLevelBy: (anInteger bitAnd: 16rFF) / 255.0].
	command = 79 "O (volume level down)" ifTrue: [self adjustLevelBy: (anInteger bitAnd: 16rFF) / -255.0].
	command = 74 "J (pan left)" ifTrue: [self adjustPanBy: (anInteger bitAnd: 16rFF) / -255.0].
	command = 75 "K (pan right)" ifTrue: [self adjustPanBy: (anInteger bitAnd: 16rFF) / 255.0].
	command = 85 "U (pitch up)" ifTrue: [self adjustNoteBy: (anInteger bitAnd: 16rFF) / 255.0].
	command = 68 "D (pitch down)" ifTrue: [self adjustNoteBy: (anInteger bitAnd: 16rFF) / -255.0].
	command = 43 "+ (velocity up)" ifTrue: [self adjustVelocityBy: (anInteger bitAnd: 16rFF) / 255.0].
	command = 45 "- (velocity down)" ifTrue: [self adjustVelocityBy: (anInteger bitAnd: 16rFF) / -255.0].
	"Sample commands:"
	command = 83 "S (sample offset)" ifTrue: [self setOffset: (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	command = 60 "< (speed backwards)" ifTrue: [self setSpeed: (anInteger bitAnd: 16rFF) / -255.0. ^ self].
	command = 62 "> (speed forward)" ifTrue: [self setSpeed: (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	"Control change commands:"
	(command between: 48 and: 57) "0 to 9" ifTrue: "map 0 to 0.0, 7F to 1.0 and 80 to -1.0:"
		[| v |
		controlValues at: command - 47 put: ((v := anInteger bitAnd: 16rFF) < 128 ifTrue: [v / 127.0] ifFalse: [v - 128 / 128.0])].
	"Global commands:"
	command = 70 "F (set bpm)" ifTrue: [track tracker bpm: ((anInteger bitAnd: 16rFF) max: 1). ^ self]! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:47:37'!
noteOff
	gateReceivers do: [:each| each gateOff].
	glideTicks := 0.
	note := nil! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:46:50'!
noteOn: midiKey
	self noteOn: midiKey glide: 0! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:58:06'!
noteOn: midiKey glide: glide
	(glide > 0 and: [note notNil])
		ifTrue:
			[glideTicks := (glide / 16.0 * track tracker tpl) truncated.
			noteIncrement := midiKey - note / glideTicks asFloat.
			note := note + noteIncrement]
		ifFalse:
			[glideTicks := 0.
			note := midiKey].
	self setNote: note; gateOn! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:45:36'!
playTrigger
	trigger isNoteOn ifTrue: [self setVelocity: 0.5; setOffset: 0.0; setSpeed: 1.0].
	trigger velocity ifNotNil: [:vel| self setVelocity: vel / 255.0].
	trigger fx1 ifNotNil: [:fx| self handleFX: fx].
	trigger fx2 ifNotNil: [:fx| self handleFX: fx].
	trigger isNoteOn ifTrue: [self noteOn: trigger note glide: trigger glide] ifFalse: [trigger isNoteOff ifTrue: [self noteOff]].
	trigger := nil! !

!Instrument methodsFor: 'playing' stamp: 'len 28/Mar/2026 21:31:10'!
recomputeModules
	| currentModules buses |
	currentModules := patch modules.
	modules := currentModules.
	noteReceivers := currentModules select: [:each| each respondsTo: #setNote:].
	velocityReceivers := currentModules select: [:any| any respondsTo: #setVelocity:].
	gateReceivers := currentModules select: [:any| any respondsTo: #gateOn].
	samples := currentModules select: [:each| (each isMemberOf: Sample) or: [each isMemberOf: Multisample]].
	buses := track tracker buses.
	audioOutput := nil.
	currentModules do: [:each|
		(each isMemberOf: ControlIn)
			ifTrue: [each setValues: controlValues]
			ifFalse:
				[(each isMemberOf: AudioIn)
					ifTrue: [each setBuses: buses]
					ifFalse:
						[(each isMemberOf: AudioOut) ifTrue:
							[each setBuses: buses.
							each port = 0 ifTrue: [audioOutput := each]]]]].
	^ currentModules! !

!Instrument methodsFor: 'playing' stamp: 'len 19/Mar/2026 15:13:17'!
reset
	| currentModules |
	currentModules := modules ifNil: [self recomputeModules].
	currentModules do: [:each| (each is: #Morph) ifFalse: [each reset]]! !

!Instrument methodsFor: 'playing' stamp: 'len 6/Jan/2026 16:00:00'!
scheduleRecompute
	modules := nil! !

!Instrument methodsFor: 'playing' stamp: 'len 5/Jan/2026 19:45:17'!
scheduleTrigger: aTrigger
	trigger := aTrigger! !

!Instrument methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:31:21'!
setLevel: aNumber
	audioOutput ifNotNil: [audioOutput setLevel: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 23/Mar/2026 19:24:27'!
setNote: midiKey
	noteReceivers do: [:each| each setNote: midiKey]! !

!Instrument methodsFor: 'playing' stamp: 'len 20/Jan/2026 14:27:42'!
setOffset: aNumber
	samples do: [:each| each setOffset: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:31:31'!
setPan: aNumber
	audioOutput ifNotNil: [audioOutput setPan: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 23/Jan/2026 14:30:33'!
setSpeed: aNumber
	samples do: [:each| each setSpeed: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 15/Jan/2026 17:46:05'!
setVelocity: aNumber
	velocityReceivers do: [:each| each setVelocity: aNumber]! !

!Instrument methodsFor: 'playing' stamp: 'len 24/Mar/2026 01:57:35'!
tick
	| currentModules enabled |
	currentModules := modules ifNil: [self recomputeModules].
	enabled := track enabled.
	currentModules do: [:each|
		(each isMemberOf: AudioOut) ifTrue: [each enabled: enabled].
		(each is: #Morph) ifFalse: [each clear]].
	glideTicks > 0 ifTrue: [note := note + noteIncrement. glideTicks := glideTicks - 1. self setNote: note].
	trigger ifNotNil: [self playTrigger].
	currentModules do: [:each| (each is: #Morph) ifFalse: [each update]. each tick]! !

!Instrument methodsFor: 'serialization' stamp: 'len 17/Feb/2026 19:39:10'!
asJsonWithBuffers: aList
	| patchables wires patchablesJson wiresJson |
	patchables := (patch submorphs select: [:m| m isKindOf: PatchableMorph]) sort: [:a :b| a morphPosition x <= b morphPosition x].
	wires := patch submorphs select: [:m| m isKindOf: WireMorph].
	patchablesJson := patchables collect: [:each|
		OrderedDictionary new
			at: #class put: each model class name;
			at: #x put: each morphPosition x;
			at: #y put: each morphPosition y;
			at: #module put: (each model asJsonWithBuffers: aList);
			yourself].
	wiresJson := wires collect: [:each|
		OrderedDictionary new
			at: #source put: (patchables indexOf: each source patchableOwner);
			at: #output put: each source selector;
			at: #target put: (patchables indexOf: each target patchableOwner);
			at: #input put: each target selector;
			yourself].
	^ OrderedDictionary new
		at: #modules put: patchablesJson;
		at: #wires put: wiresJson;
		at: #label put: (label ifNil: '');
		yourself! !

!Instrument methodsFor: 'serialization' stamp: 'len 9/Feb/2026 20:57:33'!
readFrom: aStream
	| numberOfBuffers bufferList json |
	aStream useBytes.
	numberOfBuffers := aStream nextInt32BigEndian: true.
	bufferList := (1 to: numberOfBuffers) collect: [:i| Float32Array newFromStream: aStream].
	aStream useCharacters.
	json := Json readFrom: aStream.
	^ self readFromJson: json buffers: bufferList! !

!Instrument methodsFor: 'serialization' stamp: 'len 18/Feb/2026 17:28:37'!
readFromJson: json buffers: bufferList
	| patchables |
	patchables := (json at: #modules) collect: [:each|
		| module |
		module := (Smalltalk at: (each at: #class) asSymbol) new.
		module readFromJson: (each at: #module) buffers: bufferList.
		module patchable morphPosition: (each at: #x) @ (each at: #y)].
	patchables do: [:each| patch addMorph: each].
	(json at: #wires) do: [:each|
		| output input |
		output := (patchables at: (each at: #source)) outputs detect: [:one| one selector = (each at: #output)].
		input := (patchables at: (each at: #target)) inputs detect: [:one| one selector = (each at: #input)].
		output addConnectionTo: input].
	label := json at: #label! !

!Instrument methodsFor: 'serialization' stamp: 'len 5/Feb/2026 17:57:19'!
writeOn: aStream
	| bufferList json |
	bufferList := OrderedCollection new.
	json := self asJsonWithBuffers: bufferList.
	aStream nextInt32Put: bufferList size bigEndian: true.
	bufferList do: [:each| each writeOn: aStream].
	json jsonWriteOn: aStream! !

!Pattern methodsFor: 'accessing' stamp: 'len 18/Dec/2025 16:32:38'!
length
	^ length! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025 01:55:31'!
length: anInteger
	anInteger > length ifTrue: [blocks := blocks collect: [:each| each ifNotNil: [each, (Array new: anInteger - length)]]].
	anInteger < length ifTrue: [blocks := blocks collect: [:each| each ifNotNil: [each copyFrom: 1 to: anInteger]]].
	length := anInteger! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Mar/2026 18:31:54'!
lpb
	^ lpb ifNil: [4]! !

!Pattern methodsFor: 'accessing' stamp: 'len 14/Mar/2026 18:26:07'!
lpb: anInteger
	lpb := anInteger! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025 02:03:30'!
track: trackIndex at: index
	^ (blocks at: trackIndex) ifNotNil: [:anArray| anArray at: index]! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025 20:18:02'!
track: trackIndex at: line position: position put: value
	| block trigger |
	block := (blocks at: trackIndex) ifNil: [value ifNil: [^ self]. blocks at: trackIndex put: (Array new: length)].
	trigger := (block at: line) ifNil: [value ifNil: [^ self]. block at: line put: Trigger new].
	trigger at: position put: value.
	trigger isEmpty ifTrue:
		[block at: line put: nil.
		(block allSatisfy: [:each| each isNil]) ifTrue: [blocks at: trackIndex put: nil]]! !

!Pattern methodsFor: 'accessing' stamp: 'len 27/Dec/2025 20:42:43'!
track: trackIndex at: index put: aTrigger
	| block |
	block := (blocks at: trackIndex) ifNil: [aTrigger ifNil: [^ self]. blocks at: trackIndex put: (Array new: length)].
	block at: index put: aTrigger.
	(aTrigger isNil and: [block allSatisfy: [:each| each isNil]]) ifTrue: [blocks at: trackIndex put: nil]! !

!Pattern methodsFor: 'accessing' stamp: 'len 11/Mar/2026 19:54:58'!
track: trackIndex instrumentAbove: line
	"Answer the instrument set for the given track at or above the given line. This is the instrument that will play that line when the playhead reaches it."
	| block |
	block := (blocks at: trackIndex) ifNil: [^ nil].
	line to: 1 by: -1 do: [:j| (block at: j) ifNotNil: [:aTrigger| aTrigger instrument ifNotNil: [:anInteger| ^ anInteger = 0 ifFalse: [anInteger]]]].
	^ nil! !

!Pattern methodsFor: 'copying' stamp: 'len 27/Dec/2025 02:01:58'!
postCopy
	blocks := blocks collect: [:eachBlock| eachBlock ifNotNil: [eachBlock collect: [:each| each copy]]]! !

!Pattern methodsFor: 'initialization' stamp: 'len 14/Mar/2026 18:26:57'!
initialize: anInteger
	length := 64.
	lpb := 4.
	blocks := Array new: anInteger! !

!Pattern methodsFor: 'serialization' stamp: 'len 14/Mar/2026 18:28:00'!
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

!Pattern methodsFor: 'serialization' stamp: 'len 14/Mar/2026 18:28:37'!
readFromJson: json
	| blocksJson |
	length := json at: #length.
	lpb := json at: #lpb ifAbsent: [4].
	blocksJson := json at: #blocks.
	blocks := Array new: blocksJson size.
	blocksJson withIndexDo: [:eachBlockJson :t|
		eachBlockJson do: [:rowJson|
			self track: t at: (rowJson at: #line) put: (Trigger new readFromJson: (rowJson at: #trigger))]]! !

!Pattern methodsFor: 'testing' stamp: 'len 17/Feb/2026 19:36:54'!
hasReferenceToInstrument: anInteger
	^ blocks anySatisfy: [:block| block notNil and: [block anySatisfy: [:trigger| trigger notNil and: [trigger instrument = anInteger]]]]! !

!Pattern methodsFor: 'testing' stamp: 'len 28/Dec/2025 02:24:12'!
isEmptyTrack: anInteger
	^ (blocks at: anInteger) isNil! !

!Pattern methodsFor: 'tracks' stamp: 'len 24/Dec/2025 18:51:22'!
deleteTrack: anInteger
	"Remove the track at the given index."
	blocks := (blocks copyFrom: 1 to: anInteger - 1), (blocks copyFrom: anInteger + 1 to: blocks size)! !

!Pattern methodsFor: 'tracks' stamp: 'len 27/Dec/2025 01:55:53'!
insertTrack: anInteger
	"Add a track at the given index."
	blocks := (blocks copyFrom: 1 to: anInteger - 1), {nil}, (blocks copyFrom: anInteger to: blocks size)! !

!Pattern methodsFor: 'tracks' stamp: 'len 31/Dec/2025 22:48:08'!
swapTrack: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	blocks swap: anInteger with: anotherInteger! !

!Pattern methodsFor: 'private' stamp: 'len 1/Mar/2026 14:22:10'!
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

!Pattern class methodsFor: 'instance creation' stamp: 'len 27/Dec/2025 06:03:15'!
new: anInteger
	^ self new initialize: anInteger! !

!Track methodsFor: 'accessing' stamp: 'len 20/Feb/2026 19:56:55'!
backgroundColor
	^ color lightnessAndChromaBy: 0.25! !

!Track methodsFor: 'accessing' stamp: 'len 27/Dec/2025 23:23:03'!
color
	^ color! !

!Track methodsFor: 'accessing' stamp: 'len 27/Dec/2025 23:22:55'!
color: aColor
	color := aColor! !

!Track methodsFor: 'accessing' stamp: 'len 9/Jan/2026 15:09:05'!
enabled
	^ soloed or: [muted not and: [tracker anyTrackSoloed not]]! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:28:45'!
instrument
	^ instrument! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:28:15'!
meterLeftValue
	^ (instrument ifNil: [^ 0.0]) meterLeftValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:28:15'!
meterRightValue
	^ (instrument ifNil: [^ 0.0]) meterRightValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Feb/2026 19:28:15'!
meterValue
	^ (instrument ifNil: [^ 0.0]) meterValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:11:15'!
muted
	^ muted! !

!Track methodsFor: 'accessing' stamp: 'len 31/Dec/2025 22:30:46'!
muted: aBoolean
	muted := aBoolean! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:44:47'!
soloed
	^ soloed! !

!Track methodsFor: 'accessing' stamp: 'len 22/Dec/2025 17:32:01'!
soloed: aBoolean
	soloed := aBoolean! !

!Track methodsFor: 'accessing' stamp: 'len 26/Feb/2026 17:20:51'!
tracker
	^ tracker! !

!Track methodsFor: 'initialization' stamp: 'len 26/Feb/2026 17:36:32'!
initialize
	muted := false.
	soloed := false! !

!Track methodsFor: 'initialization' stamp: 'len 3/Jan/2026 15:47:12'!
setTracker: aTracker
	tracker := aTracker! !

!Track methodsFor: 'playing' stamp: 'len 17/Feb/2026 19:28:32'!
forgetInstrument
	instrument := nil! !

!Track methodsFor: 'playing' stamp: 'len 3/Mar/2026 23:13:06'!
playTrigger
	trigger instrument ifNotNil: [:anInteger|
		instrument ifNotNil: [instrument setOwnerTrack: nil].
		instrument := tracker instruments at: anInteger ifAbsent: [].
		instrument ifNotNil: [instrument setOwnerTrack: self "; reset"]].
	instrument ifNotNil: [instrument scheduleTrigger: trigger].
	trigger := nil! !

!Track methodsFor: 'playing' stamp: 'len 10/Mar/2026 15:27:52'!
scheduleTrigger: aTrigger
	"Schedule aTrigger to play either immediatly if delay = 0, or after the number of ticks required by the delay.
	The delay is specified by a Qxx command, where xx specifies the delay in steps of 1/255th the duration of a line."
	| delay |
	(delay := aTrigger delay) = 0
		ifTrue: [self scheduleTrigger: aTrigger after: 0]
		ifFalse: [self scheduleTrigger: aTrigger after: delay / 256.0 * tracker tpl]! !

!Track methodsFor: 'playing' stamp: 'len 26/Feb/2026 23:30:14'!
scheduleTrigger: aTrigger after: ticks
	"Schedule aTrigger to play after the required number of ticks."
	trigger := aTrigger.
	ticksToTrigger := ticks! !

!Track methodsFor: 'playing' stamp: 'len 17/Feb/2026 19:28:15'!
tick
	trigger ifNotNil: [ticksToTrigger > 0 ifTrue: [ticksToTrigger := ticksToTrigger - 1] ifFalse: [self playTrigger]].
	instrument ifNotNil: [instrument tick]! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025 17:27:25'!
bpm
	^ bpm! !

!Tracker methodsFor: 'accessing' stamp: 'len 3/Jan/2026 02:48:36'!
bpm: anInteger
	bpm := anInteger.
	self triggerEvent: #bpmChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 5/Mar/2026 15:36:52'!
buses
	^ buses! !

!Tracker methodsFor: 'accessing' stamp: 'len 7/Jan/2026 16:00:57'!
followPlayhead
	^ followPlayhead! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Feb/2026 21:26:45'!
inputCenterKey
	^ inputCenterKey! !

!Tracker methodsFor: 'accessing' stamp: 'len 18/Feb/2026 16:58:40'!
instruments
	^ instruments! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026 15:05:40'!
label
	^ label! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026 15:05:55'!
label: aString
	label := aString.
	self triggerEvent: #labelChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 14:02:29'!
level
	^ level! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 14:20:55'!
level: aNumber
	level := aNumber min: 1.0 max: 0.0.
	self triggerEvent: #levelChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:29:37'!
peakLeft
	^ peakLeft := peakLeft * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:29:52'!
peakRight
	^ peakRight := peakRight * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026 16:39:00'!
sequence
	^ sequence! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026 16:40:24'!
sequencePatternNumbers
	| unique |
	unique := self sequenceUniquePatterns.
	^ sequence collect: [:each| unique indexOf: each key]! !

!Tracker methodsFor: 'accessing' stamp: 'len 21/Feb/2026 16:40:36'!
sequenceUniquePatterns
	| answer |
	answer := OrderedCollection new.
	sequence do: [:each| (answer identityIncludes: each key) ifFalse: [answer add: each key]].
	^ answer! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026 01:41:17'!
swing
	^ swing! !

!Tracker methodsFor: 'accessing' stamp: 'len 10/Feb/2026 01:41:03'!
swing: aNumber
	swing := aNumber min: 1.0 max: 0.0.
	self triggerEvent: #swingChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 14/Mar/2026 18:24:45'!
tpl
	"Answer the number of ticks per line."
	^ Module controlRate * 60.0 / (bpm * self playingPattern lpb)! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025 21:18:23'!
tracks
	^ tracks! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 17:06:02'!
cursorLine
	^ cursorLine! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 17:08:09'!
cursorPattern
	^ cursorPattern! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:37:16'!
cursorTrack
	^ cursorTrack! !

!Tracker methodsFor: 'cursor' stamp: 'len 16/Feb/2026 21:25:21'!
inputOctaveDown
	inputCenterKey > 12 ifFalse: [^ self].
	inputCenterKey := inputCenterKey - 12.
	self triggerEvent: #inputCenterKeyChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 16/Feb/2026 21:25:14'!
inputOctaveUp
	inputCenterKey < 108 ifFalse: [^ self].
	inputCenterKey := inputCenterKey + 12.
	self triggerEvent: #inputCenterKeyChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Mar/2026 18:22:50'!
moveCursorBeatDown
	self moveCursorLineDown: self selectedPattern lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Mar/2026 18:22:59'!
moveCursorBeatUp
	self moveCursorLineUp: self selectedPattern lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:41:01'!
moveCursorLineBottom
	cursorLine := self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:27:29'!
moveCursorLineDown
	self moveCursorLineDown: 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 21/Feb/2026 16:25:39'!
moveCursorLineDown: anInteger
	| n |
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

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:40:50'!
moveCursorLineTop
	cursorLine := 1.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:27:36'!
moveCursorLineUp
	self moveCursorLineUp: 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 15:35:27'!
moveCursorLineUp: anInteger
	cursorLine := cursorLine - anInteger.
	cursorLine < 1 ifTrue:
		[cursorPattern > 1
			ifTrue:
				[cursorPattern := cursorPattern - 1.
				cursorLine := self selectedPattern length + cursorLine max: 1.
				self triggerEvent: #cursorPatternChanged: with: cursorPattern]
			ifFalse: [cursorLine := 1]].
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 21/Feb/2026 16:25:44'!
moveCursorPatternDown
	cursorPattern < sequence size ifFalse: [^ self].
	cursorPattern := cursorPattern + 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:28:27'!
moveCursorPatternUp
	cursorPattern > 1 ifFalse: [^ self].
	cursorPattern := cursorPattern - 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Feb/2026 19:54:17'!
moveCursorTrackLeft
	self setCursorTrack: cursorTrack - 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 14/Feb/2026 19:54:07'!
moveCursorTrackRight
	self setCursorTrack: cursorTrack + 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 18/Feb/2026 17:33:34'!
setCursorTrack: anInteger
	((anInteger between: 1 and: tracks size) and: [cursorTrack ~= anInteger]) ifFalse: [^ self].
	cursorTrack := anInteger.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'initialization' stamp: 'len 14/Mar/2026 18:25:01'!
initialize
	instruments := Dictionary new.
	tracks := #().
	sequence := #().
	bpm := 120.
	swing := 0.0.
	level := 1.0.
	inputCenterKey := 60.
	cursorPattern := 1.
	cursorLine := 1.
	cursorTrack := 1.
	playheadPattern := 1.
	playheadLine := 0.
	followPlayhead := false.
	loop := false.
	playStartPattern := 1.
	playStartLine := 1.
	anyTrackSoloed := false.
	buses := Dictionary new at: 0 put: Bus new; yourself. "the master bus at 0"
	peakLeft := 0.0.
	peakRight := 0.0.
	random := Random new.

	self insertTrack: 1.
	self insertPattern: 1! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:20:33'!
deletePattern
	sequence size > 1 ifFalse: [^ self]. "don't delete last pattern"
	self deletePattern: cursorPattern! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:23:15'!
deletePattern: anInteger
	sequence := (sequence copyFrom: 1 to: anInteger - 1), (sequence copyFrom: anInteger + 1 to: sequence size).
	cursorPattern := cursorPattern min: sequence size.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 17:00:10'!
deleteTrigger
	self selectedPattern track: cursorTrack at: cursorLine put: nil! !

!Tracker methodsFor: 'patterns' stamp: 'len 10/Jan/2026 22:55:11'!
insertPattern
	self insertPattern: (cursorPattern := cursorPattern + 1).
	cursorLine := cursorLine min: self selectedPattern length! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:21:43'!
insertPattern: anInteger
	| answer |
	answer := Pattern new: tracks size.
	sequence := (sequence copyFrom: 1 to: anInteger - 1), {answer -> (tracks collect: [:each| true])}, (sequence copyFrom: anInteger to: sequence size).
	self triggerEvent: #sequenceChanged.
	^ answer! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 19:37:25'!
insertSequence: anArray
	"Insert a list of patterns and masks after the current pattern."
	sequence := (sequence copyFrom: 1 to: cursorPattern), (anArray collect: [:each| each key -> each value copy]), (sequence copyFrom: cursorPattern + 1 to: sequence size).
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:25:49'!
moveSelectedPatternDown
	cursorPattern < sequence size ifFalse: [^ self].
	cursorPattern := cursorPattern + 1.
	self swapPattern: cursorPattern with: cursorPattern - 1! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 15:21:33'!
moveSelectedPatternUp
	cursorPattern > 1 ifFalse: [^ self].
	cursorPattern := cursorPattern - 1.
	self swapPattern: cursorPattern with: cursorPattern + 1! !

!Tracker methodsFor: 'patterns' stamp: 'len 18/Feb/2026 16:58:40'!
selectedInstrument
	^ instruments at: (self selectedInstrumentNumber ifNil: [^ nil]) ifAbsentPut: [Instrument new]! !

!Tracker methodsFor: 'patterns' stamp: 'len 18/Feb/2026 16:41:16'!
selectedInstrumentNumber
	^​ self selectedPattern track: cursorTrack instrumentAbove: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Feb/2026 22:39:55'!
selectedInstrumentNumberAtTrack: trackIndex
	^​ self selectedPattern track: trackIndex instrumentAbove: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:22:40'!
selectedPattern
	^ (sequence at: cursorPattern) key! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 16:55:05'!
selectedTrigger
	^ self selectedPattern track: cursorTrack at: cursorLine! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Jan/2026 16:40:37'!
selectedTriggerAt: position put: value
	self selectedPattern track: cursorTrack at: cursorLine position: position put: value! !

!Tracker methodsFor: 'patterns' stamp: 'len 20/Jan/2026 16:41:51'!
selectedTriggerPut: aTrigger
	self selectedPattern track: cursorTrack at: cursorLine put: aTrigger! !

!Tracker methodsFor: 'patterns' stamp: 'len 22/Jan/2026 14:16:23'!
setSelectedPatternLength: anInteger
	self assert: self isPlaying not.
	self selectedPattern length: anInteger.
	cursorLine <= anInteger ifFalse: [cursorLine := anInteger. self triggerEvent: #cursorChanged].
	(playheadPattern = cursorPattern and: [playheadLine <= anInteger])
		ifFalse: [playheadLine := anInteger - 1. self triggerEvent: #playheadChanged]! !

!Tracker methodsFor: 'patterns' stamp: 'len 21/Feb/2026 16:23:00'!
swapPattern: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	sequence swap: anInteger with: anotherInteger.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 2/Jan/2026 15:12:17'!
isPlaying
	^ AudioPlayer isPlaying: self! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026 16:29:54'!
loop: aBoolean
	loop := aBoolean! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026 19:48:47'!
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
	buses keys do: [:each| each = 0 ifFalse: [buses removeKey: each]]. "remove all buses except the master"
	AudioPlayer startPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 8/Mar/2026 19:22:44'!
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
	buses keys do: [:each| each = 0 ifFalse: [buses removeKey: each]]. "remove all buses except the master"
	AudioPlayer startPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 14/Mar/2026 18:24:05'!
playLineIfFinished: aBlock
	| pattern mask ticksPerLine ticksSwing |
	"Advance playhead:"
	playheadLine := playheadLine + 1.
	(playheadPattern = playEndPattern and: [playheadLine > playEndLine]) ifTrue:
		[loop ifTrue: [playheadPattern := playStartPattern. playheadLine := playStartLine] ifFalse: [^ aBlock value]].
	playheadLine > (sequence at: playheadPattern) key length ifTrue:
		[playheadPattern < playEndPattern
			ifTrue: [playheadLine := 1. playheadPattern := playheadPattern + 1]
			ifFalse: [loop ifTrue: [playheadPattern := playStartPattern. playheadLine := playStartLine] ifFalse: [^ aBlock value]]].
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
		(mask at: i) ifTrue: [(pattern track: i at: playheadLine) ifNotNil: [:aTrigger|
			((p := aTrigger probability) = 1.0 or: [random next <= p]) ifTrue: [track scheduleTrigger: aTrigger]]]].
	ticksPerLine := self tpl.
	ticksToLine := ticksToLine + ticksPerLine.
	ticksSwing := ticksPerLine * 0.333 * swing squared.
	(playheadLine \\ pattern lpb) even ifTrue: [ticksSwing := ticksSwing negated].
	ticksToLine := ticksToLine + ticksSwing! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026 17:23:40'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	| blockSize i masterGain mask masterBus |
	blockSize := Module blockSize.
	i := startIndex.
	self assert: n \\ blockSize = 0.
	masterGain := level * 0.25. "leave -12 dB of headroom"
	mask := self playingMask.
	masterBus := buses at: 0.
	n // blockSize timesRepeat:
		[ticksToLine > 0 ifTrue: [ticksToLine := ticksToLine - 1] ifFalse: [self playLineIfFinished: [self triggerEvent: #playingStatusChanged. ^ i - startIndex]. mask := self playingMask].
		buses do: [:each| each clear].
		mask withIndexDo: [:enabled :trackIndex| enabled ifTrue: [(tracks at: trackIndex) tick]].
		masterBus leftBuffer *= masterGain.
		masterBus rightBuffer *= masterGain.
		peakLeft := peakLeft max: masterBus leftBuffer peak.
		peakRight := peakRight max: masterBus rightBuffer peak.
		masterBus mixInto: anAudioBuffer startingAt: i.
		i := i + blockSize].
	^ n! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026 17:14:07'!
playheadLine
	^ playheadLine! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026 17:13:55'!
playheadPattern
	^ playheadPattern! !

!Tracker methodsFor: 'playing' stamp: 'len 8/Mar/2026 19:19:48'!
playingMask
	^ playingMask ifNil: [(sequence at: playheadPattern) value]! !

!Tracker methodsFor: 'playing' stamp: 'len 21/Feb/2026 16:27:08'!
playingPattern
	^ (sequence at: playheadPattern) key! !

!Tracker methodsFor: 'playing' stamp: 'len 9/Mar/2026 17:22:44'!
stop
	self isPlaying ifFalse: [^ self].
	AudioPlayer stopPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 7/Jan/2026 16:05:17'!
toggleFollowPlayhead
	followPlayhead := followPlayhead not.
	self triggerEvent: #followPlayheadChanged! !

!Tracker methodsFor: 'serialization' stamp: 'len 14/Mar/2026 18:34:45'!
asJsonWithBuffers: bufferList
	| uniquePatterns |
	uniquePatterns := self sequenceUniquePatterns.
	^ OrderedDictionary new
		at: #bpm put: bpm;
		at: #swing put: swing;
		at: #level put: level;
		at: #tracks put: tracks size;
		at: #sequence put: (self sequence collect: [:each|
			OrderedDictionary new
				at: #pattern put: (uniquePatterns indexOf: each key);
				at: #mask put: each value;
				yourself]);
		at: #patterns put: (uniquePatterns collect: [:each| each asJson]);
		at: #instruments put: (instruments collect: [:each| each asJsonWithBuffers: bufferList]);
		yourself! !

!Tracker methodsFor: 'serialization' stamp: 'len 9/Feb/2026 20:57:54'!
readFrom: aStream
	| numberOfBuffers bufferList json |
	aStream useBytes.
	numberOfBuffers := aStream nextInt32BigEndian: true.
	bufferList := (1 to: numberOfBuffers) collect: [:i| Float32Array newFromStream: aStream].
	aStream useCharacters.
	json := Json readFrom: aStream.
	^ self readFromJson: json buffers: bufferList! !

!Tracker methodsFor: 'serialization' stamp: 'len 14/Mar/2026 18:35:15'!
readFromJson: json buffers: bufferList
	| uniquePatterns |
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
	(json at: #tracks) timesRepeat: [self addTrack].
	uniquePatterns := (json at: #patterns) collect: [:each| Pattern new readFromJson: each].
	sequence := (json at: #sequence) collect: [:each| (uniquePatterns at: (each at: #pattern)) -> (each at: #mask)].
	instruments := Dictionary new.
	(json at: #instruments) keysAndValuesDo: [:key :value| instruments at: key asNumber put: (Instrument new readFromJson: value buffers: bufferList)]! !

!Tracker methodsFor: 'serialization' stamp: 'len 9/Feb/2026 16:22:08'!
writeOn: aStream
	| bufferList json |
	bufferList := OrderedCollection new.
	json := self asJsonWithBuffers: bufferList.
	aStream nextInt32Put: bufferList size bigEndian: true.
	bufferList do: [:each| each writeOn: aStream].
	json jsonWriteOn: aStream! !

!Tracker methodsFor: 'tracks' stamp: 'len 7/Jan/2026 02:44:14'!
addTrack
	self insertTrack: tracks size + 1! !

!Tracker methodsFor: 'tracks' stamp: 'len 9/Jan/2026 15:08:32'!
anyTrackSoloed
	^ anyTrackSoloed! !

!Tracker methodsFor: 'tracks' stamp: 'len 14/Jan/2026 12:49:04'!
deleteTrack
	tracks size > 1 ifFalse: [^ self]. "don't delete last track"
	self deleteTrack: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 22/Feb/2026 19:53:48'!
deleteTrack: anInteger
	tracks := (tracks copyFrom: 1 to: anInteger - 1), (tracks copyFrom: anInteger + 1 to: tracks size).
	self sequenceUniquePatterns do: [:each| each deleteTrack: anInteger].
	sequence := sequence collect: [:each| each key -> ((each value copyFrom: 1 to: anInteger - 1), (each value copyFrom: anInteger + 1 to: each value size))].
	self setCursorTrack: (cursorTrack min: tracks size).
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 22/Feb/2026 19:55:04'!
insertTrack: anInteger
	| answer |
	answer := Track new setTracker: self.
	"answer label: 'Track ', (tracks size + 1) printString."
	answer color: (Color okl: 0.7 c: 0.4 h: (137.5 / 5) * (tracks size "+ 4") \\ 360.0).
	tracks := (tracks copyFrom: 1 to: anInteger - 1), {answer}, (tracks copyFrom: anInteger to: tracks size).
	self sequenceUniquePatterns do: [:each| each insertTrack: anInteger].
	sequence := sequence collect: [:each| each key -> ((each value copyFrom: 1 to: anInteger - 1), {true}, (each value copyFrom: anInteger to: each value size))].
	self triggerEvent: #tracksChanged.
	^ answer! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:22:13'!
moveSelectedTrackLeft
	cursorTrack > 1 ifFalse: [^ self].
	cursorTrack := cursorTrack - 1.
	self swapTrack: cursorTrack + 1 with: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:22:47'!
moveSelectedTrackRight
	cursorTrack < tracks size ifFalse: [^ self].
	cursorTrack := cursorTrack + 1.
	self swapTrack: cursorTrack - 1 with: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 21/Feb/2026 16:29:22'!
selectedMask
	^ (sequence at: cursorPattern) value! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:35:44'!
selectedTrack
	^ tracks at: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 22/Feb/2026 19:50:00'!
swapTrack: anInteger with: anotherInteger
	| color1 |
	anInteger = anotherInteger ifTrue: [^ self].
	tracks swap: anInteger with: anotherInteger.
	"swap track colors:"
	color1 := (tracks at: anInteger) color.
	(tracks at: anInteger) color: (tracks at: anotherInteger) color.
	(tracks at: anotherInteger) color: color1.
	"swap pattern blocks:"
	self sequenceUniquePatterns do: [:each| each swapTrack: anInteger with: anotherInteger].
	"swap masks:"
	sequence do: [:each| each value swap: anInteger with: anotherInteger].
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:33:12'!
toggleTrackMask
	self toggleTrackMask: cursorTrack at: cursorPattern! !

!Tracker methodsFor: 'tracks' stamp: 'len 21/Feb/2026 16:30:16'!
toggleTrackMask: trackIndex at: patternIndex
	| mask |
	mask := (sequence at: patternIndex) value.
	mask at: trackIndex put: (mask at: trackIndex) not.
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 16:42:36'!
toggleTrackMute
	self toggleTrackMute: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 31/Dec/2025 22:37:29'!
toggleTrackMute: trackIndex
	| track |
	track := tracks at: trackIndex.
	track muted: track muted not.
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 16:42:28'!
toggleTrackSolo
	self toggleTrackSolo: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 9/Jan/2026 15:08:18'!
toggleTrackSolo: trackIndex
	| track |
	track := tracks at: trackIndex.
	track soloed: track soloed not.
	anyTrackSoloed := tracks anySatisfy: [:any| any soloed].
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'ui' stamp: 'len 11/Feb/2026 19:10:42'!
open
	^ TrackerWindow open: self! !

!Trigger methodsFor: 'accessing' stamp: 'len 1/Mar/2026 14:23:29'!
at: position put: value
	position = 1 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)]].
	position = 2 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16rF0) bitOr: value]].
	position = 3 ifTrue: [^ note := value].
	position = 4 ifTrue: [^ velocity := value ifNotNil: [((velocity ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)]].
	position = 5 ifTrue: [^ velocity := value ifNotNil: [((velocity ifNil: [0]) bitAnd: 16rF0) bitOr: value]].
	position = 6 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 7 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 8 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	position = 9 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 10 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 11 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	^ self error: 'out of bounds'! !

!Trigger methodsFor: 'accessing' stamp: 'len 26/Feb/2026 23:26:06'!
delay
	"Answer the delay for this trigger, i.e. the parameter of the effect command Q."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 81 "Q" ifTrue: [^ fx1 bitAnd: 16rFF]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 81 "Q" ifTrue: [^ fx2 bitAnd: 16rFF]].
	^ 0! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 21:03:26'!
fx1
	^ fx1! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 20:35:00'!
fx1: anInteger
	fx1 := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 20:35:18'!
fx2
	^ fx2! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 20:35:04'!
fx2: anInteger
	fx2 := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 24/Mar/2026 01:13:55'!
glide
	"Answer the glide or portamento effect for this trigger, i.e. the parameter of the effect command G."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 71 "G" ifTrue: [^ fx1 bitAnd: 16rFF]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 71 "G" ifTrue: [^ fx2 bitAnd: 16rFF]].
	^ 0! !

!Trigger methodsFor: 'accessing' stamp: 'len 24/Dec/2025 15:57:45'!
instrument
	^ instrument! !

!Trigger methodsFor: 'accessing' stamp: 'len 24/Dec/2025 15:59:14'!
instrument: anInteger
	instrument := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 20:34:20'!
note
	^ note! !

!Trigger methodsFor: 'accessing' stamp: 'len 16/Dec/2025 20:34:28'!
note: anInteger
	note := anInteger! !

!Trigger methodsFor: 'accessing' stamp: 'len 9/Mar/2026 17:28:01'!
probability
	"Answer the probability for this trigger, i.e. the parameter of the effect command Yxx."
	fx1 ifNotNil: [(fx1 bitShift: -8) = 89 "Y" ifTrue: [^ (fx1 bitAnd: 16rFF) / 255.0]].
	fx2 ifNotNil: [(fx2 bitShift: -8) = 89 "Y" ifTrue: [^ (fx2 bitAnd: 16rFF) / 255.0]].
	^ 1.0! !

!Trigger methodsFor: 'accessing' stamp: 'len 19/Dec/2025 19:13:34'!
velocity
	^ velocity! !

!Trigger methodsFor: 'accessing' stamp: 'len 19/Dec/2025 19:13:43'!
velocity: anInteger
	velocity := anInteger! !

!Trigger methodsFor: 'serialization' stamp: 'len 6/Feb/2026 15:11:33'!
asJson
	| answer |
	answer := OrderedDictionary new.
	note ifNotNil: [answer at: #note put: note].
	instrument ifNotNil: [answer at: #instrument put: instrument].
	velocity ifNotNil: [answer at: #velocity put: velocity].
	fx1 ifNotNil: [answer at: #fx1 put: fx1].
	fx2 ifNotNil: [answer at: #fx2 put: fx2].
	^ answer! !

!Trigger methodsFor: 'serialization' stamp: 'len 6/Feb/2026 15:13:53'!
readFromJson: json
	note := json at: #note ifAbsent: [].
	instrument := json at: #instrument ifAbsent: [].
	velocity := json at: #velocity ifAbsent: [].
	fx1 := json at: #fx1 ifAbsent: [].
	fx2 := json at: #fx2 ifAbsent: []! !

!Trigger methodsFor: 'testing' stamp: 'len 27/Dec/2025 20:32:35'!
isEmpty
	^ note isNil and: [instrument isNil and: [velocity isNil and: [fx1 isNil and: [fx2 isNil]]]]! !

!Trigger methodsFor: 'testing' stamp: 'len 18/Feb/2026 23:33:07'!
isNoteOff
	^ note notNil and: [note < 0]! !

!Trigger methodsFor: 'testing' stamp: 'len 18/Feb/2026 23:28:26'!
isNoteOn
	^ note notNil and: [note >= 0]! !

!Trigger methodsFor: 'transformations' stamp: 'len 24/Feb/2026 01:25:15'!
transposeBy: semitones
	self isNoteOn ifTrue: [note := note + semitones min: 127 max: 0]! !
PatternEditorMorph initialize!
