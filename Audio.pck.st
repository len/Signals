'From Cuis7.7 [latest update: #7797] on 28 March 2026 at 7:41:56 pm'!
'Description Minimal audio I/O support.'!
!provides: 'Audio' 1 3!
!requires: 'FFI' 1 59 nil!
SystemOrganization addCategory: #Audio!


!classDefinition: #AudioPlayer category: #Audio!
Object subclass: #AudioPlayer
	instanceVariableNames: ''
	classVariableNames: 'ActiveSounds Buffer BufferSize PlayerProcess PlayerSemaphore ReadyForBuffer SampleRate SoundSupported Stereo UseReadySemaphore'
	poolDictionaries: ''
	category: 'Audio'!
!classDefinition: 'AudioPlayer class' category: #Audio!
AudioPlayer class
	instanceVariableNames: ''!

!classDefinition: #AudioPort category: #Audio!
Object subclass: #AudioPort
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Audio'!
!classDefinition: 'AudioPort class' category: #Audio!
AudioPort class
	instanceVariableNames: ''!

!classDefinition: #Sound category: #Audio!
Object subclass: #Sound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Audio'!
!classDefinition: 'Sound class' category: #Audio!
Sound class
	instanceVariableNames: ''!

!classDefinition: #SineTestSound category: #Audio!
Sound subclass: #SineTestSound
	instanceVariableNames: 'phase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Audio'!
!classDefinition: 'SineTestSound class' category: #Audio!
SineTestSound class
	instanceVariableNames: ''!

!classDefinition: #AudioBuffer category: #Audio!
ArrayedCollection variableWordSubclass: #AudioBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Audio'!
!classDefinition: 'AudioBuffer class' category: #Audio!
AudioBuffer class
	instanceVariableNames: ''!


!AudioBuffer commentStamp: '<historical>' prior: 0!
AudioBuffers store 16 bit unsigned quantities.

Array size must be even, as two vales are stored in each word.!

!AudioPlayer class methodsFor: 'snapshotting' stamp: 'len 26/Nov/2025 19:40:00'!
shutDown
	"Stop player process, for example before snapshotting."

	self stopPlayerProcess! !

!AudioPlayer class methodsFor: 'snapshotting' stamp: 'len 6/Dec/2025 15:34:28'!
startUp
	"Start up the player process."

	self initialize.
	self
		startPlayerProcessBufferSize: BufferSize
		rate: SampleRate
		stereo: Stereo! !

!AudioPlayer class methodsFor: 'snapshotting' stamp: 'len 6/Dec/2025 15:34:35'!
startUpWithSound: aSound
	"Start up the player process."

	self initialize.
	self
		startPlayerProcessBufferSize: BufferSize
		rate: SampleRate
		stereo: Stereo
		sound: aSound! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 10/Mar/2026 15:06:08'!
blockSize
	^ 128! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:18:00'!
bufferSize
	^ BufferSize! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 6/Dec/2025 15:34:15'!
sampleRate
	^ SampleRate! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 26/Nov/2025 19:39:00'!
setVolumeLeft: aLeftVolume volumeRight: aRightVolume
	"Set sound pass in float 0.0-1.0 for left and right channel, with possible 2.0 or  higher to overdrive sound channel."
	self primSoundSetVolumeLeft: aLeftVolume volumeRight: aRightVolume! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 26/Nov/2025 19:31:00'!
soundVolume
	"Return sound as array of doubles left then right channel, range is 0.0 to 1.0 but may be overdriven"
	^self primSoundGetVolume! !

!AudioPlayer class methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:20:00'!
stereo
	^ Stereo! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 26/Nov/2025 22:44:00'!
canStartPlayer
	"Some platforms do no support simultaneous record and play. If this is one of those platforms, return false if there is a running AudioRecorder."
	self flag: #fixme.
"	AudioRecorder canRecordWhilePlaying ifTrue: [^ true].
	AudioRecorder anyActive ifTrue:[^false]."
	^ true
! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 27/Nov/2025 02:08:00'!
isPlaying: aSound
	^ ActiveSounds includes: aSound! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 28/Nov/2025 16:22:00'!
startPlaying: aSound
	"Start playing the given sound."
	PlayerProcess ifNil:
		[self canStartPlayer ifFalse: [^ self].
		^ self startUpWithSound: aSound].
	PlayerSemaphore critical:
		[(ActiveSounds includes: aSound)
			ifFalse: [ActiveSounds add: aSound]]! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 4/Dec/2025 20:52:30'!
stopPlaying: aSound
	"Stop playing the given sound."
	(PlayerSemaphore ifNil: [^ self]) critical: [ActiveSounds remove: aSound ifAbsent: nil]! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 26/Nov/2025 19:35:00'!
stopPlayingAll
	"Stop playing all sounds."

	PlayerSemaphore critical: [ActiveSounds := ActiveSounds species new].
! !

!AudioPlayer class methodsFor: 'playing' stamp: 'len 26/Nov/2025 19:35:00'!
waitUntilDonePlaying: aSound
	"Wait until the given sound is no longer playing."

	[PlayerSemaphore critical: [ActiveSounds includes: aSound]]
		whileTrue: [(Delay forMilliseconds: 100) wait]
! !

!AudioPlayer class methodsFor: 'initialization' stamp: 'len 10/Mar/2026 15:06:34'!
initialize
	"AudioPlayer shutDown; initialize; startUp"
	SampleRate := 44100.
	BufferSize := 2048. "512." "10 msecs"
	self assert: BufferSize \\ self blockSize = 0. "make sure it's a multiple of the block size"
	Stereo := true! !

!AudioPlayer class methodsFor: 'initialization' stamp: 'len 6/Dec/2025 15:34:42'!
useBufferSize: anInteger
	self shutDown.
	anInteger \\ 128 = 0 ifFalse: [self error: 'should be multiple of 128'].
	BufferSize := anInteger.
	self
		startPlayerProcessBufferSize: BufferSize
		rate: SampleRate
		stereo: Stereo
! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundAvailableBytes
	"Return the number of bytes of available space in the sound output buffer."
	"Note: Squeak always uses buffers containing 4-bytes per sample (2 channels at 2 bytes per channel) regardless of the state of the Stereo flag."

	<primitive: 'primitiveSoundAvailableSpace' module: 'SoundPlugin'>
	^ self primitiveFailed
! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundGetVolume
	"Return sound as array of doubles left then right channel, range is 0.0 to 1.0 but may be overdriven"
	<primitive: 'primitiveSoundGetVolume' module: 'SoundPlugin'>
	^Array with: 1.0 with: 1.0! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundInsertSamples: count from: aSoundBuffer samplesOfLeadTime: anInteger
	"Mix the given number of sample frames from the given sound buffer into the queue of samples that has already been submitted to the sound driver. This primitive is used to start a sound playing with minimum latency, even if large sound output buffers are being used to ensure smooth sound output. Returns the number of samples consumed, or zero if the primitive is not implemented or fails."

	<primitive: 'primitiveSoundInsertSamples' module: 'SoundPlugin'>
	^ 0
! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundPlaySamples: count from: aSampleBuffer startingAt: index
	"Copy count bytes into the current sound output buffer from the given sample buffer starting at the given index."

	<primitive: 'primitiveSoundPlaySamples' module: 'SoundPlugin'>
	^ self primitiveFailed
! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundSetVolumeLeft: aLeftVolume volumeRight: aRightVolume
	"Set sound pass in float 0.0-1.0 for left and right channel, with possible 2.0 or  higher to overdrive sound channel "
	<primitive: 'primitiveSoundSetLeftVolume' module: 'SoundPlugin'>
! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 21:22:00'!
primSoundStartBufferSize: bufferSize rate: samplesPerSecond stereo: stereoFlag
	"Start double-buffered sound output with the given buffer size and sampling rate. This version has been superceded by primitive 171 (primSoundStartBufferSize:rate:stereo:semaIndex:)."
	"ar 12/5/1998 Turn off the sound if not supported"
	<primitive: 'primitiveSoundStart' module: 'SoundPlugin'>
	SoundSupported := false! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 3/Dec/2025 18:33:37'!
primSoundStartBufferSize: bufferSize rate: samplesPerSecond stereo: stereoFlag semaIndex: anInteger
	"Start double-buffered sound output with the given buffer size and sampling rate. If the given semaphore index is > 0, it is taken to be the index of a Semaphore in the external objects array to be signalled when the sound driver is ready to accept another buffer of samples."
	"Details: If this primitive fails, this method tries to use the older version instead."

	<primitive: 'primitiveSoundStartWithSemaphore' module: 'SoundPlugin'>
	UseReadySemaphore := false.
	self primSoundStartBufferSize: bufferSize rate: samplesPerSecond stereo: stereoFlag! !

!AudioPlayer class methodsFor: 'private' stamp: 'len 26/Nov/2025 19:31:00'!
primSoundStop
	"Stop double-buffered sound output. Must not raise an error because it is used inside error handling and at system shutdown"

	<primitive: 'primitiveSoundStop' module: 'SoundPlugin'>! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 10/Mar/2026 15:06:29'!
oldStylePlayLoop
	"This version of the play loop is used if the VM does not yet support sound primitives that signal a semaphore when a sound buffer becomes available."
	| bytesPerSlice blockSize count finishedSounds |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := self blockSize.
	finishedSounds := #().
	[[(count := self primSoundAvailableBytes // bytesPerSlice) >= blockSize]
		whileFalse: [(Delay forMilliseconds: 1) wait].
	count := count min: Buffer stereoSampleCount.
	count := count // blockSize * blockSize. "make it a multiple of the frame size"
	PlayerSemaphore critical:
		[Buffer primFill: 0.
		ActiveSounds do: [:snd|
			(snd playSampleCount: count into: Buffer startingAt: 1) = count
				ifFalse: [finishedSounds := finishedSounds copyWith: snd]].
		self primSoundPlaySamples: count from: Buffer startingAt: 1].
		finishedSounds notEmpty ifTrue:
			[ActiveSounds := ActiveSounds reject: [:snd | finishedSounds includes: snd].
			finishedSounds := #()]] repeat! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 10/Mar/2026 15:06:24'!
playLoop
	"The audio player process loop."

	| bytesPerSlice blockSize count finishedSounds |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := self blockSize.
	finishedSounds := #().
	[[(count := self primSoundAvailableBytes // bytesPerSlice) >= blockSize]
		whileFalse: [ReadyForBuffer wait].
	count := count min: Buffer stereoSampleCount.
	count := count // blockSize * blockSize. "make it a multiple of the frame size"
	PlayerSemaphore critical:
		[Buffer primFill: 0.
		ActiveSounds do: [:snd|
			(snd playSampleCount: count into: Buffer startingAt: 1) = count
				ifFalse: [finishedSounds := finishedSounds copyWith: snd]].
		self primSoundPlaySamples: count from: Buffer startingAt: 1].
		finishedSounds notEmpty ifTrue:
			[ActiveSounds := ActiveSounds reject: [:snd| finishedSounds includes: snd].
			finishedSounds := #()]] repeat! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 10/Mar/2026 15:05:46'!
playLoop2
	"The audio player process loop."

	| bytesPerSlice blockSize count finishedSounds random |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := self blockSize.
	finishedSounds := #().
	random := Random new.
	[[(count := self primSoundAvailableBytes // bytesPerSlice) >= blockSize]
		whileFalse: [ReadyForBuffer wait].
	count := count min: Buffer stereoSampleCount.
	count := count // blockSize * blockSize. "make it a multiple of the frame size"
	PlayerSemaphore critical:
		[Buffer primFill: 0.
"		ActiveSounds do: [:snd|
			(snd playSampleCount: count into: Buffer startingAt: 1) = count
				ifFalse: [finishedSounds := finishedSounds copyWith: snd]]."
		1 to: count do: [:i| Buffer at: i put: (random next - 0.5 * 10000.0) asInteger].
		self primSoundPlaySamples: count from: Buffer startingAt: 1].
		finishedSounds notEmpty ifTrue:
			[ActiveSounds := ActiveSounds reject: [:snd| finishedSounds includes: snd].
			finishedSounds := #()]] repeat! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 26/Nov/2025 19:31:00'!
playerProcess
	^PlayerProcess! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 28/Nov/2025 22:49:00'!
startPlayerProcessBufferSize: bufferSize rate: samplesPerSecond stereo: stereoFlag
	"Start the sound player process. Terminate the old process, if any."
	"AudioPlayer startPlayerProcessBufferSize: 1000 rate: 11025 stereo: false"
	^self startPlayerProcessBufferSize: bufferSize 
			rate: samplesPerSecond 
			stereo: stereoFlag 
			sound: nil! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 6/Dec/2025 15:34:22'!
startPlayerProcessBufferSize: bufferSize rate: samplesPerSecond stereo: stereoFlag sound: aSound
	"Start the sound player process. Terminate the old process, if any."
	"AudioPlayer startPlayerProcessBufferSize: 1000 rate: 11025 stereo: false"
	self stopPlayerProcess.
	aSound
		ifNil:[ActiveSounds := OrderedCollection new]
		ifNotNil:[ActiveSounds := OrderedCollection with: aSound].
	Buffer := AudioBuffer newStereoSampleCount: bufferSize // 4 * 4.
	PlayerSemaphore := Semaphore forMutualExclusion.
	SampleRate := samplesPerSecond.
	Stereo := stereoFlag.
	ReadyForBuffer := Semaphore new.
	SoundSupported := true. "Assume so"
	UseReadySemaphore := true.  "set to false if ready semaphore not supported by VM"
	self primSoundStartBufferSize: Buffer stereoSampleCount
		rate: samplesPerSecond
		stereo: Stereo
		semaIndex: (Smalltalk registerExternalObject: ReadyForBuffer).
	"Check if sound start prim was successful"
	SoundSupported ifFalse:[^self].
	UseReadySemaphore
		ifTrue: [PlayerProcess := [self playLoop] newProcess]
		ifFalse: [PlayerProcess := [self oldStylePlayLoop] newProcess].
	PlayerProcess
		priority: Processor userInterruptPriority;
		name: 'Audio Player';
		resume! !

!AudioPlayer class methodsFor: 'player process' stamp: 'len 3/Dec/2025 03:15:00'!
stopPlayerProcess
	"Stop the sound player process."
	"AudioPlayer stopPlayerProcess"

	(PlayerProcess == nil or:[PlayerProcess == Processor activeProcess]) 
		ifFalse:[PlayerProcess terminate].
	PlayerProcess := nil.
	self primSoundStop.
	ActiveSounds := OrderedCollection new.
	Buffer := nil.
	PlayerSemaphore := Semaphore forMutualExclusion.
	ReadyForBuffer ifNotNil: [Smalltalk unregisterExternalObject: ReadyForBuffer].
	ReadyForBuffer := nil! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:56:18'!
abort
	handle ifNotNil: [self ffiAbortStream: handle]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:20:48'!
bufferedOutputAmount
	^ self ffiBufferedOutputAmount: handle! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:27:57'!
close
	handle ifNotNil: [self ffiCloseStream: handle]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:55:36'!
ffiAbortStream: portHandle
	<apicall: long 'abortStream' (void*) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:21:35'!
ffiBufferedOutputAmount: portHandle
	<apicall: long 'bufferedOutputAmount' (void*) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:27:33'!
ffiCloseStream: portHandle
	<apicall: long 'closeStream' (void*) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:07:13'!
ffiCreate
	<apicall: void* 'createPort' (void) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:21:42'!
ffiDestroy: portHandle
	<apicall: long 'destroyPort' (void*) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:54:33'!
ffiOpen: portHandle output: deviceId channels: nChannels sampleRate: sampleRate bufferSize: bufferSize
	<apicall: long 'OpenOutputStream' (void* long long long long) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:55:51'!
ffiStopStream: portHandle
	<apicall: long 'stopStream' (void*) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:22:01'!
ffiWriteAudio: portHandle data: floatArray count: numSamples
	<apicall: long 'writeAudio' (void* float* long) module: 'audioport.dylib'>
	^ self externalCallFailed! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 5/Dec/2025 20:36:45'!
initialize
	super initialize.
	handle := self ffiCreate! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:55:09'!
openOutput: deviceId channels: nChannels sampleRate: sampleRate bufferSize: bufferSize
	handle ifNotNil: [self ffiOpen: handle output: deviceId channels: nChannels sampleRate: sampleRate bufferSize: bufferSize]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 5/Dec/2025 20:37:58'!
release
	handle ifNotNil: [self ffiDestroy: handle. handle := nil]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:56:41'!
start
	handle ifNotNil: [self ffiStartStream: handle]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 15:10:21'!
stop
	handle ifNotNil: [self ffiStopStream: handle]! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:24:10'!
test
	| buffer bufferSize freq phase process sampleRate |
	sampleRate := 44100.0.
	freq := 440.0.
	phase := 0.0.
	bufferSize := 1024.
	buffer := Float32Array new: bufferSize * 2.
	self openOutput: 0 channels: 2 sampleRate: sampleRate bufferSize: 256. "!!!!"
	self start.
	process :=
		[[handle notNil] whileTrue:
			[[self bufferedOutputAmount > 2048] whileTrue: [(Delay forMilliseconds: 2) wait].
			1 to: bufferSize do: [:i| | v |
				v := phase sin * 0.5.
				buffer at: i-1*2+1 put: v; at: i-1*2+2 put: v.
				phase := phase + ((freq * 2 * Float pi) / sampleRate).
				phase > Float twoPi ifTrue: [phase := phase - Float twoPi]].
			self write: buffer]] newProcess.
	process priority: Processor userInterruptPriority.
	process resume.
	(Delay forSeconds: 5) wait.
	process terminate.
	self stop.
	self release! !

!AudioPort methodsFor: 'as yet unclassified' stamp: 'len 8/Dec/2025 16:22:19'!
write: aFloat32Array
	handle ifNotNil: [self ffiWriteAudio: handle data: aFloat32Array count: aFloat32Array size]! !

!Sound methodsFor: 'playing' stamp: 'len 27/Nov/2025 02:05:00'!
isPlaying
	^ AudioPlayer isPlaying: self! !

!Sound methodsFor: 'playing' stamp: 'len 27/Nov/2025 02:01:00'!
play
	self reset; resume! !

!Sound methodsFor: 'playing' stamp: 'len 7/Jan/2026 03:03:07'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	"Mix the next n samples of this sound into the given buffer starting at the given index.
	Answer the number of samples played (n if all the samples were played, or a number less than n if the sound finished playing)."
	^ 0! !

!Sound methodsFor: 'playing' stamp: 'len 27/Nov/2025 01:59:00'!
reset
	^ self! !

!Sound methodsFor: 'playing' stamp: 'len 27/Nov/2025 02:01:00'!
resume
	AudioPlayer startPlaying: self! !

!Sound methodsFor: 'playing' stamp: 'len 27/Nov/2025 02:02:00'!
stop
	AudioPlayer stopPlaying: self! !

!SineTestSound methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 21:39:49'!
initialize
	super initialize.
	phase := 0.0! !

!SineTestSound methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 21:45:54'!
next
	phase := phase +​ (170.0 / 44100.0) \\ 1.0.
	^ (phase * Float twoPi) sin * 0.25! !

!SineTestSound methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 21:45:46'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	| j x s |
	j := 2 * startIndex - 1.
	n timesRepeat:
		[x := self next.
		s := "(anAudioBuffer at: j) +" (x * 32767.0) asInteger.
		s > 32767 ifTrue: [s := 32767].  "clipping!!"
		s < -32767 ifTrue: [s := -32767].  "clipping!!"
		anAudioBuffer at: j put: s.	
		j := j + 1.
		s := "(anAudioBuffer at: j) +" (x * 32767.0) asInteger.
		s > 32767 ifTrue: [s := 32767].  "clipping!!"
		s < -32767 ifTrue: [s := -32767].  "clipping!!"
		anAudioBuffer at: j put: s.
		j := j + 1].
	^ n! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 27/Mar/2026 21:11:08'!
at: index
	"Return the 16-bit signed integer value at the given index of the receiver."

	<primitive: 143>
	index isInteger ifTrue: [self errorSubscriptBounds: index].
	index isNumber ifTrue: [^ self at: index truncated].
	self errorNonIntegerIndex! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 27/Mar/2026 21:11:03'!
at: index put: value
	"Store the given 16-bit signed integer at the given index in the receiver."

	<primitive: 144>
	index isInteger
		ifTrue: [
			(index >= 1 and: [index <= self size])
				ifTrue: [self errorImproperStore]
				ifFalse: [self errorSubscriptBounds: index]].
	index isNumber ifTrue: [^ self at: index truncated put: value].
	self errorNonIntegerIndex! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:25:00'!
bytesPerElement
	"Number of bytes in each item.  This multiplied by (self size)*8 gives the number of bits stored."
	^ 2! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:25:00'!
monoSampleCount
	"Return the number of monaural 16-bit samples that fit into this SoundBuffer."

	^ super size * 2
! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:25:00'!
size
	"Return the number of 16-bit sound samples that fit in this sound buffer. To avoid confusion, it is better to get the size of SoundBuffer using monoSampleCount or stereoSampleCount."

	^ self monoSampleCount
! !

!AudioBuffer methodsFor: 'accessing' stamp: 'len 26/Nov/2025 21:25:00'!
stereoSampleCount
	"Return the number of stereo slices that fit into this SoundBuffer. A stereo 'slice' consists of two 16-bit samples, one for each channel."

	^ super size
! !

!AudioBuffer methodsFor: 'primitives' stamp: 'len 26/Nov/2025 21:25:00'!
primFill: aPositiveInteger
	"Fill the receiver, an indexable bytes or words object, with the given positive integer. The range of possible fill values is [0..255] for byte arrays and [0..(2^32 - 1)] for word arrays."
	"Note: Since 16-bit word arrays are not built into the virtual machine, this primitive fills by 32-bit words."

	<primitive: 145>
	self errorImproperStore.
! !

!AudioBuffer class methodsFor: 'instance creation' stamp: 'len 26/Nov/2025 21:25:00'!
new: anInteger
	"See the comment in newMonoSampleCount:. To avoid confusion, it is best to create new instances using newMonoSampleCount: or newStereoSampleCount:."

	^ self newMonoSampleCount: anInteger
! !

!AudioBuffer class methodsFor: 'instance creation' stamp: 'len 26/Nov/2025 21:25:00'!
newMonoSampleCount: anInteger
	"Return a SoundBuffer large enough to hold the given number of monaural samples (i.e., 16-bit words)."
	"Details: The size is rounded up to an even number, since the underlying representation is in terms of 32-bit words."

	^ self basicNew: (anInteger + 1) // 2
! !

!AudioBuffer class methodsFor: 'instance creation' stamp: 'len 26/Nov/2025 21:25:00'!
newStereoSampleCount: anInteger
	"Return a SoundBuffer large enough to hold the given number of stereo slices. A stereo 'slice' consists of two 16-bit samples, one for each channel."

	^ self basicNew: anInteger
! !
AudioPlayer initialize!
