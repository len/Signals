'From Cuis7.7 [latest update: #7797] on 10 March 2026 at 3:30:37 pm'!
'Description Minimal audio I/O support.'!
!provides: 'Audio' 1 2!
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

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
asByteArray
	"Answer a ByteArray containing my sample data serialized in most-significant byte first order."

	| sampleCount bytes dst s |
	sampleCount _ self monoSampleCount.
	bytes _ ByteArray new: 2 * sampleCount.
	dst _ 0.
	1 to: sampleCount do: [:src |
		s _ self at: src.
		bytes at: (dst _ dst + 1) put: ((s bitShift: -8) bitAnd: 255).
		bytes at: (dst _ dst + 1) put: (s bitAnd: 255)].
	^ bytes

	! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
averageEvery: nSamples from: anotherBuffer upTo: inCount

	| fromIndex sum |

	fromIndex _ 1.
	1 to: inCount // nSamples do: [ :i |
		sum _ 0.
		nSamples timesRepeat: [
			sum _ sum + (anotherBuffer at: fromIndex).
			fromIndex _ fromIndex + 1.
		].
		self at: i put: sum // nSamples.
	].
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:27:00'!
downSampledLowPassFiltering: doFiltering
	"Answer a new SoundBuffer half the size of the receiver consisting of every other sample. If doFiltering is true, a simple low-pass filter is applied to avoid aliasing of high frequencies. Assume that receiver is monophonic."
	"Details: The simple low-pass filter in the current implementation could be improved, at some additional cost."

	| n resultBuf j |
	n := self monoSampleCount.
	resultBuf := self class newMonoSampleCount: n // 2.
	j := 0.
	doFiltering
		ifTrue: [
			1 to: n by: 2 do: [:i |
				resultBuf at: (j := j + 1) put:
					(((self at: i) + (self at: i + 1)) bitShift: -1)]]
		ifFalse: [
			1 to: n by: 2 do: [:i |
				resultBuf at: (j := j + 1) put: (self at: i)]].

	^ resultBuf! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:27:00'!
extractLeftChannel
	"Answer a new SoundBuffer half the size of the receiver consisting of only the left channel of the receiver, which is assumed to contain stereo sound data."

	| n resultBuf j |
	n := self monoSampleCount.
	resultBuf := self class newMonoSampleCount: n // 2.
	j := 0.
	1 to: n by: 2 do: [:i | resultBuf at: (j := j + 1) put: (self at: i)].
	^ resultBuf! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:28:00'!
extractRightChannel
	"Answer a new SoundBuffer half the size of the receiver consisting of only the right channel of the receiver, which is assumed to contain stereo sound data."

	| n resultBuf j |
	n := self monoSampleCount.
	resultBuf := self class newMonoSampleCount: n // 2.
	j := 0.
	2 to: n by: 2 do: [:i | resultBuf at: (j := j + 1) put: (self at: i)].
	^ resultBuf! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
indexOfFirstSampleOver: threshold
	"Return the index of the first sample whose absolute value is over the given threshold value. Return an index one greater than my size if no sample is over the threshold."

	1 to: self size do: [:i |
		(self at: i) abs > threshold ifTrue: [^ i]].
	^ self size + 1! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
indexOfLastSampleOver: threshold
	"Return the index of the last sample whose absolute value is over the given threshold value. Return zero if no sample is over the threshold."

	self size to: 1 by: -1 do: [:i |
		(self at: i) abs > threshold ifTrue: [^ i]].
	^ 0
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
lowPassFiltered
	"Answer a simple low-pass filtered copy of this buffer. Assume it is monophonic."

	| sz out last this |
	sz _ self monoSampleCount.
	out _ self copy.
	last _ self at: 1.
	2 to: sz do: [:i |
		this _ self at: i.
		out at: i put: (this + last) // 2.
		last _ this].
	^ out
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:28:00'!
mergeStereo
	"Answer a new SoundBuffer half the size of the receiver that mixes the left and right stereo channels of the receiver, which is assumed to contain stereo sound data."

	| n resultBuf j |
	n := self monoSampleCount.
	resultBuf := self class newMonoSampleCount: n // 2.
	j := 0.
	1 to: n by: 2 do: [:i | resultBuf at: (j := j + 1) put: (((self at: i) + (self at: i + 1)) // 2)].
	^ resultBuf
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:25:00'!
normalized: percentOfFullVolume
	"Increase my amplitudes so that the highest peak is the given percent of full volume. For example 's normalized: 50' would normalize to half of full volume."

	| peak s mult |
	peak _ 0.
	1 to: self size do: [:i |
		s _ (self at: i) abs.
		s > peak ifTrue: [peak _ s]].
	mult _ (32767.0 * percentOfFullVolume) / (100.0 * peak).
	1 to: self size do: [:i | self at: i put: (mult * (self at: i)) asInteger].
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 2/Jan/2026 01:38:15'!
saveAsAIFFFileSampleRate: rate on: aBinaryStream
	"Store this mono sound buffer in AIFF file format with the given sampling rate on the given stream."

	| sampleCount s swapBytes |
	sampleCount := self monoSampleCount.
	aBinaryStream nextPutAll: 'FORM' asByteArray.
	aBinaryStream nextInt32Put: (2 * sampleCount) + ((7 * 4) + 18) bigEndian: true.
	aBinaryStream nextPutAll: 'AIFF' asByteArray.
	aBinaryStream nextPutAll: 'COMM' asByteArray.
	aBinaryStream nextInt32Put: 18 bigEndian: true.
	aBinaryStream nextUint16Put: 1 bigEndian: true.  "channels"
	aBinaryStream nextInt32Put: sampleCount bigEndian: true.
	aBinaryStream nextUint16Put: 16 bigEndian: true.  "bits/sample"
	self storeExtendedFloat: rate on: aBinaryStream.
	aBinaryStream nextPutAll: 'SSND' asByteArray.
	aBinaryStream nextInt32Put: (2 * sampleCount) + 8 bigEndian: true.
	aBinaryStream nextInt32Put: 0 bigEndian: true.
	aBinaryStream nextInt32Put: 0 bigEndian: true.

	(aBinaryStream isFileStream) ifTrue: [
		"optimization: write sound buffer directly to file"
		swapBytes := Smalltalk isLittleEndian.
		swapBytes ifTrue: [self reverseEndianness].  "make big endian"
		aBinaryStream next: (self size // 2) putAll: self startingAt: 1.  "size in words"
		swapBytes ifTrue: [self reverseEndianness].  "revert to little endian"
		^ self].

	1 to: sampleCount do: [:i |
		s := self at: i.
		aBinaryStream nextPut: ((s bitShift: -8) bitAnd: 16rFF).
		aBinaryStream nextPut: (s bitAnd: 16rFF)].
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:28:00'!
splitStereo
	"Answer an array of two SoundBuffers half the size of the receiver consisting of the left and right channels of the receiver (which is assumed to contain stereo sound data)."

	| n leftBuf rightBuf leftIndex rightIndex |
	n := self monoSampleCount.
	leftBuf := self class newMonoSampleCount: n // 2.
	rightBuf := self class newMonoSampleCount: n // 2.
	leftIndex := rightIndex := 0.
	1 to: n by: 2 do: [:i |
		leftBuf at: (leftIndex := leftIndex + 1) put: (self at: i).
		rightBuf at: (rightIndex := rightIndex + 1) put: (self at: i + 1)].
	^ Array with: leftBuf with: rightBuf
! !

!AudioBuffer methodsFor: 'utilities' stamp: 'len 26/Nov/2025 21:28:00'!
trimmedThreshold: threshold
	| start end |
	start := self indexOfFirstSampleOver: threshold.
	end :=  self indexOfLastSampleOver: threshold.
	start > end ifTrue: [^ self class new].
	start := (start - 200) max: 1.
	end := (end + 200) min: self size.
	^ self copyFrom: start to: end! !

!AudioBuffer methodsFor: 'primitives' stamp: 'len 26/Nov/2025 21:25:00'!
at: index
	"Return the 16-bit integer value at the given index of the receiver."

	<primitive: 143>
	index isInteger ifTrue: [self errorSubscriptBounds: index].
	index isNumber ifTrue: [^ self at: index truncated].
	self errorNonIntegerIndex.
! !

!AudioBuffer methodsFor: 'primitives' stamp: 'len 26/Nov/2025 21:25:00'!
at: index put: value
	"Store the given 16-bit integer at the given index in the receiver."

	<primitive: 144>
	index isInteger
		ifTrue: [
			(index >= 1 and: [index <= self size])
				ifTrue: [self errorImproperStore]
				ifFalse: [self errorSubscriptBounds: index]].
	index isNumber ifTrue: [^ self at: index truncated put: value].
	self errorNonIntegerIndex.
! !

!AudioBuffer methodsFor: 'primitives' stamp: 'len 26/Nov/2025 21:25:00'!
primFill: aPositiveInteger
	"Fill the receiver, an indexable bytes or words object, with the given positive integer. The range of possible fill values is [0..255] for byte arrays and [0..(2^32 - 1)] for word arrays."
	"Note: Since 16-bit word arrays are not built into the virtual machine, this primitive fills by 32-bit words."

	<primitive: 145>
	self errorImproperStore.
! !

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

!AudioBuffer methodsFor: 'objects from disk' stamp: 'len 26/Nov/2025 21:25:00'!
restoreEndianness
	"This word object was just read in from a stream.  It was stored in Big Endian (Mac) format.  Swap each pair of bytes (16-bit word), if the current machine is Little Endian.
	Why is this the right thing to do?  We are using memory as a byteStream.  High and low bytes are reversed in each 16-bit word, but the stream of words ascends through memory.  Different from a Bitmap."

	| hack blt |
	Smalltalk isLittleEndian ifTrue: [
		"The implementation is a hack, but fast for large ranges"
		hack _ Form new hackBits: self.
		blt _ (BitBlt toForm: hack) sourceForm: hack.
		blt combinationRule: Form reverse.  "XOR"
		blt sourceY: 0; destY: 0; height: self size; width: 1.
		blt sourceX: 0; destX: 1; copyBits.  "Exchange bytes 0 and 1"
		blt sourceX: 1; destX: 0; copyBits.
		blt sourceX: 0; destX: 1; copyBits.
		blt sourceX: 2; destX: 3; copyBits.  "Exchange bytes 2 and 3"
		blt sourceX: 3; destX: 2; copyBits.
		blt sourceX: 2; destX: 3; copyBits].

! !

!AudioBuffer methodsFor: 'objects from disk' stamp: 'len 26/Nov/2025 21:25:00'!
reverseEndianness
	"Swap the bytes of each 16-bit word, using a fast BitBlt hack."

	| hack blt |
	hack _ Form new hackBits: self.
	blt _ (BitBlt toForm: hack) sourceForm: hack.
	blt combinationRule: Form reverse.  "XOR"
	blt sourceY: 0; destY: 0; height: self size; width: 1.
	blt sourceX: 0; destX: 1; copyBits.  "Exchange bytes 0 and 1"
	blt sourceX: 1; destX: 0; copyBits.
	blt sourceX: 0; destX: 1; copyBits.
	blt sourceX: 2; destX: 3; copyBits.  "Exchange bytes 2 and 3"
	blt sourceX: 3; destX: 2; copyBits.
	blt sourceX: 2; destX: 3; copyBits.
! !

!AudioBuffer class methodsFor: 'instance creation' stamp: 'len 26/Nov/2025 21:25:00'!
averageEvery: nSamples from: anotherBuffer upTo: inCount

	^(self newMonoSampleCount: inCount // nSamples)
		averageEvery: nSamples 
		from: anotherBuffer 
		upTo: inCount! !

!AudioBuffer class methodsFor: 'instance creation' stamp: 'len 26/Nov/2025 21:27:00'!
fromArray: anArray
	"Return a new SoundBuffer whose contents are copied from the given Array or ByteArray."

	| new |
	new := self newMonoSampleCount: anArray size.
	1 to: anArray size do: [:i | new at: i put: (anArray at: i)].
	^ new
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
