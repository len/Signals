'From Cuis7.7 [latest update: #7872] on 17 April 2026 at 8:31:28 pm'!
'Description Lively dataflow programming environment for real-time musical synthesis.'!
!provides: 'Signals' 1 531!
!requires: 'Audio' 1 1 nil!
!requires: 'JSON' 1 29 nil!
SystemOrganization addCategory: #'Signals-Kernel'!
SystemOrganization addCategory: #'Signals-Oscillators'!
SystemOrganization addCategory: #'Signals-Noise'!
SystemOrganization addCategory: #'Signals-Samples'!
SystemOrganization addCategory: #'Signals-Mix'!
SystemOrganization addCategory: #'Signals-Modulation'!
SystemOrganization addCategory: #'Signals-Envelopes'!
SystemOrganization addCategory: #'Signals-Filters'!
SystemOrganization addCategory: #'Signals-VA Filters'!
SystemOrganization addCategory: #'Signals-Shapers'!
SystemOrganization addCategory: #'Signals-Dynamics'!
SystemOrganization addCategory: #'Signals-FX'!
SystemOrganization addCategory: #'Signals-IO'!
SystemOrganization addCategory: #'Signals-Utility'!
SystemOrganization addCategory: #'Signals-Morphic-Widgets'!
SystemOrganization addCategory: #'Signals-Morphic-Controls'!
SystemOrganization addCategory: #'Signals-Morphic-Patches'!
SystemOrganization addCategory: #'Signals-Morphic-Support'!
SystemOrganization addCategory: #'Signals-Support'!
SystemOrganization addCategory: 'Signals-Trash'!


!classDefinition: #Control category: #'Signals-Kernel'!
ActiveModel subclass: #Control
	instanceVariableNames: 'base modulation lastValue printer default label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Control class' category: #'Signals-Kernel'!
Control class
	instanceVariableNames: ''!

!classDefinition: #Choice category: #'Signals-Kernel'!
Control subclass: #Choice
	instanceVariableNames: 'options'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Choice class' category: #'Signals-Kernel'!
Choice class
	instanceVariableNames: ''!

!classDefinition: #Knob category: #'Signals-Kernel'!
Control subclass: #Knob
	instanceVariableNames: 'min max curve coarseStep fineStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Knob class' category: #'Signals-Kernel'!
Knob class
	instanceVariableNames: ''!

!classDefinition: #Toggle category: #'Signals-Kernel'!
Control subclass: #Toggle
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Toggle class' category: #'Signals-Kernel'!
Toggle class
	instanceVariableNames: ''!

!classDefinition: #Module category: #'Signals-Kernel'!
ActiveModel subclass: #Module
	instanceVariableNames: 'controls'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Module class' category: #'Signals-Kernel'!
Module class
	instanceVariableNames: ''!

!classDefinition: #Amp category: #'Signals-Dynamics'!
Module subclass: #Amp
	instanceVariableNames: 'input gain output inputRM'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Dynamics'!
!classDefinition: 'Amp class' category: #'Signals-Dynamics'!
Amp class
	instanceVariableNames: ''!

!classDefinition: #Compressor category: #'Signals-Dynamics'!
Module subclass: #Compressor
	instanceVariableNames: 'schpf rmslpf envelope inputL inputR inputSC outputL outputR aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Dynamics'!
!classDefinition: 'Compressor class' category: #'Signals-Dynamics'!
Compressor class
	instanceVariableNames: ''!

!classDefinition: #Gate category: #'Signals-Dynamics'!
Module subclass: #Gate
	instanceVariableNames: 'schpf rmslpf envelope inputL inputR inputSC outputL outputR aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Dynamics'!
!classDefinition: 'Gate class' category: #'Signals-Dynamics'!
Gate class
	instanceVariableNames: ''!

!classDefinition: #EG category: #'Signals-Envelopes'!
Module subclass: #EG
	instanceVariableNames: 'velocity stage value factor increment attack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'EG class' category: #'Signals-Envelopes'!
EG class
	instanceVariableNames: ''!

!classDefinition: #AD category: #'Signals-Envelopes'!
EG subclass: #AD
	instanceVariableNames: 'decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'AD class' category: #'Signals-Envelopes'!
AD class
	instanceVariableNames: ''!

!classDefinition: #ADSR category: #'Signals-Envelopes'!
EG subclass: #ADSR
	instanceVariableNames: 'decay sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'ADSR class' category: #'Signals-Envelopes'!
ADSR class
	instanceVariableNames: ''!

!classDefinition: #AHD category: #'Signals-Envelopes'!
EG subclass: #AHD
	instanceVariableNames: 'hold holding decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'AHD class' category: #'Signals-Envelopes'!
AHD class
	instanceVariableNames: ''!

!classDefinition: #AR category: #'Signals-Envelopes'!
EG subclass: #AR
	instanceVariableNames: 'release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'AR class' category: #'Signals-Envelopes'!
AR class
	instanceVariableNames: ''!

!classDefinition: #ASR category: #'Signals-Envelopes'!
EG subclass: #ASR
	instanceVariableNames: 'sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Envelopes'!
!classDefinition: 'ASR class' category: #'Signals-Envelopes'!
ASR class
	instanceVariableNames: ''!

!classDefinition: #Chorus category: #'Signals-FX'!
Module subclass: #Chorus
	instanceVariableNames: 'input outputL outputR phase delayLine tap1 tap2 tap3 lpfL lpfR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Chorus class' category: #'Signals-FX'!
Chorus class
	instanceVariableNames: ''!

!classDefinition: #Ensemble category: #'Signals-FX'!
Module subclass: #Ensemble
	instanceVariableNames: 'input outputL outputR delayLine tap1 tap2 tap3 tap4 tap5 phase1 phase2 phase3 phase4 phase5 lpfL lpfR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Ensemble class' category: #'Signals-FX'!
Ensemble class
	instanceVariableNames: ''!

!classDefinition: #StereoEcho category: #'Signals-FX'!
Module subclass: #StereoEcho
	instanceVariableNames: 'delayLineL tapL delayLineR tapR lpfL hpfL lsfL hsfL lpfR hpfR lsfR hsfR inputL inputR outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'StereoEcho class' category: #'Signals-FX'!
StereoEcho class
	instanceVariableNames: ''!

!classDefinition: #StereoReverb category: #'Signals-FX'!
Module subclass: #StereoReverb
	instanceVariableNames: 'predelayLine predelayTap combsL combsR allpassesL allpassesR inputL inputR outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'StereoReverb class' category: #'Signals-FX'!
StereoReverb class
	instanceVariableNames: ''!

!classDefinition: #Crossover category: #'Signals-Filters'!
Module subclass: #Crossover
	instanceVariableNames: 'lpf1 lpf2 hpf1 hpf2 input outputLow outputHigh'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'Crossover class' category: #'Signals-Filters'!
Crossover class
	instanceVariableNames: ''!

!classDefinition: #SVF category: #'Signals-Filters'!
Module subclass: #SVF
	instanceVariableNames: 's1 s2 input outputLP outputHP outputBP outputBPN'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'SVF class' category: #'Signals-Filters'!
SVF class
	instanceVariableNames: ''!

!classDefinition: #AudioIn category: #'Signals-IO'!
Module subclass: #AudioIn
	instanceVariableNames: 'buses outputL outputR meterLeftValue meterRightValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'AudioIn class' category: #'Signals-IO'!
AudioIn class
	instanceVariableNames: ''!

!classDefinition: #AudioOut category: #'Signals-IO'!
Module subclass: #AudioOut
	instanceVariableNames: 'buses level levelLeft levelRight inputL inputR aux meterLeftValue meterRightValue enabled'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'AudioOut class' category: #'Signals-IO'!
AudioOut class
	instanceVariableNames: ''!

!classDefinition: #ControlIn category: #'Signals-IO'!
Module subclass: #ControlIn
	instanceVariableNames: 'values lastValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'ControlIn class' category: #'Signals-IO'!
ControlIn class
	instanceVariableNames: ''!

!classDefinition: #Generator category: #'Signals-Kernel'!
Module subclass: #Generator
	instanceVariableNames: 'output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Generator class' category: #'Signals-Kernel'!
Generator class
	instanceVariableNames: ''!

!classDefinition: #TunedGenerator category: #'Signals-Kernel'!
Generator subclass: #TunedGenerator
	instanceVariableNames: 'note'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'TunedGenerator class' category: #'Signals-Kernel'!
TunedGenerator class
	instanceVariableNames: ''!

!classDefinition: #Oscillator category: #'Signals-Oscillators'!
TunedGenerator subclass: #Oscillator
	instanceVariableNames: 'phase increment incrementRatio inputFM'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Oscillator class' category: #'Signals-Oscillators'!
Oscillator class
	instanceVariableNames: ''!

!classDefinition: #OPN category: #'Signals-Oscillators'!
Oscillator subclass: #OPN
	instanceVariableNames: 'wave'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'OPN class' category: #'Signals-Oscillators'!
OPN class
	instanceVariableNames: ''!

!classDefinition: #Pulse category: #'Signals-Oscillators'!
Oscillator subclass: #Pulse
	instanceVariableNames: 'width inputPWM'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Pulse class' category: #'Signals-Oscillators'!
Pulse class
	instanceVariableNames: ''!

!classDefinition: #Saw category: #'Signals-Oscillators'!
Oscillator subclass: #Saw
	instanceVariableNames: 'shape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Saw class' category: #'Signals-Oscillators'!
Saw class
	instanceVariableNames: ''!

!classDefinition: #Sine category: #'Signals-Oscillators'!
Oscillator subclass: #Sine
	instanceVariableNames: 'warp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Sine class' category: #'Signals-Oscillators'!
Sine class
	instanceVariableNames: ''!

!classDefinition: #TriSawPulse category: #'Signals-Oscillators'!
Oscillator subclass: #TriSawPulse
	instanceVariableNames: 'shape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'TriSawPulse class' category: #'Signals-Oscillators'!
TriSawPulse class
	instanceVariableNames: ''!

!classDefinition: #Triangle category: #'Signals-Oscillators'!
Oscillator subclass: #Triangle
	instanceVariableNames: 'shape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Triangle class' category: #'Signals-Oscillators'!
Triangle class
	instanceVariableNames: ''!

!classDefinition: #Wavetable category: #'Signals-Samples'!
Oscillator subclass: #Wavetable
	instanceVariableNames: 'table frameSize position fft spectrumReal spectrumImaginary aux ticksToUpdate label'
	classVariableNames: 'Library'
	poolDictionaries: ''
	category: 'Signals-Samples'!
!classDefinition: 'Wavetable class' category: #'Signals-Samples'!
Wavetable class
	instanceVariableNames: ''!

!classDefinition: #Supersaw category: #'Signals-Oscillators'!
TunedGenerator subclass: #Supersaw
	instanceVariableNames: 'increment phases increments incrementRatio centerGain sideGain'
	classVariableNames: 'DetuneCurveLUT'
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Supersaw class' category: #'Signals-Oscillators'!
Supersaw class
	instanceVariableNames: ''!

!classDefinition: #TonewheelOrgan category: #'Signals-Oscillators'!
TunedGenerator subclass: #TonewheelOrgan
	instanceVariableNames: 'phases frequencies amplitudes click random released'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'TonewheelOrgan class' category: #'Signals-Oscillators'!
TonewheelOrgan class
	instanceVariableNames: ''!

!classDefinition: #TransistorOrgan category: #'Signals-Oscillators'!
TunedGenerator subclass: #TransistorOrgan
	instanceVariableNames: 'phases frequencies amplitudes released filter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'TransistorOrgan class' category: #'Signals-Oscillators'!
TransistorOrgan class
	instanceVariableNames: ''!

!classDefinition: #VOSIM category: #'Signals-Oscillators'!
TunedGenerator subclass: #VOSIM
	instanceVariableNames: 'carrierPhase formant1Phase formant2Phase carrierFrequency formant1Frequency formant2Frequency carrierShape'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'VOSIM class' category: #'Signals-Oscillators'!
VOSIM class
	instanceVariableNames: ''!

!classDefinition: #Multisample category: #'Signals-Samples'!
TunedGenerator subclass: #Multisample
	instanceVariableNames: 'keymap velocity offset sample tailSample label'
	classVariableNames: 'Library'
	poolDictionaries: ''
	category: 'Signals-Samples'!
!classDefinition: 'Multisample class' category: #'Signals-Samples'!
Multisample class
	instanceVariableNames: ''!

!classDefinition: #Sample category: #'Signals-Samples'!
TunedGenerator subclass: #Sample
	instanceVariableNames: 'buffer rate loopEnd loopLength offset speed warp released position tailPosition increment incrementRatio label'
	classVariableNames: 'Library'
	poolDictionaries: ''
	category: 'Signals-Samples'!
!classDefinition: 'Sample class' category: #'Signals-Samples'!
Sample class
	instanceVariableNames: ''!

!classDefinition: #ColoredNoise category: #'Signals-Noise'!
Generator subclass: #ColoredNoise
	instanceVariableNames: 'color state x1 y1 s1 s2 s3'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Noise'!
!classDefinition: 'ColoredNoise class' category: #'Signals-Noise'!
ColoredNoise class
	instanceVariableNames: ''!

!classDefinition: #SparseNoise category: #'Signals-Noise'!
Generator subclass: #SparseNoise
	instanceVariableNames: 'p d jitter random state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Noise'!
!classDefinition: 'SparseNoise class' category: #'Signals-Noise'!
SparseNoise class
	instanceVariableNames: ''!

!classDefinition: #VelvetNoise category: #'Signals-Noise'!
Generator subclass: #VelvetNoise
	instanceVariableNames: 'period jitterRange bias energy random counter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Noise'!
!classDefinition: 'VelvetNoise class' category: #'Signals-Noise'!
VelvetNoise class
	instanceVariableNames: ''!

!classDefinition: #SineSweep category: #'Signals-Utility'!
Generator subclass: #SineSweep
	instanceVariableNames: 'frequency phase startFrequency endFrequency'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Utility'!
!classDefinition: 'SineSweep class' category: #'Signals-Utility'!
SineSweep class
	instanceVariableNames: ''!

!classDefinition: #Transform category: #'Signals-Kernel'!
Module subclass: #Transform
	instanceVariableNames: 'input output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Transform class' category: #'Signals-Kernel'!
Transform class
	instanceVariableNames: ''!

!classDefinition: #Limiter category: #'Signals-Dynamics'!
Transform subclass: #Limiter
	instanceVariableNames: 'peak ceiling release gain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Dynamics'!
!classDefinition: 'Limiter class' category: #'Signals-Dynamics'!
Limiter class
	instanceVariableNames: ''!

!classDefinition: #Allpass category: #'Signals-FX'!
Transform subclass: #Allpass
	instanceVariableNames: 'delayLine tap gain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Allpass class' category: #'Signals-FX'!
Allpass class
	instanceVariableNames: ''!

!classDefinition: #Comb category: #'Signals-FX'!
Transform subclass: #Comb
	instanceVariableNames: 'delayLine tap feedback damping x0'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Comb class' category: #'Signals-FX'!
Comb class
	instanceVariableNames: ''!

!classDefinition: #Echo category: #'Signals-FX'!
Transform subclass: #Echo
	instanceVariableNames: 'delayLine tap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Echo class' category: #'Signals-FX'!
Echo class
	instanceVariableNames: ''!

!classDefinition: #Flanger category: #'Signals-FX'!
Transform subclass: #Flanger
	instanceVariableNames: 'phase delayLine tap lpf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Flanger class' category: #'Signals-FX'!
Flanger class
	instanceVariableNames: ''!

!classDefinition: #Phaser category: #'Signals-FX'!
Transform subclass: #Phaser
	instanceVariableNames: 'phase x1 y1 lastOutput'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Phaser class' category: #'Signals-FX'!
Phaser class
	instanceVariableNames: ''!

!classDefinition: #PitchShifter category: #'Signals-FX'!
Transform subclass: #PitchShifter
	instanceVariableNames: 'delayLine1 delayLine2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'PitchShifter class' category: #'Signals-FX'!
PitchShifter class
	instanceVariableNames: ''!

!classDefinition: #Reverb category: #'Signals-FX'!
Transform subclass: #Reverb
	instanceVariableNames: 'predelayLine predelayTap combs allpasses mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Reverb class' category: #'Signals-FX'!
Reverb class
	instanceVariableNames: ''!

!classDefinition: #TapeEcho category: #'Signals-FX'!
Transform subclass: #TapeEcho
	instanceVariableNames: 'delayLine tap1 tap2 tap3 level1 level2 level3 feedback mix lpf hpf lsf hsf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'TapeEcho class' category: #'Signals-FX'!
TapeEcho class
	instanceVariableNames: ''!

!classDefinition: #Vibrato category: #'Signals-FX'!
Transform subclass: #Vibrato
	instanceVariableNames: 'phase delayLine tap'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Vibrato class' category: #'Signals-FX'!
Vibrato class
	instanceVariableNames: ''!

!classDefinition: #BPF category: #'Signals-Filters'!
Transform subclass: #BPF
	instanceVariableNames: 'biquad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'BPF class' category: #'Signals-Filters'!
BPF class
	instanceVariableNames: ''!

!classDefinition: #BSF category: #'Signals-Filters'!
Transform subclass: #BSF
	instanceVariableNames: 'biquad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'BSF class' category: #'Signals-Filters'!
BSF class
	instanceVariableNames: ''!

!classDefinition: #EQ3 category: #'Signals-Filters'!
Transform subclass: #EQ3
	instanceVariableNames: 'lowPassLow highPassMid lowPassMid highPassHigh aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'EQ3 class' category: #'Signals-Filters'!
EQ3 class
	instanceVariableNames: ''!

!classDefinition: #EQ5 category: #'Signals-Filters'!
Transform subclass: #EQ5
	instanceVariableNames: 'lowShelf bell1 bell2 bell3 highShelf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'EQ5 class' category: #'Signals-Filters'!
EQ5 class
	instanceVariableNames: ''!

!classDefinition: #HPF category: #'Signals-Filters'!
Transform subclass: #HPF
	instanceVariableNames: 'biquad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'HPF class' category: #'Signals-Filters'!
HPF class
	instanceVariableNames: ''!

!classDefinition: #LPF category: #'Signals-Filters'!
Transform subclass: #LPF
	instanceVariableNames: 'biquad'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Filters'!
!classDefinition: 'LPF class' category: #'Signals-Filters'!
LPF class
	instanceVariableNames: ''!

!classDefinition: #Transform2x category: #'Signals-Kernel'!
Transform subclass: #Transform2x
	instanceVariableNames: 'oversampler'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Transform2x class' category: #'Signals-Kernel'!
Transform2x class
	instanceVariableNames: ''!

!classDefinition: #TubeSaturator category: #'Signals-Shapers'!
Transform2x subclass: #TubeSaturator
	instanceVariableNames: 'prehpf prelpf drive postgain postlpf dcblock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'TubeSaturator class' category: #'Signals-Shapers'!
TubeSaturator class
	instanceVariableNames: ''!

!classDefinition: #Waveshaper category: #'Signals-Shapers'!
Transform2x subclass: #Waveshaper
	instanceVariableNames: 'pregain bias dc postgain dry'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'Waveshaper class' category: #'Signals-Shapers'!
Waveshaper class
	instanceVariableNames: ''!

!classDefinition: #DiodeClipper category: #'Signals-Shapers'!
Waveshaper subclass: #DiodeClipper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'DiodeClipper class' category: #'Signals-Shapers'!
DiodeClipper class
	instanceVariableNames: ''!

!classDefinition: #HardClipper category: #'Signals-Shapers'!
Waveshaper subclass: #HardClipper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'HardClipper class' category: #'Signals-Shapers'!
HardClipper class
	instanceVariableNames: ''!

!classDefinition: #SoftClipper category: #'Signals-Shapers'!
Waveshaper subclass: #SoftClipper
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'SoftClipper class' category: #'Signals-Shapers'!
SoftClipper class
	instanceVariableNames: ''!

!classDefinition: #Wavefolder category: #'Signals-Shapers'!
Waveshaper subclass: #Wavefolder
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'Wavefolder class' category: #'Signals-Shapers'!
Wavefolder class
	instanceVariableNames: ''!

!classDefinition: #Korg35HPF category: #'Signals-VA Filters'!
Transform2x subclass: #Korg35HPF
	instanceVariableNames: 's1 s2 s3 α α₀ β₂ β₃ k frequency resonance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-VA Filters'!
!classDefinition: 'Korg35HPF class' category: #'Signals-VA Filters'!
Korg35HPF class
	instanceVariableNames: ''!

!classDefinition: #Korg35LPF category: #'Signals-VA Filters'!
Transform2x subclass: #Korg35LPF
	instanceVariableNames: 's1 s2 s3 α α₀ β₂ β₃ k frequency resonance'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-VA Filters'!
!classDefinition: 'Korg35LPF class' category: #'Signals-VA Filters'!
Korg35LPF class
	instanceVariableNames: ''!

!classDefinition: #Decimator category: #'Signals-Shapers'!
Transform subclass: #Decimator
	instanceVariableNames: 'quantization downsample holdCount heldValue mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'Decimator class' category: #'Signals-Shapers'!
Decimator class
	instanceVariableNames: ''!

!classDefinition: #Overdrive category: #'Signals-Shapers'!
Transform subclass: #Overdrive
	instanceVariableNames: 'pregain postgain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'Overdrive class' category: #'Signals-Shapers'!
Overdrive class
	instanceVariableNames: ''!

!classDefinition: #TapeSaturator category: #'Signals-Shapers'!
Transform subclass: #TapeSaturator
	instanceVariableNames: 'prehpf drive nonlinearityGain tone bias dc postgain postlpf'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Shapers'!
!classDefinition: 'TapeSaturator class' category: #'Signals-Shapers'!
TapeSaturator class
	instanceVariableNames: ''!

!classDefinition: #DiodeLadder2 category: 'Signals-Trash'!
Transform subclass: #DiodeLadder2
	instanceVariableNames: 's1 s2 s3 s4 vc1 vc2 vc3 vc4 vout k g'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'DiodeLadder2 class' category: 'Signals-Trash'!
DiodeLadder2 class
	instanceVariableNames: ''!

!classDefinition: #SqueakReverb category: 'Signals-Trash'!
Transform subclass: #SqueakReverb
	instanceVariableNames: 'buffer position delays gains mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'SqueakReverb class' category: 'Signals-Trash'!
SqueakReverb class
	instanceVariableNames: ''!

!classDefinition: #Balance category: #'Signals-Mix'!
Module subclass: #Balance
	instanceVariableNames: 'inputA inputB outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'Balance class' category: #'Signals-Mix'!
Balance class
	instanceVariableNames: ''!

!classDefinition: #Crossfader category: #'Signals-Mix'!
Module subclass: #Crossfader
	instanceVariableNames: 'inputA inputB output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'Crossfader class' category: #'Signals-Mix'!
Crossfader class
	instanceVariableNames: ''!

!classDefinition: #Mixer category: #'Signals-Mix'!
Module subclass: #Mixer
	instanceVariableNames: 'inputA inputB output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'Mixer class' category: #'Signals-Mix'!
Mixer class
	instanceVariableNames: ''!

!classDefinition: #Mixer4 category: #'Signals-Mix'!
Module subclass: #Mixer4
	instanceVariableNames: 'inputA inputB inputC inputD output aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'Mixer4 class' category: #'Signals-Mix'!
Mixer4 class
	instanceVariableNames: ''!

!classDefinition: #Pan category: #'Signals-Mix'!
Module subclass: #Pan
	instanceVariableNames: 'input outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'Pan class' category: #'Signals-Mix'!
Pan class
	instanceVariableNames: ''!

!classDefinition: #StereoMatrix category: #'Signals-Mix'!
Module subclass: #StereoMatrix
	instanceVariableNames: 'inputA inputB outputL outputR aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Mix'!
!classDefinition: 'StereoMatrix class' category: #'Signals-Mix'!
StereoMatrix class
	instanceVariableNames: ''!

!classDefinition: #Attenuator category: #'Signals-Modulation'!
Module subclass: #Attenuator
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'Attenuator class' category: #'Signals-Modulation'!
Attenuator class
	instanceVariableNames: ''!

!classDefinition: #Attenuverter category: #'Signals-Modulation'!
Module subclass: #Attenuverter
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'Attenuverter class' category: #'Signals-Modulation'!
Attenuverter class
	instanceVariableNames: ''!

!classDefinition: #EnvelopeFollower category: #'Signals-Modulation'!
Module subclass: #EnvelopeFollower
	instanceVariableNames: 'input envelope'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'EnvelopeFollower class' category: #'Signals-Modulation'!
EnvelopeFollower class
	instanceVariableNames: ''!

!classDefinition: #KeyTracker category: #'Signals-Modulation'!
Module subclass: #KeyTracker
	instanceVariableNames: 'note'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'KeyTracker class' category: #'Signals-Modulation'!
KeyTracker class
	instanceVariableNames: ''!

!classDefinition: #LFO category: #'Signals-Modulation'!
Module subclass: #LFO
	instanceVariableNames: 'shape bipolar speed offset mode phase heldValue seed random randomValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'LFO class' category: #'Signals-Modulation'!
LFO class
	instanceVariableNames: ''!

!classDefinition: #LogAttenuator category: #'Signals-Modulation'!
Module subclass: #LogAttenuator
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'LogAttenuator class' category: #'Signals-Modulation'!
LogAttenuator class
	instanceVariableNames: ''!

!classDefinition: #VelocityTracker category: #'Signals-Modulation'!
Module subclass: #VelocityTracker
	instanceVariableNames: 'velocity'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Modulation'!
!classDefinition: 'VelocityTracker class' category: #'Signals-Modulation'!
VelocityTracker class
	instanceVariableNames: ''!

!classDefinition: #DiodeLadder category: 'Signals-Trash'!
Module subclass: #DiodeLadder
	instanceVariableNames: 's1 s2 s3 s4 ρ G1 G2 G3 G4 γ k input outputLP4 outputLP3 outputLP2 outputLP1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'DiodeLadder class' category: 'Signals-Trash'!
DiodeLadder class
	instanceVariableNames: ''!

!classDefinition: #Oscilloscope category: #'Signals-Utility'!
Module subclass: #Oscilloscope
	instanceVariableNames: 'input delayLine'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Utility'!
!classDefinition: 'Oscilloscope class' category: #'Signals-Utility'!
Oscilloscope class
	instanceVariableNames: ''!

!classDefinition: #Spectrogram category: #'Signals-Utility'!
Module subclass: #Spectrogram
	instanceVariableNames: 'input image position stft hop buffer bufferIndex colormap frequencyScale logSpectrum'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Utility'!
!classDefinition: 'Spectrogram class' category: #'Signals-Utility'!
Spectrogram class
	instanceVariableNames: ''!

!classDefinition: #SpectrumAnalyzer category: #'Signals-Utility'!
Module subclass: #SpectrumAnalyzer
	instanceVariableNames: 'input spectrum stft buffer bufferIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Utility'!
!classDefinition: 'SpectrumAnalyzer class' category: #'Signals-Utility'!
SpectrumAnalyzer class
	instanceVariableNames: ''!

!classDefinition: #Vectorscope category: #'Signals-Utility'!
Module subclass: #Vectorscope
	instanceVariableNames: 'inputX inputY image color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Utility'!
!classDefinition: 'Vectorscope class' category: #'Signals-Utility'!
Vectorscope class
	instanceVariableNames: ''!

!classDefinition: #MoogLPF category: #'Signals-VA Filters'!
Module subclass: #MoogLPF
	instanceVariableNames: 'y0 y1 y2 y3 y4 input outputLP4 outputLP3 outputLP2 outputLP1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-VA Filters'!
!classDefinition: 'MoogLPF class' category: #'Signals-VA Filters'!
MoogLPF class
	instanceVariableNames: ''!

!classDefinition: #MoogLadder category: #'Signals-VA Filters'!
Module subclass: #MoogLadder
	instanceVariableNames: 's1 s2 s3 s4 input outputLP4 outputLP3 outputLP2 outputLP1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-VA Filters'!
!classDefinition: 'MoogLadder class' category: #'Signals-VA Filters'!
MoogLadder class
	instanceVariableNames: ''!

!classDefinition: #OberheimSVF category: #'Signals-VA Filters'!
Module subclass: #OberheimSVF
	instanceVariableNames: 's1 s2 input outputLP outputHP outputBP outputBS'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-VA Filters'!
!classDefinition: 'OberheimSVF class' category: #'Signals-VA Filters'!
OberheimSVF class
	instanceVariableNames: ''!

!classDefinition: #ControlOld category: 'Signals-Trash'!
ActiveModel subclass: #ControlOld
	instanceVariableNames: 'min max curve base modulation lastValue printer default label coarseStep fineStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'ControlOld class' category: 'Signals-Trash'!
ControlOld class
	instanceVariableNames: ''!

!classDefinition: #ControlPanel category: #'Signals-Morphic-Controls'!
LinearLayoutMorph subclass: #ControlPanel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ControlPanel class' category: #'Signals-Morphic-Controls'!
ControlPanel class
	instanceVariableNames: ''!

!classDefinition: #RoundedLinearLayoutMorph category: #'Signals-Morphic-Support'!
LinearLayoutMorph subclass: #RoundedLinearLayoutMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'RoundedLinearLayoutMorph class' category: #'Signals-Morphic-Support'!
RoundedLinearLayoutMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableChoiceMorph category: #'Signals-Morphic-Support'!
PluggableMorph subclass: #PluggableChoiceMorph
	instanceVariableNames: 'font options getter setter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'PluggableChoiceMorph class' category: #'Signals-Morphic-Support'!
PluggableChoiceMorph class
	instanceVariableNames: ''!

!classDefinition: #PluggableToggleMorph category: #'Signals-Morphic-Support'!
PluggableMorph subclass: #PluggableToggleMorph
	instanceVariableNames: 'font getter setter label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'PluggableToggleMorph class' category: #'Signals-Morphic-Support'!
PluggableToggleMorph class
	instanceVariableNames: ''!

!classDefinition: #ChoiceControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #ChoiceControlMorph
	instanceVariableNames: 'control color font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ChoiceControlMorph class' category: #'Signals-Morphic-Controls'!
ChoiceControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #ControlMorph
	instanceVariableNames: 'control color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ControlMorph class' category: #'Signals-Morphic-Controls'!
ControlMorph class
	instanceVariableNames: ''!

!classDefinition: #KnobControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #KnobControlMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'KnobControlMorph class' category: #'Signals-Morphic-Controls'!
KnobControlMorph class
	instanceVariableNames: ''!

!classDefinition: #SliderControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #SliderControlMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'SliderControlMorph class' category: #'Signals-Morphic-Controls'!
SliderControlMorph class
	instanceVariableNames: ''!

!classDefinition: #SupersawControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #SupersawControlMorph
	instanceVariableNames: 'colors phases'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'SupersawControlMorph class' category: #'Signals-Morphic-Controls'!
SupersawControlMorph class
	instanceVariableNames: ''!

!classDefinition: #TextualControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #TextualControlMorph
	instanceVariableNames: 'font contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'TextualControlMorph class' category: #'Signals-Morphic-Controls'!
TextualControlMorph class
	instanceVariableNames: ''!

!classDefinition: #VariableWaveControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #VariableWaveControlMorph
	instanceVariableNames: 'currentShape wave'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'VariableWaveControlMorph class' category: #'Signals-Morphic-Controls'!
VariableWaveControlMorph class
	instanceVariableNames: ''!

!classDefinition: #SymmetricWaveshaperControlMorph category: #'Signals-Morphic-Controls'!
VariableWaveControlMorph subclass: #SymmetricWaveshaperControlMorph
	instanceVariableNames: 'image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'SymmetricWaveshaperControlMorph class' category: #'Signals-Morphic-Controls'!
SymmetricWaveshaperControlMorph class
	instanceVariableNames: ''!

!classDefinition: #WavetableControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #WavetableControlMorph
	instanceVariableNames: 'table frameSize currentPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'WavetableControlMorph class' category: #'Signals-Morphic-Controls'!
WavetableControlMorph class
	instanceVariableNames: ''!

!classDefinition: #DualControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #DualControlMorph
	instanceVariableNames: 'control1 control2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'DualControlMorph class' category: #'Signals-Morphic-Controls'!
DualControlMorph class
	instanceVariableNames: ''!

!classDefinition: #DynamicsActivityMorph category: #'Signals-Morphic-Controls'!
DualControlMorph subclass: #DynamicsActivityMorph
	instanceVariableNames: 'envelopeBuffer gainReductionBuffer currentPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'DynamicsActivityMorph class' category: #'Signals-Morphic-Controls'!
DynamicsActivityMorph class
	instanceVariableNames: ''!

!classDefinition: #ToggleControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #ToggleControlMorph
	instanceVariableNames: 'control color font label'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ToggleControlMorph class' category: #'Signals-Morphic-Controls'!
ToggleControlMorph class
	instanceVariableNames: ''!

!classDefinition: #XYControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #XYControlMorph
	instanceVariableNames: 'controlX controlY'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'XYControlMorph class' category: #'Signals-Morphic-Controls'!
XYControlMorph class
	instanceVariableNames: ''!

!classDefinition: #FilterControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #FilterControlMorph
	instanceVariableNames: 'color mode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'FilterControlMorph class' category: #'Signals-Morphic-Controls'!
FilterControlMorph class
	instanceVariableNames: ''!

!classDefinition: #LFOControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #LFOControlMorph
	instanceVariableNames: 'color lfo samples currentPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'LFOControlMorph class' category: #'Signals-Morphic-Controls'!
LFOControlMorph class
	instanceVariableNames: ''!

!classDefinition: #WaveshaperControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #WaveshaperControlMorph
	instanceVariableNames: 'color mode wave valueX valueY image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'WaveshaperControlMorph class' category: #'Signals-Morphic-Controls'!
WaveshaperControlMorph class
	instanceVariableNames: ''!

!classDefinition: #XYVariableWaveControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #XYVariableWaveControlMorph
	instanceVariableNames: 'color baseColor mode wave valueX valueY'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'XYVariableWaveControlMorph class' category: #'Signals-Morphic-Controls'!
XYVariableWaveControlMorph class
	instanceVariableNames: ''!

!classDefinition: #LFOControlMorphOld category: 'Signals-Trash'!
XYControlMorph subclass: #LFOControlMorphOld
	instanceVariableNames: 'color lfo currentPhase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'LFOControlMorphOld class' category: 'Signals-Trash'!
LFOControlMorphOld class
	instanceVariableNames: ''!

!classDefinition: #PinMorph category: #'Signals-Morphic-Patches'!
BoxMorph subclass: #PinMorph
	instanceVariableNames: 'color selector connections focused level'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'PinMorph class' category: #'Signals-Morphic-Patches'!
PinMorph class
	instanceVariableNames: ''!

!classDefinition: #InputPinMorph category: #'Signals-Morphic-Patches'!
PinMorph subclass: #InputPinMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'InputPinMorph class' category: #'Signals-Morphic-Patches'!
InputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #AudioInputPinMorph category: #'Signals-Morphic-Patches'!
InputPinMorph subclass: #AudioInputPinMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'AudioInputPinMorph class' category: #'Signals-Morphic-Patches'!
AudioInputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #ControlInputPinMorph category: #'Signals-Morphic-Patches'!
InputPinMorph subclass: #ControlInputPinMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'ControlInputPinMorph class' category: #'Signals-Morphic-Patches'!
ControlInputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #OutputPinMorph category: #'Signals-Morphic-Patches'!
PinMorph subclass: #OutputPinMorph
	instanceVariableNames: 'wires'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'OutputPinMorph class' category: #'Signals-Morphic-Patches'!
OutputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #AudioOutputPinMorph category: #'Signals-Morphic-Patches'!
OutputPinMorph subclass: #AudioOutputPinMorph
	instanceVariableNames: 'buffer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'AudioOutputPinMorph class' category: #'Signals-Morphic-Patches'!
AudioOutputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #ControlOutputPinMorph category: #'Signals-Morphic-Patches'!
OutputPinMorph subclass: #ControlOutputPinMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'ControlOutputPinMorph class' category: #'Signals-Morphic-Patches'!
ControlOutputPinMorph class
	instanceVariableNames: ''!

!classDefinition: #ScrollerMorph category: #'Signals-Morphic-Support'!
BoxMorph subclass: #ScrollerMorph
	instanceVariableNames: 'horizontal vertical scrollable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'ScrollerMorph class' category: #'Signals-Morphic-Support'!
ScrollerMorph class
	instanceVariableNames: ''!

!classDefinition: #ZoomerMorph category: #'Signals-Morphic-Support'!
BoxMorph subclass: #ZoomerMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'ZoomerMorph class' category: #'Signals-Morphic-Support'!
ZoomerMorph class
	instanceVariableNames: ''!

!classDefinition: #OscilloscopeMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #OscilloscopeMorph
	instanceVariableNames: 'buffer color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'OscilloscopeMorph class' category: #'Signals-Morphic-Widgets'!
OscilloscopeMorph class
	instanceVariableNames: ''!

!classDefinition: #PhosphorDisplayMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #PhosphorDisplayMorph
	instanceVariableNames: 'image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'PhosphorDisplayMorph class' category: #'Signals-Morphic-Widgets'!
PhosphorDisplayMorph class
	instanceVariableNames: ''!

!classDefinition: #PlotMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #PlotMorph
	instanceVariableNames: 'functions domain colors max min font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'PlotMorph class' category: #'Signals-Morphic-Widgets'!
PlotMorph class
	instanceVariableNames: ''!

!classDefinition: #RollingMeterMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #RollingMeterMorph
	instanceVariableNames: 'buffer position meterBlock color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'RollingMeterMorph class' category: #'Signals-Morphic-Widgets'!
RollingMeterMorph class
	instanceVariableNames: ''!

!classDefinition: #RollingWaveformMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #RollingWaveformMorph
	instanceVariableNames: 'samples currentPosition color bipolar'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'RollingWaveformMorph class' category: #'Signals-Morphic-Widgets'!
RollingWaveformMorph class
	instanceVariableNames: ''!

!classDefinition: #SampleWaveformMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #SampleWaveformMorph
	instanceVariableNames: 'sample color image lastPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'SampleWaveformMorph class' category: #'Signals-Morphic-Widgets'!
SampleWaveformMorph class
	instanceVariableNames: ''!

!classDefinition: #SpectrumMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #SpectrumMorph
	instanceVariableNames: 'color spectrum frequencyScale displayMode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'SpectrumMorph class' category: #'Signals-Morphic-Widgets'!
SpectrumMorph class
	instanceVariableNames: ''!

!classDefinition: #WaterfallMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #WaterfallMorph
	instanceVariableNames: 'image position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'WaterfallMorph class' category: #'Signals-Morphic-Widgets'!
WaterfallMorph class
	instanceVariableNames: ''!

!classDefinition: #EGControlMorph category: 'Signals-Trash'!
BoxMorph subclass: #EGControlMorph
	instanceVariableNames: 'color attack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'EGControlMorph class' category: 'Signals-Trash'!
EGControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ADControlMorph category: 'Signals-Trash'!
EGControlMorph subclass: #ADControlMorph
	instanceVariableNames: 'decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'ADControlMorph class' category: 'Signals-Trash'!
ADControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ADSRControlMorph category: 'Signals-Trash'!
EGControlMorph subclass: #ADSRControlMorph
	instanceVariableNames: 'decay sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'ADSRControlMorph class' category: 'Signals-Trash'!
ADSRControlMorph class
	instanceVariableNames: ''!

!classDefinition: #AHDControlMorph category: 'Signals-Trash'!
EGControlMorph subclass: #AHDControlMorph
	instanceVariableNames: 'hold decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'AHDControlMorph class' category: 'Signals-Trash'!
AHDControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ARControlMorph category: 'Signals-Trash'!
EGControlMorph subclass: #ARControlMorph
	instanceVariableNames: 'release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'ARControlMorph class' category: 'Signals-Trash'!
ARControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ASRControlMorph category: 'Signals-Trash'!
EGControlMorph subclass: #ASRControlMorph
	instanceVariableNames: 'sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'ASRControlMorph class' category: 'Signals-Trash'!
ASRControlMorph class
	instanceVariableNames: ''!

!classDefinition: #PianoKeyboardMorph category: 'Signals-Trash'!
BoxMorph subclass: #PianoKeyboardMorph
	instanceVariableNames: 'pressedKeys firstMidiKey queue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'PianoKeyboardMorph class' category: 'Signals-Trash'!
PianoKeyboardMorph class
	instanceVariableNames: ''!

!classDefinition: #TriangleButtonMorph category: 'Signals-Trash'!
BoxMorph subclass: #TriangleButtonMorph
	instanceVariableNames: 'focused'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'TriangleButtonMorph class' category: 'Signals-Trash'!
TriangleButtonMorph class
	instanceVariableNames: ''!

!classDefinition: #VideoMorph category: 'Signals-Trash'!
BoxMorph subclass: #VideoMorph
	instanceVariableNames: 'screen bits video position increment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'VideoMorph class' category: 'Signals-Trash'!
VideoMorph class
	instanceVariableNames: ''!

!classDefinition: #WaveformMorph category: 'Signals-Trash'!
BoxMorph subclass: #WaveformMorph
	instanceVariableNames: 'waveform color image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'WaveformMorph class' category: 'Signals-Trash'!
WaveformMorph class
	instanceVariableNames: ''!

!classDefinition: #WaveformScrollingMorph category: 'Signals-Trash'!
BoxMorph subclass: #WaveformScrollingMorph
	instanceVariableNames: 'image position color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Trash'!
!classDefinition: 'WaveformScrollingMorph class' category: 'Signals-Trash'!
WaveformScrollingMorph class
	instanceVariableNames: ''!

!classDefinition: #ConnectorMorph category: #'Signals-Morphic-Patches'!
PlacedMorph subclass: #ConnectorMorph
	instanceVariableNames: 'source color dashed'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'ConnectorMorph class' category: #'Signals-Morphic-Patches'!
ConnectorMorph class
	instanceVariableNames: ''!

!classDefinition: #PatchMorph category: #'Signals-Morphic-Patches'!
PlacedMorph subclass: #PatchMorph
	instanceVariableNames: 'modules'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'PatchMorph class' category: #'Signals-Morphic-Patches'!
PatchMorph class
	instanceVariableNames: ''!

!classDefinition: #PatchableMorph category: #'Signals-Morphic-Patches'!
PlacedMorph subclass: #PatchableMorph
	instanceVariableNames: 'inputsArea outputsArea body flap title model'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'PatchableMorph class' category: #'Signals-Morphic-Patches'!
PatchableMorph class
	instanceVariableNames: ''!

!classDefinition: #MoverMorph category: #'Signals-Morphic-Support'!
PlacedMorph subclass: #MoverMorph
	instanceVariableNames: 'target offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Support'!
!classDefinition: 'MoverMorph class' category: #'Signals-Morphic-Support'!
MoverMorph class
	instanceVariableNames: ''!

!classDefinition: #WireMorph category: #'Signals-Morphic-Patches'!
Morph subclass: #WireMorph
	instanceVariableNames: 'source target color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'WireMorph class' category: #'Signals-Morphic-Patches'!
WireMorph class
	instanceVariableNames: ''!

!classDefinition: #Bus category: #'Signals-IO'!
Object subclass: #Bus
	instanceVariableNames: 'leftBuffer rightBuffer'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'Bus class' category: #'Signals-IO'!
Bus class
	instanceVariableNames: ''!

!classDefinition: #AllpassComb category: #'Signals-Support'!
Object subclass: #AllpassComb
	instanceVariableNames: 'buffer position feedback'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'AllpassComb class' category: #'Signals-Support'!
AllpassComb class
	instanceVariableNames: ''!

!classDefinition: #Biquad category: #'Signals-Support'!
Object subclass: #Biquad
	instanceVariableNames: 'a0 a1 a2 b1 b2 x1 x2 y1 y2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Biquad class' category: #'Signals-Support'!
Biquad class
	instanceVariableNames: ''!

!classDefinition: #DelayLine category: #'Signals-Support'!
Object subclass: #DelayLine
	instanceVariableNames: 'buffer position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayLine class' category: #'Signals-Support'!
DelayLine class
	instanceVariableNames: ''!

!classDefinition: #DelayTap category: #'Signals-Support'!
Object subclass: #DelayTap
	instanceVariableNames: 'delayLine delay increment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayTap class' category: #'Signals-Support'!
DelayTap class
	instanceVariableNames: ''!

!classDefinition: #DelayTapC category: #'Signals-Support'!
DelayTap subclass: #DelayTapC
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayTapC class' category: #'Signals-Support'!
DelayTapC class
	instanceVariableNames: ''!

!classDefinition: #DelayTapL category: #'Signals-Support'!
DelayTap subclass: #DelayTapL
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayTapL class' category: #'Signals-Support'!
DelayTapL class
	instanceVariableNames: ''!

!classDefinition: #DelayTapT1 category: #'Signals-Support'!
DelayTap subclass: #DelayTapT1
	instanceVariableNames: 'x1 y1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayTapT1 class' category: #'Signals-Support'!
DelayTapT1 class
	instanceVariableNames: ''!

!classDefinition: #DelayTapT2 category: #'Signals-Support'!
DelayTap subclass: #DelayTapT2
	instanceVariableNames: 'x1 x2 y1 y2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayTapT2 class' category: #'Signals-Support'!
DelayTapT2 class
	instanceVariableNames: ''!

!classDefinition: #FFT category: #'Signals-Support'!
Object subclass: #FFT
	instanceVariableNames: 'nu n sinTable permTable realData imagData'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'FFT class' category: #'Signals-Support'!
FFT class
	instanceVariableNames: ''!

!classDefinition: #FIR category: #'Signals-Support'!
Object subclass: #FIR
	instanceVariableNames: 'coefficients state'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'FIR class' category: #'Signals-Support'!
FIR class
	instanceVariableNames: ''!

!classDefinition: #IIR category: #'Signals-Support'!
Object subclass: #IIR
	instanceVariableNames: 'numerators denominators stateIn stateOut'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'IIR class' category: #'Signals-Support'!
IIR class
	instanceVariableNames: ''!

!classDefinition: #LagrangeOversampler2x category: #'Signals-Support'!
Object subclass: #LagrangeOversampler2x
	instanceVariableNames: 'u0 u1 u2 u3 d0 d1 d2 d3'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'LagrangeOversampler2x class' category: #'Signals-Support'!
LagrangeOversampler2x class
	instanceVariableNames: ''!

!classDefinition: #LowpassComb category: #'Signals-Support'!
Object subclass: #LowpassComb
	instanceVariableNames: 'buffer position state feedback damp'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'LowpassComb class' category: #'Signals-Support'!
LowpassComb class
	instanceVariableNames: ''!

!classDefinition: #MultiTapDelayLine category: #'Signals-Support'!
Object subclass: #MultiTapDelayLine
	instanceVariableNames: 'buffer position delays gains mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'MultiTapDelayLine class' category: #'Signals-Support'!
MultiTapDelayLine class
	instanceVariableNames: ''!

!classDefinition: #OnePole category: #'Signals-Support'!
Object subclass: #OnePole
	instanceVariableNames: 'pole y'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'OnePole class' category: #'Signals-Support'!
OnePole class
	instanceVariableNames: ''!

!classDefinition: #Polyphase13TapOversampler2x category: #'Signals-Support'!
Object subclass: #Polyphase13TapOversampler2x
	instanceVariableNames: 'x1 x2 x3 x4 x5 x6 d1 d2 d3 d4 d5 d6 e1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Polyphase13TapOversampler2x class' category: #'Signals-Support'!
Polyphase13TapOversampler2x class
	instanceVariableNames: ''!

!classDefinition: #STFT category: #'Signals-Support'!
Object subclass: #STFT
	instanceVariableNames: 'fft window spectrum aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'STFT class' category: #'Signals-Support'!
STFT class
	instanceVariableNames: ''!

!classDefinition: #WAVFileReader category: #'Signals-Support'!
Object subclass: #WAVFileReader
	instanceVariableNames: 'stream channels bitsPerSample sampleRate leftSamples rightSamples loopStart loopEnd'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'WAVFileReader class' category: #'Signals-Support'!
WAVFileReader class
	instanceVariableNames: ''!


!Control commentStamp: '<historical>' prior: 0!
A control is a an abstraction of a knob or switch that changes a parameter.

Controls have a 'base value' typically set by the user in the UI, and a 'modulated value' that depends on external modulations (for example modulation from an LFO or an envelope, simulating the action of a hand moving the knob).!

!Choice commentStamp: '<historical>' prior: 0!
A choice is a discrete control that can take values in a finite list.!

!Knob commentStamp: '<historical>' prior: 0!
Knobs are continuous controls with values that can vary within a range. Knobs can have different curves, e.g. linear (like a control to smoothly morph the wave shape of an oscillator) or logarithmic (like a volume or pitch knob).!

!Toggle commentStamp: '<historical>' prior: 0!
A toggle is a discrete control with only two possible values: true or false.!

!Module commentStamp: 'len 29/Mar/2026 00:07:25' prior: 0!
This is an abstract superclass for signal processing modules.

A module has a list of controls (or parameters), that can be changed by the user via the UI or can be modulated by other modules. The controls of a module are created on initialization in #initializeControls.

Modules can also have input and output sample buffers, and they process samples in blocks of fixed size. The default block size is 128 samples (2.9 ms at the default sampling rate of 44.1 kHz), which results in a control rate of 344 Hz. Before processing each block with the #tick message, the internal state of the module must be updated with the #update message.

The playing loop for a patch of connected modules looks like this:
1) Send #clear to each module to clear the control modulations for a new cycle;
2) Iterate over the modules in order, and send #update followed by #tick to each one.

The message #update updates the internal state of the module depending on the controls, which could be modulated and could vary at any time. The message #tick processes one block of samples, reading from the input buffers and writing to the output buffers.!

!Amp commentStamp: '<historical>' prior: 0!
An amplifier just multiplies the input signal by a gain parameter, typically modulated by an envolope. When the gain parameter changes, the actual gain is varied smoothly by sample to avoid clicks or zipper noise.!

!Compressor commentStamp: '<historical>' prior: 0!
A general compressor module with sidechain input.!

!Gate commentStamp: '<historical>' prior: 0!
A gate module with sidechain input. Analogous to Compressor but, instead of applying gain reduction to signals *above* a threshold, it silences signals *below* a threshold.!

!EG commentStamp: '<historical>' prior: 0!
Abstract superclass for envelope generators.!

!AD commentStamp: '<historical>' prior: 0!
Attack-Decay envelope generator.!

!ADSR commentStamp: '<historical>' prior: 0!
Attack-Decay-Sustain-Release envelope generator.!

!AHD commentStamp: '<historical>' prior: 0!
Attack-Hold-Decay envelope generator.!

!AR commentStamp: '<historical>' prior: 0!
Attack-Release envelope generator.!

!ASR commentStamp: '<historical>' prior: 0!
Attack-Sustain-Release envelope generator.!

!Chorus commentStamp: '<historical>' prior: 0!
This is a classic mono-to-stereo chorus effect. It mixes the original signal with 3 delayed copies (tipically 10 to 20 ms). An internal LFO modulates the delay times, creating slight pitch variations that simulate the effect of multiple voices or instruments playing at unison.!

!Ensemble commentStamp: '<historical>' prior: 0!
The ensemble effect is similar to chorus, but it mixes more delay taps (5 instead of 3) and the modulation of the delay times is decorrelated (each delay time is modulated independently with LFO speeds in inharmonic ratios).!

!StereoEcho commentStamp: '<historical>' prior: 0!
This is a stereo echo effect with feedback and ping pong mode.!

!StereoReverb commentStamp: '<historical>' prior: 0!
This is a reverb effect based on Freeverb. It consists of 8 damped combs (lowpass feedback comb filters) in parallel followed by 4 Schroeder allpasses in series.!

!Crossover commentStamp: '<historical>' prior: 0!
This is a Linkwitz-Riley 4th-order (LR4) crossover filter.

An LR4 crossover splits a signal into two complementary bands (low and high) that sum back to a flat magnitude response with no phase artifacts at the crossover point. This makes it the standard building block for multiband processing: the two output bands can be processed independently (compressed, saturated, widened, etc.) and then summed back to reconstruct the signal cleanly.

Internally, LR4 consists of two parallel paths, each a pair of cascaded 2nd-order Butterworth biquads at the same crossover frequency. The LP path produces the low band and the HP path produces the high band. Cascading two 2nd-order Butterworth filters gives a 4th-order rolloff (24 dB/oct) with a specific phase relationship: both LP and HP accumulate −180° of phase shift at the crossover frequency, which is precisely what guarantees flat magnitude when the bands are summed. Q is fixed at 1/√2 ≈ 0.707 (the Butterworth condition) and is not exposed as a parameter — changing it would break the complementary summing property.

The only parameter is the crossover frequency, which sets the −6 dB point of each band. At the crossover frequency, LP and HP each contribute −6 dB, summing back to 0 dB.​​​​​​​​​​​​​​​​!

!SVF commentStamp: '<historical>' prior: 0!
This is a state variable filter with a 12 dB/oct slope (2 poles). It has outputs for LP, HP, BP and BPN (normalized band-pass: BP / Q) modes. Based on stmlib/dsp/filter.h by Emilie Gillet.

It implements the TPT (Topology-Preserving Transform) SVF, commonly called the Cytomic SVF or Simper SVF, from Andy Simper’s 2011 paper and Vadim Zavalishin’s "The Art of VA Filter Design".!

!AudioIn commentStamp: '<historical>' prior: 0!
This module receives a stereo signal from a bus.!

!AudioOut commentStamp: '<historical>' prior: 0!
This module takes a mono or stereo signal, applies volume level and pan, and sends it to a bus. The default output is the master bus (port 0).!

!ControlIn commentStamp: '<historical>' prior: 0!
This module produces a control signal from values received from an external source, for example MIDI CC messages.!

!Generator commentStamp: '<historical>' prior: 0!
A signal generator produces a stream of samples for a mono audio signal. It is similar to a Stream, but its values are 32-bit floats. See subclasses.!

!TunedGenerator commentStamp: '<historical>' prior: 0!
A tuned generator is a signal generator with pitch, such as an oscillator. See subclasses.!

!Oscillator commentStamp: '<historical>' prior: 0!
Abstract superclass for simple oscillators that can be defined by a single phase value that is incremented at each sampling step.!

!OPN commentStamp: '<historical>' prior: 0!
This oscillator emulates the oscillators of the Yamaha sound chips YM2414 (used in the TX81Z and DX11 synthesizers) and YM2612 (used in the Sega Mega Drive game console). It has a choice of 8 waveforms.!

!Pulse commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator. It generates a pulse wave applying PolyBLEP to prevent aliasing. This oscillator supports audio-rate pulse width modulation (PWM).

For a duty cycle of 50% (1/2 width), the pulse wave is a square wave and consists of a fundamental sine wave frequency (f) and an infinite series of odd harmonics (3f, 5f, 7f, ...). The harmonics have amplitudes inversely proportional to their harmonic number 1/n (e.g., the 3rd harmonic has 1/3 the amplitude of the fundamental).

Pulse waves with duty cycles other than 50% have both odd and even harmonics. Specific duty cycles can eliminate certain harmonics; for example, a 25% duty cycle (1/4 width) causes every fourth harmonic to be missing.

Pulse waves with a 50% duty cycle sound hollow, like a clarinet, while narrower pulses (smaller duty cycles) sound more nasal, resembling an oboe.!

!Saw commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator. It generates a variable-slope saw that morphs between falling saw, triangle and rising saw, applying PolyBLEP and PolyBLAMP to prevent aliasing.

A sawtooth wave contains a both even and odd harmonics (2f, 3f, 4f, ...) of the fundamental frequency (f). The amplitude of each harmonic is inversely proportional to its harmonic number (e.g., the 3rd harmonic 3f is 1/3 the amplitude of the fundamental), creating a gradual, harmonic-rich decay.!

!Sine commentStamp: '<historical>' prior: 0!
This is a sine wave oscillator with variable warping produced by self-phase modulation. At zero warp, it's a sine. As the warp parameter moves from 0 to 1, integer harmonics (both odd and even) are added up to about the 6th harmonic.!

!TriSawPulse commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator that can morph between triangle, saw and pulse waves. It uses PolyBLEP and PolyBLAMP to prevent aliasing.!

!Triangle commentStamp: '<historical>' prior: 0!
This is a virtual analog triangle oscillator that uses PolyBLAMP for antialiasing. It morphs from a pure triangle to a sine wave.

A triangle wave consists of only odd harmonics (f, 3f, 5f, 7f, ...) of the fundamental frequency, similar to a square wave, but its harmonic amplitudes decrease much faster, proportional to the inverse square of the harmonic number (1/n²). This results in a brighter tone than a sine wave but mellower than a square wave, with 12 dB per octave roll-off.!

!Wavetable commentStamp: '<historical>' prior: 0!
Antialiased wavetable oscillator using spectral resynthesis.

The oscillator is initialized from a multi-frame wavetable (e.g., 256 frames × 2048 samples). Each frame is transformed to the frequency domain via FFT and stored as a complex spectrum.

When the table position or pitch change, a bandlimited frame is synthesized on-the-fly by interpolating between neighboring spectra and discarding all frequency bins above the Nyquist limit for the current playback frequency. The resulting spectrum is transformed back to the time domain using an inverse FFT.

Audio samples are then generated by phase-based interpolation within this bandlimited frame.!

!Supersaw commentStamp: '<historical>' prior: 0!
Emulation of the Roland JP-8000 and JP-8080 supersaw oscillator based on Adam Szabo's thesis [1]. It consists of 7 detuned saws. It is not a perfect emulation, e.g. it uses antialiased PolyBLEP saws, instead of oversampling a digital saw and applying a high pass filter as the original.

[1] Szabo, Adam; "How to Emulate the Super Saw"; Skolan för datavetenskap och kommunikation, Kungliga Tekniska högskolan, 2010.!

!TonewheelOrgan commentStamp: '<historical>' prior: 0!
This is a monophonic simplified model of a Hammond organ.!

!TransistorOrgan commentStamp: '<historical>' prior: 0!
This is a monophonic simplified model of a transistor organ. It has the drawbars of a Vox Continental.!

!VOSIM commentStamp: '<historical>' prior: 0!
This is a VOSIM (VOcal SIMulation) oscillator based on the synthesis method developed by Kaegi and Tempelaars in the 1970s. The oscillator consists of two sine waves multiplied by and sync'ed to a carrier. Ported from plaits/dsp/oscillator/vosim_oscillator.h by Emilie Gillet.!

!Multisample commentStamp: '<historical>' prior: 0!
A multisample is the basis of a rompler (from "ROM" and "sampler"). It generates sounds from a set of recordings of an instrument playing different notes at different velocities. Given a MIDI note and velocity value, it chooses the sample closest to the desired note and velocity and repitches it by playing it faster or slower.
!

!Sample commentStamp: 'len 9/Apr/2026 23:16:22' prior: 0!
A sample is a recorded signal. It has a buffer of recorded samples, a playback rate, and optional loop points. Samples can be played at different rates to produce different pitches.!

!ColoredNoise commentStamp: '<historical>' prior: 0!
A colored noise generator. The color parameter blends between different noise sources: centered at 0.0 it generates white noise, at -0.5 pink noise, at -1.0 brown noise, and at 1.0 blue noise.!

!SparseNoise commentStamp: 'len 1/Feb/2026 16:16:01' prior: 0!
Dust / Crackle Noise Generator. Produces sparse impulsive noise by generating a Poisson-distributed impulse train and feeding it into a short decaying state.

At low density the output consists of isolated clicks. Increasing density creates crackle and finally continuous noisy bursts. The decay control sets the temporal memory of each impulse, moving the sound from single-sample impulses to ringing, colored noise.

This source is particularly effective for exciting resonant filters, waveguides, and physical-model style structures.

Parameters:
    - Density: average number of impulses per second (log-scaled)
    - Decay: impulse memory / ring time
    - Amplitude Jitter: randomness of impulse amplitude

State:
    - Decaying accumulator holding impulse energy
!

!VelvetNoise commentStamp: 'len 1/Feb/2026 19:09:07' prior: 0!
Velvet Noise Generator. Generates sparse bipolar impulses (+1 / -1) that are approximately evenly distributed in time, producing spectrally flat noise with reduced hiss compared to white noise.

Unlike purely random impulse noise, velvet noise avoids clustering, resulting in predictable energy and clean excitation characteristics. With low jitter it approaches a periodic impulse train; with higher jitter it becomes increasingly noise-like.

Common uses include reverb excitation, waveguide and Karplus–Strong synthesis, and controlled percussive noise sources.

Parameters:
    - Sparsity (Period): average distance between impulses
    - Jitter: random deviation from uniform spacing
    - Polarity Bias: bias toward positive or negative impulses
    - Amp: amplitude of the impulses

State:
    - Sample counter until next impulse!

!Transform commentStamp: 'len 4/Feb/2026 00:25:27' prior: 0!
Abstract superclass for unary transforms, i.e. modules with one audio input and one audio output, that transform the audio signal sample-by-sample (for each input sample, they apply a function to produce an output sample). Subclasses can just implement #value:.!

!Limiter commentStamp: 'len 10/Feb/2026 14:50:17' prior: 0!
A feed-forward peak limiter with fast attack, adjustable release, and smoothed gain.
Prevents signal peaks from exceeding a fixed ceiling without altering level below threshold.!

!Flanger commentStamp: 'len 25/Mar/2026 21:09:44' prior: 0!
This is a classic flanger effect. It mixes the original signal with a copy delayed by a very short time (~ 1 ms). An internal LFO modulates the delay time, creating sweeping comb filtering, which is also enhanced with feedback.!

!Phaser commentStamp: '<historical>' prior: 0!
A phaser (phase shifter) splits a signal, shifts the phase of one path using all-pass filters, and recombines them to create a sweeping, "whooshing" swirling sound. This process creates notches and peaks in the frequency spectrum that move over time.!

!PitchShifter commentStamp: '<historical>' prior: 0!
Time-domain pitch shifter based on two modulated delay lines with crossfading windows. This is the algorithm of the Eventide H3000 Ultra-Harmonizer.

Pitch-shifting is achieved by modulating a delay line: the write pointer always advances at normal speed, but the read pointer advances faster (pitch up) or slower (pitch down). This causes discontinuities when the read pointer catches up or falls too far behind, but the discontinuities are hidden by crossfading between two delay lines running the same algorithm in parallel with a phase offset of 180°.!

!Reverb commentStamp: '<historical>' prior: 0!
This is a reverb effect based on Freeverb. It consists of 8 damped combs (lowpass feedback comb filters) in parallel followed by 4 Schroeder allpasses in series.!

!TapeEcho commentStamp: '<historical>' prior: 0!
This is a 3-tap tape echo effect inspired by the Roland RE-201 Space Echo and other tape delays.!

!Vibrato commentStamp: '<historical>' prior: 0!
The vibrato effect is produced by passing the original signal through a delay line. An internal LFO modulates the delay time, creating periodic pitch variations (Doppler effect).!

!BPF commentStamp: '<historical>' prior: 0!
This is a second order (12 dB/oct) band-pass filter implemented with a biquad.!

!BSF commentStamp: '<historical>' prior: 0!
This is a second order (12 dB/oct) band-stop or notch filter implemented with a biquad.!

!EQ3 commentStamp: '<historical>' prior: 0!
Three-band DJ-style equalizer. This is a crossover-based EQ that splits the audio into three fixed frequency bands (low, mid, high) using Linkwitz-Riley filters. Each band has an independent gain control. Crossover frequencies: Low/Mid at 250 Hz, and Mid/High at 2.5 kHz.

The implementation uses 4 second-order Linkwitz-Riley biquad filters (Q=0.707) configured as two crossover points, with parallel band processing and summing.!

!EQ5 commentStamp: '<historical>' prior: 0!
Five-band parametric equalizer. This is a cascade-based EQ that processes the signal through a series of independent second-order filters (biquads), each with adjustable frequency, gain, and Q (bandwidth). The bands are overlapping and not constrained by fixed crossovers, allowing flexible shaping from broad tonal adjustments to narrow resonant boosts or cuts.

The implementation uses 5 second-order biquad filters in series: low-shelf (band 1), three peaking (bell) filters (bands 2–4), and high-shelf (band 5).!

!HPF commentStamp: '<historical>' prior: 0!
This is a second order (12 dB/oct) high-pass filter implemented with a biquad.!

!LPF commentStamp: '<historical>' prior: 0!
This is a second order (12 dB/oct) low-pass filter implemented with a biquad.!

!Transform2x commentStamp: 'len 4/Feb/2026 00:25:50' prior: 0!
An abstract superclass for transforms that internally do 2× oversampling. This is useful for implementing transforms that are not linear-time-invariant (LTI), such as saturation, wavefolding, or virtual analog filters.!

!TubeSaturator commentStamp: '<historical>' prior: 0!
This saturator emulates the characteristic soft-knee saturation of vacuum tube circuits. It emphasizes odd harmonics with a slightly sharper knee than standard soft saturation, producing a “round” and harmonically rich tone.

Tube saturation adds harmonics and weight to a sound, specially in the lower mids. It adds a grit or bite in the higher frequencies and enhances detail and presence without sounding too harsh.

This module is suited for musical overdrive on guitars, synths, or mix buses, where a classic tube-like warmth and gentle compression is desired.!

!DiodeClipper commentStamp: '<historical>' prior: 0!
This module implements a nonlinear clipping stage inspired by diode conduction. The signal remains linear below the forward voltage and transitions into soft clipping above it, producing a harder and more mid-focused character than smooth saturation.

It is well suited for aggressive distortion, synth and guitar-style clipping, and parallel distortion effects, with controllable asymmetry to shape even harmonics and bite.!

!HardClipper commentStamp: '<historical>' prior: 0!
This module applies a strict limiting nonlinearity to the input signal, producing immediate clipping at a ±1.0. This generates strong odd and even harmonics and introduces audible harshness at high levels.
It is best used for aggressive distortion effects, peak limiting, or to create characterful saturation in synths or drums.!

!SoftClipper commentStamp: '<historical>' prior: 0!
This module provides a soft-clipping stage using a smooth nonlinearity (softclip, Pade approxiimation of tanh). When bias is zero it is symmetric and introduces only odd harmonics. When bias is not zero it becomes asymmetric and introduces a mix of even and odd harmonics. Bias can be adjusted to shape the harmonic content and can optionally scale with drive for subtle dynamic behavior.

It is ideal for adding musical warmth, thickness, or subtle tonal color to signals. Unlike tape saturation, it does not apply pre- or post-filtering, keeping its effect primarily in the nonlinearity.!

!Wavefolder commentStamp: '<historical>' prior: 0!
Foldback distortion reflects the signal back when it exceeds 0 dB.
Unlike clipping or saturation, the transfer function is non-monotonic, producing inharmonic and metallic spectra that increase in complexity with input level. Foldback is primarily a sound-design tool and can alias strongly at high levels; parallel mixing or filtering is usually required for controlled results.!

!Korg35HPF commentStamp: 'len 2/Feb/2026 18:24:43' prior: 0!
This is a virtual analog model of the Korg 35 high-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!Korg35LPF commentStamp: 'len 2/Feb/2026 18:24:52' prior: 0!
This is a virtual analog model of the Korg 35 low-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!Decimator commentStamp: '<historical>' prior: 0!
A simple bitcrusher and sample rate reducer.!

!Overdrive commentStamp: 'len 8/Feb/2026 18:20:54' prior: 0!
This module implements a soft, smooth overdrive using a polynomial softclip curve. It emphasizes odd harmonics and produces gentle saturation that compresses dynamically at higher input levels.
It is suitable for thickening signals without harsh distortion, and it can be used to add warmth or subtle harmonic content.

Based on code from Emilie Gillet for the Plaits eurorack module.!

!TapeSaturator commentStamp: '<historical>' prior: 0!
This saturator models the nonlinearity and frequency-dependent behavior of analog tape saturation. It uses a soft asymmetric curve with pre-emphasis and post low-pass filtering, producing drive-dependent compression, harmonic generation, and “tape color” such as high-frequency roll-off and low-end warmth.

Tape saturation comes from driving a physical tape too hard. It's great at smoothing out transients in a pleasant way. Adds glue, making elements feel more cohesive and introduces compression and roundness to a sound.

This module is ideal for adding analog-style warmth, subtle compression, and musical coloration to audio.!

!DiodeLadder2 commentStamp: 'len 2/Feb/2026 18:24:19' prior: 0!
This is a virtual analog model of the Korg 35 low-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.!

!SqueakReverb commentStamp: '<historical>' prior: 0!
This module is based on Squeak's original ReverbSound by John Maloney.!

!Crossfader commentStamp: '<historical>' prior: 0!
This is a standard constant-power crossfader.!

!Pan commentStamp: 'len 4/Apr/2026 23:49:50' prior: 0!
This is a standard constant-power panner. !

!StereoMatrix commentStamp: '<historical>' prior: 0!
Linear stereo transform based on a Mid/Side representation.

This module takes two arbitrary audio inputs A and B and produces stereo outputs L and R using a fixed −6 dB Mid/Side normalization. It can be used as a conventional stereo width control, an MS decoder, or a general-purpose stereo spatializer, depending on how it is patched.

Internally, the signal is converted to Mid and Side as:
	• Mid  = (A + B) * 0.5
	• Side = (A − B) * 0.5

The −6 dB (* 0.5) normalization preserves headroom symmetry and predictable gain behavior when collapsing to mono or increasing width.

Balance controls the relative energy between Mid and Side:
	• Positive values emphasize the Mid (center)
	• Negative values emphasize the Side (edges)
	• Implemented as complementary gains applied to Mid and Side

Width scales the Side component:
	• Width = 0 → mono (Side muted)
	• Width = 1 → nominal stereo
	• Width > 1 → increased stereo width
	• Width < 0 → inverted Side (special effects)

After applying balance and width, the signal is decoded back to stereo:
	• L = Mid + Side
	• R = Mid − Side

The module performs no dynamics processing or loudness compensation beyond the fixed −6 dB MS normalization; gain changes due to width or balance are explicit and intentional.
!

!Attenuator commentStamp: '<historical>' prior: 0!
An attenuator scales a control signal by a positive number. It is typically used to control modulation depth.!

!Attenuverter commentStamp: '<historical>' prior: 0!
An attenuverter is similar to an attenuator, but it can also invert the polarity of the signal. It scales a control signal by a number that can be negative. When the knob is at 12 o'clock the resulting signal is 0, and bellow that it is inverted.!

!EnvelopeFollower commentStamp: 'len 10/Feb/2026 14:59:57' prior: 0!
Control-rate envelope follower with selectable peak or RMS detection and independent attack and release times.!

!LFO commentStamp: '<historical>' prior: 0!
Low-frequency oscillator.!

!LogAttenuator commentStamp: '<historical>' prior: 0!
An attenuator scales a control signal by a positive number. It is typically used to control modulation depth.!

!DiodeLadder commentStamp: '<historical>' prior: 0!
Virtual analog model of the 4th-order TB-303 diode ladder low-pass filter. This uses the Zero-Delay Feedback (ZDF) approach from Vadim Zavalishin's "The Art of VA Filter Design", and uses the Topology-Preserving Transform (TPT).

See https://www.native-instruments.com/fileadmin/ni_media/downloads/pdf/VAFilterDesign_2.1.2.pdf

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!MoogLPF commentStamp: 'len 2/Feb/2026 18:24:58' prior: 0!
This is a low pass filter inspired by the classic Moog ladder filter. It's a low-pass 24 dB/oct (4 poles) resonant filter.
It is based on the source code from CSound, which is based on the paper "Analyzing the Moog VCF with considerations for digital implementations" by Stilson and Smith (CCRMA).

See https://www.musicdsp.org/en/latest/Filters/24-moog-vcf.html!

!MoogLadder commentStamp: '<historical>' prior: 0!
Virtual analog model of the 4th-order Moog ladder low-pass filter. It uses the Zero-Delay Feedback (ZDF) approach from Vadim Zavalishin's "The Art of VA Filter Design", and the Topology-Preserving Transform (TPT).

See https://www.native-instruments.com/fileadmin/ni_media/downloads/pdf/VAFilterDesign_2.1.2.pdf

This includes Lorenzo Della Cioppa's correction to Pirkle's implementation; see this post: https://www.kvraudio.com/forum/viewtopic.php?f=33&t=571909.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!OberheimSVF commentStamp: '<historical>' prior: 0!
Virtual analog model of the Oberheim state variable filter. It has low-pass, high-pass, band-pass and band-stop outputs. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section Figure 7.5.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!ControlOld commentStamp: '<historical>' prior: 0!
A control is a an abstraction based on the idea of a knob that changes a parameter.

Controls can have different curves, e.g. linear (like a control to smoothly morph the wave shape of an oscillator) or logarithmic (like a volume or pitch knob). Controls have a 'base value' typically set by the user in the UI, and a 'modulated value' that depends on external modulations (for example modulation coming from an LFO or an envelope, simulating the action of a hand moving the knob).!

!Bus commentStamp: '<historical>' prior: 0!
A bus is just the sum of a number of audio signals (mono or stereo). It is used to mix a number of audio signals in order to process them together or send them to the audio output driver.!

!AllpassComb commentStamp: '<historical>' prior: 0!
Schroeder allpass filter.!

!Biquad commentStamp: '<historical>' prior: 0!
This is a biquad filter in direct form 1.

There are methods to setup the following types of biquad filters:
	∙ Standard LP/HP/BP/notch with a resonance parameter Q;
	∙ Butterwordth LP/HP/BP/notch;
	∙ Linkwitz-Riley LP/HP.

Standard biquad filters are designed using the RBJ (Robert Bristow-Johnson) cookbook formulas. These give you direct control over center frequency and Q. They’re versatile general-purpose filters that work well for most EQ tasks, cutting or boosting specific frequencies, and creating resonant effects. The response shape is straightforward to predict and adjust.

Butterworth filters are specifically designed for maximally flat passband response - meaning no ripples or peaks in the frequencies you want to keep. The tradeoff is a gentler rolloff slope compared to some other filter types. You’d choose Butterworth when you want the cleanest, most transparent filtering with minimal coloration in your passband. They’re excellent for crossovers or whenever you need precise frequency separation without introducing artifacts in the region you’re preserving.

Linkwitz-Riley filters are built from cascaded Butterworth filters, designed specifically for crossover applications. Their key feature is that when you use complementary LP and HP Linkwitz-Riley filters at the same frequency, they sum to a flat magnitude response with no phase issues at the crossover point. This makes them ideal for splitting a signal and processing bands separately while maintaining coherent recombination.
!

!DelayLine commentStamp: '<historical>' prior: 0!
A delay line is a circular buffer. See also DelayTap.!

!DelayTapC commentStamp: '<historical>' prior: 0!
This class implements a fractional delay tap with Lagrange cubic interpolation (4 points).!

!DelayTapL commentStamp: '<historical>' prior: 0!
This class implements a fractional delay tap with linear interpolation.!

!DelayTapT1 commentStamp: '<historical>' prior: 0!
This class implements a fractional delay tap with a first-order Thiran allpass filter.!

!DelayTapT2 commentStamp: '<historical>' prior: 0!
This class implements a fractional delay tap with a second-order Thiran allpass filter.!

!FFT commentStamp: '<historical>' prior: 0!
This class implements the Fast Fourier Transform roughly as described on page 367
of "Theory and Application of Digital Signal Processing" by Rabiner and Gold.
Each instance caches tables used for transforming a given size (n = 2^nu samples) of data.

It would have been cleaner using complex numbers, but often the data is all real.!

!LagrangeOversampler2x commentStamp: '<historical>' prior: 0!
This class implements a 2× oversampler based on cubic Lagrange interpolation.

The oversampler generates an intermediate sample between input samples using a 4-point cubic Lagrange interpolator, evaluates a user-supplied block at the higher rate, and then downsamples back to the base rate.

Unlike a half-band FIR oversampler, this design:
	•	is not band-limited,
	•	does not provide a true Nyquist null,
	•	and therefore does not fully suppress aliasing.

Instead, it offers a very low-latency, CPU-cheap approximation that reduces aliasing moderately and is often sufficient for soft non-linearities or modulation-rate oversampling.

The interpolator uses symmetric cubic coefficients:
	•	[-1/16, 9/16, 9/16, -1/16]

which sum to 1.0 and preserve DC gain. The even (original) samples are passed through directly.

Downsampling is performed by averaging the processed even and odd phases. This restores unity gain but does not remove high-frequency images.

Latency: This oversampler introduces approximately 1 sample of delay.

Important: This oversampler is not suitable for hard clipping, wavefolding, or feedback filters where strong alias rejection is required. Use a half-band FIR oversampler instead.!

!LowpassComb commentStamp: '<historical>' prior: 0!
Lowpass feedback comb filter (LBCF), or Schroeder-Moorer filtered-feedback comb filter. See https://ccrma.stanford.edu/~jos/pasp/Lowpass_Feedback_Comb_Filter.html!

!MultiTapDelayLine commentStamp: '<historical>' prior: 0!
This is based on Squeak's original ReverbSound by John Maloney.!

!OnePole commentStamp: '<historical>' prior: 0!
A one-pole (6 dB/oct) lowpass filter. It can be setup by specifying the normalized frequency (frequency / sample rate), or the time in number of samples, or the pole coefficient directly.!

!Polyphase13TapOversampler2x commentStamp: '<historical>' prior: 0!
This class implements a 2x polyphase half-band oversampler intended to reduce aliasing in non-linear DSP modules (e.g. distortion, saturation, wavefolders, or virtual-analog filters).

Oversampling raises the internal Nyquist frequency, allowing harmonics generated by non-linear processing to exist without folding back into the audible band.

The oversampler uses a 13-tap linear-phase half-band FIR filter, implemented in polyphase form for efficiency:
	1.	The even phase consists of the center tap only (gain = 0.5).
	2.	The odd phase consists of three symmetric FIR tap pairs whose coefficients sum to 0.25.
	3.	Together, the two phases provide unity gain and a true half-band response without zero-stuffing.

For each input sample, two subsamples (even and odd phases) are generated. A user-supplied block is evaluated once per subsample at the higher rate, after which the signal is downsampled using the same half-band structure.

The implementation maintains separate internal state for the upsampling and downsampling polyphase paths and preserves correct phase alignment.

Latency: This process introduces a fixed group delay of 6 samples at the base sample rate (corresponding to the 13-tap FIR length). When mixing with an unprocessed (“dry”) signal, the dry path must be delayed by the same amount to maintain phase alignment.!

!STFT commentStamp: 'len 30/Mar/2026 18:12:16' prior: 0!
This is the Short-Time Fourtier Transform (STFT).!

!Control methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:21:46'!
adjustBy: aNumber
	self basePosition: base + aNumber! !

!Control methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:21:59'!
basePosition
	"Answer the base value of the receiver mapped to a number between 0.0 and 1.0."
	^ base! !

!Control methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:22:05'!
basePosition: aNumber
	"Set the base value of the receiver from a number between 0.0 and 1.0."
	base := aNumber min: 1.0 max: 0.0.
	self changed: self baseValue! !

!Control methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:22:22'!
baseValue
	^ self valueFromPosition: base! !

!Control methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:22:33'!
baseValue: anObject
	self basePosition: (self positionFromValue: anObject)! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:22:58'!
apply
	| newValue |
	(newValue := self value) = lastValue ifFalse: [lastValue := newValue. self changed: newValue]! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:22:52'!
clear
	"Clear modulation, preparing to compute it again." 
	modulation := 0.0! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:24:46'!
modulateBy: aNumber
	modulation := modulation + aNumber! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:24:53'!
modulatedPosition
	"Answer the modulated value of the receiver mapped to a number between 0.0 and 1.0."
	^ base + modulation min: 1.0 max: 0.0! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:25:01'!
modulatedValue
	^ self valueFromPosition: base + modulation! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:25:08'!
modulation
	^ modulation! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:25:19'!
resetToDefault
	self baseValue: default! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Mar/2026 15:25:25'!
value
	^ self modulatedValue! !

!Control methodsFor: 'initialization' stamp: 'len 8/Mar/2026 15:23:20'!
initialize
	super initialize.
	lastValue := base := 0.0.
	modulation := 0.0! !

!Control methodsFor: 'printing' stamp: 'len 18/Mar/2026 18:06:59'!
label
	^ label! !

!Control methodsFor: 'printing' stamp: 'len 8/Mar/2026 15:23:54'!
label: aString
	label := aString! !

!Control methodsFor: 'printing' stamp: 'len 8/Mar/2026 15:24:05'!
printOn: aStream
	| v |
	v := self value.
	printer ifNotNil: [aStream nextPutAll: (printer value: v). ^ self].
	v isNumber ifTrue: [v printOn: aStream fractionDigits: 2] ifFalse: [aStream print: v]! !

!Control methodsFor: 'printing' stamp: 'len 8/Mar/2026 15:24:13'!
printedBaseValue
	^ printer ifNil: [self baseValue printStringFractionDigits: 2] ifNotNil: [printer value: self baseValue]! !

!Control methodsFor: 'printing' stamp: 'len 8/Mar/2026 15:24:20'!
printedBaseValueWithLabel
	^ (label ifNil: [''] ifNotNil: [label, ': ']), self printedBaseValue! !

!Control methodsFor: 'printing' stamp: 'len 8/Mar/2026 15:24:27'!
printer: aSymbol
	printer := aSymbol! !

!Choice methodsFor: 'accessing' stamp: 'len 18/Mar/2026 18:50:08'!
options
	^ options! !

!Choice methodsFor: 'private' stamp: 'len 6/Apr/2026 02:15:36'!
positionFromValue: anObject
	^ (options indexOf: anObject) - 1.0 / (options size - 1)! !

!Choice methodsFor: 'private' stamp: 'len 18/Mar/2026 18:41:25'!
setOptions: anArray value: defaultValue
	options := anArray.
	lastValue := defaultValue.
	base := self positionFromValue: defaultValue.
	modulation := 0.0.
	default := defaultValue! !

!Choice methodsFor: 'private' stamp: 'len 6/Apr/2026 02:16:43'!
valueFromPosition: aNumber
	^ options at: (aNumber * (options size - 1) + 1.0) truncated! !

!Choice class methodsFor: 'instance creation' stamp: 'len 18/Mar/2026 18:40:34'!
options: anArray value: defaultValue
	^ self new setOptions: anArray value:​ defaultValue! !

!Knob methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:16:22'!
coarseStep
	^ coarseStep! !

!Knob methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:16:22'!
coarseStep: aNumber
	coarseStep := aNumber! !

!Knob methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:16:22'!
fineStep
	^ fineStep! !

!Knob methodsFor: 'accessing' stamp: 'len 8/Mar/2026 15:16:22'!
fineStep: aNumber
	fineStep := aNumber! !

!Knob methodsFor: 'initialization' stamp: 'len 8/Mar/2026 15:23:30'!
initialize
	super initialize.
	min := -1.0.
	max := 1.0.
	curve := #linear.
	coarseStep := 1.0 / 128.0.
	fineStep := coarseStep * 0.1! !

!Knob methodsFor: 'testing' stamp: 'len 8/Mar/2026 15:16:22'!
isBipolar
	^ min = max negated! !

!Knob methodsFor: 'private' stamp: 'len 8/Mar/2026 15:16:22'!
curveAt: aNumber
	"Maps values from [0,1] to [min,max]."
	curve = #linear ifTrue: [^ aNumber * (max - min) + min].
	curve = #exp ifTrue:
		["min = 0.0 ifTrue: [^ aNumber < 0.1 ifTrue: [aNumber * max] ifFalse: [(max / 0.1 raisedTo: aNumber - 0.1 / 0.9) * 0.1]]."
		^ (max / min raisedTo: aNumber) * min].
	curve = #quadratic ifTrue:
		[self isBipolar ifTrue: "Centered quadratic:"
			[| x |
			x := aNumber - 0.5.
			^ x squared * 2.0 * (max - min) * x sign "+ (max - min / 2.0)"].
		^ aNumber squared * (max - min) + min].
	self notYetImplemented! !

!Knob methodsFor: 'private' stamp: 'len 8/Mar/2026 15:16:22'!
curveInverseAt: aNumber
	"Maps values from [min,max] to [0,1]."
	curve = #linear ifTrue: [^ aNumber - min / (max - min)].
	curve = #exp ifTrue:
		["min = 0.0 ifTrue: [^ aNumber < (max * 0.1) ifTrue: [aNumber / max] ifFalse: [aNumber ln - 0.1 ln / (max ln - 0.1 ln)]]."
		^ aNumber ln - min ln / (max ln - min ln)].
	curve = #quadratic ifTrue:
		[self isBipolar ifTrue: "Centered quadratic:"
			[^ (aNumber abs / 2.0 / (max - min)) sqrt * aNumber sign + 0.5].
		^ ((aNumber - min) / (max - min)) sqrt].
	self notYetImplemented! !

!Knob methodsFor: 'private' stamp: 'len 8/Mar/2026 15:16:22'!
positionFromValue: aNumber
	| v |
	v := aNumber.
	v := v min: max max: min.
	^ self curveInverseAt: v! !

!Knob methodsFor: 'private' stamp: 'len 5/Apr/2026 19:01:21'!
setMin: minValue max: maxValue curve: aSymbol value: defaultValue
	self assert: (defaultValue between: minValue and: maxValue).
	min := minValue.
	max := maxValue.
	curve := aSymbol.
	lastValue := defaultValue.
	base := self positionFromValue: defaultValue.
	modulation := 0.0.
	default := defaultValue! !

!Knob methodsFor: 'private' stamp: 'len 8/Mar/2026 15:16:22'!
valueFromPosition: aNumber
	^​ self curveAt: (aNumber min: 1.0 max: 0.0)! !

!Knob class methodsFor: 'instance creation' stamp: 'len 8/Mar/2026 15:16:22'!
min: min max: max curve: aSymbol value: defaultValue
	^ self new setMin: min max: max curve: aSymbol value: defaultValue! !

!Knob class methodsFor: 'instance creation' stamp: 'len 8/Mar/2026 15:16:22'!
min: min max: max value: defaultValue
	^ self min: min max: max curve: #linear value: defaultValue! !

!Toggle methodsFor: 'private' stamp: 'len 8/Mar/2026 15:50:11'!
positionFromValue: aBoolean
	^ aBoolean ifTrue: [1.0] ifFalse: [0.0]! !

!Toggle methodsFor: 'private' stamp: 'len 19/Mar/2026 00:12:23'!
setValue: aBoolean
	self baseValue: aBoolean.
	default := aBoolean! !

!Toggle methodsFor: 'private' stamp: 'len 8/Mar/2026 15:50:15'!
valueFromPosition: aNumber
	^ aNumber > 0.5! !

!Toggle class methodsFor: 'instance creation' stamp: 'len 19/Mar/2026 00:11:50'!
value: aBoolean
	^ self new setValue: aBoolean! !

!Module methodsFor: 'controlling' stamp: 'len 29/Mar/2026 00:08:38'!
clear
	"Clear all modulations from the controls.
	This message should be sent to all modules at the begining of each render cycle, before iterating over the modules and sending them #update and #tick."
	controls do: [:each| each clear]! !

!Module methodsFor: 'controlling' stamp: 'len 25/Mar/2026 16:15:42'!
reset
	"Reset the module internal state."
	^ self! !

!Module methodsFor: 'controlling' stamp: 'len 28/Mar/2026 23:59:50'!
update
	"Update the internal state of the module from the current modulated values of the controls.
	Subclasses with internal state that depends on the controls should implement this method and call super."
	controls do: [:each| each apply] "apply modulations to controls"! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Mar/2026 20:08:10'!
addChoiceControl: aSymbol options: anArray value: defaultValue
	^ controls at: aSymbol put: ((Choice options: anArray value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Mar/2026 18:05:27'!
addControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Knob min: min max: max value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 24/Feb/2026 23:52:11'!
addDryWetControl: aSymbol
	^ self addDryWetControl: aSymbol value: 1.0! !

!Module methodsFor: 'controls and modulations' stamp: 'len 24/Feb/2026 23:51:56'!
addDryWetControl: aSymbol value: defaultValue
	^ (self addControl: aSymbol min: 0.0 max: 1.0 value: defaultValue) printer: [:x| (x * 100) truncated printString, '%']! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:45:37'!
addFrequencyControl: aSymbol min: min max: max value: defaultValue
	^ (self addLogControl: aSymbol min: min max: max value: defaultValue) printer: #hertzPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:46:13'!
addFrequencyControl: aSymbol value: defaultValue
	^ self addFrequencyControl: aSymbol min: 20.0 "Hz" max: 20000.0 "20 kHz" value: defaultValue! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Mar/2026 18:05:42'!
addLogControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Knob min: min max: max curve: #exp value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 28/Jan/2026 00:09:19'!
addPitchControl: aSymbol value: defaultValue
	^ (self addControl: aSymbol min: 0 semitonesToHertz max: 127 semitonesToHertz value: defaultValue) printer: #hertzPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Mar/2026 18:05:47'!
addQuadraticControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Knob min: min max: max curve: #quadratic value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:46:28'!
addSpeedControl: aSymbol value: defaultValue
	^ self addFrequencyControl: aSymbol min: 0.01 max: 20.0 value: defaultValue! !

!Module methodsFor: 'controls and modulations' stamp: 'len 4/Dec/2025 14:41:16'!
addTimeControl: aSymbol min: min max: max value: defaultValue
	^ (self addLogControl: aSymbol min: min max: max value: defaultValue) printer: #secondsPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Mar/2026 20:08:48'!
addToggleControl: aSymbol value: defaultValue
	^ controls at: aSymbol put: ((Toggle value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 29/Jan/2026 18:54:23'!
addTuneControl: aSymbol
	^ self addTuneControl: aSymbol min: -48.0 max: 48.0 value: 0.0! !

!Module methodsFor: 'controls and modulations' stamp: 'len 29/Jan/2026 18:54:33'!
addTuneControl: aSymbol min: min max: max value: defaultValue
	^ (self addControl: aSymbol min: min max: max value: defaultValue) coarseStep: 1.0 / (max - min); fineStep: 0.01 / (max - min) "one cent"; printer: #semitonesOffsetPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 31/Jan/2026 03:42:37'!
addVolumeControl: aSymbol min: min max: max value: defaultValue
	^ (self addLogControl: aSymbol min: min max: max value: defaultValue) printer: #linearToDecibelsPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 31/Jan/2026 03:42:58'!
addVolumeControl: aSymbol value: defaultValue
	^ self addVolumeControl: aSymbol min: 0.001 max: 1.0 value: defaultValue! !

!Module methodsFor: 'controls and modulations' stamp: 'len 3/Mar/2026 19:31:44'!
adjust: aSymbol by: aValue
	controls at: aSymbol ifPresent: [:aControl| aControl adjustBy: aValue]! !

!Module methodsFor: 'controls and modulations' stamp: 'len 25/Nov/2025 18:46:00'!
controls
	^ controls! !

!Module methodsFor: 'controls and modulations' stamp: 'len 20/Nov/2025 16:22:00'!
get: aSymbol
	^ (controls at: aSymbol) value! !

!Module methodsFor: 'controls and modulations' stamp: 'len 23/Nov/2025 16:55:00'!
modulate: aSymbol by: aNumber
	"Modulate a control by the given amount."
	controls at: aSymbol ifPresent: [:aControl| aControl modulateBy: aNumber]! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Nov/2025 15:17:00'!
set: anAssociation
	"Set the control specified by the argument. The argument is an association controlName -> value."
	controls at: anAssociation key ifPresent: [:aControl| aControl baseValue: anAssociation value]! !

!Module methodsFor: 'controls and modulations' stamp: 'len 23/Nov/2025 19:35:00'!
set: aSymbol to: aValue
	controls at: aSymbol ifPresent: [:aControl| aControl baseValue: aValue]! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Nov/2025 15:17:00'!
settings
	"Answer a dictionary with the base value of each control."
	| answer |
	answer := OrderedDictionary new.
	controls keysAndValuesDo: [:controlName :control| answer at: controlName put: control baseValue].
	^ answer! !

!Module methodsFor: 'controls and modulations' stamp: 'len 18/Nov/2025 15:17:00'!
settings: aDictionary
	aDictionary associationsDo: [:each| self set: each]! !

!Module methodsFor: 'copying' stamp: 'len 19/Jan/2026 19:48:58'!
copy
	^ self class new settings: self settings! !

!Module methodsFor: 'initialization' stamp: 'len 26/Nov/2025 18:45:00'!
initialize
	super initialize.
	self initializeControls! !

!Module methodsFor: 'initialization' stamp: 'len 18/Nov/2025 19:45:00'!
initializeControls
	controls := OrderedDictionary new! !

!Module methodsFor: 'processing' stamp: 'len 29/Mar/2026 00:04:42'!
tick
	"Read input buffers, and write to output buffers. Here's where the signal processing takes place.modules do they work, processing input signals and producing output signals.
	Note: assume #update was called before calling #tick, so that the internal state was updated from the (possibly modulated) controls."
	^ self subclassResponsibility! !

!Module methodsFor: 'serialization' stamp: 'len 5/Feb/2026 17:49:59'!
asJsonWithBuffers: aList
	^ OrderedDictionary new
		at: #settings put: self settings;
		yourself! !

!Module methodsFor: 'serialization' stamp: 'len 4/Apr/2026 19:12:08'!
readFromJson: json buffers: aList
	self settings: (json at: #settings ifAbsent: [^ self])! !

!Module methodsFor: 'ui' stamp: 'len 10/Mar/2026 16:23:47'!
panel
	"Answer a panel to use in the patchable views."
	| panel |
	panel := ControlPanel new.
	controls keysAndValuesDo: [:name :control| panel addKnob: control label: (control label ifNil: [name capitalized])].
	^ panel! !

!Module methodsFor: 'ui' stamp: 'len 10/Jan/2026 16:16:26'!
patchable
	"Answer a patchable view of the receiver, with input and output pins, intended to be used in patches.
	See also messages #edit and #panel, and see PatchMorph and PatchableMorph."
	| answer |
	answer := PatchableMorph new model: self.
	controls ifNotEmpty: [answer body addMorph: self panel].
	^ answer! !

!Module methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:32:09'!
title
	^ self class name camelSeparatedWords! !

!Module class methodsFor: 'constants' stamp: 'len 10/Mar/2026 15:07:52'!
blockSize
	"Answer the size of the input and output buffers.
	This is the number of samples processed on each tick."
	^ AudioPlayer blockSize! !

!Module class methodsFor: 'constants' stamp: 'len 7/Dec/2025 00:22:17'!
controlRate
	^ self sampleRate asFloat / self blockSize! !

!Module class methodsFor: 'constants' stamp: 'len 6/Dec/2025 15:31:46'!
sampleRate
	^ AudioPlayer sampleRate! !

!Amp methodsFor: 'initialization' stamp: 'len 31/Jan/2026 21:50:16'!
initialize
	super initialize.
	gain := 0.0! !

!Amp methodsFor: 'initialization' stamp: 'len 2/Dec/2025 23:42:00'!
initializeControls
	super initializeControls.
	self addControl: #gain min: 0.0 max: 1.0 value: 0.0! !

!Amp methodsFor: 'processing' stamp: 'len 9/Mar/2026 15:49:01'!
tick
	| increment |
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	increment := (self get: #gain) - gain / self class blockSize.
	(gain = 0.0 and: [increment = 0.0]) ifTrue: [output atAllPut: 0.0. ^ self].
	increment = 0.0 
		ifTrue:
			[output replaceWith: input.
			output *= gain]
		ifFalse:
			[1 to: input size do: [:i|
				gain := gain + increment.
				output at: i put: (input at: i) * gain]].
	inputRM ifNotNil: [output *= inputRM]! !

!Amp methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:56:14'!
panel
	^ ControlPanel new addVerticalSlider: (controls at: #gain)! !

!Amp methodsFor: 'ui' stamp: 'len 10/Mar/2026 14:28:10'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInput:;
		addControlInput: #gain;
		addAudioInput: #setInputRM: label: 'AM/RM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Amp methodsFor: 'wiring' stamp: 'len 25/Nov/2025 22:29:00'!
setInput: aBuffer
	input := aBuffer! !

!Amp methodsFor: 'wiring' stamp: 'len 13/Jan/2026 13:14:40'!
setInputRM: aBuffer
	inputRM := aBuffer! !

!Amp methodsFor: 'wiring' stamp: 'len 25/Nov/2025 22:29:00'!
setOutput: aBuffer
	output := aBuffer! !

!Compressor methodsFor: 'controlling' stamp: 'len 12/Mar/2026 18:25:02'!
reset
	envelope := 0.0.
	schpf reset.
	rmslpf reset! !

!Compressor methodsFor: 'controlling' stamp: 'len 19/Mar/2026 16:57:56'!
update
	super update.
	schpf undenormalize; frequency: (self get: #schpf) / self class sampleRate.
	rmslpf undenormalize! !

!Compressor methodsFor: 'initialization' stamp: 'len 19/Mar/2026 21:22:43'!
initialize
	super initialize.
	schpf := OnePole new frequency: 100.0 / self class sampleRate "100 hz".
	rmslpf := OnePole new time: 0.01 * self class sampleRate. "10 ms"
	envelope := 0.0.
	aux := Float32Array new: self class blockSize! !

!Compressor methodsFor: 'initialization' stamp: 'len 19/Mar/2026 21:33:55'!
initializeControls
	super initializeControls.
	self addVolumeControl: #threshold value: 0.126.
	(self addLogControl: #ratio min: 1.0 max: 20.0 value: 4.0) printer: [:x| (x printStringFractionDigits: 1), ':1'].
	self addTimeControl: #attack min: 0.0001 "0.1 ms" max: 0.1 "100 ms" value: 0.01 "10 ms".
	self addTimeControl: #release min: 0.01 "10 ms" max: 1.5 "s" value: 0.1 "100 ms".
	self addChoiceControl: #mode options: #(peak rms) value: #peak.
	(self addFrequencyControl: #schpf min: 20.0 max: 200.0 value: 100.0) label: 'SC HPF'.
	self addVolumeControl: #knee min: 1.0 "0 dB" max: 4.0 "+12 dB" value: 2.0 "+6 dB".
	self addVolumeControl: #makeup min: 0.25 "-12 dB" max: 16.0 "+24 dB" value: 1.0! !

!Compressor methodsFor: 'processing' stamp: 'len 20/Mar/2026 15:11:01'!
tick
	| sc isPeak threshold ratio knee halfKnee α β |
	sc := inputSC ifNil: [inputL ifNil:
		[outputL ifNotNil: [outputL atAllPut: 0.0].
		outputR ifNotNil: [outputR atAllPut: 0.0].
		^ self]].
	isPeak := (self get: #mode) = #peak. "if not peak, it's RMS"
	threshold := self get: #threshold.
	ratio := self get: #ratio.
	knee := self get: #knee.
	halfKnee := knee / 2.0.
	α := 1.0 - (-1.0 / ((self get: #attack) * self class sampleRate)) exp.
	β := 1.0 - (-1.0 / ((self get: #release) * self class sampleRate)) exp.
	aux atAllPut: 1.0.
	1 to: sc size do: [:i|
		| x level slope gr t |
		x := sc at: i.
		x := x - (schpf value: x). "apply highpass filter to the sidechain to avoid bass pumping"
		level := isPeak ifTrue: [x abs] ifFalse: [(rmslpf value: x squared) sqrt].
		"program-dependent release, the release time depends on envelope and threshold:"
		slope := level > envelope ifTrue: [α] ifFalse: [β / ((envelope - threshold) * 4.0 + 1.0)].
		envelope := (level - envelope) * slope + envelope.
		(gr := envelope - threshold) > halfKnee negated ifTrue:
			[t := (gr + halfKnee) / knee min: 1.0. "0 at lower knee edge, 1 at upper"
			t := t squared * (3.0 - (2.0 * t)). "smoothstep"
			aux at: i put: (((gr max: 0.0) / ratio + threshold) / envelope - 1.0) * t + 1.0]].
	aux *= (self get: #makeup).
	(inputL notNil and: [outputL notNil]) ifTrue: [outputL replaceWith: inputL; *= aux].
	(inputR notNil and: [outputR notNil]) ifTrue: [outputR replaceWith: inputR; *= aux].
	self triggerEvent: #envelope: with: envelope; triggerEvent: #gainReduction: with: aux last / (self get: #makeup)! !

!Compressor methodsFor: 'ui' stamp: 'len 20/Mar/2026 18:36:01'!
panel
	| answer |
	answer := ControlPanel newColumn.
	answer addRow
"		addTextualControl: (controls at: #threshold);"
		addTextualControl: (controls at: #ratio);
		addChoice: (controls at: #mode).
"	answer addRow
		addSmallKnob: (controls at: #attack) label: 'Attack';
		addSmallKnob: (controls at: #release) label: 'Release'."
	^ answer! !

!Compressor methodsFor: 'ui' stamp: 'len 20/Mar/2026 18:37:23'!
panel2
	^​ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'Attack';
		addSmallKnob: (controls at: #release) label: 'Release';
		addSmallKnob: (controls at: #schpf) label: 'SC HPF';
		addSmallKnob: (controls at: #knee) label: 'Knee';
		addSmallKnob: (controls at: #makeup) label: 'Makeup'! !

!Compressor methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:11:40'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen; addMorph: self panel.
	answer flap addMorph: self panel2.
	answer
		addAudioInput: #setInputL: label: 'L/M';
		addAudioInput: #setInputR: label: 'R';
		addAudioInput: #setInputSC: label: 'SC';
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!Compressor methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:58:05'!
screen
	| answer |
	answer := DynamicsActivityMorph new.
	self when: #envelope: send: #addEnvelope: to: answer.
	self when: #gainReduction: send: #addGainReduction: to: answer.
	answer control1: (controls at: #threshold).
	^ answer! !

!Compressor methodsFor: 'wiring' stamp: 'len 9/Mar/2026 00:07:47'!
setInputL: aBuffer
	inputL := aBuffer! !

!Compressor methodsFor: 'wiring' stamp: 'len 9/Mar/2026 00:07:52'!
setInputR: aBuffer
	inputR := aBuffer! !

!Compressor methodsFor: 'wiring' stamp: 'len 8/Mar/2026 17:12:08'!
setInputSC: aBuffer
	inputSC := aBuffer! !

!Compressor methodsFor: 'wiring' stamp: 'len 9/Mar/2026 00:07:58'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Compressor methodsFor: 'wiring' stamp: 'len 9/Mar/2026 00:08:03'!
setOutputR: aBuffer
	outputR := aBuffer! !

!Gate methodsFor: 'controlling' stamp: 'len 12/Mar/2026 18:24:52'!
reset
	envelope := 0.0.
	schpf reset.
	rmslpf reset! !

!Gate methodsFor: 'controlling' stamp: 'len 19/Mar/2026 16:58:08'!
update
	super update.
	schpf undenormalize; frequency: (self get: #schpf) / self class sampleRate.
	rmslpf undenormalize! !

!Gate methodsFor: 'initialization' stamp: 'len 19/Mar/2026 21:29:26'!
initialize
	super initialize.
	schpf := OnePole new frequency: 100.0 / self class sampleRate "100 hz".
	rmslpf := OnePole new time: 0.01 * self class sampleRate. "10 ms"
	envelope := 0.0.
	aux := Float32Array new: self class blockSize! !

!Gate methodsFor: 'initialization' stamp: 'len 19/Mar/2026 21:33:45'!
initializeControls
	super initializeControls.
	self addVolumeControl: #threshold value: 0.126.
	self addTimeControl: #attack min: 0.0001 "0.1 ms" max: 0.1 "100 ms" value: 0.01 "10 ms".
	self addTimeControl: #hold min: 0.0001 "0.1 ms" max: 0.1 "100 ms" value: 0.01 "10 ms".
	self addTimeControl: #release min: 0.01 "10 ms" max: 1.5 "s" value: 0.1 "100 ms".
	self addControl: #return min: 0.0 max: 1.0 value: 0.1.
	self addChoiceControl: #mode options: #(peak rms) value: #peak.
	(self addFrequencyControl: #schpf min: 20.0 max: 200.0 value: 100.0) label: 'SC HPF'.
	self addVolumeControl: #knee min: 1.0 "0 dB" max: 4.0 "+12 dB" value: 2.0 "+6 dB"! !

!Gate methodsFor: 'processing' stamp: 'len 19/Mar/2026 21:27:11'!
tick
	| sc isPeak threshold α β |
	sc := inputSC ifNil: [inputL ifNil:
		[outputL ifNotNil: [outputL atAllPut: 0.0].
		outputR ifNotNil: [outputR atAllPut: 0.0].
		^ self]].
	isPeak := (self get: #mode) = #peak. "if not peak, it's RMS"
	threshold := self get: #threshold.
	α := 1.0 - (-1.0 / ((self get: #attack) * self class sampleRate)) exp.
	β := 1.0 - (-1.0 / ((self get: #release) * self class sampleRate)) exp.
	aux atAllPut: 1.0.
	1 to: sc size do: [:i|
		| x level slope gr |
		x := sc at: i.
		x := x - (schpf value: x). "apply highpass filter to the sidechain to avoid bass pumping"
		level := isPeak ifTrue: [x abs] ifFalse: [(rmslpf value: x squared) sqrt].
		"program-dependent release, the release time depends on envelope and threshold:"
		slope := level > envelope ifTrue: [α] ifFalse: [β / ((envelope - threshold) * 4.0 + 1.0)].
		envelope := (level - envelope) * slope + envelope.
		(gr := envelope - threshold) > 0.0 ifTrue: [aux at: i put: 0.0]].
	(inputL notNil and: [outputL notNil]) ifTrue: [outputL replaceWith: inputL; *= aux].
	(inputR notNil and: [outputR notNil]) ifTrue: [outputR replaceWith: inputR; *= aux].
	self triggerEvent: #envelope: with: envelope; triggerEvent: #gainReduction: with: aux last! !

!Gate methodsFor: 'ui' stamp: 'len 20/Mar/2026 19:14:53'!
panel
	^​ ControlPanel new
		addChoice: (controls at: #mode)! !

!Gate methodsFor: 'ui' stamp: 'len 20/Mar/2026 19:15:49'!
panel2
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'Attack';
		addSmallKnob: (controls at: #hold) label: 'Hold';
		addSmallKnob: (controls at: #release) label: 'Release';
		addSmallKnob: (controls at: #schpf) label: 'SC HPF';
		addSmallKnob: (controls at: #knee) label: 'Knee'! !

!Gate methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:11:52'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen; addMorph: self panel.
	answer flap addMorph: self panel2.
	answer
		addAudioInput: #setInputL: label: 'L/M';
		addAudioInput: #setInputR: label: 'R';
		addAudioInput: #setInputSC: label: 'SC';
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!Gate methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:58:27'!
screen
	| answer |
	answer := DynamicsActivityMorph new.
	answer control1: (controls at: #threshold).
	answer control2: (controls at: #return).
	self when: #envelope: send: #addEnvelope: to: answer.
	self when: #gainReduction: send: #addGainReduction: to: answer.
	^ answer! !

!Gate methodsFor: 'wiring' stamp: 'len 12/Mar/2026 18:23:07'!
setInputL: aBuffer
	inputL := aBuffer! !

!Gate methodsFor: 'wiring' stamp: 'len 12/Mar/2026 18:23:07'!
setInputR: aBuffer
	inputR := aBuffer! !

!Gate methodsFor: 'wiring' stamp: 'len 12/Mar/2026 18:23:07'!
setInputSC: aBuffer
	inputSC := aBuffer! !

!Gate methodsFor: 'wiring' stamp: 'len 12/Mar/2026 18:23:07'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Gate methodsFor: 'wiring' stamp: 'len 12/Mar/2026 18:23:07'!
setOutputR: aBuffer
	outputR := aBuffer! !

!EG methodsFor: 'accessing' stamp: 'len 6/Jan/2026 18:33:45'!
stage
	^ stage! !

!EG methodsFor: 'accessing' stamp: 'len 6/Jan/2026 18:35:09'!
value
	^ value! !

!EG methodsFor: 'controlling' stamp: 'len 19/Mar/2026 02:27:39'!
adjustNoteBy: aNumber
	^ self! !

!EG methodsFor: 'controlling' stamp: 'len 7/Mar/2026 18:51:07'!
adjustVelocityBy: aNumber
	velocity := velocity + aNumber min: 1.0 max: 0.0! !

!EG methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	^ self! !

!EG methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:20'!
gateOn
	self update.
	stage := #attack.
"	factor := 1.0 - (0.001 raisedTo: 1.0 / attack)"
	increment := 1.0 / attack! !

!EG methodsFor: 'controlling' stamp: 'len 30/Nov/2025 02:15:00'!
reset
	stage := #idle.
	value := 0.0! !

!EG methodsFor: 'controlling' stamp: 'len 28/Nov/2025 16:34:00'!
setVelocity: aNumber
	velocity := aNumber! !

!EG methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:38:54'!
update
	super update.
	attack := (self get: #attack) * self class controlRate
! !

!EG methodsFor: 'initialization' stamp: 'len 15/Jan/2026 19:14:09'!
initialize
	super initialize.
	self reset.
	velocity := 0.5! !

!EG methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:07:19'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01! !

!EG methodsFor: 'processing' stamp: 'len 29/Nov/2025 20:41:00'!
next
	^ self subclassResponsibility! !

!EG methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:36'!
tick
	stage = #idle ifFalse: [self triggerEvent: #output: with: self next]! !

!EG methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:58:53'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer addControlOutput: #output: label: 'Out'.
	^ answer! !

!EG methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:58:46'!
screen
	| answer |
	answer := RollingWaveformMorph new bipolar: false.
	self when: #output: send: #addSample: to: answer.
	^ answer! !

!AD methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:13'!
update
	super update.
	decay := (self get: #decay) * self class controlRate! !

!AD methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:07:12'!
initializeControls
	super initializeControls.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5! !

!AD methodsFor: 'processing' stamp: 'len 15/Feb/2026 00:08:04'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [value := 1.0. stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
		^ value * velocity].
	stage = #decay ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!AD methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:57:03'!
panel
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'A';
		addSmallKnob: (controls at: #decay) label: 'D'! !

!AD methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:42:58'!
patchable
	^ super patchable
		addControlInput: #attack;
		addControlInput: #decay;
		yourself! !

!ADSR methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!ADSR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:06:32'!
gateOn
	(self isUnreleased and: [self get: #legato]) ifFalse: [super gateOn]! !

!ADSR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:10:41'!
isUnreleased
	^ stage = #attack or: [stage = #decay or: [stage = #sustain]]! !

!ADSR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:38:34'!
update
	| rate |
	super update.
	rate := self class controlRate.
	decay := (self get: #decay) * rate.
	sustain := self get: #sustain.
	release := (self get: #release) * rate! !

!ADSR methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:08:58'!
initializeControls
	super initializeControls.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5.
	self addVolumeControl: #sustain value: 0.6.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0.
	self addToggleControl: #legato value: false! !

!ADSR methodsFor: 'processing' stamp: 'len 15/Feb/2026 00:07:49'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [value := 1.0. stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
		^ value * velocity].
	stage = #decay ifTrue:
		[value := (value - sustain) * factor + sustain.
		value - sustain <= 0.001 ifTrue: [sustain <= 0.001 "-60 dB" ifTrue: [value := 0.0. stage := #idle] ifFalse: [stage := #sustain]].
		^ value * velocity].
	stage = #sustain ifTrue: [^ value * velocity].
	stage = #release ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!ADSR methodsFor: 'ui' stamp: 'len 26/Mar/2026 15:11:27'!
panel
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'A';
		addSmallKnob: (controls at: #decay) label: 'D';
		addSmallKnob: (controls at: #sustain) label: 'S';
		addSmallKnob: (controls at: #release) label: 'R';
		addToggle: (controls at: #legato) label: 'Legato'! !

!ADSR methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:43:31'!
patchable
	^ super patchable
		addControlInput: #attack;
		addControlInput: #decay;
		addControlInput: #release;
		yourself! !

!AHD methodsFor: 'controlling' stamp: 'len 12/Apr/2026 18:49:36'!
update
	| rate |
	super update.
	rate := self class controlRate.
	hold := (self get: #hold) * rate.
	decay := (self get: #decay) * rate! !

!AHD methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:07:28'!
initializeControls
	super initializeControls.
	self addTimeControl: #hold min: 0.001 max: 10.0 value: 1.0.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5! !

!AHD methodsFor: 'processing' stamp: 'len 12/Apr/2026 18:49:54'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [value := 1.0. stage := #hold. holding := hold truncated].
		^ value * velocity].
	stage = #hold ifTrue:
		[(holding := holding - 1) > 0 ifFalse: [stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
		^ value * velocity].
	stage = #decay ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!AHD methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:57:11'!
panel
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'A';
		addSmallKnob: (controls at: #hold) label: 'H';
		addSmallKnob: (controls at: #decay) label: 'D'! !

!AHD methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:44:18'!
patchable
	^ super patchable
		addControlInput: #attack;
		addControlInput: #hold;
		addControlInput: #decay;
		yourself! !

!AR methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!AR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:08:13'!
gateOn
	(self isUnreleased and: [self get: #legato]) ifFalse: [super gateOn]! !

!AR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:10:18'!
isUnreleased
	^ stage = #attack or: [stage = #sustain]! !

!AR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:44'!
update
	super update.
	release := (self get: #release) * self class controlRate! !

!AR methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:09:04'!
initializeControls
	super initializeControls.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0.
	self addToggleControl: #legato value: false! !

!AR methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:46:53'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [value := 1.0. stage := #sustain].
		^ value * velocity].
	stage = #sustain ifTrue: [^ value * velocity].
	stage = #release ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!AR methodsFor: 'ui' stamp: 'len 26/Mar/2026 15:11:23'!
panel
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'A';
		addSmallKnob: (controls at: #release) label: 'R';
		addToggle: (controls at: #legato) label: 'Legato'! !

!AR methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:44:28'!
patchable
	^ super patchable
		addControlInput: #attack;
		addControlInput: #release;
		yourself! !

!ASR methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!ASR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:06:44'!
gateOn
	(self isUnreleased and: [self get: #legato]) ifFalse: [super gateOn]! !

!ASR methodsFor: 'controlling' stamp: 'len 26/Mar/2026 15:09:31'!
isUnreleased
	^ stage = #attack or: [stage = #sustain]! !

!ASR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:58'!
update
	super update.
	sustain := self get: #sustain.
	release := (self get: #release) * self class controlRate! !

!ASR methodsFor: 'initialization' stamp: 'len 26/Mar/2026 15:09:10'!
initializeControls
	super initializeControls.
	self addVolumeControl: #sustain value: 0.6.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0.
	self addToggleControl: #legato value: false! !

!ASR methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:47:02'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [stage := #sustain. value := sustain].
		^ value * velocity].
	stage = #sustain ifTrue: [^ value * velocity].
	stage = #release ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!ASR methodsFor: 'ui' stamp: 'len 26/Mar/2026 15:11:17'!
panel
	^ ControlPanel new
		addSmallKnob: (controls at: #attack) label: 'A';
		addSmallKnob: (controls at: #sustain) label: 'S';
		addSmallKnob: (controls at: #release) label: 'R';
		addToggle: (controls at: #legato) label: 'Legato'! !

!ASR methodsFor: 'ui' stamp: 'len 23/Feb/2026 19:44:35'!
patchable
	^ super patchable
		addControlInput: #attack;
		addControlInput: #release;
		yourself! !

!Chorus methodsFor: 'controlling' stamp: 'len 27/Mar/2026 15:18:34'!
reset
	phase := 0.0.
	delayLine reset.
	tap1 reset.
	tap2 reset.
	tap3 reset.
	lpfL reset.
	lpfR reset! !

!Chorus methodsFor: 'controlling' stamp: 'len 27/Mar/2026 20:58:08'!
update
	| increment depth time twoPi delay tone |
	super update.
	twoPi := Float twoPi.
	time := self get: #time.
	depth := (self get: #depth) * 0.002 "2 ms".
	delay := (phase sin * depth + (time * 0.8)) * self class sampleRate.
	tap1 setDelayIncrement: (delay - tap1 delay) / self class blockSize.
	delay := ((twoPi/3.0 + phase) sin * depth + time) * self class sampleRate.
	tap2 setDelayIncrement: (delay - tap2 delay) / self class blockSize.
	delay := ((twoPi/1.5 + phase) sin * depth + (time * 1.2)) * self class sampleRate.
	tap3 setDelayIncrement: (delay - tap3 delay) / self class blockSize.
	increment := (self get: #speed) / self class controlRate * twoPi.
	(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
	tone := self get: #tone.
	lpfL frequency: tone.
	lpfR frequency: tone.
! !

!Chorus methodsFor: 'initialization' stamp: 'len 27/Mar/2026 20:59:02'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.035 "35 ms max") ceiling.
	tap1 := DelayTapC on: delayLine.
	tap2 := DelayTapC on: delayLine.
	tap3 := DelayTapC on: delayLine.
	lpfL := OnePole new.
	lpfR := OnePole new.
	self reset! !

!Chorus methodsFor: 'initialization' stamp: 'len 26/Mar/2026 16:18:57'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.005 "5 ms" max: 0.02 "20 ms" value: 0.01 "10 ms".
	self addFrequencyControl: #speed min: 0.1 "Hz" max: 1.5 "Hz" value: 0.5 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addFrequencyControl: #tone min: 2000.0 "2 kHz" max: 18000.0 "18 kHz" value: 8000.0. "8 kHz"
	self addDryWetControl: #mix value: 0.5! !

!Chorus methodsFor: 'processing' stamp: 'len 27/Mar/2026 16:41:10'!
tick
	| wet dry |
	outputL ifNil: [^ self].
	input ifNil: [outputL atAllPut: 0.0. outputR ifNotNil: [outputR atAllPut: 0.0].^ self].
	wet := self get: #mix.
	dry := 1.0 - wet.
	outputR isNil
		ifTrue:
			[1 to: input size do: [:i|
				| in out |
				delayLine write: (in := input at: i).
				out := tap1 read + tap2 read + tap3 read / 3.0.
				outputL at: i put: in * dry + ((lpfL value: out) * wet)]]
		ifFalse:
			[1 to: input size do: [:i|
				| in v1 v2 v3 mid side |
				delayLine write: (in := input at: i).
				v1 := tap1 read.
				v2 := tap2 read.
				v3 := tap3 read.
				mid := v1 + v2 + v3 / 3.0.
				side := v1 - v3 * 0.5.
				in := in * dry.
				outputL at: i put: in + ((lpfL value: mid + side) * wet).
				outputR at: i put: in + ((lpfR value: mid - side) * wet)]]! !

!Chorus methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:12:39'!
patchable
	^ super patchable
		addAudioInput: #setInput:;
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R';
		yourself! !

!Chorus methodsFor: 'wiring' stamp: 'len 26/Jan/2026 22:14:23'!
setInput: aBuffer
	input := aBuffer! !

!Chorus methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:07:18'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Chorus methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:10:06'!
setOutputR: aBuffer
	outputR := aBuffer! !

!Ensemble methodsFor: 'controlling' stamp: 'len 27/Mar/2026 19:46:47'!
reset
	phase1 := 0.0.
	phase2 := Float twoPi * 0.2.
	phase3 := Float twoPi * 0.4.
	phase4 := Float twoPi * 0.6.
	phase5 := Float twoPi * 0.8.
	delayLine reset.
	tap1 reset.
	tap2 reset.
	tap3 reset.
	tap4 reset.
	tap5 reset.
	lpfL reset.
	lpfR reset! !

!Ensemble methodsFor: 'controlling' stamp: 'len 27/Mar/2026 20:57:31'!
update
	| increment depth time twoPi delay tone |
	super update.
	twoPi := Float twoPi.
	time := self get: #time.
	depth := (self get: #depth) * 0.004. "4 ms max depth"
	delay := (phase1 sin * depth + (time * 0.72)) * self class sampleRate.
	tap1 setDelayIncrement: (delay - tap1 delay) / self class blockSize.
	delay := (phase2 sin * depth + (time * 0.86)) * self class sampleRate.
	tap2 setDelayIncrement: (delay - tap2 delay) / self class blockSize.
	delay := (phase3 sin * depth + time) * self class sampleRate.
	tap3 setDelayIncrement: (delay - tap3 delay) / self class blockSize.
	delay := (phase4 sin * depth + (time * 1.14)) * self class sampleRate.
	tap4 setDelayIncrement: (delay - tap4 delay) / self class blockSize.
	delay := (phase5 sin * depth + (time * 1.28)) * self class sampleRate.
	tap5 setDelayIncrement: (delay - tap5 delay) / self class blockSize.
	increment := (self get: #speed) / self class controlRate * twoPi.
	"powers of φ give a clean geometric series that's maximally inharmonic throughout:"
	(phase1 := phase1 + (increment * 0.382)) > twoPi ifTrue: [phase1 := phase1 - twoPi].
	(phase2 := phase2 + (increment * 0.618)) > twoPi ifTrue: [phase2 := phase2 - twoPi].
	(phase3 := phase3 + increment) > twoPi ifTrue: [phase3 := phase3 - twoPi].
	(phase4 := phase4 + (increment * 1.618)) > twoPi ifTrue: [phase4 := phase4 - twoPi].
	(phase5 := phase5 + (increment * 2.618)) > twoPi ifTrue: [phase5 := phase5 - twoPi].
	tone := self get: #tone.
	lpfL frequency: tone.
	lpfR frequency: tone! !

!Ensemble methodsFor: 'initialization' stamp: 'len 27/Mar/2026 20:59:09'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.05 "50 ms max") ceiling.
	tap1 := DelayTapC on: delayLine.
	tap2 := DelayTapC on: delayLine.
	tap3 := DelayTapC on: delayLine.
	tap4 := DelayTapC on: delayLine.
	tap5 := DelayTapC on: delayLine.
	lpfL := OnePole new.
	lpfR := OnePole new.
	self reset! !

!Ensemble methodsFor: 'initialization' stamp: 'len 26/Mar/2026 16:19:48'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.015 "15 ms" max: 0.035 "35 ms" value: 0.02 "20 ms".
	self addFrequencyControl: #speed min: 0.1 "Hz" max: 1.5 "Hz" value: 0.5 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addFrequencyControl: #tone min: 2000.0 "2 kHz" max: 18000.0 "18 kHz" value: 6000.0. "6 kHz"
	self addDryWetControl: #mix value: 0.5! !

!Ensemble methodsFor: 'processing' stamp: 'len 27/Mar/2026 16:40:45'!
tick
	| wet dry |
	outputL ifNil: [^ self].
	input ifNil: [outputL atAllPut: 0.0. outputR ifNotNil: [outputR atAllPut: 0.0].^ self].
	wet := self get: #mix.
	dry := 1.0 - wet.
	outputR isNil
		ifTrue:
			[1 to: input size do: [:i|
				| in out |
				delayLine write: (in := input at: i).
				out := tap1 read + tap2 read + tap3 read + tap4 read + tap5 read / 3.0.
				outputL at: i put: in * dry + ((lpfL value: out) * wet)]]
		ifFalse:
			[1 to: input size do: [:i|
				| in v1 v2 v3 v4 v5 outL outR |
				delayLine write: (in := input at: i).
				v1 := tap1 read.
				v2 := tap2 read.
				v3 := tap3 read.
				v4 := tap4 read.
				v5 := tap5 read.
				"pan coefficients precomputed from cos/sin of pan angle;
				and normalize (3.0 is approx RMS sum for 5 constant-power taps):"
				outL := v1 + (v2 * 0.924) + (v3 * 0.707) + (v4 * 0.383) / 3.0. 
				outR := v2 * 0.383 + (v3 * 0.707) + (v4 * 0.924) + v5 / 3.0.
				in := in * dry.
				outputL at: i put: in + ((lpfL value: outL) * wet).
				outputR at: i put: in + ((lpfR value: outR) * wet)]]! !

!Ensemble methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:12:47'!
patchable
	^ super patchable
		addAudioInput: #setInput:;
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R';
		yourself! !

!Ensemble methodsFor: 'wiring' stamp: 'len 26/Mar/2026 15:45:20'!
setInput: aBuffer
	input := aBuffer! !

!Ensemble methodsFor: 'wiring' stamp: 'len 26/Mar/2026 15:45:20'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Ensemble methodsFor: 'wiring' stamp: 'len 26/Mar/2026 15:45:20'!
setOutputR: aBuffer
	outputR := aBuffer! !

!StereoEcho methodsFor: 'controlling' stamp: 'len 6/Mar/2026 22:26:43'!
reset
	delayLineL reset.
	tapL reset.
	delayLineR reset.
	tapR reset.
	lpfL reset.
	hpfL reset.
	lsfL reset.
	hsfL reset.
	lpfR reset.
	hpfR reset.
	lsfR reset.
	hsfR reset! !

!StereoEcho methodsFor: 'controlling' stamp: 'len 19/Mar/2026 16:58:31'!
update
	| delay thirtyMsecs bass treble spread lpfSpread trebleSpread |
	super update.
	thirtyMsecs := self class sampleRate * 0.03.
	delay := (self get: #time) * self class sampleRate.
	tapL setDelayIncrement: delay - tapL delay / thirtyMsecs. "slide over 30 ms"
	tapR setDelayIncrement: delay - tapR delay / thirtyMsecs. "slide over 30 ms"
	spread := self get: #spread.
	lpfSpread := 1500.0 * spread. "± 1.5 kHz"
	lpfL undenormalize; frequency: 6000.0 - lpfSpread / self class sampleRate. "6 kHz - spreading"
	lpfR undenormalize; frequency: 6000.0 + lpfSpread / self class sampleRate. "6 kHz + spreading"
	hpfL undenormalize.
	hpfR undenormalize.
	bass := self get: #bass.
	treble := self get: #treble.
	trebleSpread := (3.0 * spread) decibelsToLinear. "± 3 dB"
	lsfL undenormalize; ls: 120.0 / self class sampleRate Q: 0.707 gain: bass. "120 Hz"
	lsfR undenormalize; ls: 120.0 / self class sampleRate Q: 0.707 gain: bass. "120 Hz"
	hsfL undenormalize; hs: 4000.0 / self class sampleRate Q: 0.707 gain: treble / trebleSpread. "4 kHz"
	hsfR undenormalize; hs: 4000.0 / self class sampleRate Q: 0.707 gain: treble * trebleSpread. "4 kHz"! !

!StereoEcho methodsFor: 'initialization' stamp: 'len 26/Mar/2026 16:23:10'!
initialize
	super initialize.
	delayLineL := DelayLine new: (self class sampleRate * 2) ceiling + 2.
	tapL := DelayTapC on: delayLineL.
	delayLineR := DelayLine new: (self class sampleRate * 2) ceiling + 2.
	tapR := DelayTapC on: delayLineR.
	lpfL := OnePole new frequency: 8000.0 / self class sampleRate. "8 kHz"
	hpfL := OnePole new frequency: 40.0 / self class sampleRate. "40 Hz"
	lsfL := Biquad new.
	hsfL := Biquad new.
	lpfR := OnePole new frequency: 8000.0 / self class sampleRate. "8 kHz"
	hpfR := OnePole new frequency: 40.0 / self class sampleRate. "40 Hz"
	lsfR := Biquad new.
	hsfR := Biquad new! !

!StereoEcho methodsFor: 'initialization' stamp: 'len 7/Mar/2026 16:08:59'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.240 "240 ms" max: 2.0 "2 s" value: 0.5 "500 ms".
	self addControl: #feedback min: 0.0 max: 1.0 value: 0.0.
	self addControl: #width min: -1.0 max: 1.0 value: 0.0.
	self addControl: #spread min: 0.0 max: 1.0 value: 0.5.
	self addVolumeControl: #bass min: 0.4 max: 2.5 value: 1.0. "-8 dB to 8 dB"
	self addVolumeControl: #treble min: 0.4 max: 2.5 value: 1.0. "-8 dB to 8 dB"
	self addDryWetControl: #mix value: 0.5! !

!StereoEcho methodsFor: 'processing' stamp: 'len 25/Mar/2026 16:01:53'!
tick
	| feedback wet dry width gain1 gain2 |
	outputL ifNil: [^ self].
	inputL ifNil: [outputL atAllPut: 0.0. outputR ifNotNil: [outputR atAllPut: 0.0]. ^ self].
	feedback := self get: #feedback.
	wet := self get: #mix.
	dry := 1.0 - wet.
	width := self get: #width.
	gain2 := width <= 0 ifTrue: [width * -0.5] ifFalse: [width].
	gain1 := 1.0 - gain2.
	1 to: inputL size do: [:i|
		| echoL echoR inL inR writeL writeR outL outR |
		echoL := hsfL value: (lsfL value: tapL read). "bass and treble shelves for the echo"
		echoR := hsfR value: (lsfR value: tapR read).
		inL := inputL at: i.
		inR := inputR ifNil: [0.0] ifNotNil: [inputR at: i].
		outL := echoL * gain1 + (echoR * gain2).
		writeL := outL * feedback + inL.
		writeL := (writeL * 1.5) tanh. "saturation"
		writeL := lpfL value: writeL - (hpfL value: writeL). "lpf and hpf one-poles for bandwidth loss when writing to the tape"
		outR := echoR * gain1 + (echoL * gain2).
		writeR := outR * feedback + inR.
		writeR := (writeR * 1.5) tanh.
		writeR := lpfR value: writeR - (hpfR value: writeR).
		delayLineL write: writeL.
		delayLineR write: writeR.
		outputL at: i put: inL * dry + (outL * wet).
		outputR ifNotNil: [outputR at: i put: inR * dry + (outR * wet)]]! !

!StereoEcho methodsFor: 'ui' stamp: 'len 12/Mar/2026 18:03:54'!
panel
	| answer |
	answer := ControlPanel newColumn.
	answer addRow
		addKnob: (controls at: #time) label: 'Time';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #width) label: 'Width'.
	answer addRow
		addSmallKnob: (controls at: #bass) label: 'Bass';
		addSmallKnob: (controls at: #treble) label: 'Treble';
		addSmallKnob: (controls at: #spread) label: 'Spread';
		addSmallKnob: (controls at: #mix) label: 'Mix'.
	^ answer! !

!StereoEcho methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:13:02'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	^ answer
		addAudioInput: #setInputL: label: 'L/M';
		addAudioInput: #setInputR: label: 'R';
		addAudioOutput: #setOutputL: label: 'L';
		addAudioOutput: #setOutputR: label: 'R';
		addControlInput: #time;
		addControlInput: #feedback;
		yourself! !

!StereoEcho methodsFor: 'wiring' stamp: 'len 6/Mar/2026 22:20:24'!
setInputL: aBuffer
	inputL := aBuffer! !

!StereoEcho methodsFor: 'wiring' stamp: 'len 6/Mar/2026 22:20:28'!
setInputR: aBuffer
	inputR := aBuffer! !

!StereoEcho methodsFor: 'wiring' stamp: 'len 6/Mar/2026 22:20:42'!
setOutputL: aBuffer
	outputL := aBuffer! !

!StereoEcho methodsFor: 'wiring' stamp: 'len 6/Mar/2026 22:20:36'!
setOutputR: aBuffer
	outputR := aBuffer! !

!StereoReverb methodsFor: 'controlling' stamp: 'len 27/Mar/2026 16:36:51'!
reset
	predelayLine reset.
	predelayTap reset.
	combsL do: [:each| each reset].
	allpassesL do: [:each| each reset].
	combsR do: [:each| each reset].
	allpassesR do: [:each| each reset]! !

!StereoReverb methodsFor: 'controlling' stamp: 'len 9/Mar/2026 16:46:06'!
update
	| feedback damp |
	super update.
	predelayTap setDelayIncrement: ((self get: #predelay) * self class sampleRate - predelayTap delay) / self class blockSize.
	feedback := self get: #feedback.
	damp := self get: #damp.
	combsL do: [:each| each undenormalize; feedback: feedback; damp: damp].
	combsR do: [:each| each undenormalize; feedback: feedback; damp: damp]! !

!StereoReverb methodsFor: 'initialization' stamp: 'len 25/Mar/2026 15:58:40'!
initialize
	super initialize.
	predelayLine := DelayLine new: (self class sampleRate * 0.15) ceiling. "150 ms"
	predelayTap := DelayTapL on: predelayLine.
	combsL := #(1116 1188 1277 1356 1422 1491 1557 1617) collect: [:each| LowpassComb new: (each * self class sampleRate / 44100.0) truncated].
	allpassesL := #(556 441 341 225) collect: [:each| AllpassComb new: (each * self class sampleRate / 44100.0) truncated].
	"for stereo effect, right side uses longer delays by 23 samples:"
	combsR := #(1116 1188 1277 1356 1422 1491 1557 1617) collect: [:each| LowpassComb new: ((each + 23) * self class sampleRate / 44100.0) truncated].
	allpassesR := #(556 441 341 225) collect: [:each| AllpassComb new: ((each + 23) * self class sampleRate / 44100.0) truncated]! !

!StereoReverb methodsFor: 'initialization' stamp: 'len 27/Mar/2026 19:30:56'!
initializeControls
	super initializeControls.
	self addTimeControl: #predelay min: 0.0001 "0.1 ms" max: 0.15 "150 ms" value: 0.005 "5 ms".
	self addControl: #feedback min: 0.7 max: 0.98 value: 0.84.
	self addControl: #damp min: 0.0 max: 1.0 value: 0.5.
	self addControl: #width min: 0.0 max: 1.0 value: 1.0.
	self addDryWetControl: #mix value: 0.5! !

!StereoReverb methodsFor: 'processing' stamp: 'len 27/Mar/2026 17:36:23'!
tick
	| width width2 wet dry |
	outputL ifNil: [^ self].
	inputL ifNil: [outputL atAllPut: 0.0. outputR ifNotNil: [outputR atAllPut: 0.0]. ^ self].
	width := (self get: #width) / 2.0 + 0.5. "0 -> 0.5, 1 -> 1.0"
	width2 := 1.0 - width. "0 -> 0.5, 1 -> 0.0"
	wet := self get: #mix.
	dry := 1.0 - wet.
	1 to: inputL size do: [:i|
		| inL inR delayed outL outR |
		inL := inputL at: i.
		inputR
			ifNil: [inR := inL. predelayLine write: inL]
			ifNotNil: [inR := inputR at: i. predelayLine write: (inL + inR) * 0.5].
		delayed := predelayTap read * 0.015. "fixed gain"
		outL := 0.0.
		combsL do: [:each| outL := (each value: delayed) + outL].
		allpassesL do: [:each| outL := each value: outL].
		outL := outL * wet.
		outputR
			ifNil: [outputL at: i put: inL * dry + outL]
			ifNotNil:
				[outR:= 0.0.
				combsR do: [:each| outR := (each value: delayed) + outR].
				allpassesR do: [:each| outR := each value: outR].
				outR := outR * wet.
				outputL at: i put: inL * dry + (outR * width) + (outL * width2).
				outputR at: i put: inR * dry + (outR * width2) + (outL * width)]]! !

!StereoReverb methodsFor: 'ui' stamp: 'len 9/Mar/2026 15:59:43'!
panel
	^ ControlPanel new
		addKnob: (controls at: #predelay) label: 'Delay';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #damp) label: 'Damp';
		addKnob: (controls at: #width) label: 'Width';
		addKnob: (controls at: #mix) label: 'Mix'! !

!StereoReverb methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:13:13'!
patchable
	^ super patchable
		addAudioInput: #setInputL: label: 'L/M';
		addAudioInput: #setInputR: label: 'R';
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R';
		yourself! !

!StereoReverb methodsFor: 'wiring' stamp: 'len 7/Mar/2026 16:14:28'!
setInputL: aBuffer
	inputL := aBuffer! !

!StereoReverb methodsFor: 'wiring' stamp: 'len 7/Mar/2026 16:14:57'!
setInputR: aBuffer
	inputR := aBuffer! !

!StereoReverb methodsFor: 'wiring' stamp: 'len 7/Mar/2026 16:15:10'!
setOutputL: aBuffer
	outputL := aBuffer! !

!StereoReverb methodsFor: 'wiring' stamp: 'len 7/Mar/2026 16:15:05'!
setOutputR: aBuffer
	outputR := aBuffer! !

!Crossover methodsFor: 'controlling' stamp: 'len 29/Mar/2026 01:43:28'!
reset
	lpf1 reset.
	lpf2 reset.
	hpf1 reset.
	hpf2 reset! !

!Crossover methodsFor: 'controlling' stamp: 'len 29/Mar/2026 01:55:08'!
undenormalize
	lpf1 undenormalize.
	lpf2 undenormalize.
	hpf1 undenormalize.
	hpf2 undenormalize! !

!Crossover methodsFor: 'controlling' stamp: 'len 29/Mar/2026 03:26:53'!
update
	| frequency |
	super update.
	frequency := self get: #frequency.
	lpf1 butterworth_lp: frequency.
	lpf2 butterworth_lp: frequency.
	hpf1 butterworth_hp: frequency.
	hpf2 butterworth_hp: frequency! !

!Crossover methodsFor: 'initialization' stamp: 'len 29/Mar/2026 03:33:11'!
initialize
	super initialize.
	lpf1 := Biquad new.
	lpf2 := Biquad new.
	hpf1 := Biquad new.
	hpf2 := Biquad new! !

!Crossover methodsFor: 'initialization' stamp: 'len 29/Mar/2026 03:55:31'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 2500.0! !

!Crossover methodsFor: 'processing' stamp: 'len 29/Mar/2026 03:30:28'!
tick
	input ifNil:
		[outputLow ifNotNil: [outputLow atAllPut: 0.0].
		outputHigh ifNotNil: [outputHigh atAllPut: 0.0].
		^ self].
	outputLow ifNotNil:
		[lpf1 process: input into: outputLow.
		lpf2 process: outputLow into: outputLow].
	outputHigh ifNotNil:
		[hpf1 process: input into: outputHigh.
		hpf2 process: outputHigh into: outputHigh]! !

!Crossover methodsFor: 'ui' stamp: 'len 29/Mar/2026 03:35:40'!
panel
	^ ControlPanel new
		addKnob: (controls at: #frequency)! !

!Crossover methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:13:21'!
patchable
	^ super patchable
		addAudioInput: #setInput:;
		addAudioOutput: #setOutputLow: label: 'Low';
		addAudioOutput: #setOutputHigh: label: 'High';
		yourself! !

!Crossover methodsFor: 'wiring' stamp: 'len 29/Mar/2026 03:29:00'!
setInput: aBuffer
	input := aBuffer! !

!Crossover methodsFor: 'wiring' stamp: 'len 29/Mar/2026 03:29:18'!
setOutputHigh: aBuffer
	outputHigh := aBuffer! !

!Crossover methodsFor: 'wiring' stamp: 'len 29/Mar/2026 03:29:11'!
setOutputLow: aBuffer
	outputLow := aBuffer! !

!SVF methodsFor: 'controlling' stamp: 'len 16/Oct/2025 19:38:00'!
reset
	s1 := s2 := 0.0! !

!SVF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 01:37:23'!
initialize
	super initialize.
	self reset! !

!SVF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 01:13:01'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	self addControl: #Q min: 0.5 max: 20.0 value: 0.707! !

!SVF methodsFor: 'processing' stamp: 'len 12/Feb/2026 14:41:18'!
tick
	| r g h |
	(outputLP isNil and: [outputHP isNil and: [outputBP isNil and: [outputBPN isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP ifNotNil: [outputLP atAllPut: 0.0].
		outputHP ifNotNil: [outputHP atAllPut: 0.0].
		outputBP ifNotNil: [outputBP atAllPut: 0.0].
		outputBPN ifNotNil: [outputBPN atAllPut: 0.0].
		^ self].
	g := (Float pi * (self get: #frequency) / self class sampleRate) tan.
	r := 1.0 / (self get: #Q).
	h := 1.0 / (1.0 + ((r + g) * g)).
	1 to: input size do: [:i|
		| in hp bp lp |
		in := input at: i.
		hp := (in - (s1 * (g + r)) - s2) * h.
		bp := g * hp + s1.
		s1 := g * hp + bp.
		lp := g * bp + s2.
		s2 := g * bp + lp.
		outputLP ifNotNil: [outputLP at: i put: lp].
		outputHP ifNotNil: [outputHP at: i put: hp].
		outputBP ifNotNil: [outputBP at: i put: bp].
		outputBPN ifNotNil: [outputBPN at: i put: bp * r]].
	s1 abs < 1.0e-15 ifTrue: [s1 := 0.0].
	s2 abs < 1.0e-15 ifTrue: [s1 := 0.0]! !

!SVF methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:59:37'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutputLP: label: 'LP';
		addAudioOutput: #setOutputHP: label: 'HP';
		addAudioOutput: #setOutputBP: label: 'BP';
		addAudioOutput: #setOutputBPN: label: 'BPN'.
	^ answer! !

!SVF methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:59:30'!
screen
	^ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q)! !

!SVF methodsFor: 'wiring' stamp: 'len 30/Jan/2026 01:04:43'!
setInput: aBuffer
	input := aBuffer! !

!SVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:46:39'!
setOutputBP: aBuffer
	outputBP := aBuffer! !

!SVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:46:43'!
setOutputBPN: aBuffer
	outputBPN := aBuffer! !

!SVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:46:35'!
setOutputHP: aBuffer
	outputHP := aBuffer! !

!SVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:46:30'!
setOutputLP: aBuffer
	outputLP := aBuffer! !

!AudioIn methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:06:51'!
meterLeftValue
	meterLeftValue := meterLeftValue * 0.95.
	^ meterLeftValue! !

!AudioIn methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:06:55'!
meterRightValue
	meterRightValue := meterRightValue * 0.95.
	^ meterRightValue! !

!AudioIn methodsFor: 'accessing' stamp: 'len 21/Jan/2026 02:56:39'!
meterValue
	^ self meterLeftValue max: self meterRightValue! !

!AudioIn methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:26:39'!
initialize
	super initialize.
	meterLeftValue := meterRightValue := 0.0! !

!AudioIn methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:10:06'!
initializeControls
	super initializeControls.
	self addChoiceControl: #port options: (0 to: 9) value: 1! !

!AudioIn methodsFor: 'processing' stamp: 'len 18/Mar/2026 20:26:27'!
tick
	| bus |
	bus := buses at: (self get: #port) ifAbsent:
		[meterLeftValue := meterRightValue := 0.0.
		outputL ifNotNil: [outputL atAllPut: 0.0].
		outputR ifNotNil: [outputR atAllPut: 0.0].
		^ self].
	outputL ifNotNil:
		[meterLeftValue := meterLeftValue * 0.9 "dampen" max: (bus leftBuffer rms max: bus leftBuffer last abs).
		outputL replaceWith: bus leftBuffer].
	outputR ifNotNil:
		[meterRightValue := meterRightValue * 0.9 "dampen" max: (bus rightBuffer rms max: bus rightBuffer last abs).
		outputR replaceWith: bus rightBuffer]! !

!AudioIn methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:13:32'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ControlPanel new gap: 0;
		addMorph: (ChoiceControlMorph new color: PatchMorph waveformColor; control: (controls at: #port));
		addMorph: (RollingMeterMorph new meterBlock: [self meterValue]).
	answer body addMorph: display.
	answer
		addAudioOutput: #setOutputL: label: 'L/M';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!AudioIn methodsFor: 'wiring' stamp: 'len 5/Mar/2026 15:19:40'!
setBuses: aDictionary
	buses := aDictionary! !

!AudioIn methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:10:50'!
setOutputL: aBuffer
	outputL := aBuffer! !

!AudioIn methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:10:28'!
setOutputR: aBuffer
	outputR := aBuffer! !

!AudioOut methodsFor: 'accessing' stamp: 'len 5/Mar/2026 18:13:52'!
enabled: aBoolean
	enabled := aBoolean! !

!AudioOut methodsFor: 'accessing' stamp: 'len 5/Mar/2026 23:53:47'!
meterLeftValue
	meterLeftValue := meterLeftValue * 0.95.
	^ meterLeftValue * levelLeft! !

!AudioOut methodsFor: 'accessing' stamp: 'len 5/Mar/2026 23:53:55'!
meterRightValue
	meterRightValue := meterRightValue * 0.95.
	^ meterRightValue * levelRight! !

!AudioOut methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:09:34'!
meterValue
	^ (meterLeftValue max: meterRightValue) * level! !

!AudioOut methodsFor: 'accessing' stamp: 'len 18/Mar/2026 20:28:32'!
port
	^ self get: #port! !

!AudioOut methodsFor: 'controlling' stamp: 'len 3/Mar/2026 19:23:02'!
adjustLevelBy: aNumber
	self adjust: #level by: aNumber! !

!AudioOut methodsFor: 'controlling' stamp: 'len 3/Mar/2026 19:23:17'!
adjustPanBy: aNumber
	self adjust: #pan by: aNumber! !

!AudioOut methodsFor: 'controlling' stamp: 'len 17/Apr/2026 19:30:58'!
setLevel: aNumber
	(controls at: #level) basePosition: aNumber! !

!AudioOut methodsFor: 'controlling' stamp: 'len 18/Jan/2026 02:32:25'!
setPan: aNumber
	self set: #pan to: aNumber! !

!AudioOut methodsFor: 'controlling' stamp: 'len 2/Feb/2026 02:55:17'!
update
	| pan |
	super update.
	level := self get: #level.
	pan := self get: #pan.
	levelLeft := levelRight := level.
	pan < 0.0 ifTrue: [levelRight := levelRight * (pan * Float halfPi) cos].
	pan > 0.0 ifTrue: [levelLeft := levelLeft * (pan * Float halfPi) cos]! !

!AudioOut methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:18:14'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize.
	level := levelLeft := levelRight := 0.5.
	meterLeftValue := meterRightValue := 0.0.
	enabled := true! !

!AudioOut methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:10:31'!
initializeControls
	super initializeControls.
	self addChoiceControl: #port options: (0 to: 9) value: 0.
	self addVolumeControl: #level min: 0.001 "-60 dB" max: 4.0 value: 0.5.
	(self addControl: #pan min: -1.0 max: 1.0 value: 0.0) printer: [:x| x abs < 0.01 ifTrue: ['Center'] ifFalse: [(x abs * 100.0) rounded printString, '% ', (x < 0.0 ifTrue: ['L'] ifFalse: ['R'])]]! !

!AudioOut methodsFor: 'processing' stamp: 'len 18/Mar/2026 20:18:39'!
tick
	| bus |
	inputL ifNil: [^ self].
	enabled ifFalse: [^ self]. "this happens when the track is muted"
	bus := buses at: (self get: #port) ifAbsentPut: [Bus new].
	meterLeftValue := meterLeftValue * 0.9 "dampen" max: (inputL rms max: inputL last abs).
	inputR
		ifNil:
			[meterRightValue := meterLeftValue.
			aux replaceWith: inputL]
		ifNotNil:
			[meterRightValue := meterRightValue * 0.9 max: (inputR rms max: inputR last abs).
			aux replaceWith: inputR].
	aux *= levelRight.
	bus rightBuffer += aux.
	aux replaceWith: inputL; *= levelLeft.
	bus leftBuffer += aux! !

!AudioOut methodsFor: 'ui' stamp: 'len 12/Mar/2026 18:00:03'!
panel
	| answer |
	answer := ControlPanel new.
	answer addColumn
		gap: 0;
		addKnob: (controls at: #level);
		addHorizontalSlider: (controls at: #pan).
	^ answer! !

!AudioOut methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:13:39'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ControlPanel new gap: 0;
		addMorph: (ChoiceControlMorph new color: PatchMorph waveformColor; control: (controls at: #port));
		addMorph: (RollingMeterMorph new meterBlock: [self meterValue]).
	answer body addMorph: display; addMorph: self panel.
	answer
		addAudioInput: #setInputL: label: 'L/M';
		addAudioInput: #setInputR: label: 'R';
		addControlInput: #level;
		addControlInput: #pan.
	^ answer! !

!AudioOut methodsFor: 'wiring' stamp: 'len 5/Mar/2026 15:29:06'!
setBuses: aDictionary
	buses := aDictionary! !

!AudioOut methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:06:40'!
setInputL: aBuffer
	inputL := aBuffer! !

!AudioOut methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:06:33'!
setInputR: aBuffer
	inputR := aBuffer! !

!ControlIn methodsFor: 'accessing' stamp: 'len 18/Mar/2026 20:28:43'!
port
	^ self get: #port! !

!ControlIn methodsFor: 'accessing' stamp: 'len 18/Mar/2026 20:29:26'!
port: anInteger
	self set: #port to: anInteger! !

!ControlIn methodsFor: 'initialization' stamp: 'len 19/Mar/2026 02:35:53'!
initialize
	super initialize.
	lastValue := 0.0! !

!ControlIn methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:15:16'!
initializeControls
	super initializeControls.
	self addChoiceControl: #port options: (0 to: 9) value: 0! !

!ControlIn methodsFor: 'processing' stamp: 'len 19/Mar/2026 02:35:53'!
tick
	lastValue := values at: (self get: #port).
	lastValue = 0.0 ifFalse: [self triggerEvent: #output: with: lastValue]! !

!ControlIn methodsFor: 'ui' stamp: 'len 19/Mar/2026 02:35:53'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ControlPanel new gap: 0;
		addMorph: (ChoiceControlMorph new color: PatchMorph waveformColor3; control: (controls at: #port));
		addMorph: (RollingMeterMorph new color: PatchMorph waveformColor3; meterBlock: [lastValue]).
	answer body addMorph: display.
	answer addControlOutput: #output: label: 'Value'.
	^ answer! !

!ControlIn methodsFor: 'wiring' stamp: 'len 19/Mar/2026 02:33:26'!
setValues: anArray
	values := anArray! !

!Generator methodsFor: 'processing' stamp: 'len 24/Sep/2025 20:19:00'!
next
	^ 0.0! !

!Generator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:07:53'!
next: anInteger
	| buffer |
	buffer := Float32Array new: anInteger.
	self read: buffer.
	^ buffer! !

!Generator methodsFor: 'processing' stamp: 'len 13/Mar/2026 14:23:37'!
read: aBuffer
	1 to: aBuffer size do: [:i| aBuffer at: i put: self next]! !

!Generator methodsFor: 'processing' stamp: 'len 6/Oct/2025 19:42:00'!
sample: anInteger
	^ Sample buffer: (self next: anInteger)! !

!Generator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:14:54'!
tick
	output ifNil: [^ self].
	self read: output! !

!Generator methodsFor: 'processing' stamp: 'len 27/Oct/2025 15:10:00'!
value
	^ self next! !

!Generator methodsFor: 'ui' stamp: 'len 26/Jan/2026 11:07:48'!
bench
	| n buffer t |
	n := 1024*1024. "1 M  samples"
	buffer := Float32Array new: n.
	self reset.
	t := [self read: buffer] timeToRun.
	^ (n / t) truncated printString, ' kHz'! !

!Generator methodsFor: 'ui' stamp: 'len 2/Feb/2026 15:45:22'!
patchable
	^ super patchable addAudioOutput: #setOutput:; yourself! !

!Generator methodsFor: 'ui' stamp: 'len 3/Jan/2026 18:51:41'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	| j x s |
	j := 2 * startIndex - 1.
	n timesRepeat:
		[x := self value.
		s := (anAudioBuffer at: j) + (x * 32767.0) asInteger.
		s > 32767 ifTrue: [s := 32767].  "clipping!!"
		s < -32767 ifTrue: [s := -32767].  "clipping!!"
		anAudioBuffer at: j put: s.	
		j := j + 1.
		s := (anAudioBuffer at: j) + (x * 32767.0) asInteger.
		s > 32767 ifTrue: [s := 32767].  "clipping!!"
		s < -32767 ifTrue: [s := -32767].  "clipping!!"
		anAudioBuffer at: j put: s.
		j := j + 1].
	^ n! !

!Generator methodsFor: 'ui' stamp: 'len 26/Jan/2026 11:08:02'!
timeProfile
	| n buffer |
	n := 1024*1024*20. "20 M  samples"
	buffer := Float32Array new: n.
	self reset.
	[self read: buffer] timeProfile! !

!Generator methodsFor: 'wiring' stamp: 'len 18/Nov/2025 15:32:00'!
setOutput: aBuffer
	output := aBuffer! !

!TunedGenerator methodsFor: 'initialization' stamp: 'len 4/Jan/2026 14:53:57'!
initialize
	super initialize.
	note := 60.0! !

!TunedGenerator methodsFor: 'initialization' stamp: 'len 29/Jan/2026 18:55:02'!
initializeControls
	super initializeControls.
	self addTuneControl: #tune! !

!TunedGenerator methodsFor: 'controlling' stamp: 'len 3/Mar/2026 19:25:03'!
adjustNoteBy: aNumber
	note := note + aNumber min: 127.0 max: 0! !

!TunedGenerator methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:14:57'!
setNote: aNumber
	note := aNumber! !

!TunedGenerator methodsFor: 'ui' stamp: 'len 20/Mar/2026 15:01:33'!
panel
	^​ ControlPanel new addTextualControl: (controls at: #tune)! !

!TunedGenerator methodsFor: 'ui' stamp: 'len 2/Feb/2026 16:09:43'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioOutput: #setOutput:.
	^ answer! !

!Oscillator methodsFor: 'controlling' stamp: 'len 24/Sep/2025 02:26:00'!
reset
	phase := 0.0! !

!Oscillator methodsFor: 'controlling' stamp: 'len 16/Apr/2026 02:02:58'!
update
	| targetIncrement |
	super update.
	targetIncrement := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	increment ifNil: [increment := targetIncrement].
	incrementRatio := ((targetIncrement / increment) ln / self class blockSize) exp! !

!Oscillator methodsFor: 'initialization' stamp: 'len 8/Feb/2026 13:44:51'!
initialize
	super initialize.
	self reset! !

!Oscillator methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:03:40'!
next
	| answer |
	answer := self peek.
	(phase := phase + (increment := increment * incrementRatio)) >= 1.0 ifTrue: [phase := phase - phase truncated].
	^ answer! !

!Oscillator methodsFor: 'processing' stamp: 'len 3/Dec/2025 14:21:52'!
peek
	^ self subclassResponsibility! !

!Oscillator methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:03:48'!
read: aBuffer AM: envelopeBuffer FM: modulatorBuffer feedback: feedbackAmount
	1 to: aBuffer size do: [:i|
		| value |
		value := self peek * (envelopeBuffer at: i).
		aBuffer at: i put: value.
		phase := phase + (modulatorBuffer at: i) + (value * feedbackAmount) + (increment := increment * incrementRatio).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:03:52'!
read: aBuffer AM: envelopeBuffer PM: modulatorBuffer feedback: feedbackAmount
	| lastValue |
	lastValue := 0.0.
	1 to: aBuffer size do: [:i|
		| oldPhase |
		oldPhase := phase.
		phase := phase + (modulatorBuffer at: i) + (lastValue * feedbackAmount).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated].
		lastValue := self peek * (envelopeBuffer at: i).
		aBuffer at: i put: lastValue.
		phase := oldPhase + (increment := increment * incrementRatio).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:21'!
read: aBuffer FM: modulatorBuffer
	self read: aBuffer FM: modulatorBuffer feedback: 0.0! !

!Oscillator methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:03:59'!
read: aBuffer FM: modulatorBuffer feedback: feedbackAmount
	1 to: aBuffer size do: [:i|
		| value |
		value := self peek.
		aBuffer at: i put: value.
		phase := phase + (modulatorBuffer at: i) + (value * feedbackAmount) + (increment := increment * incrementRatio).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:33'!
read: aBuffer PM: modulatorBuffer
	self read: aBuffer PM: modulatorBuffer feedback: 0.0! !

!Oscillator methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:04:06'!
read: aBuffer PM: modulatorBuffer feedback: feedbackAmount
	| lastValue |
	lastValue := 0.0.
	1 to: aBuffer size do: [:i|
		| oldPhase |
		oldPhase := phase.
		phase := phase + (modulatorBuffer at: i) + (lastValue * feedbackAmount).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated].
		lastValue := self peek.
		aBuffer at: i put: lastValue.
		phase := oldPhase + (increment := increment * incrementRatio).
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:14:59'!
tick
	output ifNil: [^ self].
	inputFM ifNotNil: [^ self read: output PM: inputFM].
	self read: output! !

!Oscillator methodsFor: 'ui' stamp: 'len 2/Feb/2026 16:09:33'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Oscillator methodsFor: 'wiring' stamp: 'len 13/Jan/2026 13:13:04'!
setInputFM: aBuffer
	inputFM := aBuffer! !

!OPN methodsFor: 'accessing' stamp: 'len 20/Nov/2025 16:57:00'!
wave: anInteger
	wave := anInteger! !

!OPN methodsFor: 'initialization' stamp: 'len 20/Nov/2025 16:57:00'!
initialize
	super initialize.
	wave := 1! !

!OPN methodsFor: 'processing' stamp: 'len 20/Nov/2025 16:57:00'!
peek
	^ self wave: wave at: phase! !

!OPN methodsFor: 'ui' stamp: 'len 27/Feb/2026 00:49:34'!
panel
	^ super panel
		addMorph: (PluggableChoiceMorph new options: #(1 2 3 4 5 6 7 8); model: self; getter: #wave; setter: #wave:)! !

!OPN methodsFor: 'private' stamp: 'len 29/Sep/2025 19:37:00'!
wave: s at: t
	s <= 1 ifTrue: [^ (t * Float twoPi) sin].
	s <= 2 ifTrue:
		[t < 0.25 ifTrue: [^ (t - 0.25 * Float twoPi) sin + 1.0].
		t < 0.5 ifTrue: [^ (t + 0.25 * Float twoPi) sin + 1.0].
		t < 0.75 ifTrue: [^ (t - 0.25 * Float twoPi) sin - 1.0].
		^ (t + 0.25 * Float twoPi) sin - 1.0].
	s <= 3 ifTrue: [^ t < 0.5 ifTrue: [(t * Float twoPi) sin] ifFalse: [0.0]].
	s <= 4 ifTrue:
		[t < 0.25 ifTrue: [^ (t - 0.25 * Float twoPi) sin + 1.0].
		t < 0.5 ifTrue: [^ (t + 0.25 * Float twoPi) sin + 1.0].
		^ 0.0].
	t > 0.5 ifTrue: [^ 0.0].
	^ self wave: s - 4 at: t * 2.0! !

!Pulse methodsFor: 'controlling' stamp: 'len 22/Nov/2025 22:49:00'!
update
	super update.
	width := self get: #width! !

!Pulse methodsFor: 'initialization' stamp: 'len 28/Sep/2025 16:30:00'!
initialize
	super initialize.
	width := 0.5! !

!Pulse methodsFor: 'initialization' stamp: 'len 22/Jan/2026 04:16:00'!
initializeControls
	super initializeControls.
	(self addControl: #width min: 0.0 max: 1.0 value: 0.5) printer: [:x| (x * 100.0) rounded printString, '%']! !

!Pulse methodsFor: 'processing' stamp: 'len 4/Apr/2026 19:33:19'!
peek
	^ (phase pulse: increment width: width) * 0.577 "normalize amplitude to match perceived loudness with other oscillators"! !

!Pulse methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:10:05'!
read: aBuffer PWM: modulatorBuffer
	| base |
	base := width.
	1 to: aBuffer size do: [:i|
		width := (modulatorBuffer at: i) + base min: 1.0 max: 0.0.
		aBuffer at: i put: self next].
	width := base! !

!Pulse methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:08'!
tick
	output ifNil: [^ self].
	inputPWM ifNotNil: [self assert: inputFM isNil. ^ self read: output PWM: inputPWM].
	self read: output! !

!Pulse methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:59:55'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #width;
		addAudioInput: #setInputPWM: label: 'PWM';
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Pulse methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:59:49'!
screen
	^​ VariableWaveControlMorph new
		control: (controls at: #width);
		waveBlock: [:x :w| x pulseWidth: w]! !

!Pulse methodsFor: 'wiring' stamp: 'len 13/Jan/2026 13:13:53'!
setInputPWM: aBuffer
	inputPWM := aBuffer! !

!Saw methodsFor: 'controlling' stamp: 'len 17/Jan/2026 15:24:30'!
update
	super update.
	shape := self get: #shape! !

!Saw methodsFor: 'initialization' stamp: 'len 17/Jan/2026 16:28:51'!
initialize
	super initialize.
	shape := 1.0! !

!Saw methodsFor: 'initialization' stamp: 'len 17/Jan/2026 16:28:56'!
initializeControls
	super initializeControls.
	self addControl: #shape min: 0.0 max: 1.0 value: 1.0! !

!Saw methodsFor: 'processing' stamp: 'len 4/Apr/2026 19:33:19'!
peek
	shape = 1.0 ifTrue: [^ phase saw: increment].
	^ phase triangle: increment skew: shape! !

!Saw methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:08'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Saw methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:03'!
screen
	^​ VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s| x triangleSkew: s]! !

!Sine methodsFor: 'controlling' stamp: 'len 17/Jan/2026 19:25:29'!
update
	super update.
	warp := self get: #warp! !

!Sine methodsFor: 'initialization' stamp: 'len 17/Jan/2026 19:24:43'!
initialize
	super initialize.
	warp := 0.0! !

!Sine methodsFor: 'initialization' stamp: 'len 17/Jan/2026 19:25:37'!
initializeControls
	super initializeControls.
	self addControl: #warp min: 0.0 max: 1.0 value: 0.0! !

!Sine methodsFor: 'processing' stamp: 'len 17/Jan/2026 19:24:43'!
peek
	^ (((phase * Float twoPi) sin * warp + phase) * Float twoPi) sin! !

!Sine methodsFor: 'processing' stamp: 'len 16/Apr/2026 02:01:40'!
read: aBuffer
	| α f |
	warp = 0.0 ifFalse: [^ super read: aBuffer].
	"This is about 3x the speed of the original method that calls #next."
	α := phase * Float twoPi.
	f := increment * Float twoPi.
	1 to: aBuffer size do: [:i|
		aBuffer at: i put: α sin.
		α := α + (f := f * incrementRatio)].
	phase := α / Float twoPi.
	phase := phase - phase truncated.
	increment := f / Float twoPi! !

!Sine methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:21'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #warp;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Sine methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:16'!
screen
	^​ VariableWaveControlMorph new
		control: (controls at: #warp);
		waveBlock: [:x :s| (((x * Float twoPi) sin * s + x) * Float twoPi) sin]! !

!TriSawPulse methodsFor: 'controlling' stamp: 'len 16/Jan/2026 14:18:49'!
update
	super update.
	shape := self get: #shape! !

!TriSawPulse methodsFor: 'initialization' stamp: 'len 16/Jan/2026 14:18:23'!
initialize
	super initialize.
	shape := 0.0! !

!TriSawPulse methodsFor: 'initialization' stamp: 'len 16/Jan/2026 14:17:32'!
initializeControls
	super initializeControls.
	self addControl: #shape min: 0.0 max: 1.0 value: 0.0! !

!TriSawPulse methodsFor: 'processing' stamp: 'len 4/Apr/2026 19:33:19'!
peek
	"Answer a mix of two waves, depending on the shape parameter.
	Normalize the amplitude of the pulse wave to match perceived loudness with the other wave shapes."
	shape = 0.0 ifTrue: [^ phase triangle: increment].
	shape < 0.25 ifTrue: [^ (phase triangle: increment) * (0.25 - shape) + ((phase saw: increment) * shape) / 0.25].
	shape = 0.25 ifTrue: [^ phase saw: increment].
	shape < 0.5 ifTrue: [^ (phase saw: increment) * (0.5 - shape) + ((phase pulse: increment width: shape - 0.25 * 2) * 0.577 * (shape - 0.25)) / 0.25].
	^ (phase pulse: increment width: shape) * 0.577! !

!TriSawPulse methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:34'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!TriSawPulse methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:29'!
screen
	^​ VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s|
			s < 0.25
				ifTrue: [x triangle * (0.25 - s) + (x saw * s) / 0.25]
				ifFalse:
					[s < 0.5
						ifTrue: [x saw * (0.5 - s) + ((x pulseWidth: s - 0.25 * 2) * (s - 0.25)) / 0.25]
						ifFalse: [x pulseWidth: s]]]! !

!Triangle methodsFor: 'controlling' stamp: 'len 17/Jan/2026 03:39:47'!
update
	super update.
	shape := self get: #shape! !

!Triangle methodsFor: 'initialization' stamp: 'len 17/Jan/2026 03:39:47'!
initialize
	super initialize.
	shape := 0.0! !

!Triangle methodsFor: 'initialization' stamp: 'len 17/Jan/2026 03:39:20'!
initializeControls
	super initializeControls.
	self addControl: #shape min: 0.0 max: 1.0 value: 0.0! !

!Triangle methodsFor: 'processing' stamp: 'len 4/Apr/2026 19:33:19'!
peek
	^ (phase triangle: increment) * (1.0 - shape) + ((phase * Float twoPi) sin * shape)! !

!Triangle methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:45'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Triangle methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:40'!
screen
	^​ VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s| x triangle * (1.0 - s) + ((x * Float twoPi) sin * s)]! !

!Wavetable methodsFor: 'accessing' stamp: 'len 29/Mar/2026 15:29:29'!
frameCount
	^ table size // frameSize! !

!Wavetable methodsFor: 'accessing' stamp: 'len 29/Mar/2026 15:29:14'!
frameSize
	^ frameSize! !

!Wavetable methodsFor: 'accessing' stamp: 'len 4/Mar/2026 18:18:00'!
label
	^ label! !

!Wavetable methodsFor: 'accessing' stamp: 'len 4/Mar/2026 18:17:56'!
label: aString
	label := aString! !

!Wavetable methodsFor: 'accessing' stamp: 'len 29/Mar/2026 15:29:39'!
table
	^ table! !

!Wavetable methodsFor: 'controlling' stamp: 'len 2/Apr/2026 15:47:10'!
reset
	super reset.
	ticksToUpdate := 0! !

!Wavetable methodsFor: 'controlling' stamp: 'len 4/Apr/2026 19:33:19'!
update
	| maxHarmonic p i f start |
	super update.
	position := self get: #position.
	(ticksToUpdate := ticksToUpdate - 1) >= 0 ifTrue: [^ self].
	ticksToUpdate := 7. "update only once every 7 ticks, ~ 50 Hz"
	maxHarmonic := (1.0 / increment) truncated min: frameSize.
	p := position * (self frameCount - 1).
	i := p truncated.
	f := p - i.
	start := i * frameSize + 1.
	fft reset.
	fft realData replaceFrom: 1 to: maxHarmonic with: spectrumReal startingAt: start.
	fft imagData replaceFrom: 1 to: maxHarmonic with: spectrumImaginary startingAt: start.
	f = 0.0 ifFalse:
		[start := start + frameSize.
		aux atAllPut: 0.0.
		aux replaceFrom: 1 to: maxHarmonic with: spectrumReal startingAt: start.
		aux *= f.
		fft realData *= (1.0 - f); += aux.
		aux replaceFrom: 1 to: maxHarmonic with: spectrumImaginary startingAt: start.
		aux *= f.
		fft imagData *= (1.0 - f); += aux].
	fft transformInverse.
	fft realData *= 2.0 "why?!!"! !

!Wavetable methodsFor: 'copying' stamp: 'len 29/Mar/2026 15:32:22'!
copy
	^ self class new
		settings: self settings;
		table: table frameSize: frameSize;
		label: label! !

!Wavetable methodsFor: 'initialization' stamp: 'len 2/Apr/2026 18:43:13'!
computeSpectum
	spectrumReal := Float32Array new: table size.
	spectrumImaginary := Float32Array new: table size.
	0 to: table size // frameSize - 1 do: [:i|
		| start end |
		start := i * frameSize + 1.
		end := start + frameSize - 1.
		fft realData replaceFrom: 1 to: frameSize with: table startingAt: start.
		fft imagData atAllPut: 0.0.
		fft transformForward.
		spectrumReal replaceFrom: start to: end with: fft realData.
		spectrumImaginary replaceFrom: start to: end with: fft imagData]! !

!Wavetable methodsFor: 'initialization' stamp: 'len 2/Apr/2026 18:02:10'!
initializeControls
	super initializeControls.
	self addControl: #position min: 0.0 max: 1.0 value: 0.0.
"	self addControl: #brightness min: 0.0 max: 1.0 value: 0.0.
	self addControl: #parity min: -1.0 max: 1.0 value: 0.0.
	self addControl: #drive min: 0.0 max: 1.0 value: 0.0"! !

!Wavetable methodsFor: 'initialization' stamp: 'len 4/Apr/2026 19:33:19'!
table: aBuffer frameSize: anInteger
	aBuffer size \\ anInteger = 0 ifFalse: [^ self error: 'unexpected table size'].
	table := aBuffer.
	frameSize := anInteger.
	fft := FFT new: frameSize.
	aux := Float32Array new: frameSize.
	position := 0.0.
	phase := 0.0.
	increment := 1.0 / anInteger.
	self computeSpectum! !

!Wavetable methodsFor: 'processing' stamp: 'len 1/Apr/2026 21:36:11'!
peek
	^ fft realData atWrapCubic: phase * frameSize! !

!Wavetable methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:05:13'!
read: aBuffer
	| frame |
	frame := fft realData.
	1 to: aBuffer size do: [:i|
		aBuffer at: i put: (frame atWrapCubic: phase * frameSize).
		(phase := phase + (increment := increment * incrementRatio)) >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Wavetable methodsFor: 'serialization' stamp: 'len 29/Mar/2026 15:35:39'!
asJsonWithBuffers: aList
	^ (super asJsonWithBuffers: aList)
		at: #label put: (label ifNil: ['']);
		at: #table put: (aList indexOf: table ifAbsent: [aList add: table. aList size]);
		at: #frameSize put: frameSize;
		yourself! !

!Wavetable methodsFor: 'serialization' stamp: 'len 2/Apr/2026 19:25:53'!
readFromJson: json buffers: aList
	super readFromJson: json buffers: aList.
	self table: (aList at: (json at: #table)) frameSize: (json at: #frameSize).
	label := json at: #label ifAbsent: [''].
	label isEmpty ifTrue: [label := nil]! !

!Wavetable methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:02'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	label ifNotNil: [answer setTitle: label].
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #position;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Wavetable methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:00:57'!
screen
	^ WavetableControlMorph new control: (controls at: #position); table: table frameSize: frameSize! !

!Wavetable class methodsFor: 'class initialization' stamp: 'len 9/Apr/2026 19:47:33'!
initialize
	super initialize.
	self initializeLibrary! !

!Wavetable class methodsFor: 'generated' stamp: 'len 31/Mar/2026 18:02:37'!
add_saw_exp
	^ self harmonicSum: [:k :θ| (k * θ * Float twoPi) sin / k]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 31/Mar/2026 18:02:37'!
add_square_exp
	^ self harmonicSum: [:k :θ| k odd ifTrue: [(k * θ * Float twoPi) sin / k] ifFalse: [0.0]]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 31/Mar/2026 18:02:37'!
add_triangle_soft
	^ self harmonicSum: [:k :θ| k odd ifTrue: [(k * θ * Float twoPi) sin * (-1 raisedTo: k-1 / 2) / (k raisedTo: 1.7)] ifFalse: [0.0]]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 30/Mar/2026 15:50:57'!
fm_ratio: ratio
	^ self generate: [:f :θ :N|
		| index |
		index := f * 10.0.
		((θ * Float twoPi * ratio) sin * index + (θ * Float twoPi)) sin]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 30/Mar/2026 15:40:36'!
pulse_pw_full
	^ self generate: [:f :θ :N|
		| phase duty |
		phase := θ * Float twoPi.
		duty := (0.5 to: 0.02 at: f) * Float pi.
		(1 to: N // 2) sum: [:k| (k * phase) sin * (k * duty) sin * 2.0 / k]]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 31/Mar/2026 18:02:37'!
sine_to_saw
	^ self harmonicSum: [:k :θ| (k * θ * Float twoPi) sin * (-1 raisedTo: k+1) / k]! !

!Wavetable class methodsFor: 'generated' stamp: 'len 30/Mar/2026 15:43:40'!
spectral_tilt
	"Bright saw -> dark saw."
	^ self generate: [:f :θ :N|
		| phase rolloff |
		phase := θ * Float twoPi.
		rolloff := f * 4.0.
		(1 to: N // 2) sum: [:k| (k * phase) sin * (-1 raisedTo: k+1) * (1.0 / k raisedTo: 1.0 + rolloff)]]! !

!Wavetable class methodsFor: 'instance creation' stamp: 'len 29/Mar/2026 21:53:43'!
generate: aBlock
	^ self generate: aBlock frameSize: 1024 frameCount: 128! !

!Wavetable class methodsFor: 'instance creation' stamp: 'len 1/Apr/2026 03:47:42'!
generate: aBlock frameSize: N frameCount: L
	"Generate a wavetable from the given block.
	The block has three arguments:
		- the frame position witht he wavetable 0.0 ≤ f ≤ 1.0;
		- the phase within the frame 0.0 ≤ θ < 1.0;
		- the number of samples per frame N."
	| table frame k |
	table := Float32Array new: N * L.
	frame := Float32Array new: N.
	k := 1.
	1 to: L do: [:i|
		1 to: N do: [:j| frame at: j put: (aBlock value: i - 1.0 / (L - 1) value: (j - 1.0) / (N - 1.0) value: N)].
		frame -= frame mean. "remove DC offset"
		frame *= (1.0 / frame peak). "normalize peak to 1.0"
		table replaceFrom: k to: k + N - 1 with: frame.
		k := k + N].
	^ self new table: table frameSize: N! !

!Wavetable class methodsFor: 'instance creation' stamp: 'len 31/Mar/2026 18:02:37'!
harmonicSum: aBlock
	^ self generate: [:f :θ :N|
		| kmax tail |
		kmax := 1 to: N // 2 atExp: f.
		tail := kmax - (kmax := kmax truncated).
		((1 to: kmax) sum: [:k| aBlock value: k value: θ]) + ((aBlock value: kmax+1 value: θ) * tail)]! !

!Wavetable class methodsFor: 'library' stamp: 'len 27/Mar/2026 22:11:44'!
fileReaderServicesForFileEntry: filename suffix: suffix
	suffix = 'wav' ifTrue: [^ {self serviceLoadWavetable}].
	^ #()! !

!Wavetable class methodsFor: 'library' stamp: 'len 29/Mar/2026 15:49:24'!
fromFileEntry: fileEntry frameSize: frameSize
	| reader table |
	reader := WAVFileReader new readFromFileEntry: fileEntry.
	table := reader channels = 2 ifTrue: [reader leftSamples + reader rightSamples] ifFalse: [reader leftSamples].
	^ self new table: table frameSize: frameSize! !

!Wavetable class methodsFor: 'library' stamp: 'len 9/Apr/2026 19:47:54'!
initializeLibrary
	"
	Wavetable loadLibrary
	"
	Library := OrderedDictionary new.
	'Generating wavetables...' print.
"	(self class organization listAtCategoryNamed: 'generated') do: [:each|"
	#(add_saw_exp add_square_exp add_triangle_soft sine_to_saw spectral_tilt "pulse_pw_full") do: [:each|
		| label |
		label := each asPlainString.
		('    ∙ ', label) print.
		Library at: label put: ((self perform: each) label: label)].
	Library at: 'FM 1:1' put: ((self fm_ratio: 1) label: 'FM 1:1').
	Library at: 'FM 1:2' put: ((self fm_ratio: 2) label: 'FM 1:2').
	Library at: 'FM 1:3' put: ((self fm_ratio: 3) label: 'FM 1:3').
"	self load: self wavetablesDirectory // 'Saxophone.wav'.
	self load: self wavetablesDirectory // 'Rhodes.wav'"! !

!Wavetable class methodsFor: 'library' stamp: 'len 4/Mar/2026 18:49:49'!
library
	^ Library! !

!Wavetable class methodsFor: 'library' stamp: 'len 29/Mar/2026 15:50:43'!
load: fileEntry
	^ self load: fileEntry label: (fileEntry name allButLast: 4) frameSize: 2048! !

!Wavetable class methodsFor: 'library' stamp: 'len 29/Mar/2026 15:50:43'!
load: fileEntry label: aString frameSize: waveSize
	^ (Library at: aString put: (self fromFileEntry: fileEntry frameSize: waveSize)) label: aString! !

!Wavetable class methodsFor: 'library' stamp: 'len 27/Mar/2026 22:22:18'!
loadMW1Wavetables
	| bank |
	self flag: #deprecated.
	bank := ((Sample samplesDirectory / 'wavetables' / 'mw1_wavetables') files asSortedCollection: [:a :b| a name <= b name]) asArray allButFirst "skip the first one with just 3 waves" collect: [:each|
		| label allTables table |
		label := (each name findTokens: '-.') second.
		allTables := (WAVFileReader new readFromFileEntry: each) leftSamples.
		table := (1 to: allTables size / 128) collect: [:i| allTables copyFrom: i-1*128+1 to: i*128].
		label -> table].
	Library at: #MW1 put: (self new label: 'MW1'; bank: bank)! !

!Wavetable class methodsFor: 'library' stamp: 'len 27/Mar/2026 22:22:24'!
loadPPGWavetables
	| bytes bank |
	self flag: #deprecated.
	"32 wavetables, with 64 waves each, and 256 signed bytes per wave:"
	bytes := (Sample samplesDirectory / 'wavetables' // 'ppg.bin') binaryContents.
	bank := (0 to: 31) collect: [:i|
		| table |
		table := Float32Array new: 256 * 64.
		1 to: table size do: [:j| table at: j put: (bytes at: i * 256 * 64 + j) - 128 / 128.0].
		table := (1 to: table size / 256) collect: [:k| table copyFrom: k-1*256+1 to: k*256].
		i printString -> table].
	Library at: #PPG put: (self new label: 'PPG'; bank: bank)! !

!Wavetable class methodsFor: 'library' stamp: 'len 27/Mar/2026 22:11:23'!
serviceLoadWavetable
	^ (SimpleServiceEntry
		provider: self
		label: 'load wavetable to library'
		selector: #load:
		description:'load the wavetable to the wavetables library'
		buttonLabel: 'load wavetable') argumentGetter: [:fileList| fileList selectedFileEntry]! !

!Supersaw methodsFor: 'controlling' stamp: 'len 1/Dec/2025 15:32:00'!
reset
	super reset.
	phases atAllPut: 0.0! !

!Supersaw methodsFor: 'controlling' stamp: 'len 4/Apr/2026 22:36:00'!
update
	| targetIncrement detune detune2 detune3 mix normalization |
	super update.
	targetIncrement := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	increment ifNil: [increment := targetIncrement].
	incrementRatio := ((targetIncrement / increment) ln / self class blockSize) exp.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	increments
		at: 1 put: (increment - detune) abs;
		at: 2 put: (increment - detune2) abs;
		at: 3 put: (increment - detune3) abs;
		at: 4 put: increment;
		at: 5 put: increment + detune3;
		at: 6 put: increment + detune2;
		at: 7 put: increment + detune.
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'controlling' stamp: 'len 4/Apr/2026 19:34:35'!
update2
	| detune detune2 detune3 |
	super update.
	increment := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := (self get: #detune) / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	increments
		at: 1 put: (increment - detune) abs;
		at: 2 put: (increment - detune2) abs;
		at: 3 put: (increment - detune3) abs;
		at: 4 put: increment;
		at: 5 put: increment + detune3;
		at: 6 put: increment + detune2;
		at: 7 put: increment + detune! !

!Supersaw methodsFor: 'controlling' stamp: 'len 4/Apr/2026 19:34:35'!
update3
	| detune mix normalization |
	super update.
	increment := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	increments
		at: 1 put: (increment - (0.11002313*detune)) abs;
		at: 2 put: (increment - (0.06288439*detune)) abs;
		at: 3 put: (increment - (0.01952356*detune)) abs;
		at: 4 put: increment;
		at: 5 put: increment + (0.01991221*detune);
		at: 6 put: increment + (0.06216538*detune);
		at: 7 put: increment + (0.10745242*detune).
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'controlling' stamp: 'len 4/Apr/2026 19:34:35'!
update4
	| detune detune2 detune3 mix normalization |
	super update.
	increment := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	increments
		at: 1 put: (increment - detune) abs;
		at: 2 put: (increment - detune2) abs;
		at: 3 put: (increment - detune3) abs;
		at: 4 put: increment;
		at: 5 put: increment + detune3;
		at: 6 put: increment + detune2;
		at: 7 put: increment + detune.
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'initialization' stamp: 'len 4/Apr/2026 19:34:35'!
initialize
	super initialize.
	phases := Float32Array new: 7.
	increment := 0.01.
	increments := (Float32Array new: 7) atAllPut: increment.
	centerGain := sideGain := 1.0 / 7.0! !

!Supersaw methodsFor: 'initialization' stamp: 'len 29/Jan/2026 18:57:13'!
initializeControls
	super initializeControls.
	self addControl: #detune min: 0.0 max: 1.0 value: 0.001! !

!Supersaw methodsFor: 'processing' stamp: 'len 4/Apr/2026 21:06:00'!
next
	| answer |
	answer := self peek.
	incrementRatio = 1.0 ifFalse:
		[increment := increment * incrementRatio.
		increments *= incrementRatio].
	phases += increments.
	1 to: 7 do: [:i| | t | (t := phases at: i) >= 1.0 ifTrue: [phases at: i put: t - t truncated]].
	^ answer! !

!Supersaw methodsFor: 'processing' stamp: 'len 4/Apr/2026 19:34:35'!
peek
	| answer |
	answer := 0.0.
	1 to: 7 do: [:i| answer := ((phases at: i) saw: (increments at: i)) * (i = 4 ifTrue: [centerGain] ifFalse: [sideGain]) + answer].
	^ answer! !

!Supersaw methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:16'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #detune;
		addAudioOutput: #setOutput:.
	^ answer! !

!Supersaw methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:09'!
screen
	^ (SupersawControlMorph control: (controls at: #detune)) phases: phases! !

!Supersaw class methodsFor: 'as yet unclassified' stamp: 'len 5/Jan/2026 15:58:53'!
initialize
	DetuneCurveLUT := Float32Array new: 1024.
	1 to: 1024 do: [:i|
		| x |
		x := i - 1.0 / 1023.
		DetuneCurveLUT at: i put:
			((((((((((10028.7312891634 * x
			- 50818.8652045924) * x
			+ 111363.4808729368) * x
			- 138150.6761080548) * x
			+ 106649.6679158292) * x
			- 53046.9642751875) * x
			+ 17019.9518580080) * x
			- 3425.0836591318) * x
			+ 404.2703938388) * x
			- 24.1878824391) * x
			+ 0.6717417634) * x
			+ 0.0030115596]! !

!TonewheelOrgan methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	released := true! !

!TonewheelOrgan methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:19:59'!
gateOn
	click := self get: #click.
	released := false! !

!TonewheelOrgan methodsFor: 'controlling' stamp: 'len 14/Feb/2026 16:03:45'!
reset
	super reset.
	phases atAllPut: 0.0! !

!TonewheelOrgan methodsFor: 'controlling' stamp: 'len 14/Feb/2026 22:28:00'!
update
	| f0 |
	super update.
	f0 := ((self get: #tune) + note) semitonesToHertz.
	#(0.5 1.5 1.0 2.0 3.0 4.0 5.0 6.0 8.0) withIndexDo: [:each :i| frequencies at: i put: (self foldback: f0 * each) / self class sampleRate].
	#('16''' '5¹/₃''' '8''' '4''' '2²/₃''' '2''' '1³/₅''' '1¹/₃''' '1''') withIndexDo: [:each :i| amplitudes at: i put: (self get: each)]! !

!TonewheelOrgan methodsFor: 'initialization' stamp: 'len 14/Feb/2026 16:27:26'!
initialize
	super initialize.
	phases := Float32Array new: 9.
	frequencies := Float32Array new: 9.
	amplitudes := Float32Array new: 9.
	released := true.
	random := Random new! !

!TonewheelOrgan methodsFor: 'initialization' stamp: 'len 14/Feb/2026 23:49:46'!
initializeControls
	super initializeControls.
	self addVolumeControl: #'16''' value: 0.001.
	self addVolumeControl: #'5¹/₃''' value: 0.001.
	self addVolumeControl: #'8''' value: 0.001.
	self addVolumeControl: #'4''' value: 0.001.
	self addVolumeControl: #'2²/₃''' value: 0.001.
	self addVolumeControl: #'2''' value: 0.001.
	self addVolumeControl: #'1³/₅''' value: 0.001.
	self addVolumeControl: #'1¹/₃''' value: 0.001.
	self addVolumeControl: #'1''' value: 0.001.
	self addVolumeControl: #click min: 0.001 max: 1.0 value: 0.6! !

!TonewheelOrgan methodsFor: 'processing' stamp: 'len 14/Feb/2026 16:06:17'!
next
	| answer |
	answer := self peek.
	phases += frequencies.
	1 to: 9 do: [:i| | t | (t := phases at: i) >= 1.0 ifTrue: [phases at: i put: t - t truncated]].
	^ answer! !

!TonewheelOrgan methodsFor: 'processing' stamp: 'len 14/Feb/2026 19:12:04'!
peek
	| answer |
	released ifTrue: [^ 0.0].
	answer := 0.0.
	1 to: 9 do: [:i| answer := ((phases at: i) * Float twoPi) sin * (amplitudes at: i) + answer].
	click > 0.01 ifTrue: [answer := (random next * 2.0 - 1.0) * click + answer. click := click * 0.8]. 
	^ answer! !

!TonewheelOrgan methodsFor: 'ui' stamp: 'len 14/Feb/2026 22:30:45'!
patchable
	| answer drawbars |
	answer := PatchableMorph new model: self.
	drawbars := ControlPanel new.
	#('16''' '5¹/₃''' '8''' '4''' '2²/₃''' '2''' '1³/₅''' '1¹/₃''' '1''') do: [:each| drawbars addVerticalSlider: (controls at: each) label: each asPlainString].
	answer body
		addMorph: drawbars;
		addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioOutput: #setOutput:.
	^ answer! !

!TonewheelOrgan methodsFor: 'private' stamp: 'len 14/Feb/2026 16:31:33'!
foldback: aFrequency
	"If a frequency is below 32 Hz or above 6 kHz, map it the closest pitch class within range."
	| answer |
	answer := aFrequency.
	[answer > 6000.0] whileTrue: [answer := answer * 0.5].
	[answer < 32.0] whileTrue: [answer := answer * 2.0].
	^ answer! !

!TransistorOrgan methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	released := true! !

!TransistorOrgan methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:46'!
gateOn
	released := false! !

!TransistorOrgan methodsFor: 'controlling' stamp: 'len 14/Feb/2026 17:15:36'!
reset
	super reset.
	phases atAllPut: 0.0.
	filter reset! !

!TransistorOrgan methodsFor: 'controlling' stamp: 'len 9/Mar/2026 16:40:16'!
update
	| f0 r4 |
	super update.
	f0 := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	#(0.5 1.0 2.0 3.0 4.0 5.0 8.0) withIndexDo: [:each :i| frequencies at: i put: f0 * each].
	r4 := self get: #'IV'. "maps to 2²/₃' , 2', 1³/₅' and 1'"
	amplitudes
		at: 1 put: (self get: #'16''');
		at: 2 put: (self get: #'8''');
		at: 3 put: (self get: #'4''');
		at: 4 put: r4;
		at: 5 put: r4;
		at: 6 put: r4;
		at: 7 put: r4.
	filter undenormalize! !

!TransistorOrgan methodsFor: 'initialization' stamp: 'len 19/Mar/2026 16:58:35'!
initialize
	super initialize.
	phases := Float32Array new: 7.
	frequencies := Float32Array new: 7.
	amplitudes := Float32Array new: 7.
	released := true.
	filter := OnePole new frequency: 6000.0 / self class sampleRate "6 kHz"! !

!TransistorOrgan methodsFor: 'initialization' stamp: 'len 14/Feb/2026 23:50:05'!
initializeControls
	super initializeControls.
	self addVolumeControl: #'16''' value: 0.001.
	self addVolumeControl: #'8''' value: 0.001.
	self addVolumeControl: #'4''' value: 0.001.
	self addVolumeControl: #'IV' value: 0.001! !

!TransistorOrgan methodsFor: 'processing' stamp: 'len 14/Feb/2026 17:15:23'!
next
	| answer |
	answer := filter value: self peek.
	phases += frequencies.
	1 to: 5 do: [:i| | t | (t := phases at: i) >= 1.0 ifTrue: [phases at: i put: t - t truncated]].
	^ answer! !

!TransistorOrgan methodsFor: 'processing' stamp: 'len 14/Feb/2026 17:16:09'!
peek
	| answer |
	released ifTrue: [^ 0.0].
	answer := 0.0.
	1 to: 5 do: [:i| answer := ((phases at: i) pulse: (frequencies at: i) width: 0.35) * (amplitudes at: i) + answer].
	^ answer! !

!TransistorOrgan methodsFor: 'ui' stamp: 'len 14/Feb/2026 22:32:00'!
patchable
	| answer drawbars |
	answer := PatchableMorph new model: self.
	drawbars := ControlPanel new.
	#('16''' '8''' '4''' 'IV') do: [:each| drawbars addVerticalSlider: (controls at: each) label: each asPlainString].
	answer body
		addMorph: drawbars;
		addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioOutput: #setOutput:.
	^ answer! !

!VOSIM methodsFor: 'controlling' stamp: 'len 22/Mar/2026 15:52:56'!
update
	| f1 f2 vowelIndex |
	super update.
	carrierFrequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	carrierShape := self get: #shape.
	vowelIndex := ((self get: #vowel) * 15.0 + 1.0).
	f1 := #[240.0 235.0 390.0 370.0 610.0 585.0 850.0 820.0 750.0 700.0 600.0 500.0 460.0 360.0 300.0 250.0] atLinear: vowelIndex.
	f2 := #[2400.0 2100.0 2300.0 1900.0 1900.0 1710.0 1610.0 1530.0 940.0 760.0 1170.0 700.0 1310.0 640.0 1390.0 595.0] atLinear: vowelIndex.
"	vowelIndex := (self get: #vowel) * 3.0 + 1.0.
	f1 := #[270.0 730.0 570.0 300.0] atLinear: vowelIndex.
	f2 := #[2300.0 1090.0 840.0 870.0] atLinear: vowelIndex."
	formant1Frequency := f1 / self class sampleRate.
	formant2Frequency := f2 / self class sampleRate! !

!VOSIM methodsFor: 'initialization' stamp: 'len 4/Jan/2026 14:58:33'!
initialize
	super initialize.
	carrierPhase := formant1Phase := formant2Phase := 0.0! !

!VOSIM methodsFor: 'initialization' stamp: 'len 29/Jan/2026 18:57:05'!
initializeControls
	super initializeControls.
	self addControl: #shape min: 0.0 max: 1.0 value: 0.0.
	self addControl: #vowel min: 0.0 max: 1.0 value: 0.0! !

!VOSIM methodsFor: 'processing' stamp: 'len 9/Dec/2025 15:36:02'!
next
	| answer |
	answer := self peek.
	carrierPhase := carrierPhase + carrierFrequency.
	carrierPhase >= 1.0
		ifTrue:
			[| resetTime |
			carrierPhase := carrierPhase - 1.0.
			resetTime := carrierPhase / carrierFrequency.
			formant1Phase := resetTime * formant1Frequency.
			formant2Phase := resetTime * formant2Frequency]
		ifFalse:
			[formant1Phase := formant1Phase + formant1Frequency.
			formant1Phase >= 1.0 ifTrue: [formant1Phase := formant1Phase - 1.0].
			formant2Phase := formant2Phase + formant2Frequency.
			formant2Phase >= 1.0 ifTrue: [formant2Phase := formant2Phase - 1.0]].
	^ answer! !

!VOSIM methodsFor: 'processing' stamp: 'len 9/Dec/2025 15:37:29'!
peek
	| carrier formant1 formant2 resetAmplitude resetPhase |
	carrier := ((carrierPhase * 0.5 + 0.25) * Float twoPi) sin + 1.0.
	resetPhase := 0.75 - (0.25 * carrierShape).
	resetAmplitude := (resetPhase * Float twoPi) sin.
	formant1 := ((formant1Phase + resetPhase) * Float twoPi) sin - resetAmplitude.
	formant2 := ((formant2Phase + resetPhase) * Float twoPi) sin - resetAmplitude.
	^ carrier * (formant1 + formant2) * 0.25 + resetAmplitude! !

!VOSIM methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:48:37'!
panel
	^​ super panel
		addKnob: (controls at: #shape) label: 'Shape';
		addKnob: (controls at: #vowel) label: 'Vowel'! !

!Multisample methodsFor: 'accessing' stamp: 'len 15/Feb/2026 20:26:14'!
label
	^ label! !

!Multisample methodsFor: 'accessing' stamp: 'len 15/Feb/2026 20:26:08'!
label: aString
	label := aString! !

!Multisample methodsFor: 'controlling' stamp: 'len 7/Mar/2026 18:51:22'!
adjustVelocityBy: aNumber
	velocity := velocity + aNumber min: 1.0 max: 0.0! !

!Multisample methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	sample ifNotNil: [sample gateOff]! !

!Multisample methodsFor: 'controlling' stamp: 'len 9/Apr/2026 23:08:25'!
gateOn
	| closestKey speedFactor samplesByVelocity |
	sample ifNotNil: [(sample isUnreleased and: [self get: #legato]) ifTrue: [^ self]].
	closestKey := keymap keys detectMin: [:x| (x - note) abs].
	samplesByVelocity := keymap at: closestKey.
	(tailSample := sample) ifNotNil: [tailSample gateOn "to setup the tail position"].
	sample := (samplesByVelocity at: ((velocity sqrt * (samplesByVelocity size - 1)) truncated + 1 min: samplesByVelocity size)) copy.
	sample controls at: #tune put: (controls at: #tune).
	sample controls at: #speed put: (controls at: #speed).
	sample controls at: #warp put: (controls at: #warp).
	speedFactor := 60 semitonesToHertz / closestKey semitonesToHertz.
	sample rate: sample rate * speedFactor.
	sample setNote: note.
	offset ifNotNil: [sample setOffset: offset].
	sample gateOn! !

!Multisample methodsFor: 'controlling' stamp: 'len 15/Feb/2026 20:41:02'!
reset
	sample := nil! !

!Multisample methodsFor: 'controlling' stamp: 'len 28/Mar/2026 21:42:07'!
setOffset: aNumber
	offset := aNumber.
	sample ifNotNil: [sample setOffset: offset]! !

!Multisample methodsFor: 'controlling' stamp: 'len 28/Mar/2026 20:34:21'!
setSpeed: aNumber
	self set: #speed to: aNumber! !

!Multisample methodsFor: 'controlling' stamp: 'len 2/Dec/2025 14:33:00'!
setVelocity: aNumber
	velocity := aNumber! !

!Multisample methodsFor: 'controlling' stamp: 'len 13/Apr/2026 17:13:09'!
update
	super update.
	sample ifNotNil: [sample setNote: note; update].
	tailSample ifNotNil: [tailSample update]! !

!Multisample methodsFor: 'copying' stamp: 'len 15/Feb/2026 21:02:02'!
copy
	^ super copy keymap: keymap; label: label! !

!Multisample methodsFor: 'initialization' stamp: 'len 15/Jan/2026 19:14:25'!
initialize
	super initialize.
	velocity := 0.5! !

!Multisample methodsFor: 'initialization' stamp: 'len 28/Mar/2026 20:31:00'!
initializeControls
	super initializeControls.
	"same as Sample:"
	(self addControl: #speed min: -4.0 max: 4.0 value: 1.0) printer: [:x| '×', (x printStringFractionDigits: 2)].
	self addToggleControl: #warp value: false.
	self addToggleControl: #legato value: false! !

!Multisample methodsFor: 'initialization' stamp: 'len 15/Feb/2026 20:24:57'!
keymap: aDictionary
	keymap := aDictionary! !

!Multisample methodsFor: 'processing' stamp: 'len 16/Mar/2026 15:33:47'!
read: aBuffer
	sample ifNil: [aBuffer atAllPut: 0.0] ifNotNil: [sample read: aBuffer].
	tailSample ifNotNil: [tailSample mixTailInto: aBuffer. tailSample := nil]! !

!Multisample methodsFor: 'serialization' stamp: 'len 16/Feb/2026 16:35:47'!
asJsonWithBuffers: aList
	| keymapJson |
	keymapJson := Dictionary new.
	keymap keysAndValuesDo: [:key :value| keymapJson at: key put: (value collect: [:each| each asJsonWithBuffers: aList])].
	^ (super asJsonWithBuffers: aList)
		at: #keymap put: keymapJson;
		at: #label put: (label ifNil: ['']);
		yourself! !

!Multisample methodsFor: 'serialization' stamp: 'len 22/Mar/2026 00:32:27'!
memoryUsage
"
	Multisample library keysAndValuesDo: [:k :v| (k, ': ', v memoryUsage) print]
"
	^ (((keymap sum: [:each| each sum: [:s| s buffer size]]) * 4.0 / 1024 / 1024) printStringFractionDigits: 1), ' MBs'! !

!Multisample methodsFor: 'serialization' stamp: 'len 17/Feb/2026 17:49:41'!
readFromJson: json buffers: aList
	super readFromJson: json buffers: aList.
	keymap := Dictionary new.
	(json at: #keymap) keysAndValuesDo: [:key :value| keymap at: key asNumber put: (value collect: [:each| Sample new readFromJson: each buffers: aList])].
	label := json at: #label.
	label isEmpty ifTrue: [label := nil]! !

!Multisample methodsFor: 'ui' stamp: 'len 6/Apr/2026 19:12:43'!
panel
	^ super panel
		addTextualControl: (controls at: #speed);
"		addToggle: (controls at: #warp) label: 'Warp';"
		addToggle: (controls at: #legato) label: 'Legato'! !

!Multisample methodsFor: 'ui' stamp: 'len 15/Feb/2026 20:42:04'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	label ifNotNil: [answer setTitle: label].
	answer body addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioOutput: #setOutput:.
	^ answer! !

!Multisample class methodsFor: 'class initialization' stamp: 'len 9/Apr/2026 19:46:11'!
initialize
	super initialize.
	self initializeLibrary! !

!Multisample class methodsFor: 'library' stamp: 'len 17/Apr/2026 00:59:21'!
initializeLibrary
	"
	Multisample initializeLibrary
	"
	
	Library := OrderedDictionary new.
	'Loading multisamples...' print.
	#(loadJRhodes3D loadLoFiRhodes loadDancePiano loadVibraphone loadBookerT loadBookerTFast "loadFarfisa" loadTrumpet loadFlute loadSquireBass loadPickedBass loadSlapBass loadPopBass loadFingerBass loadDoubleBass loadSixStringSteelGuitar loadTwoToneHouseOrgan loadStringEnsemble loadChoirAah loadChoirOuh loadTrombone) do: [:each|
		| multisample |
		multisample := self perform: each.
		('    ∙ ', multisample label) print.
		Library at: multisample label put: multisample]! !

!Multisample class methodsFor: 'library' stamp: 'len 3/Dec/2025 02:12:00'!
library
	^ Library! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadBookerT
	| keymap |
	keymap := Dictionary new.
	#('B' 'F') with: #(59 65) do: [:noteName :centerKey|
		1 to: 7 do: [:octave|
			| filename reader buffer midiKey |
			filename := 'BookerT (slow) - booker_slow_', noteName, octave printString.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'BookerT' // (filename, 'L.wav').
			buffer := reader leftSamples.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'BookerT' // (filename, 'R.wav').
			buffer += reader leftSamples.
			midiKey := (octave - 4) * 12 + centerKey.
			keymap at: midiKey put:
				{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}]].
	^ self new label: 'Booker T'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadBookerTFast
	| keymap |
	keymap := Dictionary new.
	#('B' 'F') with: #(59 65) do: [:noteName :centerKey|
		1 to: 7 do: [:octave|
			| filename reader buffer midiKey |
			filename := 'BookerT (fast) - booker_fast_', noteName, octave printString.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'BookerT' // (filename, 'L.wav').
			buffer := reader leftSamples.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'BookerT' // (filename, 'R.wav').
			buffer += reader leftSamples.
			midiKey := (octave - 4) * 12 + centerKey.
			keymap at: midiKey put:
				{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}]].
	^ self new label: 'Booker T (Fast)'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadChoirAah
	| keymap |
	keymap := Dictionary new.
	#('G3' 'A3' 'B3' 'C4' 'D4' 'E4' 'F4' 'G4' 'A4' 'B4' 'C5' 'D5' 'E5') do: [:noteName|
		| filename reader buffer |
		"Read only the left channel because the right channel doesnt match (different size and loop points):"
		filename := 'Choir Aah - ', noteName, '(L).wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Choir Aah Ouh' // filename.
		buffer := reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Choir Aah'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadChoirOuh
	| keymap oldAttack newAttack |
	keymap := Dictionary new.
	oldAttack := 10000.
	newAttack := 100.
	#('A3' 'B3' 'C4' 'D4' 'F4' 'G4' 'A4' 'B4' 'C5' 'D5' 'E5') do: [:noteName|
		| filename reader buffer loopStart loopEnd |
		"Read only the left channel because the right channel doesnt match (different size and loop points):"
		filename := 'Choir Ouh - ', noteName, '(L).wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Choir Aah Ouh' // filename.
		"Remove attack, otherwise it's too long:"
		buffer := reader leftSamples allButFirst: oldAttack.
		"Smooth out:"
		1 to: newAttack do: [:i| buffer at: i put: (buffer at: i) * i asFloat / newAttack].
		loopStart := reader loopStart - oldAttack.
		loopEnd := reader loopEnd - oldAttack.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: loopStart loopEnd: loopEnd}].
	^ self new label: 'Choir Ouh'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadDancePiano
	"Salamander Dance Piano."
	| keymap |
	keymap := Dictionary new.
	#('F#2' 'A2' 'D#3' 'G#3' 'C4' 'E4' 'A4') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := 'Sal House - Sal House ', noteName.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Sal House' // (filename, 'L.wav').
		buffer := reader leftSamples.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Sal House' // (filename, 'R.wav').
		buffer += reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Dance Piano'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadDoubleBass
	| keymap |
	keymap := Dictionary new.
	(0 to: 37) do: [:i|
		| reader |
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Bass' // ('Acoustic Bass - Double Bass ', (i printStringBase: 10 length: 3 padded: true), '.wav').
		keymap at: i+30 put: {Sample buffer: reader leftSamples rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Double Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:13:20'!
loadFarfisa
	"Farfisa with full drawbars."
	"TODO: loop points"
	| keymap |
	keymap := Dictionary new.
	(self multisamplesDirectory / 'Farfisa Full') files do: [:each|
		(each name endsWith: 'wav') ifTrue:
			[| midiKey reader buffer |
			midiKey := ((each name findTokens: '-') at: 3) asNumber.
			reader := WAVFileReader new readFromFileEntry: each.
			buffer := reader leftSamples + reader rightSamples.
			keymap at: midiKey put: {Sample buffer: buffer rate: reader sampleRate}]].
	^ self new label: 'Farfisa'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadFingerBass
	"Carvin BB70 finger bass."
	| keymap |
	keymap := Dictionary new.
	#(28 31 33 36 38 41 43 46) with: #('E4' 'G4' 'A3' 'C3' 'D2' 'F2' 'G1' 'Bb1') do: [:midiKey :suffix|
		| reader |
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Bass' // ('Finger Bass - CVFngBass', suffix, '.wav').
		keymap at: midiKey put: {Sample buffer: reader leftSamples rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Finger Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadFlute
	"Iowa Flute with vibrato."
	| keymap |
	keymap := Dictionary new.
	#('C3' 'C4' 'C5' 'C6' 'E4' 'G3' 'G4' 'G5') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := 'Flute - Flute_vib_loud_', noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'MCO' // filename.
		buffer := reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Flute'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:13:33'!
loadJRhodes3D
	"From https://github.com/jlearman/jRhodes3d-wav.git"
	| samples keymap |
	samples := Dictionary new.
	(self multisamplesDirectory / 'jrhodes3d') files do: [:each|
		| reader tokens midiKey velocityLayer buffer |
		tokens := each name findTokens: '_'.
		midiKey := tokens second asNumber.
		velocityLayer := (tokens last findTokens: '.') first asNumber.
		reader := WAVFileReader new readFromFileEntry: each.
		"If stereo, sum channels:"
		buffer := reader channels = 2 ifTrue: [reader leftSamples + reader rightSamples] ifFalse: [reader leftSamples].
		(samples at: midiKey ifAbsentPut: [Dictionary new]) at: velocityLayer put: (Sample buffer: buffer rate: reader sampleRate) removeDCOffset].
	keymap := samples collect: [:each| each associations sorted reversed collect: #value].
	^ self new label: 'Rhodes'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 17/Apr/2026 00:50:53'!
loadLoFiRhodes
	| keymap |
	keymap := Dictionary new.
	((self multisamplesDirectory / 'LoFi Rhodes') files select: [:each| each name endsWith: '.wav']) do: [:each|
		| reader midiKey buffer |
		midiKey := (each name findTokens: '.') first asNumber - 12.
		reader := WAVFileReader new readFromFileEntry: each.
		"If stereo, sum channels:"
		buffer := reader channels = 2 ifTrue: [reader leftSamples + reader rightSamples] ifFalse: [reader leftSamples].
		"Remove DC offset:"
		buffer -= (buffer sum / buffer size).
		keymap at: midiKey put: {Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'LoFi Rhodes'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadPickedBass
	| keymap |
	keymap := Dictionary new.
	#(28 31 34 37 40 43 46 49 52 55 58 61) do: [:midiKey|
		| reader |
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Bass' // ('Picked Bass - Ibpickin_', midiKey printString, '.wav').
		keymap at: midiKey put: {Sample buffer: reader leftSamples rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Picked Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadPopBass
	| keymap |
	keymap := Dictionary new.
	"why slap bass uses 35 instead of 34?"
	#(28 30 32 34 36 39 41 43 48) with: #('E0' 'E2' 'E4' 'A1' 'A3' 'D1' 'D3' 'G0' 'G5') do: [:midiKey :suffix|
		| reader |
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Bass' // ('Pop Bass - Pop ', suffix, '.wav').
		keymap at: midiKey put: {Sample buffer: reader leftSamples rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Pop Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:13:41'!
loadSixStringSteelGuitar
	| keymap |
	keymap := Dictionary new.
	#('E1' 'A1' 'D2' 'G2' 'B2' 'E3' 'A3' 'D4' 'G4') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := '6-Stg-Steel-Gtr-', noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / '6-String Steel Guitar' // filename.
		buffer := reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate}].
	^ self new label: '6-String Steel Guitar'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadSlapBass
	| keymap |
	keymap := Dictionary new.
	"why pop bass uses 34 instead of 35?"
	#(28 30 32 35 36 39 41 43 48) with: #('E0' 'E2' 'E4' 'A1' 'A3' 'D1' 'D3' 'G0' 'G5') do: [:midiKey :suffix|
		| reader |
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Bass' // ('Slap Bass - Slap Bass ', suffix, '.wav').
		keymap at: midiKey put: {Sample buffer: reader leftSamples rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Slap Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadSquireBass
	"Fender Squire Bass."
	| keymap |
	keymap := Dictionary new.
	#('e' 'a' 'd' 'e2' 'g' 'a2' 'd2' 'g2') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := 'squirebass - ', noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Fender Squire Bass' // filename.
		buffer := reader leftSamples.
		keymap at: (#('E1' 'A1' 'D2' 'E2' 'G2' 'A2' 'D3' 'G3') at: i) nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Squire Bass'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 12/Apr/2026 22:13:21'!
loadStringEnsemble
	| keymap |
	keymap := Dictionary new.
	#('G2' 'C#3' 'E3' 'B3' 'C#4' 'G4' 'C#5' 'A#5' 'F#5' 'D6' 'E6' 'B6' 'E7' 'A7') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := 'String ensemble - String ', noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'String Ensemble' // filename.
		buffer := reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'String Ensemble'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 17/Apr/2026 00:59:09'!
loadTrombone
	| keymap |
	keymap := Dictionary new.
	#(60 64 68 72 74 78 80 82 84) withIndexDo: [:midiKey :i|
		| filename reader buffer |
		filename := 'Trombone - TBR TB 0', midiKey printString, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'MCO' // filename.
		buffer := reader leftSamples.
		keymap at: midiKey put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Trombone'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:14:24'!
loadTrumpet
	"Jazz Trumpet."
	| keymap |
	keymap := Dictionary new.
	#('C4' 'D#4' 'F#4' 'A4' 'C#5' 'E5' 'G5' 'A5' 'C#6' 'F6' 'G6' 'A#6') do: [:noteName|
		| filename reader buffer |
		filename := 'Jazz Trumpet ', noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Jazz Trumpet' // filename.
		buffer := reader leftSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate loopStart: reader loopStart loopEnd: reader loopEnd}].
	^ self new label: 'Trumpet'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:13:48'!
loadTwoToneHouseOrgan
	| keymap |
	keymap := Dictionary new.
	#('C1' 'A#1' 'F1' 'D#2' 'G#2' 'C#3') withIndexDo: [:noteName :i|
		| filename reader buffer |
		filename := noteName, '.wav'.
		reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Two Tone House Organ' // filename.
		buffer := reader leftSamples + reader rightSamples.
		keymap at: noteName nameToSemitones put:
			{Sample buffer: buffer rate: reader sampleRate}].
	^ self new label: 'Two-Tone House Organ'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 23:13:56'!
loadVibraphone
	| keymap |
	keymap := Dictionary new.
	#(55 59 66 70 74 77 80 83 87) with: #(1 2 4 5 6 7 8 9 10) do: [:midiKey :i|
		| filename reader buffer |
		filename := 'Vibraphone - Vibraphone ', i printString.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Vibraphone' // (filename, 'l.wav').
			buffer := reader leftSamples.
			reader := WAVFileReader new readFromFileEntry: self multisamplesDirectory / 'Vibraphone' // (filename, 'r.wav').
			buffer += reader leftSamples.
			keymap at: midiKey put: {Sample buffer: buffer rate: reader sampleRate}].
	^ self new label: 'Vibraphone'; keymap: keymap! !

!Multisample class methodsFor: 'library' stamp: 'len 9/Apr/2026 15:03:49'!
multisamplesDirectory
	^ self package packageDirectory / 'data' / 'multisamples'! !

!Sample methodsFor: 'accessing' stamp: 'len 2/Oct/2025 23:07:00'!
buffer
	^ buffer! !

!Sample methodsFor: 'accessing' stamp: 'len 13/Feb/2026 00:17:23'!
label
	^ label! !

!Sample methodsFor: 'accessing' stamp: 'len 13/Feb/2026 00:17:19'!
label: aString
	label := aString! !

!Sample methodsFor: 'accessing' stamp: 'len 6/Oct/2025 19:45:00'!
loopEnd
	^ loopEnd! !

!Sample methodsFor: 'accessing' stamp: 'len 8/Oct/2025 23:34:00'!
loopEnd: aNumber
	loopEnd := aNumber! !

!Sample methodsFor: 'accessing' stamp: 'len 6/Oct/2025 19:46:00'!
loopLength
	^ loopLength! !

!Sample methodsFor: 'accessing' stamp: 'len 8/Oct/2025 23:34:00'!
loopLength: aNumber
	loopLength := aNumber! !

!Sample methodsFor: 'accessing' stamp: 'len 29/Mar/2026 03:41:10'!
loopStart
	^ loopEnd - loopLength + 1.0! !

!Sample methodsFor: 'accessing' stamp: 'len 16/Feb/2026 20:21:13'!
loopStart: anInteger loopEnd: anotherInteger.
	loopEnd := anotherInteger.
	loopLength := anotherInteger - anInteger + 1! !

!Sample methodsFor: 'accessing' stamp: 'len 13/Oct/2025 16:25:00'!
position
	^ position! !

!Sample methodsFor: 'accessing' stamp: 'len 9/Apr/2026 23:08:44'!
rate
	^ rate! !

!Sample methodsFor: 'accessing' stamp: 'len 9/Apr/2026 23:07:12'!
rate: aNumber
	rate := aNumber! !

!Sample methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	released := true! !

!Sample methodsFor: 'controlling' stamp: 'len 15/Apr/2026 21:50:24'!
gateOn
	(self isUnreleased and: [self get: #legato]) ifTrue: [increment := nil. ^ self].
	tailPosition := position.
	position := (buffer size - 1) * offset + 1.0.
	(self get: #speed) < 0.0 ifTrue: [position := buffer size - position + 1].
	released := false! !

!Sample methodsFor: 'controlling' stamp: 'len 25/Mar/2026 19:46:09'!
isUnreleased
	^ position notNil and: [released not]! !

!Sample methodsFor: 'controlling' stamp: 'len 25/Mar/2026 19:41:38'!
reset
	position := tailPosition := nil.
	released := false! !

!Sample methodsFor: 'controlling' stamp: 'len 24/Feb/2026 20:46:57'!
setOffset: aNumber
	offset := aNumber! !

!Sample methodsFor: 'controlling' stamp: 'len 23/Jan/2026 14:28:16'!
setSpeed: aNumber
	self set: #speed to: aNumber! !

!Sample methodsFor: 'controlling' stamp: 'len 15/Apr/2026 21:52:10'!
update
	| targetIncrement |
	super update.
	speed := self get: #speed.
	targetIncrement := rate * ((self get: #tune) + note - 60.0) semitonesToRatio / self class sampleRate.
	warp := self get: #warp.
	warp ifFalse: [targetIncrement := targetIncrement * speed abs].
	increment ifNil: [increment := targetIncrement].
	incrementRatio := ((targetIncrement / increment) ln / self class blockSize) exp! !

!Sample methodsFor: 'copying' stamp: 'len 9/Apr/2026 23:09:22'!
copy
	^ (self class buffer: buffer rate: rate)
		settings: self settings;
		loopEnd: loopEnd;
		loopLength: loopLength;
		label: label! !

!Sample methodsFor: 'initialization' stamp: 'len 25/Mar/2026 19:19:01'!
initializeControls
	super initializeControls.
	(self addControl: #speed min: -4.0 max: 4.0 value: 1.0) printer: [:x| '×', (x printStringFractionDigits: 2)].
	self addToggleControl: #warp value: false.
	self addToggleControl: #legato value: false! !

!Sample methodsFor: 'processing' stamp: 'len 28/Mar/2026 20:38:00'!
mixTailInto: aBuffer
	| damping gain end |
	tailPosition ifNil: [^ self].
	end := buffer size asFloat.
	(tailPosition >= 1.0 and: [tailPosition < end]) ifFalse: [tailPosition := nil. ^ self].
	damping := 0.95. "-60 decibelsToLinear raisedTo: 1/128"
	gain := 1.0.
	speed > 0.0
		ifTrue: "forward:"
			[1 to: aBuffer size do: [:i|
				aBuffer at: i put: (aBuffer at: i) + ((buffer atLinear: tailPosition) * gain).
				gain := gain * damping.
				(tailPosition := tailPosition + increment) < end ifFalse:
					[tailPosition := nil.
					^ self]]]
		ifFalse: "backwards:"
			[1 to: aBuffer size do: [:i|
				aBuffer at: i put: (aBuffer at: i) + ((buffer atLinear: tailPosition) * gain).
				gain := gain * damping.
				(tailPosition := tailPosition - increment) >= 1.0 ifFalse:
					[tailPosition := nil.
					^ self]]].
	tailPosition := nil! !

!Sample methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:09:11'!
read: aBuffer
	| end |
	position ifNil: [aBuffer atAllPut: 0.0. ^ self].
	(warp and: [speed abs ~= 1.0]) ifTrue: [^ self readWarp: aBuffer].
	end := buffer size asFloat.
	(position >= 1.0 and: [position <= end]) ifFalse:
		[aBuffer atAllPut: 0.0.
		^ self].
	speed > 0.0
		ifTrue: "forward:"
			[1 to: aBuffer size do: [:i|
				aBuffer at: i put: (buffer atLinear: position).
				((position := position + (increment := increment * incrementRatio)) >= loopEnd and: [released not]) ifTrue:
					[position := position - loopLength + 1.0].
				position < end ifFalse:
					[released := true.
					aBuffer from: i + 1 to: aBuffer size put: 0.0.
					^ self]]]
		ifFalse: "backwards:"
			[| loopStart |
			loopStart := loopEnd - loopLength + 1.0.
			1 to: aBuffer size do: [:i|
				aBuffer at: i put: (buffer atLinear: position).
				((position := position - (increment := increment * incrementRatio)) <= loopStart and: [released not]) ifTrue:
					[position := position + loopLength - 1.0].
				position >= 1.0 ifFalse:
					[released := true.
					aBuffer from: i + 1 to: aBuffer size put: 0.0.
					^ self]]].
	self mixTailInto: aBuffer! !

!Sample methodsFor: 'processing' stamp: 'len 28/Mar/2026 20:14:13'!
readWarp: aBuffer
	self notYetImplemented! !

!Sample methodsFor: 'serialization' stamp: 'len 9/Apr/2026 23:06:31'!
asJsonWithBuffers: aList
	^ (super asJsonWithBuffers: aList)
		at: #buffer put: (aList indexOf: buffer ifAbsent: [aList add: buffer. aList size]);
		at: #rate put: rate;
		at: #loopLength put: loopLength;
		at: #loopEnd put: loopEnd;
		at: #label put: (label ifNil: ['']);
		yourself! !

!Sample methodsFor: 'serialization' stamp: 'len 9/Apr/2026 23:18:44'!
readFromJson: json buffers: aList
	super readFromJson: json buffers: aList.
	self flag: #deprecated. "remove baseRate"
	self buffer: (aList at: (json at: #buffer)) rate: (json at: #rate ifAbsent: [json at: #baseRate]).
	loopLength := json at: #loopLength.
	loopEnd := json at: #loopEnd.
	label := json at: #label ifAbsent: [''].
	label isEmpty ifTrue: [label := nil]! !

!Sample methodsFor: 'ui' stamp: 'len 6/Apr/2026 19:12:48'!
panel
	^ super panel
		addTextualControl: (controls at: #speed);
"		addToggle: (controls at: #warp) label: 'Warp';"
		addToggle: (controls at: #legato) label: 'Legato'! !

!Sample methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:30'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	label ifNotNil: [answer setTitle: label].
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #speed;
		addAudioOutput: #setOutput:.
	^ answer! !

!Sample methodsFor: 'ui' stamp: 'len 2/Oct/2025 20:06:00'!
plot
	^ PlotMorph new domain: (1 to: buffer size); plot: [:t| buffer at: t]! !

!Sample methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:23'!
screen
	^ SampleWaveformMorph new sample: self! !

!Sample methodsFor: 'ui' stamp: 'len 31/Oct/2025 14:40:00'!
waveform
	"Answer a form of bit depth 1 with a graphical representation of the waveform."
	| h answer canvas x y |
	h := 128.
	answer := Form extent: buffer size @ h.
	canvas := BitBltCanvas onForm: answer.
	1 to: buffer size do: [:i|
		x := i-1.
		y := (1.0 - (buffer at: i) / 2.0) * h.
		canvas line: x @ y to: x @ (h // 2) width: 1 color: Color black].
	^ answer! !

!Sample methodsFor: 'private' stamp: 'len 9/Apr/2026 23:09:22'!
buffer: aFloatArray rate: aNumber
	buffer := aFloatArray.
	rate := aNumber.
	offset := 0.0.
	loopEnd := buffer size.
	loopLength := 0.
	increment := 1.0.
	incrementRatio := 1.0.
	self reset! !

!Sample methodsFor: 'private' stamp: 'len 17/Feb/2026 19:03:05'!
normalizeAmplitude
	buffer /= (buffer max abs max: buffer min abs)! !

!Sample methodsFor: 'private' stamp: 'len 4/Apr/2026 19:37:35'!
removeDCOffset
	buffer -= buffer mean! !

!Sample methodsFor: 'private' stamp: 'len 10/Feb/2026 17:54:56'!
trimSilence
	"Trim anything below -50 dB:"
	| i |
	(i := buffer findFirst: [:x| x abs > 0.00316]) > 0 ifTrue: [buffer := buffer copyFrom: i to: buffer size].
	(i := buffer findLast: [:x| x abs > 0.00316]) > 0 ifTrue: [buffer := buffer copyFrom: 1 to: i]! !

!Sample class methodsFor: 'class initialization' stamp: 'len 9/Apr/2026 19:45:01'!
initialize
	super initialize.
	self initializeLibrary! !

!Sample class methodsFor: 'instance creation' stamp: 'len 9/Apr/2026 23:09:22'!
buffer: aFloatArray
	^ self buffer: aFloatArray rate: self sampleRate! !

!Sample class methodsFor: 'instance creation' stamp: 'len 9/Apr/2026 23:09:22'!
buffer: aFloatArray rate: aNumber
	^ self new buffer: aFloatArray rate: aNumber! !

!Sample class methodsFor: 'instance creation' stamp: 'len 9/Apr/2026 23:14:24'!
buffer: aFloatArray rate: aNumber loopStart: loopStart loopEnd: loopEnd
	^ (self buffer: aFloatArray rate: aNumber) loopStart: loopStart loopEnd: loopEnd! !

!Sample class methodsFor: 'instance creation' stamp: 'len 9/Apr/2026 23:09:22'!
fromFileEntry: fileEntry
	| reader samples answer |
	reader := WAVFileReader new readFromFileEntry: fileEntry.
	"If stereo, sum channels:"
	samples := reader channels = 2 ifTrue: [reader leftSamples + reader rightSamples] ifFalse: [reader leftSamples].
	answer := self buffer: samples rate: reader sampleRate.
	reader loopStart ifNotNil: [answer loopStart: reader loopStart loopEnd: reader loopEnd].
	answer removeDCOffset.
	^ answer! !

!Sample class methodsFor: 'library' stamp: 'len 19/Feb/2026 17:25:27'!
fileReaderServicesForFileEntry: filename suffix: suffix
	suffix = 'wav' ifTrue: [^ {self serviceLoadSample}].
	^ #()! !

!Sample class methodsFor: 'library' stamp: 'len 9/Apr/2026 19:45:40'!
initializeLibrary
	"
	Sample initializeLibrary
	"
	
	Library := OrderedDictionary new.
"	(self load: self samplesDirectory / 'Breaks' / 'Classic 2' // 'winstons-amenbrother-137.2bpm.wav') normalizeAmplitude.
	(self load: self samplesDirectory / 'Pad' // 'pad2.wav') normalizeAmplitude; trimSilence.
	(self load: self samplesDirectory / 'Pad' // 'pad3.wav') normalizeAmplitude; trimSilence.
	(self load: self samplesDirectory / 'Pad' // 'pad4.wav') normalizeAmplitude; trimSilence.
	(self load: self samplesDirectory / 'Pad' // 'pad5.wav') normalizeAmplitude; trimSilence"! !

!Sample class methodsFor: 'library' stamp: 'len 3/Dec/2025 02:10:00'!
library
	^ Library! !

!Sample class methodsFor: 'library' stamp: 'len 19/Feb/2026 17:23:37'!
load: fileEntry
	^ self load: fileEntry label: (fileEntry name allButLast: 4)! !

!Sample class methodsFor: 'library' stamp: 'len 19/Feb/2026 17:21:23'!
load: fileEntry label: aString
	^ (Library at: aString put: (self fromFileEntry: fileEntry)) label: aString! !

!Sample class methodsFor: 'library' stamp: 'len 9/Apr/2026 15:00:48'!
samplesDirectory
	^ self package packageDirectory / 'data' / 'samples'! !

!Sample class methodsFor: 'library' stamp: 'len 19/Feb/2026 17:23:45'!
serviceLoadSample
	^ (SimpleServiceEntry
		provider: self
		label: 'load sample to library'
		selector: #load:
		description:'load the sample to the samples library'
		buttonLabel: 'load sample') argumentGetter: [:fileList| fileList selectedFileEntry]! !

!ColoredNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 17:53:42'!
reset
	x1 := y1 := s1 := s2 := s3 := 0.0! !

!ColoredNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 03:41:08'!
update
	super update.
	color := self get: #color! !

!ColoredNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 03:53:03'!
initialize
	super initialize.
	state := ((Random withDefaultDo: [:aRandom| aRandom nextBits: 32]) \\ 2147483646 + 1) asFloat.
	self reset! !

!ColoredNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 03:52:57'!
initializeControls
	super initializeControls.
	self addControl: #color min: -1.0 max: 1.0 value: 0.0! !

!ColoredNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 14:43:01'!
next
	color = 0.0 ifTrue: [^ self nextWhite].
	"0.0 to 1.0:"
	color > 0.0 ifTrue: [^ self nextWhite * (1.0 - color) + (self nextBlue * color)].
	"-1.0 to -0.5:"
	color < -0.5 ifTrue: [^ (self nextPink * (color + 1.0) + (self nextBrown * (-0.5 - color))) * 2.0].
	"-0.5 to 0.0:"
	^ (self nextWhite * (color + 0.5) - (self nextPink * color)) * 2.0! !

!ColoredNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 03:46:53'!
nextBlue
	| x0 |
	x0 := self nextWhite.
	y1 := x0 - x1.
	x1 := x0.
	^ y1! !

!ColoredNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 03:45:18'!
nextBrown
	x1 := self nextWhite.
	^ y1 := (y1 * 0.99 + x1)! !

!ColoredNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 14:44:20'!
nextPink
	"Approximate pink noise (1/f) as one-pole filtered white noise. The idea is to cascade a few very gentle lowpasses to approximate -3 dB/oct."
	| x |
	x := self nextWhite.
	"Paul Kellet coefficients:"
	s1 := 0.99765*s1 + (0.0990460*x).
	s2 := 0.96300*s2 + (0.2965164*x).
	s3 := 0.57000*s3 + (1.0526913*x).
	^ s1 + s2 + s3! !

!ColoredNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 03:41:08'!
nextWhite
	state := (state * 16807.0 \\ 2147483647.0) truncated asFloat.
	^​ state / 1073741823.5  - 1.0! !

!ColoredNoise methodsFor: 'ui' stamp: 'len 5/Apr/2026 16:59:29'!
patchable
	^ super patchable addControlInput: #color; yourself! !

!SparseNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 15:50:59'!
reset
	state := 0.0! !

!SparseNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 15:49:34'!
update
	super update.
	p := (self get: #density) / self class sampleRate.
	d := 1.0 - (10.0 raisedTo: (self get: #decay) * -4.0).
	jitter := self get: #jitter! !

!SparseNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:51:06'!
initialize
	super initialize.
	random := Random new.
	self reset! !

!SparseNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:50:36'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #density min: 0.1 max: 20000.0 value: 30.0.
	self addControl: #decay min: 0.0 max: 1.0 value: 0.9.
	self addControl: #jitter min: 0.0 max: 1.0 value: 0.6! !

!SparseNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 15:49:34'!
next
	random next < p  ifTrue: [state := (random next * 2.0 - 1.0) * jitter + state].
	^ state := state * d! !

!VelvetNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 18:51:43'!
reset
	counter := (random next * 1000.0) truncated! !

!VelvetNoise methodsFor: 'controlling' stamp: 'len 1/Feb/2026 19:13:10'!
update
	super update.
	period := self class sampleRate / (self get: #sparsity).
	jitterRange := ((self get: #jitter) * period) truncated.
	bias := self get: #bias.
	energy := self get: #energy! !

!VelvetNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 17:56:45'!
initialize
	super initialize.
	random := Random new.
	self reset! !

!VelvetNoise methodsFor: 'initialization' stamp: 'len 1/Feb/2026 19:15:35'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #sparsity min: 10.0 "Hz" max: 20000.0 "Hz" value: 1000.0 "Hz".
	self addControl: #jitter min: 0.0 max: 1.0 value: 0.0.
	self addControl: #bias min: -1.0 max: 1.0 value: 0.0.
	self addLogControl: #energy min: 0.05 max: 4.0 value: 0.5! !

!VelvetNoise methodsFor: 'processing' stamp: 'len 1/Feb/2026 19:13:07'!
next
	| currentImpulse |
	currentImpulse := 0.0.
	(counter := counter - 1) <= 0 ifTrue:
		[currentImpulse := ((random next * 2.0 - 1.0) + bias) sign * energy.
		counter := period.
		jitterRange > 0 ifTrue: [counter := counter + (jitterRange * (random next * 2.0 - 1.0)) truncated]].
	^ currentImpulse! !

!SineSweep methodsFor: 'controlling' stamp: 'len 3/Feb/2026 17:22:48'!
reset
	phase := 0.0.
	frequency := startFrequency! !

!SineSweep methodsFor: 'controlling' stamp: 'len 4/Feb/2026 03:42:13'!
update
	super update.
	startFrequency := (self get: #start) / self class sampleRate.
	endFrequency := (self get: #end) / self class sampleRate.
	(frequency isNil or: [frequency > endFrequency]) ifTrue: [self reset]! !

!SineSweep methodsFor: 'initialization' stamp: 'len 2/Feb/2026 19:33:21'!
initialize
	super initialize.
	self reset! !

!SineSweep methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:21:47'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #start value: 20.0.
	self addFrequencyControl: #end value: 20000.0! !

!SineSweep methodsFor: 'processing' stamp: 'len 2/Feb/2026 19:34:34'!
next
	| answer |
	answer := (phase * Float twoPi) sin.
	(phase := phase + frequency) >= 1.0 ifTrue: [phase := phase - phase truncated].
	frequency := frequency * 1.00001.
	^ answer! !

!Transform methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:17'!
tick
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [1 to: output size do: [:i| output at: i put: (self value: 0.0)]. ^ self].
	1 to: input size do: [:i| output at: i put: (self value: (input at: i))]! !

!Transform methodsFor: 'processing' stamp: 'len 20/Nov/2025 00:38:00'!
value: in
	^ in! !

!Transform methodsFor: 'ui' stamp: 'len 2/Feb/2026 15:42:15'!
patchable
	^ super patchable
		addAudioInput: #setInput:;
		addAudioOutput: #setOutput:;
		yourself! !

!Transform methodsFor: 'wiring' stamp: 'len 18/Nov/2025 17:25:00'!
setInput: aBuffer
	input := aBuffer! !

!Transform methodsFor: 'wiring' stamp: 'len 18/Nov/2025 17:26:00'!
setOutput: aBuffer
	output := aBuffer! !

!Limiter methodsFor: 'controlling' stamp: 'len 10/Feb/2026 14:38:00'!
update
	super update.
	ceiling := self get: #ceiling.
	release := (-1.0 / ((self get: #release) * self class sampleRate)) exp! !

!Limiter methodsFor: 'initialization' stamp: 'len 10/Feb/2026 14:42:12'!
initialize
	super initialize.
	peak := 0.5.
	gain := 1.0! !

!Limiter methodsFor: 'initialization' stamp: 'len 10/Feb/2026 14:54:00'!
initializeControls
	super initializeControls.
	self addVolumeControl: #ceiling min: 0.5 "-12 dB" max: 1.0 value: 0.985.
	self addTimeControl: #release min: 0.005 "5 ms" max: 0.2 "200 ms" value: 0.05 "50 ms"! !

!Limiter methodsFor: 'processing' stamp: 'len 10/Feb/2026 14:51:58'!
value: in
	| error |
	"peak detector:"
	error := in abs - peak.
	peak := (error > 0.0 ifTrue: [0.05] ifFalse: [release]) * error + peak.
	"gain computer and smoothing:"
	gain := ((peak <= ceiling ifTrue: [1.0] ifFalse: [1.0 / peak]) - gain) * 0.01 + gain.
	^ in * gain! !

!Allpass methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:14:27'!
reset
	delayLine reset.
	tap reset! !

!Allpass methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:14:39'!
update
	super update.
	tap setDelayIncrement: (self get: #time) * self class sampleRate - tap delay / (self class sampleRate * 0.1). "slide over 100 ms to avoid phaser effect"
	gain := self get: #gain! !

!Allpass methodsFor: 'initialization' stamp: 'len 25/Mar/2026 16:09:07'!
initialize
	super initialize.
	delayLine := DelayLine new: (0.03 * self class sampleRate) ceiling.
	tap := DelayTapC on: delayLine.
	gain := 0.0! !

!Allpass methodsFor: 'initialization' stamp: 'len 14/Jan/2026 15:34:24'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.001 "1 ms" max: 0.03 "30 ms" value: 0.01 "10 ms".
	self addControl: #gain min: 0.0 max: 0.9 value: 0.0! !

!Allpass methodsFor: 'processing' stamp: 'len 26/Jan/2026 17:14:16'!
value: in
	| y v |
	y := tap read.
	v := y * gain + in.
	delayLine write: v.
	^ y - (v * gain)! !

!Comb methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:15:47'!
reset
	delayLine reset.
	tap reset.
	x0 := 0.0! !

!Comb methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:15:54'!
update
	super update.
	tap setDelayIncrement: (self get: #time) * self class sampleRate - tap delay / (self class sampleRate * 0.1). "slide over 100 ms to avoid flanger effect"
	feedback := self get: #feedback.
	damping := self get: #damping! !

!Comb methodsFor: 'initialization' stamp: 'len 25/Mar/2026 16:09:11'!
initialize
	super initialize.
	delayLine := DelayLine new: (0.5 * self class sampleRate) ceiling.
	tap := DelayTapT2 on: delayLine.
	feedback := 0.0.
	damping := 0.0.
	x0 := 0.0! !

!Comb methodsFor: 'initialization' stamp: 'len 14/Jan/2026 15:37:45'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.0001 "0.1 ms" max: 0.5 "500 ms" value: 0.05 "50 ms".
	self addControl: #feedback min: 0.0 max: 0.999 value: 0.75.
	self addControl: #damping min: 0.0 max: 0.5 value: 0.2! !

!Comb methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:54:04'!
tick
	super tick.
	x0 abs < 1.0e-15 ifTrue: [x0 := 0.0]! !

!Comb methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:27:44'!
value: in
	| out |
	out := tap read.
	x0 := out * damping + (x0 * (1.0 - damping)).
	delayLine write: in + (x0 * feedback).
	^ out! !

!Comb methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:48:54'!
panel
	^ ControlPanel new
		addKnob: (controls at: #time) label: 'Time';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #damping) label: 'Damp'! !

!Echo methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:17:04'!
reset
	delayLine reset.
	tap reset! !

!Echo methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:17:11'!
update
	super update.
	tap setDelayIncrement: (self get: #time) * self class sampleRate - tap delay / (self class sampleRate * 0.03) "slide over 30 ms"! !

!Echo methodsFor: 'initialization' stamp: 'len 25/Mar/2026 15:58:18'!
initialize
	super initialize.
	delayLine := DelayLine new: self class sampleRate ceiling.
	tap := DelayTapC on: delayLine! !

!Echo methodsFor: 'initialization' stamp: 'len 14/Jan/2026 15:44:28'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.001 "1 ms" max: 1.0 "1 s" value: 0.5 "500 ms"! !

!Echo methodsFor: 'processing' stamp: 'len 26/Jan/2026 17:17:29'!
value: in
	delayLine write: in.
	^ tap read! !

!Echo methodsFor: 'ui' stamp: 'len 2/Feb/2026 15:33:21'!
patchable
	^ super patchable
		addControlInput: #time;
		yourself! !

!Flanger methodsFor: 'controlling' stamp: 'len 27/Mar/2026 14:49:08'!
reset
	phase := 0.0.
	delayLine reset.
	tap reset.
	lpf reset! !

!Flanger methodsFor: 'controlling' stamp: 'len 27/Mar/2026 20:55:37'!
update
	| increment depth time delay twoPi |
	super update.
	twoPi := Float twoPi.
	time := self get: #time.
	depth := (self get: #depth) * time * 0.666.
	delay := (phase sin * depth + time) * self class sampleRate.
	tap setDelayIncrement: (delay - tap delay) / self class blockSize.
	increment := (self get: #speed) / self class controlRate * twoPi.
	(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
	lpf frequency: (self get: #tone)! !

!Flanger methodsFor: 'initialization' stamp: 'len 27/Mar/2026 20:59:20'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.015 "15 ms max") ceiling.
	tap := DelayTapT2 on: delayLine.
	lpf := OnePole new.
	self reset! !

!Flanger methodsFor: 'initialization' stamp: 'len 27/Mar/2026 20:41:35'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.0001 "0.1 ms" max: 0.01 "10 ms" value: 0.002 "2 ms".
	self addFrequencyControl: #speed min: 0.05 "Hz" max: 2.0 "Hz" value: 0.1 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addControl: #feedback min: -0.8 max: 0.8 value: 0.5.
	self addFrequencyControl: #tone min: 3000.0 "3 kHz" max: 18000.0 "18 kHz" value: 6000.0. "6 kHz"
	self addDryWetControl: #mix value: 0.5! !

!Flanger methodsFor: 'processing' stamp: 'len 27/Mar/2026 16:40:16'!
tick
	| feedback wet dry |
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	feedback := self get: #feedback.
	wet := self get: #mix.
	dry := 1.0 - wet.
	1 to: input size do: [:i|
		| in out |
		in := input at: i.
		out := tap read.
		delayLine write: (lpf value: out) * feedback + in.
		output at: i put: in * dry + (out * wet)]! !

!Flanger methodsFor: 'ui' stamp: 'len 27/Mar/2026 21:01:51'!
panel
	^ ControlPanel new
		addKnob: (controls at: #time) label: 'Time';
		addKnob: (controls at: #speed) label: 'Speed';
		addKnob: (controls at: #depth) label: 'Depth';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #tone) label: 'Tone';
		addKnob: (controls at: #mix) label: 'Mix'! !

!Phaser methodsFor: 'controlling' stamp: 'len 26/Jan/2026 13:42:09'!
reset
	lastOutput := 0.0.
	phase := 0.0.
	x1 atAllPut: 0.0.
	y1 atAllPut: 0.0! !

!Phaser methodsFor: 'initialization' stamp: 'len 26/Jan/2026 13:41:55'!
initialize
	super initialize.
	x1 := Float32Array new: 4.
	y1 := Float32Array new: 4.
	self reset! !

!Phaser methodsFor: 'initialization' stamp: 'len 24/Feb/2026 23:53:15'!
initializeControls
	super initializeControls.
	self addSpeedControl: #speed value: 0.5.
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addControl: #feedback min: -0.7 max: 0.7 value: 0.5.
	self addDryWetControl: #mix value: 0.5! !

!Phaser methodsFor: 'processing' stamp: 'len 27/Mar/2026 16:42:13'!
tick
	| increment depth feedback wet dry twoPi |
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [output atAllPut: 0.0. ^ self].
	increment := (self get: #speed) / self class sampleRate * Float twoPi.
	depth := self get: #depth.
	feedback := self get: #feedback.
	wet := self get: #mix.
	dry := 1.0 - wet.
	twoPi := Float twoPi.
	1 to: input size do: [:i|
		| a in out |
		a := ​(phase sin + 1.0) * depth * 0.3 + 0.3. "0.3 - 0.9"
		(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
		in := input at: i.
		out := lastOutput * feedback + in.
		1 to: x1 size do: [:k|
			| y |
			y := (y1 at: k) * a + (x1 at: k) - (out * a).
			x1 at: k put: out.
			y1 at: k put: (out := y)].
		lastOutput := out.
		output at: i put: in * dry + (out * wet)]! !

!Phaser methodsFor: 'ui' stamp: 'len 2/Mar/2026 16:15:14'!
panel
	^ ControlPanel new
		addKnob: (controls at: #speed) label: 'Speed';
		addKnob: (controls at: #depth) label: 'Depth';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #mix) label: 'Mix'! !

!PitchShifter methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:18:20'!
initialize
	| maxLength |
	super initialize.
	maxLength := (self class sampleRate * 0.160) ceiling.
	delayLine1 := DelayLine new: maxLength.
	delayLine2 := DelayLine new: maxLength.! !

!PitchShifter methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:19:26'!
initializeControls
	super initializeControls.
	(self addControl: #shift min: -48.0 max: 48.0 value: 0.0) printer: #semitonesOffsetPrintString.
	self addTimeControl: #time min: 0.010 "10 ms" max: 0.160 "160 ms" value: 0.04 "40 ms".
	self addTimeControl: #window min: 0.005 "5 ms" max: 0.080 "80 ms" value: 0.02 "20 ms"! !

!PitchShifter methodsFor: 'controlling' stamp: 'len 27/Jan/2026 02:04:52'!
update
"	window := self get: #window."
	| delayIncrement delayTime length |
	super update.
	length := ((self get: #time) * self class sampleRate) rounded.
	delayTime := length / 2.0.
	delayIncrement := (self get: #shift) semitonesToRatio.
	delayLine1 setLength: length; setDelay: delayTime; setDelayIncrement: delayIncrement.
	delayLine1 setLength: length; setDelay: length - delayTime; setDelayIncrement: delayIncrement! !

!Reverb methodsFor: 'controlling' stamp: 'len 27/Mar/2026 16:36:59'!
reset
	predelayLine reset.
	predelayTap reset.
	combs do: [:each| each reset].
	allpasses do: [:each| each reset]! !

!Reverb methodsFor: 'controlling' stamp: 'len 9/Mar/2026 16:48:24'!
update
	| feedback damp |
	super update.
	predelayTap setDelayIncrement: ((self get: #predelay) * self class sampleRate - predelayTap delay) / self class blockSize.
	feedback := self get: #feedback.
	damp := self get: #damp.
	combs do: [:each| each undenormalize; feedback: feedback; damp: damp].
	mix := self get: #mix! !

!Reverb methodsFor: 'initialization' stamp: 'len 25/Mar/2026 15:55:27'!
initialize
	super initialize.
	predelayLine := DelayLine new: (self class sampleRate * 0.15) ceiling. "150 ms"
	predelayTap := DelayTapL on: predelayLine.
	combs := #(1116 1188 1277 1356 1422 1491 1557 1617) collect: [:each| LowpassComb new: (each * self class sampleRate / 44100.0) truncated].
	allpasses := #(556 441 341 225) collect: [:each| AllpassComb new: (each * self class sampleRate / 44100.0) truncated]! !

!Reverb methodsFor: 'initialization' stamp: 'len 27/Mar/2026 19:32:08'!
initializeControls
	super initializeControls.
	self addTimeControl: #predelay min: 0.0001 "0.1 ms" max: 0.15 "150 ms" value: 0.005 "5 ms".
	self addControl: #feedback min: 0.7 max: 0.98 value: 0.84.
	self addControl: #damp min: 0.0 max: 1.0 value: 0.5.
	self addDryWetControl: #mix value: 0.5! !

!Reverb methodsFor: 'processing' stamp: 'len 27/Mar/2026 17:37:07'!
value: in
	| delayed out |
	predelayLine write: in.
	delayed := predelayTap read * 0.015. "fixed gain"
	out := 0.0.
	combs do: [:each| out := (each value: delayed) + out].
	allpasses do: [:each| out := each value: out].
	^ out * mix + (in * (1.0 - mix))! !

!Reverb methodsFor: 'ui' stamp: 'len 9/Mar/2026 16:47:32'!
panel
	^ ControlPanel new
		addKnob: (controls at: #predelay) label: 'Delay';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #damp) label: 'Damp';
		addKnob: (controls at: #mix) label: 'Mix'! !

!TapeEcho methodsFor: 'controlling' stamp: 'len 6/Mar/2026 22:26:12'!
reset
	delayLine reset.
	tap1 reset.
	tap2 reset.
	tap3 reset.
	lpf reset.
	hpf reset.
	lsf reset.
	hsf reset! !

!TapeEcho methodsFor: 'controlling' stamp: 'len 9/Mar/2026 16:44:19'!
update
	| delay1 delay2 delay3 thirtyMsecs |
	super update.
	thirtyMsecs := self class sampleRate * 0.03.
	delay1 := (self get: #time) * self class sampleRate.
	delay2 := delay1 / 2.0.
	delay3 := delay1 / 3.0.
	tap1 setDelayIncrement: delay1 - tap1 delay / thirtyMsecs. "slide over 30 ms"
	tap2 setDelayIncrement: delay2 - tap2 delay / thirtyMsecs.
	tap3 setDelayIncrement: delay3 - tap3 delay / thirtyMsecs.
	level1 := self get: #'1'.
	level2 := self get: #'2'.
	level3 := self get: #'3'.
	feedback := self get: #feedback.
	mix := self get: #mix.
	lpf undenormalize.
	hpf undenormalize.
	lsf undenormalize; ls: 120.0 / self class sampleRate Q: 0.707 gain: (self get: #bass). "120 Hz"
	hsf undenormalize; hs: 4000.0 / self class sampleRate Q: 0.707 gain: (self get: #treble) "4 kHz"! !

!TapeEcho methodsFor: 'initialization' stamp: 'len 25/Mar/2026 15:57:04'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 2) ceiling.
	tap1 := DelayTapC on: delayLine.
	tap2 := DelayTapC on: delayLine.
	tap3 := DelayTapC on: delayLine.
	lpf := OnePole new frequency: 8000.0 / self class sampleRate. "8 kHz"
	hpf := OnePole new frequency: 40.0 / self class sampleRate. "40 Hz"
	lsf := Biquad new.
	hsf := Biquad new! !

!TapeEcho methodsFor: 'initialization' stamp: 'len 3/Mar/2026 16:36:51'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.240 "240 ms" max: 2.0 "2 s" value: 0.5 "500 ms".
	self addControl: #feedback min: 0.0 max: 1.0 value: 0.0.
	self addVolumeControl: #'1' value: 1.0.
	self addVolumeControl: #'2' value: 0.001.
	self addVolumeControl: #'3' value: 0.001.
	self addVolumeControl: #bass min: 0.4 max: 2.5 value: 1.0. "-8 dB to 8 dB"
	self addVolumeControl: #treble min: 0.4 max: 2.5 value: 1.0. "-8 dB to 8 dB"
	self addDryWetControl: #mix value: 0.5! !

!TapeEcho methodsFor: 'processing' stamp: 'len 3/Mar/2026 17:18:55'!
value: in
	| echos x |
	echos := 0.0.
	level1 > 0.001 ifTrue: [echos := tap1 read * level1 + echos].
	level2 > 0.001 ifTrue: [echos := tap2 read * level2 + echos].
	level3 > 0.001 ifTrue: [echos := tap3 read * level3 + echos].
	echos := hsf value: (lsf value: echos). "bass and treble shelves for the echos"
	x := ((echos * feedback + in) * 1.5) tanh. "saturation"
	x := lpf value: x - (hpf value: x). "lpf and hpf one-poles for bandwidth loss when writing to the tape"
	delayLine write: x.
	^ in * (1.0 - mix) + (echos * mix)! !

!TapeEcho methodsFor: 'ui' stamp: 'len 3/Mar/2026 16:39:40'!
panel
	^ ControlPanel new
		addKnob: (controls at: #time) label: 'Time';
		addKnob: (controls at: #feedback) label: 'FB';
		addSmallVerticalSlider: (controls at: #'1') label: '1';
		addSmallVerticalSlider: (controls at: #'2') label: '2';
		addSmallVerticalSlider: (controls at: #'3') label: '3'! !

!TapeEcho methodsFor: 'ui' stamp: 'len 3/Mar/2026 16:38:10'!
panel2
	^ ControlPanel new
		addSmallKnob: (controls at: #bass) label: 'Bass';
		addSmallKnob: (controls at: #treble) label: 'Treble';
		addSmallKnob: (controls at: #mix) label: 'Mix'! !

!TapeEcho methodsFor: 'ui' stamp: 'len 3/Mar/2026 16:38:33'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer flap addMorph: self panel2.
	^ answer
		addAudioInput: #setInput:;
		addAudioOutput: #setOutput:;
		addControlInput: #time;
		addControlInput: #feedback;
		yourself! !

!Vibrato methodsFor: 'controlling' stamp: 'len 27/Mar/2026 16:37:48'!
reset
	phase := 0.0.
	delayLine reset.
	tap reset! !

!Vibrato methodsFor: 'controlling' stamp: 'len 27/Mar/2026 15:04:49'!
update
	| increment time depth d twoPi |
	super update.
	increment := (self get: #speed) / self class controlRate * Float twoPi.
	depth := self get: #depth.
	time := self get: #time.
	twoPi := Float twoPi.
	d := (phase sin * depth * 0.002 "2 ms" + time) * self class sampleRate.
	(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
	tap setDelayIncrement: (d - tap delay) / self class blockSize! !

!Vibrato methodsFor: 'initialization' stamp: 'len 25/Mar/2026 16:09:16'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.015 "15 ms max") ceiling.
	tap := DelayTapC on: delayLine.
	self reset! !

!Vibrato methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:46:49'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.002 "2 ms" max: 0.010 "10 ms" value: 0.005 "5 ms".
	self addFrequencyControl: #speed min: 3.0 "Hz" max: 8.0 "Hz" value: 5.0 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1! !

!Vibrato methodsFor: 'processing' stamp: 'len 27/Mar/2026 15:04:04'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	1 to: input size do: [:i|
		delayLine write: (input at: i).
		output at: i put: tap read]! !

!BPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:18:45'!
reset
	biquad reset! !

!BPF methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:50:10'!
update
	super update.
	biquad undenormalize.
	biquad bp: (self get: #frequency) / self class sampleRate Q: 1.0 / (2.0 * (0.5 * 2.0 log * (self get: #bandwidth)) sinh)! !

!BPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:57:46'!
initialize
	super initialize.
	biquad := Biquad new! !

!BPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 01:21:53'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #bandwidth min: 0.1 max: 4.0 value: 1.0) printer: [:x| (x printStringFractionDigits: 2), ' oct']! !

!BPF methodsFor: 'processing' stamp: 'len 2/Apr/2026 19:00:55'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad process: input into: output! !

!BPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:03:52'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #bandwidth;
		addAudioOutput: #setOutput:.
	^ answer! !

!BPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:03:46'!
screen
	^ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #bandwidth); mode: #BP! !

!BSF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:41:35'!
reset
	biquad reset! !

!BSF methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:50:20'!
update
	super update.
	biquad undenormalize.
	biquad bs: (self get: #frequency) / self class sampleRate Q: 1.0 / (2.0 * (0.5 * 2.0 log * (self get: #bandwidth)) sinh)! !

!BSF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:57:49'!
initialize
	super initialize.
	biquad := Biquad new! !

!BSF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 01:22:00'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #bandwidth min: 0.1 max: 4.0 value: 1.0) printer: [:x| (x printStringFractionDigits: 2), ' oct']! !

!BSF methodsFor: 'processing' stamp: 'len 29/Mar/2026 01:52:11'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad process: input into: output! !

!BSF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:05'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #bandwidth;
		addAudioOutput: #setOutput:.
	^ answer! !

!BSF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:03:59'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #bandwidth); mode: #BS! !

!EQ3 methodsFor: 'controlling' stamp: 'len 17/Mar/2026 15:48:10'!
reset
	lowPassLow reset.
	lowPassMid reset.
	highPassMid reset.
	highPassHigh reset! !

!EQ3 methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:51:14'!
update
	super update.
	lowPassLow undenormalize.
	highPassMid undenormalize.
	lowPassMid undenormalize.
	highPassHigh undenormalize! !

!EQ3 methodsFor: 'initialization' stamp: 'len 31/Jan/2026 03:39:10'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize.
	lowPassLow := Biquad new linkwitz_lp: 250.0 / self class sampleRate Q: 0.707.
	highPassMid := Biquad new linkwitz_hp: 250.0 / self class sampleRate Q: 0.707.
	lowPassMid := Biquad new linkwitz_lp: 2500.0 / self class sampleRate Q: 0.707.
	highPassHigh := Biquad new linkwitz_hp: 2500.0 / self class sampleRate Q: 0.707! !

!EQ3 methodsFor: 'initialization' stamp: 'len 31/Jan/2026 03:44:24'!
initializeControls
	super initializeControls.
	self addVolumeControl: #low min: 0.001 max: 2.0 value: 1.0.
	self addVolumeControl: #mid min: 0.001 max: 2.0 value: 1.0.
	self addVolumeControl: #high min: 0.001 max: 2.0 value: 1.0! !

!EQ3 methodsFor: 'processing' stamp: 'len 29/Mar/2026 01:52:11'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	lowPassLow process: input into: output.
	output *= (self get: #low).
	highPassMid process: input into: aux.
	lowPassMid process: aux into: aux.
	aux *= (self get: #mid).
	output += aux.
	highPassHigh process: input into: aux.
	aux *= (self get: #high).
	output += aux! !

!EQ5 methodsFor: 'controlling' stamp: 'len 17/Mar/2026 15:49:09'!
reset
	lowShelf reset.
	bell1 reset.
	bell2 reset.
	bell3 reset.
	highShelf reset! !

!EQ5 methodsFor: 'controlling' stamp: 'len 17/Mar/2026 15:35:49'!
update
	super update.
	lowShelf undenormalize; ls: (self get: #f1) / self class sampleRate Q: (self get: #q1) gain: (self get: #g1).
	bell1 undenormalize; peaking: (self get: #f2) / self class sampleRate Q: (self get: #q2) gain: (self get: #g2).
	bell2 undenormalize; peaking: (self get: #f3) / self class sampleRate Q: (self get: #q3) gain: (self get: #g3).
	bell3 undenormalize; peaking: (self get: #f4) / self class sampleRate Q: (self get: #q4) gain: (self get: #g4).
	highShelf undenormalize; ls: (self get: #f5) / self class sampleRate Q: (self get: #q5) gain: (self get: #g5)! !

!EQ5 methodsFor: 'initialization' stamp: 'len 17/Mar/2026 15:40:59'!
initialize
	super initialize.
	lowShelf := Biquad new.
	bell1 := Biquad new.
	bell2 := Biquad new.
	bell3 := Biquad new.
	highShelf := Biquad new! !

!EQ5 methodsFor: 'initialization' stamp: 'len 17/Mar/2026 15:43:36'!
initializeControls
	super initializeControls.
	
	(self addFrequencyControl: #f1 min: 20.0 max: 200.0 value: 80.0) label: 'Frequency'.
	(self addControl: #q1 min: 0.4 max: 2.0 value: 0.707) label: 'Q'.
	(self addVolumeControl: #g1 min: 1.0 / 16 max: 16.0 value: 1.0) label: 'Gain'.

	(self addFrequencyControl: #f2 min: 80.0 max: 800.0 value: 250.0) label: 'Frequency'.
	(self addControl: #q2 min: 0.3 max: 10.0 value: 1.0) label: 'Q'.
	(self addVolumeControl: #g2 min: 1.0 / 16 max: 16.0 value: 1.0) label: 'Gain'.

	(self addFrequencyControl: #f3 min: 200.0 max: 3000.0 value: 1000.0) label: 'Frequency'.
	(self addControl: #q3 min: 0.3 max: 10.0 value: 1.0) label: 'Q'.
	(self addVolumeControl: #g3 min: 1.0 / 16 max: 16.0 value: 1.0) label: 'Gain'.

	(self addFrequencyControl: #f4 min: 1000.0 max: 10000.0 value: 4000.0) label: 'Frequency'.
	(self addControl: #q4 min: 0.4 max: 2.0 value: 1.0) label: 'Q'.
	(self addVolumeControl: #g4 min: 1.0 / 16 max: 16.0 value: 1.0) label: 'Gain'.

	(self addFrequencyControl: #f5 min: 4000.0 max: 20000.0 value: 10000.0) label: 'Frequency'.
	(self addControl: #q5 min: 0.4 max: 2.0 value: 0.707) label: 'Q'.
	(self addVolumeControl: #g5 min: 1.0 / 16 max: 16.0 value: 1.0) label: 'Gain'! !

!EQ5 methodsFor: 'processing' stamp: 'len 17/Mar/2026 15:36:55'!
value: in
	^ lowShelf value: (bell1 value: (bell2 value: (bell3 value: (highShelf value: in))))! !

!EQ5 methodsFor: 'ui' stamp: 'len 17/Mar/2026 15:45:30'!
panel
	^ ControlPanel new
		addMorph: (ControlPanel newColumn addKnob: (controls at: #g1); addSmallKnob: (controls at: #f1); addSmallKnob: (controls at: #q1));
		addMorph: (ControlPanel newColumn addKnob: (controls at: #g2); addSmallKnob: (controls at: #f2); addSmallKnob: (controls at: #q2));
		addMorph: (ControlPanel newColumn addKnob: (controls at: #g3); addSmallKnob: (controls at: #f3); addSmallKnob: (controls at: #q3));
		addMorph: (ControlPanel newColumn addKnob: (controls at: #g4); addSmallKnob: (controls at: #f4); addSmallKnob: (controls at: #q4));
		addMorph: (ControlPanel newColumn addKnob: (controls at: #g5); addSmallKnob: (controls at: #f5); addSmallKnob: (controls at: #q5))! !

!HPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:18:06'!
reset
	biquad reset! !

!HPF methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:52:12'!
update
	super update.
	biquad undenormalize.
	biquad hp: (self get: #frequency) / self class sampleRate Q: (self get: #Q)! !

!HPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:57:32'!
initialize
	super initialize.
	biquad := Biquad new! !

!HPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:55:04'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	self addControl: #Q min: 0.5 max: 10.0 value: 0.707! !

!HPF methodsFor: 'processing' stamp: 'len 2/Apr/2026 19:01:04'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad process: input into: output! !

!HPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:18'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutput:.
	^ answer! !

!HPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:12'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q); mode: #HP! !

!LPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:16:21'!
reset
	biquad reset! !

!LPF methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:52:21'!
update
	super update.
	biquad undenormalize.
	biquad lp: (self get: #frequency) / self class sampleRate Q: (self get: #Q)! !

!LPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:57:38'!
initialize
	super initialize.
	biquad := Biquad new! !

!LPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 00:54:56'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	self addControl: #Q min: 0.5 max: 10.0 value: 0.707! !

!LPF methodsFor: 'processing' stamp: 'len 2/Apr/2026 19:01:16'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad process: input into: output! !

!LPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:34'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutput:.
	^ answer! !

!LPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:29'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q); mode: #LP! !

!Transform2x methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:27:53'!
initialize
	super initialize.
	oversampler := Polyphase13TapOversampler2x new! !

!Transform2x methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:34'!
tick
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [1 to: output size do: [:i| output at: i put: (self value: 0.0)]. ^ self].
	1 to: input size do: [:i| output at: i put: (oversampler oversampling: (input at: i) do: self)]! !

!Transform2x methodsFor: 'private' stamp: 'len 12/Feb/2026 14:44:51'!
internalSampleRate
	"The internal sample rate is doubled."
	^ self class sampleRate * 2! !

!TubeSaturator methodsFor: 'controlling' stamp: 'len 19/Mar/2026 16:58:59'!
update
	super update.
	drive := self get: #drive.
	postgain := self get: #postgain.
	prelpf frequency: (self get: #tone) / self internalSampleRate.
	prehpf undenormalize.
	prelpf undenormalize.
	postlpf undenormalize.
	dcblock undenormalize! !

!TubeSaturator methodsFor: 'initialization' stamp: 'len 19/Mar/2026 16:58:54'!
initialize
	super initialize.
	prehpf := OnePole new frequency: 120.0 / self internalSampleRate.  "120 hz"
	prelpf := OnePole new. "frequency set from the tone control"
	postlpf := OnePole new frequency: 18000.0 / self internalSampleRate. "18 khz"
	dcblock := OnePole new frequency: 10.0 / self internalSampleRate "10 hz"! !

!TubeSaturator methodsFor: 'initialization' stamp: 'len 13/Feb/2026 16:00:05'!
initializeControls
	super initializeControls.
	self addVolumeControl: #drive min: 1.0 max: 16.0 value: 1.0.
	self addFrequencyControl: #tone min: 8000.0 max: 14000.0 value: 10000.0. "8 to 14 khz"
	self addVolumeControl: #postgain min: 0.25 max: 4.0 value: 1.0! !

!TubeSaturator methodsFor: 'processing' stamp: 'len 8/Feb/2026 21:32:26'!
value: in
	| x y |
	"hpf before the nonlinearity prevents low-frequency pumping, keeps bass clean while distoring mids/highs:"
	x := in - (prehpf value: in).
	"lpf before the nonlinearity prevents harsh hf from entering distorion, and makes saturation thicker and darker:"
	x := prelpf value: x.
	x := x * drive + 0.01. "add tube grid bias 0.01; useful range 0.01-0.03"
	y := ((-0.25 * x + 0.5) * x + 0.7) * x. "tube nonlinearity, coefficients for triode-like curve"
	y := (y * 0.85) softclip. "soft ceiling"
	"lowpass filter after the nonlinearity tames aliasing, mimics tube hf roll-off and reduces fizz:"
	y := postlpf value: y * postgain.
	^​ y - (dcblock value: y)! !

!TubeSaturator methodsFor: 'ui' stamp: 'len 12/Feb/2026 05:36:32'!
panel
	^​ ControlPanel new
		addKnob: (controls at: #tone) label: 'Tone';
		addKnob: (controls at: #postgain) label: 'Output'! !

!TubeSaturator methodsFor: 'ui' stamp: 'len 13/Feb/2026 19:40:37'!
patchable
	| answer display inputPin |
	answer := PatchableMorph new model: self.
	display := SymmetricWaveshaperControlMorph new
		control: (controls at: #drive);
		waveBlock: [:x :g| ((x * 2.0 - 1.0) * g sqrt) softclip].
	answer body addMorph: display.
	answer flap addMorph: self panel.
	inputPin := answer addAudioInput: #setInput:.
	inputPin when: #level: send: #drawLevel: to: display.
	^ answer
		addControlInput: #drive;
		addAudioOutput: #setOutput:;
		yourself! !

!Waveshaper methodsFor: 'controlling' stamp: 'len 13/Feb/2026 19:00:21'!
update
	| mix |
	super update.
	pregain := self get: #pregain.
	bias := (self get: #bias) * pregain sqrt.
	dc := self apply: bias.
	mix := self get: #mix.
	postgain := (self get: #postgain) * mix.
	dry := 1.0 - mix! !

!Waveshaper methodsFor: 'initialization' stamp: 'len 13/Feb/2026 16:32:41'!
initializeControls
	super initializeControls.
	self addVolumeControl: #pregain min: 1.0 max: 16.0 value: 1.0.
	self addQuadraticControl: #bias min: -0.5 max: 0.5 value: 0.0.
	self addVolumeControl: #postgain min: 0.25 max: 4.0 value: 1.0.
	self addDryWetControl: #mix! !

!Waveshaper methodsFor: 'processing' stamp: 'len 13/Feb/2026 19:00:21'!
apply: x
	^ self subclassResponsibility! !

!Waveshaper methodsFor: 'processing' stamp: 'len 13/Feb/2026 19:00:21'!
value: in
	^ in * dry + (((self apply: in * pregain + bias) - dc) * postgain)! !

!Waveshaper methodsFor: 'ui' stamp: 'len 13/Feb/2026 19:47:24'!
panel
	^​ ControlPanel new
"		addKnob: (controls at: #pregain) label: 'Input';"
		addKnob: (controls at: #postgain) label: 'Output';
		addKnob: (controls at: #mix) label: 'Mix'! !

!Waveshaper methodsFor: 'ui' stamp: 'len 14/Feb/2026 00:45:19'!
patchable
	| answer display inputPin |
	answer := PatchableMorph new model: self.
	display := WaveshaperControlMorph new
		shape: (controls at: #pregain);
		bias: (controls at: #bias);
		waveBlock: [:t :g| (self apply: (t * 2.0 - 1.0) * g)].
	answer body addMorph: display.
	answer flap addMorph: self panel.
	inputPin := answer addAudioInput: #setInput:.
	inputPin when: #level: send: #drawLevel: to: display.
	^ answer
		addControlInput: #pregain;
		addAudioOutput: #setOutput:;
		yourself! !

!DiodeClipper methodsFor: 'processing' stamp: 'len 14/Feb/2026 00:28:33'!
apply: x
	| δ |
	(δ := x abs - 0.8 "threshold at 0.8") > 0.0 ifFalse: [^ x].
	^ (δ / (4.0 * δ + 1.0) + 0.8 "threshold at 0.8") * x sign! !

!HardClipper methodsFor: 'processing' stamp: 'len 13/Feb/2026 19:00:21'!
apply: x
	^​ x < -1.0 ifTrue: [-1.0] ifFalse: [x > 1.0 ifTrue: [1.0] ifFalse: [x]]! !

!SoftClipper methodsFor: 'processing' stamp: 'len 13/Feb/2026 19:00:21'!
apply: x
	^ x softclip! !

!Wavefolder methodsFor: 'processing' stamp: 'len 14/Feb/2026 02:54:24'!
apply: x
	| f |
	f := ((x + 1.0) * 0.5) floor.
	^ f odd ifTrue: [(f * 2) - x] ifFalse: [x - (f * 2)]

"alternative
apply: x
	| y |
	(y := x abs - 1.0) <= 0.0 ifTrue: [^ x].
	y := y - (4.0 * (y / 4.0) floor).
	y abs > 2.0 ifTrue: [y := 4.0 - y].
	y := 1.0 - y.
	^ x sign * y"! !

!Korg35HPF methodsFor: 'controlling' stamp: 'len 16/Oct/2025 18:46:00'!
reset
	s1 := s2 := s3 := 0.0! !

!Korg35HPF methodsFor: 'controlling' stamp: 'len 12/Feb/2026 14:45:36'!
update
	"See Will. C Pinkle, 'Designing Software Synthesizer Plug-ins in C++', section 12.7.1, equation 12.15."
	| newFrequency newResonance g |
	super update.
	newFrequency := self get: #frequency.
	newResonance := self get: #resonance.
	(frequency = newFrequency and: [resonance = newResonance]) ifTrue: [^ self].
	frequency := newFrequency.
	resonance := newResonance.
	k := resonance squared * 1.999. "quadratic curve, to have finer control at low resonance"
	g := (Float pi * frequency / self internalSampleRate) tan.
	α := g / (1.0 + g).
	"the following two lines are different in the lowpass version:"
	β₃ := 1.0 / (1.0 + g).
	β₂ := -1.0 * α / (1.0 + g).
	α₀ := 1.0 / (1.0 - ((1.0 - α)*k*α) "max: 1.0e-9") "avoid too small denominator"! !

!Korg35HPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 14:01:06'!
initialize
	super initialize.
	self reset! !

!Korg35HPF methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:26:01'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #resonance min: 0.0 max: 1.0 value: 0.1) printer: [:x| (x * 100.0) truncated printString, '%']! !

!Korg35HPF methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:54:14'!
tick
	super tick.
	s1 abs < 1.0e-15 ifTrue: [s1 := 0.0].
	s2 abs < 1.0e-15 ifTrue: [s2 := 0.0].
	s3 abs < 1.0e-15 ifTrue: [s3 := 0.0]! !

!Korg35HPF methodsFor: 'processing' stamp: 'len 31/Jan/2026 15:41:18'!
value: in
	| v1 u1 feedback hp1 hp2 res_signal u2 v2 v3 y |
	v1 := (in - s1) * α.
	u1 := v1 + s1.
	hp1 := in - u1.
	feedback := s2*β₂ + (s3*β₃).
	y := (hp1 + feedback) * α₀.
	res_signal := y * k.
	v2 := (res_signal - s2) * α.
	u2 := v2 + s2.
	hp2 := res_signal - u2.
	v3 := (hp2 - s3) * α.
	s1 := v1 * 2.0 + s1.
	s2 := v2 * 2.0 + s2.
	s3 := v3 * 2.0 + s3.
	^ y! !

!Korg35HPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:51'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutput:.
	^ answer! !

!Korg35HPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:44'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #HP! !

!Korg35LPF methodsFor: 'controlling' stamp: 'len 17/Oct/2025 20:13:00'!
reset
	s1 := s2 := s3 := 0.0! !

!Korg35LPF methodsFor: 'controlling' stamp: 'len 12/Feb/2026 14:45:42'!
update
	"See Will. C Pinkle, 'Designing Software Synthesizer Plug-ins in C++', section 12.7.1, equation 12.15."
	| newFrequency newResonance g |
	super update.
	newFrequency := self get: #frequency.
	newResonance := self get: #resonance.
	(frequency = newFrequency and: [resonance = newResonance]) ifTrue: [^ self].
	frequency := newFrequency.
	resonance := newResonance.
	k := resonance squared * 1.999. "quadratic curve, to have finer control at low resonance"
	g := (Float pi * frequency / self internalSampleRate) tan.
	α := g / (1.0 + g).
	"the following two lines are different in the highpass version:"
	β₃ := k * (1.0 - α) / (1.0 + g). "NOTE: in Pinkle's book β₃ and β₂ are reversed, this is as they are defined in https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib"
	β₂ := -1.0 / (1.0 + g).
	α₀ := 1.0 / (1.0 - ((1.0 - α)*k*α) "max: 1.0e-9") "avoid too small denominator"! !

!Korg35LPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 14:00:59'!
initialize
	super initialize.
	self reset! !

!Korg35LPF methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:26:08'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #resonance min: 0.0 max: 1.0 value: 0.1) printer: [:x| (x * 100.0) truncated printString, '%']! !

!Korg35LPF methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:54:21'!
tick
	super tick.
	s1 abs < 1.0e-15 ifTrue: [s1 := 0.0].
	s2 abs < 1.0e-15 ifTrue: [s2 := 0.0].
	s3 abs < 1.0e-15 ifTrue: [s3 := 0.0]! !

!Korg35LPF methodsFor: 'processing' stamp: 'len 2/Feb/2026 00:30:03'!
value: in
	| v1 u1 feedback v2 v3 u3 y |
	v1 := (in - s1) * α.
	u1 := v1 + s1.
	feedback := (s3 * β₃) + (s2 * β₂).
	y := (u1 + feedback) * α₀.
	v3 := (y - s3) * α.
	u3 := v3 + s3.
	v2 := (u3 * k - s2) * α * 2.0.
	s1 := u1 + v1.
	s2 := v2 + s2.
	s3 := u3 + v3.
	^ y "tanh"! !

!Korg35LPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:03'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutput:.
	^ answer! !

!Korg35LPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:04:58'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP! !

!Decimator methodsFor: 'controlling' stamp: 'len 27/Sep/2025 20:49:00'!
reset
	holdCount := 0! !

!Decimator methodsFor: 'controlling' stamp: 'len 27/Feb/2026 00:15:56'!
update
	super update.
	quantization := 2.0 raisedTo: (self get: #bits).
	downsample := 1.0 / (self get: #rate).
	mix := self get: #mix! !

!Decimator methodsFor: 'initialization' stamp: 'len 8/Jan/2026 21:27:24'!
initialize
	super initialize.
	quantization := 65535.0.
	downsample := 1.0.
	self reset! !

!Decimator methodsFor: 'initialization' stamp: 'len 27/Feb/2026 00:15:43'!
initializeControls
	super initializeControls.
	(self addControl: #bits min: 0.1 max: 16.0 value: 16.0) printer: [:x| x printStringFractionDigits: 2].
	(self addControl: #rate min: (1000.0 / self class sampleRate) max: 1.0 value: 1.0) printer: [:x| (self class sampleRate * x) rounded hertzPrintString].
	self addDryWetControl: #mix! !

!Decimator methodsFor: 'processing' stamp: 'len 27/Feb/2026 00:25:51'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	(downsample = 1.0 and: [quantization >= 65535.0]) ifTrue: [output replaceWith: input. ^ self].
	1 to: input size do: [:i|
		"downsampling via sample & hold:"
		holdCount > 0 ifFalse: "reset holdCount and take and process a new sample value"
			[holdCount := holdCount + downsample.
			heldValue := input at: i.
			"apply bitcrusher:"
			quantization < 65535.0 ifTrue: [heldValue := (heldValue * quantization) rounded / quantization]].
		holdCount := holdCount - 1.
		output at: i put: (mix = 1.0 ifTrue: [heldValue] ifFalse: [(input at: i) * (1.0 - mix) + (heldValue * mix)])]! !

!Decimator methodsFor: 'processing' stamp: 'len 27/Feb/2026 00:17:22'!
value: in
	(downsample = 1.0 and: [quantization >= 65535.0]) ifTrue: [^ in].
	"downsampling via sample & hold:"
	holdCount > 0 ifFalse: "reset holdCount and take and process a new sample value"
		[holdCount := holdCount + downsample.
		heldValue := in.
		"apply bitcrusher:"
		quantization < 65535.0 ifTrue: [heldValue := (heldValue * quantization) rounded / quantization]].
	holdCount := holdCount - 1.
	mix = 1.0 ifTrue: [^ heldValue].
	^ in * (1.0 - mix) + (heldValue * mix)! !

!Decimator methodsFor: 'ui' stamp: 'len 5/Apr/2026 17:06:49'!
patchable
	^ super patchable
		addControlInput: #bits;
		addControlInput: #rate;
		yourself! !

!Overdrive methodsFor: 'controlling' stamp: 'len 7/Feb/2026 19:26:01'!
update
	| drive drive_2 pre_gain_a pre_gain_b drive_squashed |
	super update.
	drive := self get: #drive.
	drive_2 := drive * drive.
	pre_gain_a := drive * 0.5.
	pre_gain_b := drive_2 * drive_2 * drive * 24.0.
	pregain := pre_gain_a + ((pre_gain_b - pre_gain_a) * drive_2).
	drive_squashed := drive * (2.0001 - drive). "2.0001 in order to avoid discontinuity at drive=2.0"
	postgain := 1.0 / (0.33 + (drive_squashed * (pregain - 0.33))) softclip! !

!Overdrive methodsFor: 'initialization' stamp: 'len 20/Nov/2025 16:49:00'!
initializeControls
	super initializeControls.
	self addControl: #drive min: 0.0 max: 2.0 value: 1.0! !

!Overdrive methodsFor: 'processing' stamp: 'len 12/Mar/2026 16:41:54'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	output replaceWith: input; *= pregain; softclip; *= postgain! !

!Overdrive methodsFor: 'processing' stamp: 'len 20/Nov/2025 00:39:00'!
value: in
	^ (in * pregain) softclip * postgain! !

!Overdrive methodsFor: 'ui' stamp: 'len 13/Feb/2026 19:45:30'!
patchable
	| answer display inputPin |
	answer := PatchableMorph new model: self.
	display := SymmetricWaveshaperControlMorph new
		control: (controls at: #drive);
		waveBlock: [:x :g| ((x * 2.0 - 1.0) * g squared) softclip].
	answer body addMorph: display.
	inputPin := answer addAudioInput: #setInput:.
	inputPin when: #level: send: #drawLevel: to: display.
	^ answer
		addControlInput: #drive;
		addAudioOutput: #setOutput:;
		yourself! !

!TapeSaturator methodsFor: 'controlling' stamp: 'len 19/Mar/2026 16:59:09'!
update
	super update.
	drive := self get: #drive.
	bias := (self get: #bias) * 0.5 * drive sqrt. "bias scaled with drive, more subtle at low drive"
	nonlinearityGain := (drive + 1.0 log: 2.0) * 0.5 + 1.5.
	dc := (bias * nonlinearityGain) tanh.
	tone := self get: #tone.
	postgain := self get: #postgain.
	"darker at high drive:"
	postlpf frequency: ((drive * 0.08) tanh * 12000.0 + 6000.0) / self class sampleRate. "6 kHz to 18 kHz"
	prehpf undenormalize.
	postlpf undenormalize! !

!TapeSaturator methodsFor: 'initialization' stamp: 'len 19/Mar/2026 16:59:02'!
initialize
	super initialize.
	prehpf := OnePole new frequency: 4000.0 / self class sampleRate. "4 khz"
	postlpf := OnePole new! !

!TapeSaturator methodsFor: 'initialization' stamp: 'len 13/Feb/2026 15:48:51'!
initializeControls
	super initializeControls.
	self addVolumeControl: #drive min: 1.0 max: 16.0 value: 1.0.
	self addQuadraticControl: #bias min: -0.5 max: 0.5 value: 0.0.
	self addControl: #tone min: -1.0 max: 1.0 value: 0.0.
	self addVolumeControl: #postgain min: 0.25 max: 4.0 value: 1.0! !

!TapeSaturator methodsFor: 'processing' stamp: 'len 8/Feb/2026 16:21:19'!
value: in
	| x y |
	x := in * drive.
	"pre-emphasis:"
	x := x + ((x - (prehpf value: x)) * tone).
	"tape saturation:"
	y := ((x + bias) * nonlinearityGain) tanh - dc.
	"post lowpass:"
	^​ (postlpf value: y) * postgain! !

!TapeSaturator methodsFor: 'ui' stamp: 'len 12/Feb/2026 14:16:11'!
panel
	^​ ControlPanel new
"		addKnob: (controls at: #bias) label: 'Bias';"
		addKnob: (controls at: #tone) label: 'Tone';
		addKnob: (controls at: #postgain) label: 'Output'! !

!TapeSaturator methodsFor: 'ui' stamp: 'len 13/Feb/2026 19:40:56'!
patchable
	| answer display inputPin |
	answer := PatchableMorph new model: self.
	display := WaveshaperControlMorph new
		shape: (controls at: #drive);
		bias: (controls at: #bias);
		waveBlock: [:x :g|
			| nlg |
			nlg := (g + 1.0 log: 2.0) * 0.5 + 1.5.
			(((x * 2.0 - 1.0) * g) * nlg) tanh].
	answer body addMorph: display.
	answer flap addMorph: self panel.
	inputPin := answer addAudioInput: #setInput:.
	inputPin when: #level: send: #drawLevel: to: display.
	^ answer
		addControlInput: #drive;
		addAudioOutput: #setOutput:;
		yourself! !

!DiodeLadder2 methodsFor: 'controlling' stamp: 'len 29/Jan/2026 15:28:49'!
reset
	s1 := s2 := s3 := s4 := vc1 := vc2 := vc3 := vc4 := vout := 0.0! !

!DiodeLadder2 methodsFor: 'controlling' stamp: 'len 29/Jan/2026 15:24:04'!
updateFilterCoefficients
	g := (Float pi * frequency) tan.
	k := 17.0 * (1.0 - (0.707 / Q)) max: 0.0.
	k := k min: 17.0! !

!DiodeLadder2 methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:21'!
tick
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [1 to: output size do: [:i| output at: i put: (self value: 0.0)]. ^ self].
	1 to: input size do: [:i| output at: i put: (self value: (input at: i))]! !

!DiodeLadder2 methodsFor: 'processing' stamp: 'len 29/Jan/2026 15:52:49'!
value: in
	| vin VT η γ C Mp G vout_approx i dt |
	dt := 1/(2*44100.0).
	VT := 0.0260. "thermal voltage"
	η := 1.836. "diode emission coefficient (1N4148)."
	γ := η * VT. "diode-law scale factor."
	C := 1.0e-7. "capacitance (100 nF)."
	Mp := 1.0e-4.
	G := 4.0 * g * VT.
	vin := in * 0.4.
	i := 0.
	[vc1 := G * ((vc2 - vc1) / (γ * 2.0)) tanh + ((vin - vout) / (VT * 2.0)) tanh + s1.
	vc2 := G * ((vc3 - vc2) / (γ * 2.0)) tanh + ((vc2 - vc1) / (γ * 2.0)) tanh + s2.
	vc3 := G * ((vc4 - vc3) / (γ * 2.0)) tanh + ((vc3 - vc2) / (γ * 2.0)) tanh + s3.
	vc4 := G * (vc4 / (γ * 6.0)) tanh negated - ((vc4 - vc3) / (γ * 2.0)) tanh + s4.
	vout_approx := (k + 0.5) * vc4.
	i > 10 or: [(vout_approx - vout) abs >= (vout abs * Mp)]] whileFalse: [vout := vout_approx. i := i + 1].
	s1 = dt * ((vin - vout) / (2.0 * VT)) tanh + vc1.
	s2 = dt * ((vc2 - vc1) / (2.0 * γ)) tanh + vc2.
	s3 = dt * ((vc3 - vc2) / (2.0 * γ)) tanh + vc3.
	s4 = dt * ((vc4 - vc3) / (2.0 * γ)) tanh + vc4.
	^ vout! !

!DiodeLadder2 methodsFor: 'ui' stamp: 'len 29/Jan/2026 15:19:55'!
patchable
	^ super patchable
		addAudioOutput: #setOutput: label: 'Out';
		yourself! !

!DiodeLadder2 methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:01:41'!
screen
	^ super screen mode: #LP! !

!DiodeLadder2 methodsFor: 'wiring' stamp: 'len 29/Jan/2026 15:19:55'!
setOutput: aBuffer
	output := aBuffer! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 26/Feb/2026 22:57:04'!
delays: delayList gains: gainList
	"For best results it's desirable that the delays are primes.
	
	MultiTapDelayLine new delays: #(537 691 1191) gains: #(0.07 0.07 0.07)
	
	The default in SoundPlayer:
	MultiTapDelayLine new delays: #(1601 7919) gains: #(0.12 0.07).
"
	self assert: delayList size = gainList size.
	delays := delayList.
	gains := gainList.
	buffer := Float32Array new: delayList max.
	position := 1! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 26/Feb/2026 23:06:19'!
initialize
	super initialize.
"	self delays: #(537 691 1191) gains: #(0.07 0.07 0.07)
"
	"The default in Squeak SoundPlayer:"
	self delays: #(1601 7919) gains: #(0.12 0.07)! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 26/Feb/2026 22:59:44'!
initializeControls
	super initializeControls.
	self addDryWetControl: #mix value: 0.5! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 6/Oct/2025 15:53:00'!
reset
	buffer atAllPut: 0.0! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 26/Feb/2026 23:00:54'!
update
	super update.
	mix := self get: #mix! !

!SqueakReverb methodsFor: 'as yet unclassified' stamp: 'len 26/Feb/2026 23:04:34'!
value: in
	| n i out |
	n := buffer size. "max delay"
	position := position + 1.
	i := position truncated.
	out := 0.0.
	delays with: gains do: [:delay :gain|
		| j |
		j := position - delay.
		j < 1 ifTrue: [j := j + n].
		out := (buffer at: j) * gain + out].
	buffer at: i put: out + in.
	position := position \\ buffer size.
	^ in * (1.0 - mix) + (out * mix)! !

!Balance methodsFor: 'initialization' stamp: 'len 2/Feb/2026 03:11:52'!
initializeControls
	super initializeControls.
	(self addControl: #balance min: -1.0 max: 1.0 value: 0.0) printer: [:x| x abs < 0.01 ifTrue: ['Center'] ifFalse: [(x abs * 100.0) rounded printString, '% ', (x < 0.0 ifTrue: ['L'] ifFalse: ['R'])]]! !

!Balance methodsFor: 'processing' stamp: 'len 2/Feb/2026 18:06:19'!
tick
	| θ sin cos |
	(inputA isNil or: [inputB isNil]) ifTrue: [outputL ifNotNil: [outputL atAllPut: 0.0]. outputR ifNotNil: [outputR atAllPut: 0.0]. ^ self].
	θ := ((self get: #balance) + 1.0) * Float pi / 4.0.
	cos := θ cos.
	sin := θ sin.
	outputL ifNotNil:
		[sin abs > cos abs
			ifTrue: [outputL replaceWith: inputA; *= (cos / sin); += inputB; *= sin]
			ifFalse: [outputL replaceWith: inputB; *= (sin / cos); += inputA; *= cos]].
	outputR ifNotNil:
		[sin abs < cos abs
			ifTrue: [outputR replaceWith: inputA; *= (sin / cos); += inputB; *= cos]
			ifFalse: [outputR replaceWith: inputB; *= (cos / sin); += inputA; *= sin]]! !

!Balance methodsFor: 'ui' stamp: 'len 2/Feb/2026 03:12:01'!
panel
	^ ControlPanel new addKnob: (controls at: #balance)! !

!Balance methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:14:50'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'A';
		addAudioInput: #setInputB: label: 'B';
		addControlInput: #balance;
		addAudioOutput: #setOutputL: label: 'L';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!Balance methodsFor: 'wiring' stamp: 'len 2/Feb/2026 03:10:35'!
setInputA: aBuffer
	inputA := aBuffer! !

!Balance methodsFor: 'wiring' stamp: 'len 2/Feb/2026 03:10:35'!
setInputB: aBuffer
	inputB := aBuffer! !

!Balance methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:11:32'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Balance methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:11:10'!
setOutputR: aBuffer
	outputR := aBuffer! !

!Crossfader methodsFor: 'initialization' stamp: 'len 27/Jan/2026 15:35:09'!
initializeControls
	super initializeControls.
	(self addControl: #mix min: -1.0 max: 1.0 value: 0.0) printer: [:x| 'A ', (1.0 - x * 50.0) rounded printString, '% + B ', (1.0 + x * 50.0) rounded printString, '%']! !

!Crossfader methodsFor: 'processing' stamp: 'len 5/Apr/2026 15:50:12'!
tick
	| mix θ cos sin |
	output ifNil: [^ self].
	mix := self get: #mix.
	θ := mix + 1.0 * Float pi / 4.0.
	cos := θ cos.
	sin := θ sin.
	inputB ifNil:
		[inputA ifNil: [output atAllPut: 0.0. ^ self].
		output replaceWith: inputA; *= cos.
		^ self].
	inputA ifNil:
		[output replaceWith: inputB; *= sin.
		^ self].
	mix = -1.0 ifTrue: [output replaceWith: inputA. ^ self].
	mix = 1.0 ifTrue: [output replaceWith: inputB. ^ self].
	sin abs > cos abs
		ifTrue: [output replaceWith: inputA; *= (cos / sin); += inputB; *= sin]
		ifFalse: [output replaceWith: inputB; *= (sin / cos); += inputA; *= cos]! !

!Crossfader methodsFor: 'ui' stamp: 'len 27/Jan/2026 15:19:30'!
panel
	^ ControlPanel new addKnob: (controls at: #mix)! !

!Crossfader methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:14:58'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'A';
		addAudioInput: #setInputB: label: 'B';
		addControlInput: #mix;
		addAudioOutput: #setOutput:.
	^ answer! !

!Crossfader methodsFor: 'wiring' stamp: 'len 27/Jan/2026 15:17:08'!
setInputA: aBuffer
	inputA := aBuffer! !

!Crossfader methodsFor: 'wiring' stamp: 'len 27/Jan/2026 15:17:13'!
setInputB: aBuffer
	inputB := aBuffer! !

!Crossfader methodsFor: 'wiring' stamp: 'len 19/Nov/2025 12:33:00'!
setOutput: aBuffer
	output := aBuffer! !

!Mixer methodsFor: 'initialization' stamp: 'len 10/Feb/2026 20:19:43'!
initializeControls
	super initializeControls.
	self addVolumeControl: #gainA value: 0.6;
		addVolumeControl: #gainB value: 0.6! !

!Mixer methodsFor: 'processing' stamp: 'len 16/Apr/2026 01:48:15'!
tick
	| gainA gainB |
	output ifNil: [^ self].
	gainA := self get: #gainA.
	gainB := self get: #gainB.
	(gainB = 0.0 or: [inputB isNil]) ifTrue:
		[(gainA = 0.0 or: [inputA isNil]) ifTrue: [output atAllPut: 0.0. ^ self].
		output replaceWith: inputA.
		gainA = 1.0 ifFalse: [output *= gainA].
		^ self].
	(gainA = 0.0 or: [inputA isNil]) ifTrue:
		[output replaceWith: inputB.
		gainB = 1.0 ifFalse: [output *= gainB].
		^ self].
	output replaceWith: inputA; *= (gainA / gainB); += inputB; *= gainB! !

!Mixer methodsFor: 'ui' stamp: 'len 27/Jan/2026 15:18:20'!
panel
	^ ControlPanel new
		addKnob: (controls at: #gainA);
		addKnob: (controls at: #gainB)! !

!Mixer methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:15:08'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body
		addMorph: (KnobControlMorph control: (controls at: #gainA));
		addMorph: (KnobControlMorph control: (controls at: #gainB)).
	answer
		addAudioInput: #setInputA: label: 'A';
		addAudioInput: #setInputB: label: 'B';
		addAudioOutput: #setOutput:.
	^ answer! !

!Mixer methodsFor: 'wiring' stamp: 'len 27/Jan/2026 15:16:53'!
setInputA: aBuffer
	inputA := aBuffer! !

!Mixer methodsFor: 'wiring' stamp: 'len 27/Jan/2026 15:16:59'!
setInputB: aBuffer
	inputB := aBuffer! !

!Mixer methodsFor: 'wiring' stamp: 'len 10/Jan/2026 15:56:05'!
setOutput: aBuffer
	output := aBuffer! !

!Mixer4 methodsFor: 'initialization' stamp: 'len 10/Feb/2026 20:12:43'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize! !

!Mixer4 methodsFor: 'initialization' stamp: 'len 10/Feb/2026 20:10:19'!
initializeControls
	super initializeControls.
	self addVolumeControl: #gainA value: 0.6;
		addVolumeControl: #gainB value: 0.6;
		addVolumeControl: #gainC value: 0.6;
		addVolumeControl: #gainD value: 0.6! !

!Mixer4 methodsFor: 'processing' stamp: 'len 12/Mar/2026 16:43:42'!
tick
	output ifNil: [^ self].
	output atAllPut: 0.0.
	inputA ifNotNil: [aux replaceWith: inputA; *= (self get: #gainA). output += aux].
	inputB ifNotNil: [aux replaceWith: inputB; *= (self get: #gainB). output += aux].
	inputC ifNotNil: [aux replaceWith: inputC; *= (self get: #gainC). output += aux].
	inputD ifNotNil: [aux replaceWith: inputD; *= (self get: #gainD). output += aux]! !

!Mixer4 methodsFor: 'ui' stamp: 'len 10/Feb/2026 20:14:42'!
panel
	^ ControlPanel new
		addKnob: (controls at: #gainA);
		addKnob: (controls at: #gainB);
		addKnob: (controls at: #gainC);
		addKnob: (controls at: #gainD)! !

!Mixer4 methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:15:20'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body
		addMorph: (KnobControlMorph control: (controls at: #gainA));
		addMorph: (KnobControlMorph control: (controls at: #gainB));
		addMorph: (KnobControlMorph control: (controls at: #gainC));
		addMorph: (KnobControlMorph control: (controls at: #gainD)).
	answer
		addAudioInput: #setInputA: label: 'A';
		addAudioInput: #setInputB: label: 'B';
		addAudioInput: #setInputC: label: 'C';
		addAudioInput: #setInputD: label: 'D';
		addAudioOutput: #setOutput:.
	^ answer! !

!Mixer4 methodsFor: 'wiring' stamp: 'len 10/Feb/2026 20:08:26'!
setInputA: aBuffer
	inputA := aBuffer! !

!Mixer4 methodsFor: 'wiring' stamp: 'len 10/Feb/2026 20:08:26'!
setInputB: aBuffer
	inputB := aBuffer! !

!Mixer4 methodsFor: 'wiring' stamp: 'len 10/Feb/2026 20:08:44'!
setInputC: aBuffer
	inputC := aBuffer! !

!Mixer4 methodsFor: 'wiring' stamp: 'len 10/Feb/2026 20:08:47'!
setInputD: aBuffer
	inputD := aBuffer! !

!Mixer4 methodsFor: 'wiring' stamp: 'len 10/Feb/2026 20:08:26'!
setOutput: aBuffer
	output := aBuffer! !

!Pan methodsFor: 'initialization' stamp: 'len 21/Jan/2026 15:56:54'!
initializeControls
	super initializeControls.
	(self addControl: #pan min: -1.0 max: 1.0 value: 0.0) printer: [:x| x abs < 0.01 ifTrue: ['Center'] ifFalse: [(x abs * 100.0) rounded printString, '% ', (x < 0.0 ifTrue: ['L'] ifFalse: ['R'])]]! !

!Pan methodsFor: 'processing' stamp: 'len 2/Feb/2026 17:56:49'!
tick
	| θ |
	input ifNil: [outputL ifNotNil: [outputL atAllPut: 0.0]. outputR ifNotNil: [outputR atAllPut: 0.0]. ^ self].
	"constant-power panning:"
	θ := ((self get: #pan) + 1.0) * Float pi / 4.0.
	outputL ifNotNil: [outputL replaceWith: input; *= θ cos].
	outputR ifNotNil: [outputR replaceWith: input; *= θ sin]! !

!Pan methodsFor: 'ui' stamp: 'len 27/Jan/2026 15:05:19'!
panel
	^ ControlPanel new addKnob: (controls at: #pan)! !

!Pan methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:15:27'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInput:;
		addControlInput: #pan;
		addAudioOutput: #setOutputL: label: 'L';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!Pan methodsFor: 'wiring' stamp: 'len 2/Feb/2026 03:11:04'!
setInput: aBuffer
	input := aBuffer! !

!Pan methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:12:11'!
setOutputL: aBuffer
	outputL := aBuffer! !

!Pan methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:11:50'!
setOutputR: aBuffer
	outputR := aBuffer! !

!StereoMatrix methodsFor: 'initialization' stamp: 'len 27/Jan/2026 02:18:51'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize! !

!StereoMatrix methodsFor: 'initialization' stamp: 'len 27/Jan/2026 01:51:45'!
initializeControls
	super initializeControls.
	self addControl: #width min: -1.0 max: 2.0 value: 1.0.
	self addControl: #balance min: -1.0 max: 1.0 value: 0.0
! !

!StereoMatrix methodsFor: 'processing' stamp: 'len 13/Apr/2026 19:38:25'!
tick
	| width balance |
	(inputA isNil or: [inputB isNil]) ifTrue:
		[outputL ifNotNil: [outputL atAllPut: 0.0].
		outputR ifNotNil: [outputR atAllPut: 0.0].
		^ self].
	(outputL isNil or: [outputR isNil]) ifTrue: [^ self].
	width := self get: #width.
	balance := self get: #balance.
	outputL replaceWith: inputA; += inputB; *= ((1.0 + balance) * 0.5).
	outputR replaceWith: outputL.
	aux replaceWith: inputA; -= inputB; *= ((1.0 - balance) * width * 0.5).
	outputL += aux.
	outputR -= aux! !

!StereoMatrix methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:15:41'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'A';
		addAudioInput: #setInputB: label: 'B';
"		addControlInput: #modulateWidth: label: 'WIdth';
		addControlInput: #modulateBalance: label: 'Balance';"
		addAudioOutput: #setOutputL: label: 'L';
		addAudioOutput: #setOutputR: label: 'R'.
	^ answer! !

!StereoMatrix methodsFor: 'wiring' stamp: 'len 27/Jan/2026 01:49:43'!
setInputA: aBuffer
	inputA := aBuffer! !

!StereoMatrix methodsFor: 'wiring' stamp: 'len 27/Jan/2026 01:49:49'!
setInputB: aBuffer
	inputB := aBuffer! !

!StereoMatrix methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:12:44'!
setOutputL: aBuffer
	outputL := aBuffer! !

!StereoMatrix methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:12:28'!
setOutputR: aBuffer
	outputR := aBuffer! !

!Attenuator methodsFor: 'controlling' stamp: 'len 7/Jan/2026 16:52:27'!
input: aNumber
	value := value + aNumber! !

!Attenuator methodsFor: 'initialization' stamp: 'len 7/Jan/2026 16:52:28'!
initialize
	super initialize.
	value := 0.0! !

!Attenuator methodsFor: 'initialization' stamp: 'len 10/Feb/2026 00:36:32'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: 0.0 max: 2.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!Attenuator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:57'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #output: with: value * (self get: #amount). value := 0.0]! !

!Attenuator methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:53:48'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!Attenuator methodsFor: 'ui' stamp: 'len 2/Feb/2026 15:36:40'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #input: label: 'In';
		addControlInput: #amount;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!Attenuverter methodsFor: 'controlling' stamp: 'len 7/Jan/2026 16:31:53'!
input: aNumber
	value := value + aNumber! !

!Attenuverter methodsFor: 'initialization' stamp: 'len 7/Jan/2026 16:27:06'!
initialize
	super initialize.
	value := 0.0! !

!Attenuverter methodsFor: 'initialization' stamp: 'len 10/Feb/2026 00:37:33'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: -2.0 max: 2.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!Attenuverter methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:17:06'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #output: with: value * (self get: #amount). value := 0.0]! !

!Attenuverter methodsFor: 'ui' stamp: 'len 27/Jan/2026 14:53:58'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!Attenuverter methodsFor: 'ui' stamp: 'len 2/Feb/2026 15:36:47'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #input: label: 'In';
		addControlInput: #amount;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!EnvelopeFollower methodsFor: 'controlling' stamp: 'len 10/Feb/2026 00:14:45'!
reset
	envelope := 0.0! !

!EnvelopeFollower methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:59:47'!
initialize
	super initialize.
	self reset! !

!EnvelopeFollower methodsFor: 'initialization' stamp: 'len 18/Mar/2026 21:00:08'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 "1 ms" max: 0.05 "50 ms" value: 0.01 "10 ms".
	self addTimeControl: #release min: 0.01 "10 ms" max: 0.5 "500 ms" value: 0.1 "100 ms".
	self addChoiceControl: #mode options: #(peak rms) value: #rms! !

!EnvelopeFollower methodsFor: 'processing' stamp: 'len 18/Mar/2026 21:01:11'!
tick
	| attack release level |
	input ifNil: [^ self].
	attack := (-1.0 / ((self get: #attack) * self class controlRate)) exp.
	release := (-1.0 / ((self get: #release) * self class controlRate)) exp.
	level := (self get: #mode) = #peak ifTrue: [input peak] ifFalse: [input rms].
	envelope := (level > envelope
		ifTrue: [envelope * attack + (level * (1.0 - attack))]
		ifFalse: [envelope * release + (level * (1.0 - release))]).
	envelope < 1.0e-15 ifTrue: [envelope := 0.0].
	self triggerEvent: #output: with: envelope! !

!EnvelopeFollower methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:20'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addAudioInput: #setInput: label: 'In';
		addControlInput: #attack;
		addControlInput: #release;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!EnvelopeFollower methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:14'!
screen
	| answer |
	answer := RollingWaveformMorph new bipolar: false.
	self when: #output: send: #addSample: to: answer.
	^ answer! !

!EnvelopeFollower methodsFor: 'wiring' stamp: 'len 10/Feb/2026 00:26:43'!
setInput: aBuffer
	input := aBuffer! !

!KeyTracker methodsFor: 'controlling' stamp: 'len 3/Mar/2026 19:25:25'!
adjustNoteBy: aNumber
	note := note + aNumber min: 127.0 max: 0! !

!KeyTracker methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:18:55'!
setNote: aNumber
	note := aNumber! !

!KeyTracker methodsFor: 'initialization' stamp: 'len 10/Feb/2026 17:00:18'!
initialize
	super initialize.
	note := 60.0! !

!KeyTracker methodsFor: 'initialization' stamp: 'len 10/Feb/2026 16:59:54'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: -1.0 max: 1.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!KeyTracker methodsFor: 'processing' stamp: 'len 10/Feb/2026 18:00:58'!
tick
	self triggerEvent: #output: with: (note - 60.0) / 48.0 * (self get: #amount)! !

!KeyTracker methodsFor: 'ui' stamp: 'len 11/Feb/2026 22:21:54'!
panel
	^ ControlPanel new addKnob: (controls at: #amount)! !

!KeyTracker methodsFor: 'ui' stamp: 'len 10/Feb/2026 17:03:17'!
patchable
	^ super patchable
		addControlOutput: #output: label: 'Out';
		yourself! !

!LFO methodsFor: 'accessing' stamp: 'len 18/Mar/2026 20:38:30'!
bipolar
	^ self get: #bipolar! !

!LFO methodsFor: 'accessing' stamp: 'len 25/Nov/2025 18:59:00'!
phase
	^ phase! !

!LFO methodsFor: 'controlling' stamp: 'len 19/Mar/2026 02:28:26'!
adjustNoteBy: aNumber
	^ self! !

!LFO methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:21:00'!
gateOff
	heldValue := nil! !

!LFO methodsFor: 'controlling' stamp: 'len 23/Mar/2026 19:23:47'!
gateOn
	heldValue := nil.
	mode = #trig ifTrue: [self reset]! !

!LFO methodsFor: 'controlling' stamp: 'len 22/Jan/2026 16:03:40'!
reset
	phase := offset.
	random seed: seed + offset hash.
	randomValue := random next! !

!LFO methodsFor: 'controlling' stamp: 'len 18/Mar/2026 19:06:04'!
update
	| newOffset |
	super update.
	mode := self get: #mode.
	shape := self get: #shape.
	bipolar := self get: #bipolar.
	speed := (self get: #speed) / self class controlRate.
	(newOffset := self get: #offset) = offset ifFalse:
		[phase := phase + newOffset - offset \\ 1.0.
		offset := newOffset].
	mode = #hold ifFalse: [heldValue := nil]! !

!LFO methodsFor: 'initialization' stamp: 'len 18/Mar/2026 20:35:37'!
initialize
	super initialize.
	shape := #sine.
	bipolar := true.
	mode := #free.
	speed := 0.001.
	offset := 0.0.
	seed := DateAndTime nanosecondsTick \\ 16rFFFFFFFF.
	random := Random seed: seed.
	self reset! !

!LFO methodsFor: 'initialization' stamp: 'len 12/Apr/2026 18:29:08'!
initializeControls
	super initializeControls.
	self addSpeedControl: #speed value: 0.1.
	(self addControl: #offset min: 0.0 max: 0.999 value: 0.0) printer: [:x| (x*360) truncated printString, '°'].
	self addChoiceControl: #mode options: #(free trig hold) value: #free.
	self addChoiceControl: #shape options: #(sine square rise fall random) value: #sine.
	self addToggleControl: #bipolar value: true! !

!LFO methodsFor: 'processing' stamp: 'len 22/Jan/2026 16:07:51'!
next
	| value |
	heldValue ifNotNil: [^ heldValue].
	value := self peek.
	shape = #random
		ifTrue:
			[phase := phase + speed.
			phase > 1.0 ifTrue: [phase := phase \\ 1.0. randomValue := random next]]
		ifFalse:
			[phase := phase + speed \\ 1.0].
	mode = #hold ifTrue: [heldValue := value].
	^ value! !

!LFO methodsFor: 'processing' stamp: 'len 22/Jan/2026 16:06:57'!
peek
	bipolar ifTrue:
		[shape = #sine ifTrue: [^ (phase * Float twoPi) sin].
		shape = #square ifTrue: [^ phase < 0.5 ifTrue: [1.0] ifFalse: [-1.0]].
		shape = #rise ifTrue: [^ (phase - 0.5) * 2.0].
		shape = #fall ifTrue: [^ (0.5 - phase) * 2.0].
		shape = #random ifTrue: [^ randomValue * 2.0 - 1.0]].
	"unipolar:"
	shape = #sine ifTrue: [^ ((phase * Float twoPi) sin + 1.0) / 2.0].
	shape = #square ifTrue: [^ phase < 0.5 ifTrue: [1.0] ifFalse: [0.0]].
	shape = #rise ifTrue: [^ phase].
	shape = #fall ifTrue: [^ 1.0 - phase].
	shape = #random ifTrue: [^ randomValue].
	^ self notYetImplemented! !

!LFO methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:17:11'!
tick
	self triggerEvent: #output: with: self next! !

!LFO methodsFor: 'ui' stamp: 'len 6/Apr/2026 20:45:47'!
panel
	^ ControlPanel new
		addTextualControl: (controls at: #speed);
		addTextualControl: (controls at: #offset);
		addChoice: (controls at: #mode);
		addToggle: (controls at: #bipolar) label: '±';
		addChoice: (controls at: #shape)! !

!LFO methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:43'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer
		addControlInput: #speed;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!LFO methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:27'!
screen
	| answer |
	answer := LFOControlMorph new lfo: self.
	self when: #output: send: #addSample: to: answer.
	^ answer! !

!LogAttenuator methodsFor: 'controlling' stamp: 'len 3/Feb/2026 18:03:22'!
input: aNumber
	value := value + aNumber! !

!LogAttenuator methodsFor: 'initialization' stamp: 'len 3/Feb/2026 18:03:22'!
initialize
	super initialize.
	value := 0.0! !

!LogAttenuator methodsFor: 'initialization' stamp: 'len 3/Feb/2026 18:03:22'!
initializeControls
	super initializeControls.
	(self addLogControl: #amount min: 0.0001 max: 1.0 value: 0.01) printer: [:x| (x * 100.0 printStringFractionDigits: x log truncated negated) , '%']! !

!LogAttenuator methodsFor: 'processing' stamp: 'len 3/Feb/2026 18:03:22'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #output: with: value * (self get: #amount). value := 0.0]! !

!LogAttenuator methodsFor: 'ui' stamp: 'len 3/Feb/2026 18:03:22'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!LogAttenuator methodsFor: 'ui' stamp: 'len 3/Feb/2026 18:03:22'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #input: label: 'In';
		addControlInput: #amount;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!VelocityTracker methodsFor: 'controlling' stamp: 'len 7/Mar/2026 18:51:28'!
adjustVelocityBy: aNumber
	velocity := velocity + aNumber min: 1.0 max: 0.0! !

!VelocityTracker methodsFor: 'controlling' stamp: 'len 10/Feb/2026 17:04:27'!
setVelocity: aNumber
	velocity := aNumber! !

!VelocityTracker methodsFor: 'initialization' stamp: 'len 10/Feb/2026 17:04:40'!
initialize
	super initialize.
	velocity := 0.0! !

!VelocityTracker methodsFor: 'initialization' stamp: 'len 10/Feb/2026 17:03:46'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: -1.0 max: 1.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!VelocityTracker methodsFor: 'processing' stamp: 'len 10/Feb/2026 17:04:53'!
tick
	self triggerEvent: #output: with: velocity * (self get: #amount)! !

!VelocityTracker methodsFor: 'ui' stamp: 'len 11/Feb/2026 22:22:48'!
panel
	^ ControlPanel new addKnob: (controls at: #amount)! !

!VelocityTracker methodsFor: 'ui' stamp: 'len 10/Feb/2026 17:03:46'!
patchable
	^ super patchable
		addControlOutput: #output: label: 'Out';
		yourself! !

!DiodeLadder methodsFor: 'controlling' stamp: 'len 29/Jan/2026 03:00:39'!
reset
	s1 := s2 := s3 := s4 := 0.0! !

!DiodeLadder methodsFor: 'controlling' stamp: 'len 29/Jan/2026 14:30:59'!
updateFilterCoefficients
	| g |
	g := (Float pi * frequency) tan.
	ρ := 1.0 / (1.0 + g). "feedback component"
	"Gains are derived from Stage 4 back to Stage 1. This represents the impedance 'seen' by each rung:"
	G4 := g * ρ.
	G3 := g / (1.0 + g - (g * G4)).
	G2 := g / (1.0 + g - (g * G3)).
	G1 := g / (1.0 + g - (g * G2)).
	"Total Loop Gain (gamma):"
	γ := G1 * G2 * G3 * G4.
	"Map Q to resonance (k):"
	k := 17.0 * (1.0 - (0.707 / Q)) max: 0.0.
	k := k min: 17.0! !

!DiodeLadder methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:46'!
tick
	| in σ |
	(outputLP4 isNil and: [outputLP3 isNil and: [outputLP2 isNil and: [outputLP1 isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP4 ifNotNil: [outputLP4 atAllPut: 0.0].
		outputLP3 ifNotNil: [outputLP3 atAllPut: 0.0].
		outputLP2 ifNotNil: [outputLP2 atAllPut: 0.0].
		outputLP1 ifNotNil: [outputLP1 atAllPut: 0.0].
		^ self].
	1 to: input size do: [:i|
		| s1p s2p s3p s4p S v1 v2 v3 v4 y1 y2 y3 y4 |
		in := input at: i.
		"Passband compensation to fix bass-drop at higher resonance:"
"		in := in * (k * 0.5 / 17.0 + 1.0)."
		"Calculate the State Feedback (S):"
		s1p := s1 * ρ.
		s2p := s2 * ρ.
		s3p := s3 * ρ.
		s4p := s4 * ρ.
		S := G1 * (G2 * (G3 * s4p + s3p) + s2p) + s1p.
		"Feedback Solver (Sigma). using tanh here keeps the scream stable:"
		σ := (in - (k * S tanh)) / (1.0 + (k * γ)).
		"Update Stages (Forward Processing):
		Stage 1:"
		v1 := (σ - s1p) * G1.
		y1 := v1 + s1p.
		s1 := y1 + v1.
		"Stage 2:"
		v2 := (y1 - s2p) * G2.
		y2 := v2 + s2p.
		s2 := y2 + v2.
		"Stage 3:"
		v3 := (y2 - s3p) * G3.
		y3 := v3 + s3p.
		s3 := y3 + v3.
		"Stage 4:"
		v4 := (y3 - s4p) * G4.
		y4 := v4 + s4p.
		s4 := y4 + v4.
		outputLP4 ifNotNil: [outputLP4 at: i put: y4].
		outputLP3 ifNotNil: [outputLP3 at: i put: y3].
		outputLP2 ifNotNil: [outputLP2 at: i put: y2].
		outputLP1 ifNotNil: [outputLP1 at: i put: y1]]! !

!DiodeLadder methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:50'!
tick2
	| in σ |
	(outputLP4 isNil and: [outputLP3 isNil and: [outputLP2 isNil and: [outputLP1 isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP4 ifNotNil: [outputLP4 atAllPut: 0.0].
		outputLP3 ifNotNil: [outputLP3 atAllPut: 0.0].
		outputLP2 ifNotNil: [outputLP2 atAllPut: 0.0].
		outputLP1 ifNotNil: [outputLP1 atAllPut: 0.0].
		^ self].
	1 to: input size do: [:i|
		| s1p s2p s3p s4p S v1 v2 v3 v4 y1 y2 y3 y4 |
		in := input at: i.
		"Passband compensation to fix bass-drop at higher resonance:"
"		in := in * (k * 0.5 / 17.0 + 1.0)."
		"Calculate the State Feedback (S):"
		s1p := s1 * ρ.
		s2p := s2 * ρ.
		s3p := s3 * ρ.
		s4p := s4 * ρ.
		S := G1 * (G2 * (G3 * s4p + s3p) + s2p) + s1p.
		"Feedback Solver (Sigma). using tanh here keeps the scream stable:"
		σ := (in - (k * S tanh)) / (1.0 + (k * γ)).
		"Update Stages (Forward Processing):
		Stage 1:"
		v1 := (σ - s1p) * G1.
		y1 := v1 + s1p.
		s1 := y1 + v1.
		"Stage 2:"
		v2 := (y1 - s2p) * G2.
		y2 := v2 + s2p.
		s2 := y2 + v2.
		"Stage 3:"
		v3 := (y2 - s3p) * G3.
		y3 := v3 + s3p.
		s3 := y3 + v3.
		"Stage 4:"
		v4 := (y3 - s4p) * G4.
		y4 := v4 + s4p.
		s4 := y4 + v4.
		outputLP4 ifNotNil: [outputLP4 at: i put: y4].
		outputLP3 ifNotNil: [outputLP3 at: i put: y3].
		outputLP2 ifNotNil: [outputLP2 at: i put: y2].
		outputLP1 ifNotNil: [outputLP1 at: i put: y1]]! !

!DiodeLadder methodsFor: 'ui' stamp: 'len 29/Jan/2026 03:00:39'!
patchable
	^ super patchable
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1';
		yourself! !

!DiodeLadder methodsFor: 'ui' stamp: 'len 12/Apr/2026 03:59:13'!
screen
	^ super screen mode: #LP! !

!DiodeLadder methodsFor: 'wiring' stamp: 'len 29/Jan/2026 03:00:39'!
setOutputLP1: aBuffer
	outputLP1 := aBuffer! !

!DiodeLadder methodsFor: 'wiring' stamp: 'len 29/Jan/2026 03:00:39'!
setOutputLP2: aBuffer
	outputLP2 := aBuffer! !

!DiodeLadder methodsFor: 'wiring' stamp: 'len 29/Jan/2026 03:00:39'!
setOutputLP3: aBuffer
	outputLP3 := aBuffer! !

!DiodeLadder methodsFor: 'wiring' stamp: 'len 29/Jan/2026 03:00:39'!
setOutputLP4: aBuffer
	outputLP4 := aBuffer! !

!Oscilloscope methodsFor: 'initialization' stamp: 'len 3/Apr/2026 00:21:55'!
initialize
	super initialize.
	delayLine := DelayLine new: 64! !

!Oscilloscope methodsFor: 'processing' stamp: 'len 3/Apr/2026 00:36:32'!
tick
	| i |
	input ifNil: [^ self].
	i := 1.
	[i <= input size] whileTrue: [delayLine write: ((input at: i) min: 1.0 max: -1.0). i := i + 8]. "assume the block size is divisible by 8"
	self triggerEvent: #changed! !

!Oscilloscope methodsFor: 'ui' stamp: 'len 3/Apr/2026 00:29:06'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := OscilloscopeMorph new buffer: delayLine buffer.
	self when: #changed send: #redrawNeeded to: display.
	answer body addMorph: display.
	answer addAudioInput: #setInput:.
	^ answer! !

!Oscilloscope methodsFor: 'wiring' stamp: 'len 3/Apr/2026 00:17:56'!
setInput: aBuffer
	input := aBuffer! !

!Spectrogram methodsFor: 'controlling' stamp: 'len 3/Apr/2026 15:52:40'!
reset
	image fillColor: Color transparent! !

!Spectrogram methodsFor: 'controlling' stamp: 'len 3/Apr/2026 16:46:59'!
update
	| n |
	super update.
	frequencyScale := self get: #frequencyScale.
	n := self get: #windowSize.
	(stft notNil and: [n = stft size])
		ifFalse:
			[stft := STFT new: n.
			hop := (stft size * 0.5) truncated.
			buffer := Float32Array new: stft size.
			bufferIndex := 1]! !

!Spectrogram methodsFor: 'initialization' stamp: 'len 3/Apr/2026 15:52:40'!
defaultExtent
	^ 256@128! !

!Spectrogram methodsFor: 'initialization' stamp: 'len 3/Apr/2026 16:38:21'!
initialize
	super initialize.
	image := Form extent: self defaultExtent + (0 @ 2) depth: 32.
	image fillColor: Color transparent.
	position := 0.
	colormap := WordArray new: Viridis size.
	1 to: Viridis size do: [:i| colormap at: i put: (image pixelValueFor: (Viridis at: i))].
	logSpectrum := Float32Array new: image width.
	frequencyScale := #linear! !

!Spectrogram methodsFor: 'initialization' stamp: 'len 3/Apr/2026 16:35:40'!
initializeControls
	super initializeControls.
	self addChoiceControl: #windowSize options: #(256 512 1024 2048 4096) value: 512.
	self addChoiceControl: #frequencyScale options: #(linear log) value: #linear! !

!Spectrogram methodsFor: 'processing' stamp: 'len 3/Apr/2026 19:23:41'!
tick
	| h j remaining k changed |
	input ifNil: [^ self].
	h := image height.
	changed := false.
	j := 1.
	remaining := input size.
	[remaining > 0] whileTrue:
		[k := buffer size - bufferIndex + 1 min: remaining.
		buffer replaceFrom: bufferIndex to: bufferIndex + k - 1 with: input startingAt: j.
		j := j + k.
		remaining := remaining - k.
		bufferIndex := bufferIndex + k.
		bufferIndex > buffer size ifTrue:
			[self drawNextSpectrumFrame.
			bufferIndex := bufferIndex - hop.
			buffer replaceFrom: 1 to: hop with: buffer startingAt: hop + 1].
			changed := true].
	changed ifTrue: [self triggerEvent: #positionChanged: with: position]! !

!Spectrogram methodsFor: 'ui' stamp: 'len 4/Apr/2026 23:00:13'!
panel
	^ ControlPanel new
		addChoice: (controls at: #windowSize);
		addChoice: (controls at: #frequencyScale)! !

!Spectrogram methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:57'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer flap addMorph: self panel.
	answer addAudioInput: #setInput:.
	^ answer! !

!Spectrogram methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:05:51'!
screen
	| answer |
	answer := WaterfallMorph new image: image.
	self when: #positionChanged: send: #position: to: answer.
	^ answer! !

!Spectrogram methodsFor: 'wiring' stamp: 'len 3/Apr/2026 15:52:40'!
setInput: aBuffer
	input := aBuffer.
	self reset! !

!Spectrogram methodsFor: 'private' stamp: 'len 3/Apr/2026 15:52:40'!
drawNextLinearSpectrumFrame
	| w s spectrum |
	w := image width.
	s := stft size / 2.0 / w.
	spectrum := stft spectrumFrom: buffer.
	0 to: w - 1 do: [:i| | v c |
		v := spectrum at: (i * s) truncated + 1.
		c := colormap at: (v * (colormap size - 1)) truncated + 1.
		image pixelValueAt: i @ position put: c].
	position := position - 1 \\ image height! !

!Spectrogram methodsFor: 'private' stamp: 'len 3/Apr/2026 15:52:40'!
drawNextLogSpectrumFrame
	| w |
	w := image width.
	stft logSpectrumFrom: buffer into: logSpectrum.
	1 to: w do: [:i| | v c |
		v := logSpectrum at: i.
		c := colormap at: (v * (colormap size - 1)) truncated + 1.
		image pixelValueAt: i - 1 @ position put: c].
	position := position - 1 \\ image height! !

!Spectrogram methodsFor: 'private' stamp: 'len 3/Apr/2026 15:52:40'!
drawNextSpectrumFrame
	frequencyScale = #linear ifTrue: [self drawNextLinearSpectrumFrame] ifFalse: [self drawNextLogSpectrumFrame]! !

!Spectrogram class methodsFor: 'class initialization' stamp: 'len 3/Apr/2026 15:52:40'!
initialize
	super initialize.
	self initializeViridis; initializeInferno! !

!Spectrogram class methodsFor: 'class initialization' stamp: 'len 3/Apr/2026 15:52:40'!
initializeInferno
	Smalltalk at: #Inferno put: (#((0.001462 0.000466 0.013866)
                 (0.002267 0.001270 0.018570)
                 (0.003299 0.002249 0.024239)
                 (0.004547 0.003392 0.030909)
                 (0.006006 0.004692 0.038558)
                 (0.007676 0.006136 0.046836)
                 (0.009561 0.007713 0.055143)
                 (0.011663 0.009417 0.063460)
                 (0.013995 0.011225 0.071862)
                 (0.016561 0.013136 0.080282)
                 (0.019373 0.015133 0.088767)
                 (0.022447 0.017199 0.097327)
                 (0.025793 0.019331 0.105930)
                 (0.029432 0.021503 0.114621)
                 (0.033385 0.023702 0.123397)
                 (0.037668 0.025921 0.132232)
                 (0.042253 0.028139 0.141141)
                 (0.046915 0.030324 0.150164)
                 (0.051644 0.032474 0.159254)
                 (0.056449 0.034569 0.168414)
                 (0.061340 0.036590 0.177642)
                 (0.066331 0.038504 0.186962)
                 (0.071429 0.040294 0.196354)
                 (0.076637 0.041905 0.205799)
                 (0.081962 0.043328 0.215289)
                 (0.087411 0.044556 0.224813)
                 (0.092990 0.045583 0.234358)
                 (0.098702 0.046402 0.243904)
                 (0.104551 0.047008 0.253430)
                 (0.110536 0.047399 0.262912)
                 (0.116656 0.047574 0.272321)
                 (0.122908 0.047536 0.281624)
                 (0.129285 0.047293 0.290788)
                 (0.135778 0.046856 0.299776)
                 (0.142378 0.046242 0.308553)
                 (0.149073 0.045468 0.317085)
                 (0.155850 0.044559 0.325338)
                 (0.162689 0.043554 0.333277)
                 (0.169575 0.042489 0.340874)
                 (0.176493 0.041402 0.348111)
                 (0.183429 0.040329 0.354971)
                 (0.190367 0.039309 0.361447)
                 (0.197297 0.038400 0.367535)
                 (0.204209 0.037632 0.373238)
                 (0.211095 0.037030 0.378563)
                 (0.217949 0.036615 0.383522)
                 (0.224763 0.036405 0.388129)
                 (0.231538 0.036405 0.392400)
                 (0.238273 0.036621 0.396353)
                 (0.244967 0.037055 0.400007)
                 (0.251620 0.037705 0.403378)
                 (0.258234 0.038571 0.406485)
                 (0.264810 0.039647 0.409345)
                 (0.271347 0.040922 0.411976)
                 (0.277850 0.042353 0.414392)
                 (0.284321 0.043933 0.416608)
                 (0.290763 0.045644 0.418637)
                 (0.297178 0.047470 0.420491)
                 (0.303568 0.049396 0.422182)
                 (0.309935 0.051407 0.423721)
                 (0.316282 0.053490 0.425116)
                 (0.322610 0.055634 0.426377)
                 (0.328921 0.057827 0.427511)
                 (0.335217 0.060060 0.428524)
                 (0.341500 0.062325 0.429425)
                 (0.347771 0.064616 0.430217)
                 (0.354032 0.066925 0.430906)
                 (0.360284 0.069247 0.431497)
                 (0.366529 0.071579 0.431994)
                 (0.372768 0.073915 0.432400)
                 (0.379001 0.076253 0.432719)
                 (0.385228 0.078591 0.432955)
                 (0.391453 0.080927 0.433109)
                 (0.397674 0.083257 0.433183)
                 (0.403894 0.085580 0.433179)
                 (0.410113 0.087896 0.433098)
                 (0.416331 0.090203 0.432943)
                 (0.422549 0.092501 0.432714)
                 (0.428768 0.094790 0.432412)
                 (0.434987 0.097069 0.432039)
                 (0.441207 0.099338 0.431594)
                 (0.447428 0.101597 0.431080)
                 (0.453651 0.103848 0.430498)
                 (0.459875 0.106089 0.429846)
                 (0.466100 0.108322 0.429125)
                 (0.472328 0.110547 0.428334)
                 (0.478558 0.112764 0.427475)
                 (0.484789 0.114974 0.426548)
                 (0.491022 0.117179 0.425552)
                 (0.497257 0.119379 0.424488)
                 (0.503493 0.121575 0.423356)
                 (0.509730 0.123769 0.422156)
                 (0.515967 0.125960 0.420887)
                 (0.522206 0.128150 0.419549)
                 (0.528444 0.130341 0.418142)
                 (0.534683 0.132534 0.416667)
                 (0.540920 0.134729 0.415123)
                 (0.547157 0.136929 0.413511)
                 (0.553392 0.139134 0.411829)
                 (0.559624 0.141346 0.410078)
                 (0.565854 0.143567 0.408258)
                 (0.572081 0.145797 0.406369)
                 (0.578304 0.148039 0.404411)
                 (0.584521 0.150294 0.402385)
                 (0.590734 0.152563 0.400290)
                 (0.596940 0.154848 0.398125)
                 (0.603139 0.157151 0.395891)
                 (0.609330 0.159474 0.393589)
                 (0.615513 0.161817 0.391219)
                 (0.621685 0.164184 0.388781)
                 (0.627847 0.166575 0.386276)
                 (0.633998 0.168992 0.383704)
                 (0.640135 0.171438 0.381065)
                 (0.646260 0.173914 0.378359)
                 (0.652369 0.176421 0.375586)
                 (0.658463 0.178962 0.372748)
                 (0.664540 0.181539 0.369846)
                 (0.670599 0.184153 0.366879)
                 (0.676638 0.186807 0.363849)
                 (0.682656 0.189501 0.360757)
                 (0.688653 0.192239 0.357603)
                 (0.694627 0.195021 0.354388)
                 (0.700576 0.197851 0.351113)
                 (0.706500 0.200728 0.347777)
                 (0.712396 0.203656 0.344383)
                 (0.718264 0.206636 0.340931)
                 (0.724103 0.209670 0.337424)
                 (0.729909 0.212759 0.333861)
                 (0.735683 0.215906 0.330245)
                 (0.741423 0.219112 0.326576)
                 (0.747127 0.222378 0.322856)
                 (0.752794 0.225706 0.319085)
                 (0.758422 0.229097 0.315266)
                 (0.764010 0.232554 0.311399)
                 (0.769556 0.236077 0.307485)
                 (0.775059 0.239667 0.303526)
                 (0.780517 0.243327 0.299523)
                 (0.785929 0.247056 0.295477)
                 (0.791293 0.250856 0.291390)
                 (0.796607 0.254728 0.287264)
                 (0.801871 0.258674 0.283099)
                 (0.807082 0.262692 0.278898)
                 (0.812239 0.266786 0.274661)
                 (0.817341 0.270954 0.270390)
                 (0.822386 0.275197 0.266085)
                 (0.827372 0.279517 0.261750)
                 (0.832299 0.283913 0.257383)
                 (0.837165 0.288385 0.252988)
                 (0.841969 0.292933 0.248564)
                 (0.846709 0.297559 0.244113)
                 (0.851384 0.302260 0.239636)
                 (0.855992 0.307038 0.235133)
                 (0.860533 0.311892 0.230606)
                 (0.865006 0.316822 0.226055)
                 (0.869409 0.321827 0.221482)
                 (0.873741 0.326906 0.216886)
                 (0.878001 0.332060 0.212268)
                 (0.882188 0.337287 0.207628)
                 (0.886302 0.342586 0.202968)
                 (0.890341 0.347957 0.198286)
                 (0.894305 0.353399 0.193584)
                 (0.898192 0.358911 0.188860)
                 (0.902003 0.364492 0.184116)
                 (0.905735 0.370140 0.179350)
                 (0.909390 0.375856 0.174563)
                 (0.912966 0.381636 0.169755)
                 (0.916462 0.387481 0.164924)
                 (0.919879 0.393389 0.160070)
                 (0.923215 0.399359 0.155193)
                 (0.926470 0.405389 0.150292)
                 (0.929644 0.411479 0.145367)
                 (0.932737 0.417627 0.140417)
                 (0.935747 0.423831 0.135440)
                 (0.938675 0.430091 0.130438)
                 (0.941521 0.436405 0.125409)
                 (0.944285 0.442772 0.120354)
                 (0.946965 0.449191 0.115272)
                 (0.949562 0.455660 0.110164)
                 (0.952075 0.462178 0.105031)
                 (0.954506 0.468744 0.099874)
                 (0.956852 0.475356 0.094695)
                 (0.959114 0.482014 0.089499)
                 (0.961293 0.488716 0.084289)
                 (0.963387 0.495462 0.079073)
                 (0.965397 0.502249 0.073859)
                 (0.967322 0.509078 0.068659)
                 (0.969163 0.515946 0.063488)
                 (0.970919 0.522853 0.058367)
                 (0.972590 0.529798 0.053324)
                 (0.974176 0.536780 0.048392)
                 (0.975677 0.543798 0.043618)
                 (0.977092 0.550850 0.039050)
                 (0.978422 0.557937 0.034931)
                 (0.979666 0.565057 0.031409)
                 (0.980824 0.572209 0.028508)
                 (0.981895 0.579392 0.026250)
                 (0.982881 0.586606 0.024661)
                 (0.983779 0.593849 0.023770)
                 (0.984591 0.601122 0.023606)
                 (0.985315 0.608422 0.024202)
                 (0.985952 0.615750 0.025592)
                 (0.986502 0.623105 0.027814)
                 (0.986964 0.630485 0.030908)
                 (0.987337 0.637890 0.034916)
                 (0.987622 0.645320 0.039886)
                 (0.987819 0.652773 0.045581)
                 (0.987926 0.660250 0.051750)
                 (0.987945 0.667748 0.058329)
                 (0.987874 0.675267 0.065257)
                 (0.987714 0.682807 0.072489)
                 (0.987464 0.690366 0.079990)
                 (0.987124 0.697944 0.087731)
                 (0.986694 0.705540 0.095694)
                 (0.986175 0.713153 0.103863)
                 (0.985566 0.720782 0.112229)
                 (0.984865 0.728427 0.120785)
                 (0.984075 0.736087 0.129527)
                 (0.983196 0.743758 0.138453)
                 (0.982228 0.751442 0.147565)
                 (0.981173 0.759135 0.156863)
                 (0.980032 0.766837 0.166353)
                 (0.978806 0.774545 0.176037)
                 (0.977497 0.782258 0.185923)
                 (0.976108 0.789974 0.196018)
                 (0.974638 0.797692 0.206332)
                 (0.973088 0.805409 0.216877)
                 (0.971468 0.813122 0.227658)
                 (0.969783 0.820825 0.238686)
                 (0.968041 0.828515 0.249972)
                 (0.966243 0.836191 0.261534)
                 (0.964394 0.843848 0.273391)
                 (0.962517 0.851476 0.285546)
                 (0.960626 0.859069 0.298010)
                 (0.958720 0.866624 0.310820)
                 (0.956834 0.874129 0.323974)
                 (0.954997 0.881569 0.337475)
                 (0.953215 0.888942 0.351369)
                 (0.951546 0.896226 0.365627)
                 (0.950018 0.903409 0.380271)
                 (0.948683 0.910473 0.395289)
                 (0.947594 0.917399 0.410665)
                 (0.946809 0.924168 0.426373)
                 (0.946392 0.930761 0.442367)
                 (0.946403 0.937159 0.458592)
                 (0.946903 0.943348 0.474970)
                 (0.947937 0.949318 0.491426)
                 (0.949545 0.955063 0.507860)
                 (0.951740 0.960587 0.524203)
                 (0.954529 0.965896 0.540361)
                 (0.957896 0.971003 0.556275)
                 (0.961812 0.975924 0.571925)
                 (0.966249 0.980678 0.587206)
                 (0.971162 0.985282 0.602154)
                 (0.976511 0.989753 0.616760)
                 (0.982257 0.994109 0.631017)
                 (0.988362 0.998364 0.644924)) collect: [:each| Color fromArray: each])! !

!Spectrogram class methodsFor: 'class initialization' stamp: 'len 3/Apr/2026 15:52:40'!
initializeViridis
	Smalltalk at: #Viridis put: (#((0.267004 0.004874 0.329415)
                 (0.268510 0.009605 0.335427)
                 (0.269944 0.014625 0.341379)
                 (0.271305 0.019942 0.347269)
                 (0.272594 0.025563 0.353093)
                 (0.273809 0.031497 0.358853)
                 (0.274952 0.037752 0.364543)
                 (0.276022 0.044167 0.370164)
                 (0.277018 0.050344 0.375715)
                 (0.277941 0.056324 0.381191)
                 (0.278791 0.062145 0.386592)
                 (0.279566 0.067836 0.391917)
                 (0.280267 0.073417 0.397163)
                 (0.280894 0.078907 0.402329)
                 (0.281446 0.084320 0.407414)
                 (0.281924 0.089666 0.412415)
                 (0.282327 0.094955 0.417331)
                 (0.282656 0.100196 0.422160)
                 (0.282910 0.105393 0.426902)
                 (0.283091 0.110553 0.431554)
                 (0.283197 0.115680 0.436115)
                 (0.283229 0.120777 0.440584)
                 (0.283187 0.125848 0.444960)
                 (0.283072 0.130895 0.449241)
                 (0.282884 0.135920 0.453427)
                 (0.282623 0.140926 0.457517)
                 (0.282290 0.145912 0.461510)
                 (0.281887 0.150881 0.465405)
                 (0.281412 0.155834 0.469201)
                 (0.280868 0.160771 0.472899)
                 (0.280255 0.165693 0.476498)
                 (0.279574 0.170599 0.479997)
                 (0.278826 0.175490 0.483397)
                 (0.278012 0.180367 0.486697)
                 (0.277134 0.185228 0.489898)
                 (0.276194 0.190074 0.493001)
                 (0.275191 0.194905 0.496005)
                 (0.274128 0.199721 0.498911)
                 (0.273006 0.204520 0.501721)
                 (0.271828 0.209303 0.504434)
                 (0.270595 0.214069 0.507052)
                 (0.269308 0.218818 0.509577)
                 (0.267968 0.223549 0.512008)
                 (0.266580 0.228262 0.514349)
                 (0.265145 0.232956 0.516599)
                 (0.263663 0.237631 0.518762)
                 (0.262138 0.242286 0.520837)
                 (0.260571 0.246922 0.522828)
                 (0.258965 0.251537 0.524736)
                 (0.257322 0.256130 0.526563)
                 (0.255645 0.260703 0.528312)
                 (0.253935 0.265254 0.529983)
                 (0.252194 0.269783 0.531579)
                 (0.250425 0.274290 0.533103)
                 (0.248629 0.278775 0.534556)
                 (0.246811 0.283237 0.535941)
                 (0.244972 0.287675 0.537260)
                 (0.243113 0.292092 0.538516)
                 (0.241237 0.296485 0.539709)
                 (0.239346 0.300855 0.540844)
                 (0.237441 0.305202 0.541921)
                 (0.235526 0.309527 0.542944)
                 (0.233603 0.313828 0.543914)
                 (0.231674 0.318106 0.544834)
                 (0.229739 0.322361 0.545706)
                 (0.227802 0.326594 0.546532)
                 (0.225863 0.330805 0.547314)
                 (0.223925 0.334994 0.548053)
                 (0.221989 0.339161 0.548752)
                 (0.220057 0.343307 0.549413)
                 (0.218130 0.347432 0.550038)
                 (0.216210 0.351535 0.550627)
                 (0.214298 0.355619 0.551184)
                 (0.212395 0.359683 0.551710)
                 (0.210503 0.363727 0.552206)
                 (0.208623 0.367752 0.552675)
                 (0.206756 0.371758 0.553117)
                 (0.204903 0.375746 0.553533)
                 (0.203063 0.379716 0.553925)
                 (0.201239 0.383670 0.554294)
                 (0.199430 0.387607 0.554642)
                 (0.197636 0.391528 0.554969)
                 (0.195860 0.395433 0.555276)
                 (0.194100 0.399323 0.555565)
                 (0.192357 0.403199 0.555836)
                 (0.190631 0.407061 0.556089)
                 (0.188923 0.410910 0.556326)
                 (0.187231 0.414746 0.556547)
                 (0.185556 0.418570 0.556753)
                 (0.183898 0.422383 0.556944)
                 (0.182256 0.426184 0.557120)
                 (0.180629 0.429975 0.557282)
                 (0.179019 0.433756 0.557430)
                 (0.177423 0.437527 0.557565)
                 (0.175841 0.441290 0.557685)
                 (0.174274 0.445044 0.557792)
                 (0.172719 0.448791 0.557885)
                 (0.171176 0.452530 0.557965)
                 (0.169646 0.456262 0.558030)
                 (0.168126 0.459988 0.558082)
                 (0.166617 0.463708 0.558119)
                 (0.165117 0.467423 0.558141)
                 (0.163625 0.471133 0.558148)
                 (0.162142 0.474838 0.558140)
                 (0.160665 0.478540 0.558115)
                 (0.159194 0.482237 0.558073)
                 (0.157729 0.485932 0.558013)
                 (0.156270 0.489624 0.557936)
                 (0.154815 0.493313 0.557840)
                 (0.153364 0.497000 0.557724)
                 (0.151918 0.500685 0.557587)
                 (0.150476 0.504369 0.557430)
                 (0.149039 0.508051 0.557250)
                 (0.147607 0.511733 0.557049)
                 (0.146180 0.515413 0.556823)
                 (0.144759 0.519093 0.556572)
                 (0.143343 0.522773 0.556295)
                 (0.141935 0.526453 0.555991)
                 (0.140536 0.530132 0.555659)
                 (0.139147 0.533812 0.555298)
                 (0.137770 0.537492 0.554906)
                 (0.136408 0.541173 0.554483)
                 (0.135066 0.544853 0.554029)
                 (0.133743 0.548535 0.553541)
                 (0.132444 0.552216 0.553018)
                 (0.131172 0.555899 0.552459)
                 (0.129933 0.559582 0.551864)
                 (0.128729 0.563265 0.551229)
                 (0.127568 0.566949 0.550556)
                 (0.126453 0.570633 0.549841)
                 (0.125394 0.574318 0.549086)
                 (0.124395 0.578002 0.548287)
                 (0.123463 0.581687 0.547445)
                 (0.122606 0.585371 0.546557)
                 (0.121831 0.589055 0.545623)
                 (0.121148 0.592739 0.544641)
                 (0.120565 0.596422 0.543611)
                 (0.120092 0.600104 0.542530)
                 (0.119738 0.603785 0.541400)
                 (0.119512 0.607464 0.540218)
                 (0.119423 0.611141 0.538982)
                 (0.119483 0.614817 0.537692)
                 (0.119699 0.618490 0.536347)
                 (0.120081 0.622161 0.534946)
                 (0.120638 0.625828 0.533488)
                 (0.121380 0.629492 0.531973)
                 (0.122312 0.633153 0.530398)
                 (0.123444 0.636809 0.528763)
                 (0.124780 0.640461 0.527068)
                 (0.126326 0.644107 0.525311)
                 (0.128087 0.647749 0.523491)
                 (0.130067 0.651384 0.521608)
                 (0.132268 0.655014 0.519661)
                 (0.134692 0.658636 0.517649)
                 (0.137339 0.662252 0.515571)
                 (0.140210 0.665859 0.513427)
                 (0.143303 0.669459 0.511215)
                 (0.146616 0.673050 0.508936)
                 (0.150148 0.676631 0.506589)
                 (0.153894 0.680203 0.504172)
                 (0.157851 0.683765 0.501686)
                 (0.162016 0.687316 0.499129)
                 (0.166383 0.690856 0.496502)
                 (0.170948 0.694384 0.493803)
                 (0.175707 0.697900 0.491033)
                 (0.180653 0.701402 0.488189)
                 (0.185783 0.704891 0.485273)
                 (0.191090 0.708366 0.482284)
                 (0.196571 0.711827 0.479221)
                 (0.202219 0.715272 0.476084)
                 (0.208030 0.718701 0.472873)
                 (0.214000 0.722114 0.469588)
                 (0.220124 0.725509 0.466226)
                 (0.226397 0.728888 0.462789)
                 (0.232815 0.732247 0.459277)
                 (0.239374 0.735588 0.455688)
                 (0.246070 0.738910 0.452024)
                 (0.252899 0.742211 0.448284)
                 (0.259857 0.745492 0.444467)
                 (0.266941 0.748751 0.440573)
                 (0.274149 0.751988 0.436601)
                 (0.281477 0.755203 0.432552)
                 (0.288921 0.758394 0.428426)
                 (0.296479 0.761561 0.424223)
                 (0.304148 0.764704 0.419943)
                 (0.311925 0.767822 0.415586)
                 (0.319809 0.770914 0.411152)
                 (0.327796 0.773980 0.406640)
                 (0.335885 0.777018 0.402049)
                 (0.344074 0.780029 0.397381)
                 (0.352360 0.783011 0.392636)
                 (0.360741 0.785964 0.387814)
                 (0.369214 0.788888 0.382914)
                 (0.377779 0.791781 0.377939)
                 (0.386433 0.794644 0.372886)
                 (0.395174 0.797475 0.367757)
                 (0.404001 0.800275 0.362552)
                 (0.412913 0.803041 0.357269)
                 (0.421908 0.805774 0.351910)
                 (0.430983 0.808473 0.346476)
                 (0.440137 0.811138 0.340967)
                 (0.449368 0.813768 0.335384)
                 (0.458674 0.816363 0.329727)
                 (0.468053 0.818921 0.323998)
                 (0.477504 0.821444 0.318195)
                 (0.487026 0.823929 0.312321)
                 (0.496615 0.826376 0.306377)
                 (0.506271 0.828786 0.300362)
                 (0.515992 0.831158 0.294279)
                 (0.525776 0.833491 0.288127)
                 (0.535621 0.835785 0.281908)
                 (0.545524 0.838039 0.275626)
                 (0.555484 0.840254 0.269281)
                 (0.565498 0.842430 0.262877)
                 (0.575563 0.844566 0.256415)
                 (0.585678 0.846661 0.249897)
                 (0.595839 0.848717 0.243329)
                 (0.606045 0.850733 0.236712)
                 (0.616293 0.852709 0.230052)
                 (0.626579 0.854645 0.223353)
                 (0.636902 0.856542 0.216620)
                 (0.647257 0.858400 0.209861)
                 (0.657642 0.860219 0.203082)
                 (0.668054 0.861999 0.196293)
                 (0.678489 0.863742 0.189503)
                 (0.688944 0.865448 0.182725)
                 (0.699415 0.867117 0.175971)
                 (0.709898 0.868751 0.169257)
                 (0.720391 0.870350 0.162603)
                 (0.730889 0.871916 0.156029)
                 (0.741388 0.873449 0.149561)
                 (0.751884 0.874951 0.143228)
                 (0.762373 0.876424 0.137064)
                 (0.772852 0.877868 0.131109)
                 (0.783315 0.879285 0.125405)
                 (0.793760 0.880678 0.120005)
                 (0.804182 0.882046 0.114965)
                 (0.814576 0.883393 0.110347)
                 (0.824940 0.884720 0.106217)
                 (0.835270 0.886029 0.102646)
                 (0.845561 0.887322 0.099702)
                 (0.855810 0.888601 0.097452)
                 (0.866013 0.889868 0.095953)
                 (0.876168 0.891125 0.095250)
                 (0.886271 0.892374 0.095374)
                 (0.896320 0.893616 0.096335)
                 (0.906311 0.894855 0.098125)
                 (0.916242 0.896091 0.100717)
                 (0.926106 0.897330 0.104071)
                 (0.935904 0.898570 0.108131)
                 (0.945636 0.899815 0.112838)
                 (0.955300 0.901065 0.118128)
                 (0.964894 0.902323 0.123941)
                 (0.974417 0.903590 0.130215)
                 (0.983868 0.904867 0.136897)
                 (0.993248 0.906157 0.143936)) collect: [:each| Color fromArray: each])! !

!SpectrumAnalyzer methodsFor: 'controlling' stamp: 'len 3/Apr/2026 19:26:50'!
reset
	buffer atAllPut: 0.0.
	spectrum atAllPut: 0.0! !

!SpectrumAnalyzer methodsFor: 'controlling' stamp: 'len 3/Apr/2026 19:25:48'!
update
	| n |
	super update.
	n := self get: #windowSize.
	(stft notNil and: [n = stft size])
		ifFalse:
			[stft := STFT new: n.
			spectrum := Float32Array new: stft size / 2.
			buffer := Float32Array new: stft size.
			bufferIndex := 1.
			self triggerEvent: #spectrumBufferChanged: with: spectrum]! !

!SpectrumAnalyzer methodsFor: 'initialization' stamp: 'len 3/Apr/2026 18:59:48'!
initializeControls
	super initializeControls.
	self addChoiceControl: #windowSize options: #(256 512 1024 2048 4096) value: 512.
	self addChoiceControl: #frequencyScale options: #(linear log) value: #linear.
	self addChoiceControl: #displayMode options: #(bars outline) value: #bars! !

!SpectrumAnalyzer methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:25:28'!
tick
	| j remaining k changed |
	input ifNil: [^ self].
	changed := false.
	j := 1.
	remaining := input size.
	[remaining > 0] whileTrue:
		[k := buffer size - bufferIndex + 1.
		k := k min: remaining.
		buffer replaceFrom: bufferIndex to: bufferIndex + k - 1 with: input startingAt: j.
		j := j + k.
		remaining := remaining - k.
		bufferIndex := bufferIndex + k.
		bufferIndex > buffer size ifTrue:
			[spectrum +=​ (stft spectrumFrom: buffer); *= 0.5.
			bufferIndex := 1.
			changed := true]].
	changed ifTrue: [self triggerEvent: #changed]! !

!SpectrumAnalyzer methodsFor: 'ui' stamp: 'len 3/Apr/2026 19:33:31'!
patchable
	| answer display panel |
	answer := PatchableMorph new model: self.
	display := SpectrumMorph new spectrum: spectrum.
	self when: #spectrumBufferChanged: send: #spectrum: to: display.
	self when: #changed send: #redrawNeeded to: display.
	answer body addMorph: display.
	panel := ControlPanel new.
	panel
		addChoice: (controls at: #windowSize);
		addMorph: (PluggableChoiceMorph new options: #(linear log); model: display; getter: #frequencyScale; setter: #frequencyScale:);
		addMorph: (PluggableChoiceMorph new options: #(bars outline); model: display; getter: #displayMode; setter: #displayMode:).
	answer flap addMorph: panel.
	answer addAudioInput: #setInput:.
	^ answer! !

!SpectrumAnalyzer methodsFor: 'wiring' stamp: 'len 3/Apr/2026 19:27:01'!
setInput: aBuffer
	input := aBuffer! !

!Vectorscope methodsFor: 'controlling' stamp: 'len 3/Apr/2026 15:36:40'!
reset
	image fillBlack! !

!Vectorscope methodsFor: 'initialization' stamp: 'len 3/Apr/2026 19:41:25'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	image := Form extent: 128 @ 128 depth: 32.
	image fillBlack! !

!Vectorscope methodsFor: 'processing' stamp: 'len 4/Apr/2026 20:25:05'!
tick
	| h i x0 y0 x y c |
	(inputX isNil or: [inputY isNil]) ifTrue: [^ self].
	h := image width / 2.0.
	i := 1.
	c := image pixelValueFor: color.
	[(i  := i + 8) <= inputX size] whileTrue: "assuming block size is divisible by 8"
		[x0 := inputX at: i.
		y0 := inputY at: i.
		x := (((x0 min: 0.999 max: -0.999) + 1.0) * h) truncated.
		y := (((y0 min: 0.999 max: -0.999) + 1.0) * h) truncated.
		image pixelValueAt: x @ y put: c]! !

!Vectorscope methodsFor: 'ui' stamp: 'len 12/Apr/2026 18:16:45'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInputX: label: 'X';
		addAudioInput: #setInputY: label: 'Y'.
	^ answer! !

!Vectorscope methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:05'!
screen
	^ PhosphorDisplayMorph new image: image! !

!Vectorscope methodsFor: 'wiring' stamp: 'len 3/Apr/2026 15:39:23'!
setInputX: aBuffer
	inputX := aBuffer! !

!Vectorscope methodsFor: 'wiring' stamp: 'len 3/Apr/2026 15:39:17'!
setInputY: aBuffer
	inputY := aBuffer! !

!MoogLPF methodsFor: 'controlling' stamp: 'len 22/Sep/2025 19:52:00'!
reset
	y0 := y1 := y2 := y3 := y4 := 0.0! !

!MoogLPF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 14:01:42'!
initialize
	super initialize.
	self reset! !

!MoogLPF methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:26:18'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #resonance min: 0.0 max: 1.0 value: 0.1) printer: [:x| (x * 100.0) truncated printString, '%']! !

!MoogLPF methodsFor: 'processing' stamp: 'len 3/Feb/2026 16:25:15'!
tick
	| f res t1 t2 p r k |
	(outputLP4 isNil and: [outputLP3 isNil and: [outputLP2 isNil and: [outputLP1 isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP4 ifNotNil: [outputLP4 atAllPut: 0.0].
		outputLP3 ifNotNil: [outputLP3 atAllPut: 0.0].
		outputLP2 ifNotNil: [outputLP2 atAllPut: 0.0].
		outputLP1 ifNotNil: [outputLP1 atAllPut: 0.0].
		^ self].
	f := (self get: #frequency) * 2.0 / self class sampleRate. "normalized frequency f / fₛ"
	res := self get: #resonance.
	f > 0.36 ifTrue: [res := res - ((f - 0.36) * 0.2)]. "limit resonance at high cutoff"
	"empirical tuning:"
	p := f * (1.8 - (0.8 * f)).
	"k := p * 2 - 1.0."
	k := 2.0 * (f * Float halfPi) sin - 1.0. "better tuning"
	t1 := (1.0 - p) * 1.386249.
	t2 := 12.0 + (t1*t1).
	r := res * (t2 + (6.0 * t1)) / (t2 - (6.0 * t1)).
	1 to: input size do: [:i|
		| in z0 z1 z2 z3 |
		in := input at: i.
		"Process input:"
		z0 := in - (r * y4).
		"Four cascaded one-pole filters (bilinear transform):"	
		z1 := p * (z0 + y0) - (k * y1).
		z2 := p * (z1 + y1) - (k * y2).
		z3 := p * (z2 + y2) - (k * y3).
		y4 := p * (z3 + y3) - (k * y4).
		"Update:"
		y0 := z0.
		y1 := z1.
		y2 := z2.
		y3 := z3.
		"Clipper band limited sigmoid:"
		y4 := y4 - (y4 * y4 * y4 / 6.0).
		outputLP4 ifNotNil: [outputLP4 at: i put: y4].
		outputLP3 ifNotNil: [outputLP3 at: i put: y3].
		outputLP2 ifNotNil: [outputLP2 at: i put: y2].
		outputLP1 ifNotNil: [outputLP1 at: i put: y1]].
	y0 abs < 1.0e-15 ifTrue: [y0 := 0.0].
	y1 abs < 1.0e-15 ifTrue: [y1 := 0.0].
	y2 abs < 1.0e-15 ifTrue: [y2 := 0.0].
	y3 abs < 1.0e-15 ifTrue: [y3 := 0.0].
	y4 abs < 1.0e-15 ifTrue: [y4 := 0.0]! !

!MoogLPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:23'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1'.
	^ answer! !

!MoogLPF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:17'!
screen
	^ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP! !

!MoogLPF methodsFor: 'wiring' stamp: 'len 30/Jan/2026 13:08:00'!
setInput: aBuffer
	input := aBuffer! !

!MoogLPF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:34:24'!
setOutputLP1: aBuffer
	outputLP1 := aBuffer! !

!MoogLPF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:34:32'!
setOutputLP2: aBuffer
	outputLP2 := aBuffer! !

!MoogLPF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:34:39'!
setOutputLP3: aBuffer
	outputLP3 := aBuffer! !

!MoogLPF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:34:45'!
setOutputLP4: aBuffer
	outputLP4 := aBuffer! !

!MoogLadder methodsFor: 'controlling' stamp: 'len 28/Jan/2026 17:34:01'!
reset
	s1 := s2 := s3 := s4 := 0.0! !

!MoogLadder methodsFor: 'initialization' stamp: 'len 30/Jan/2026 14:01:49'!
initialize
	super initialize.
	self reset! !

!MoogLadder methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:26:23'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #resonance min: 0.0 max: 1.0 value: 0.1) printer: [:x| (x * 100.0) truncated printString, '%']! !

!MoogLadder methodsFor: 'processing' stamp: 'len 3/Feb/2026 16:25:05'!
tick
	| f res g G γ k |
	(outputLP4 isNil and: [outputLP3 isNil and: [outputLP2 isNil and: [outputLP1 isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP4 ifNotNil: [outputLP4 atAllPut: 0.0].
		outputLP3 ifNotNil: [outputLP3 atAllPut: 0.0].
		outputLP2 ifNotNil: [outputLP2 atAllPut: 0.0].
		outputLP1 ifNotNil: [outputLP1 atAllPut: 0.0].
		^ self].
	f := (self get: #frequency) / self class sampleRate. "normalized frequency"
	res := self get: #resonance.
	f > 0.18 ifTrue: [res := res - ((f - 0.18) * 0.1)]. "limit resonance at high cutoff"
	g := (Float pi * f) tan.
	G := g / (1.0 + g).
	γ := G squared squared.
	"Feedback coefficient from 0 to 4.
	Resonance is mapped with a quadratic curve to have finer control at low resonance."
	k := res squared * 3.99.
	1 to: input size do: [:i|
		| S in σ v1 v2 v3 v4 y1 y2 y3 y4 |
		in := input at: i.
		"Passband compensation to fix bass-drop at higher resonance:"
		in := in * (k * 0.5 + 1.0). 
		"Compute feedback:"
		S := (G*(G*(G*s1 + s2) + s3) + s4) * (1 - G).
		σ := (in - (k * S)) / (1.0 + (k * γ)).
		"Stage 1:"
		v1 := (σ - s1) * G.
		y1 := v1 + s1.
		s1 := y1 + v1.
		"Stage 2:"
		v2 := (y1 - s2) * G.
		y2 := v2 + s2.
		s2 := y2 + v2.
		"Stage 3:"
		v3 := (y2 - s3) * G.
		y3 := v3 + s3.
		s3 := y3 + v3.
		"Stage 4:"
		v4 := (y3 - s4) * G.
		y4 := v4 + s4.
		s4 := y4 + v4.
		outputLP4 ifNotNil: [outputLP4 at: i put: y4].
		outputLP3 ifNotNil: [outputLP3 at: i put: y3].
		outputLP2 ifNotNil: [outputLP2 at: i put: y2].
		outputLP1 ifNotNil: [outputLP1 at: i put: y1]].
	s1 abs < 1.0e-15 ifTrue: [s1 := 0.0].
	s2 abs < 1.0e-15 ifTrue: [s2 := 0.0].
	s3 abs < 1.0e-15 ifTrue: [s3 := 0.0].
	s4 abs < 1.0e-15 ifTrue: [s4 := 0.0]! !

!MoogLadder methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:35'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1'.
	^ answer! !

!MoogLadder methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:29'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP! !

!MoogLadder methodsFor: 'wiring' stamp: 'len 30/Jan/2026 13:14:10'!
setInput: aBuffer
	input := aBuffer! !

!MoogLadder methodsFor: 'wiring' stamp: 'len 28/Jan/2026 17:47:30'!
setOutputLP1: aBuffer
	outputLP1 := aBuffer! !

!MoogLadder methodsFor: 'wiring' stamp: 'len 28/Jan/2026 17:47:35'!
setOutputLP2: aBuffer
	outputLP2 := aBuffer! !

!MoogLadder methodsFor: 'wiring' stamp: 'len 28/Jan/2026 17:47:38'!
setOutputLP3: aBuffer
	outputLP3 := aBuffer! !

!MoogLadder methodsFor: 'wiring' stamp: 'len 28/Jan/2026 17:47:40'!
setOutputLP4: aBuffer
	outputLP4 := aBuffer! !

!OberheimSVF methodsFor: 'controlling' stamp: 'len 16/Oct/2025 19:49:00'!
reset
	s1 := s2 := 0.0! !

!OberheimSVF methodsFor: 'initialization' stamp: 'len 30/Jan/2026 14:01:54'!
initialize
	super initialize.
	self reset! !

!OberheimSVF methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:26:33'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #frequency value: 1000.0.
	(self addControl: #resonance min: 0.0 max: 1.0 value: 0.0) printer: [:x| (x * 100.0) truncated printString, '%']! !

!OberheimSVF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:17:27'!
tick
	| g r feedback α₀ |
	(outputLP isNil and: [outputHP isNil and: [outputBP isNil and: [outputBS isNil]]]) ifTrue: [^ self].
	input ifNil:
		[outputLP ifNotNil: [outputLP atAllPut: 0.0].
		outputHP ifNotNil: [outputHP atAllPut: 0.0].
		outputBP ifNotNil: [outputBP atAllPut: 0.0].
		outputBS ifNotNil: [outputBS atAllPut: 0.0].
		^ self].
	g := (Float pi * (self get: #frequency) / self class sampleRate) tan.
	r := 1.0 / ((self get: #resonance) * 9.5 + 0.5). "1/Q"
	feedback := r + g.
	α₀ := 1.0 / (1.0 + (feedback * g)).
	1 to: input size do: [:i|
		| in hp bp lp |
		in := input at: i.
		hp := (in - s2 - (s1 * feedback)) * α₀.
		"update s1:"
		bp := (hp * g + s1) tanh. "faust vaeffects uses x - x^3/3 instead, clipped to -1 to 1."
		s1 := bp.
		"update s2:"
		lp := bp * g + s2.
		s2 := lp.
		outputLP ifNotNil: [outputLP at: i put: lp].
		outputHP ifNotNil: [outputHP at: i put: hp].
		outputBP ifNotNil: [outputBP at: i put: bp].
		outputBS ifNotNil: [outputBS at: i put: lp + hp]].
	s1 abs < 1.0e-15 ifTrue: [s1 := 0.0].
	s2 abs < 1.0e-15 ifTrue: [s2 := 0.0]! !

!OberheimSVF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:48'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self screen.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP: label: 'LP';
		addAudioOutput: #setOutputHP: label: 'HP';
		addAudioOutput: #setOutputBP: label: 'BP';
		addAudioOutput: #setOutputBS: label: 'BS'.
	^ answer! !

!OberheimSVF methodsFor: 'ui' stamp: 'len 12/Apr/2026 04:06:42'!
screen
	^​ FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance)! !

!OberheimSVF methodsFor: 'wiring' stamp: 'len 30/Jan/2026 13:21:45'!
setInput: aBuffer
	input := aBuffer! !

!OberheimSVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:39:42'!
setOutputBP: aBuffer
	outputBP := aBuffer! !

!OberheimSVF methodsFor: 'wiring' stamp: 'len 30/Jan/2026 22:15:16'!
setOutputBS: aBuffer
	outputBS := aBuffer! !

!OberheimSVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:39:36'!
setOutputHP: aBuffer
	outputHP := aBuffer! !

!OberheimSVF methodsFor: 'wiring' stamp: 'len 11/Jan/2026 20:39:30'!
setOutputLP: aBuffer
	outputLP := aBuffer! !

!ControlOld methodsFor: 'accessing' stamp: 'len 3/Mar/2026 19:31:13'!
adjustBy: aNumber
	self basePosition: base + aNumber! !

!ControlOld methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:01:00'!
basePosition
	"Answer the base value of the receiver mapped to a number between 0.0 and 1.0."
	^ base! !

!ControlOld methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:01:00'!
basePosition: aNumber
	"Set the base value of the receiver from a number between 0.0 and 1.0."
	base := aNumber min: 1.0 max: 0.0.
	self changed: self baseValue! !

!ControlOld methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:02:00'!
baseValue
	^ self valueFromPosition: base! !

!ControlOld methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:04:00'!
baseValue: anObject
	self basePosition: (self positionFromValue: anObject)! !

!ControlOld methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:42:54'!
coarseStep
	^ coarseStep! !

!ControlOld methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:19'!
coarseStep: aNumber
	coarseStep := aNumber! !

!ControlOld methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:04'!
fineStep
	^ fineStep! !

!ControlOld methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:12'!
fineStep: aNumber
	fineStep := aNumber! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 3/Oct/2025 00:43:00'!
apply
	| newValue |
	(newValue := self value) = lastValue ifFalse: [lastValue := newValue. self changed: newValue]! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 8/Dec/2025 18:05:22'!
clear
	"Clear modulation, preparing to compute it again." 
	modulation := 0.0! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 28/Sep/2025 14:13:00'!
modulateBy: aNumber
	modulation := modulation + aNumber! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 29/Nov/2025 15:26:00'!
modulatedPosition
	"Answer the modulated value of the receiver mapped to a number between 0.0 and 1.0."
	^ base + modulation min: 1.0 max: 0.0! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 28/Nov/2025 11:02:00'!
modulatedValue
	^ self valueFromPosition: base + modulation! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 30/Sep/2025 17:50:00'!
modulation
	^ modulation! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 4/Dec/2025 14:43:58'!
resetToDefault
	self baseValue: default! !

!ControlOld methodsFor: 'control and modulation' stamp: 'len 14/Oct/2025 15:06:00'!
value
	^ self modulatedValue! !

!ControlOld methodsFor: 'initialization' stamp: 'len 29/Jan/2026 19:06:05'!
initialize
	super initialize.
	lastValue := base := 0.0.
	min := -1.0.
	max := 1.0.
	modulation := 0.0.
	curve := #linear.
	coarseStep := 1.0 / 128.0.
	fineStep := coarseStep * 0.1! !

!ControlOld methodsFor: 'printing' stamp: 'len 10/Mar/2026 16:23:07'!
label
	^ label! !

!ControlOld methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:28:29'!
label: aString
	label := aString! !

!ControlOld methodsFor: 'printing' stamp: 'len 11/Dec/2025 16:22:16'!
printOn: aStream
	| v |
	v := self value.
	printer ifNotNil: [aStream nextPutAll: (printer value: v). ^ self].
	v isNumber ifTrue: [v printOn: aStream fractionDigits: 2] ifFalse: [aStream print: v]! !

!ControlOld methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:34:37'!
printedBaseValue
	^ printer ifNil: [self baseValue printStringFractionDigits: 2] ifNotNil: [printer value: self baseValue]! !

!ControlOld methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:34:28'!
printedBaseValueWithLabel
	^ (label ifNil: [''] ifNotNil: [label, ': ']), self printedBaseValue! !

!ControlOld methodsFor: 'printing' stamp: 'len 4/Dec/2025 14:41:33'!
printer: aSymbol
	printer := aSymbol! !

!ControlOld methodsFor: 'testing' stamp: 'len 28/Sep/2025 02:03:00'!
isBipolar
	^ min = max negated! !

!ControlOld methodsFor: 'private' stamp: 'len 16/Jan/2026 15:22:25'!
curveAt: aNumber
	"Maps values from [0,1] to [min,max]."
	curve = #linear ifTrue: [^ aNumber * (max - min) + min].
	curve = #exp ifTrue:
		["min = 0.0 ifTrue: [^ aNumber < 0.1 ifTrue: [aNumber * max] ifFalse: [(max / 0.1 raisedTo: aNumber - 0.1 / 0.9) * 0.1]]."
		^ (max / min raisedTo: aNumber) * min].
	curve = #quadratic ifTrue:
		[self isBipolar ifTrue: "Centered quadratic:"
			[| x |
			x := aNumber - 0.5.
			^ x squared * 2.0 * (max - min) * x sign "+ (max - min / 2.0)"].
		^ aNumber squared * (max - min) + min].
	self notYetImplemented! !

!ControlOld methodsFor: 'private' stamp: 'len 16/Jan/2026 15:29:48'!
curveInverseAt: aNumber
	"Maps values from [min,max] to [0,1]."
	curve = #linear ifTrue: [^ aNumber - min / (max - min)].
	curve = #exp ifTrue:
		["min = 0.0 ifTrue: [^ aNumber < (max * 0.1) ifTrue: [aNumber / max] ifFalse: [aNumber ln - 0.1 ln / (max ln - 0.1 ln)]]."
		^ aNumber ln - min ln / (max ln - min ln)].
	curve = #quadratic ifTrue:
		[self isBipolar ifTrue: "Centered quadratic:"
			[^ (aNumber abs / 2.0 / (max - min)) sqrt * aNumber sign + 0.5].
		^ ((aNumber - min) / (max - min)) sqrt].
	self notYetImplemented! !

!ControlOld methodsFor: 'private' stamp: 'len 19/Jan/2026 19:21:07'!
positionFromValue: aNumber
	| v |
	v := aNumber.
	v := v min: max max: min.
	^ self curveInverseAt: v! !

!ControlOld methodsFor: 'private' stamp: 'len 4/Dec/2025 14:42:40'!
setMin: _min max: _max curve: aSymbol value: defaultValue
	min := _min.
	max := _max.
	curve := aSymbol.
	lastValue := defaultValue.
	base := self positionFromValue: defaultValue.
	modulation := 0.0.
	default := defaultValue! !

!ControlOld methodsFor: 'private' stamp: 'len 19/Jan/2026 19:21:26'!
valueFromPosition: aNumber
	^​ self curveAt: (aNumber min: 1.0 max: 0.0)! !

!ControlOld class methodsFor: 'instance creation' stamp: 'len 14/Oct/2025 15:01:00'!
min: min max: max curve: aSymbol value: defaultValue
	^ self new setMin: min max: max curve: aSymbol value: defaultValue! !

!ControlOld class methodsFor: 'instance creation' stamp: 'len 14/Oct/2025 15:02:00'!
min: min max: max value: defaultValue
	^ self min: min max: max curve: #linear value: defaultValue! !

!ControlPanel methodsFor: 'building' stamp: 'len 18/Mar/2026 18:58:38'!
addChoice: aControl
	self addMorph: (ChoiceControlMorph new control: aControl)! !

!ControlPanel methodsFor: 'building' stamp: 'len 12/Mar/2026 17:50:50'!
addColumn
	| column |
	column := self class newColumn.
	self addMorph: column.
	^ column! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:58:32'!
addHorizontalSlider: aControl
	self addMorph: (SliderControlMorph control: aControl) transpose! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:49:48'!
addKnob: aControl
	self addMorph: (KnobControlMorph control: aControl)! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:43:54'!
addKnob: aControl label: labelString
	self addMorph: ((KnobControlMorph control: aControl) withLabel: labelString)! !

!ControlPanel methodsFor: 'building' stamp: 'len 12/Mar/2026 17:50:35'!
addRow
	| row |
	row := self class newRow.
	self addMorph: row.
	^ row! !

!ControlPanel methodsFor: 'building' stamp: 'len 17/Mar/2026 15:44:56'!
addSmallKnob: aControl
	self addMorph: ((KnobControlMorph control: aControl) morphExtent: 24 @ 24)! !

!ControlPanel methodsFor: 'building' stamp: 'len 23/Feb/2026 19:56:11'!
addSmallKnob: aControl label: labelString
	self addMorph: ((KnobControlMorph control: aControl) morphExtent: 24 @ 24; withLabel: labelString)! !

!ControlPanel methodsFor: 'building' stamp: 'len 3/Mar/2026 16:33:01'!
addSmallVerticalSlider: aControl label: aString
	self addMorph: ((SliderControlMorph control: aControl) morphExtent: 24 @ 36; withLabel: aString)! !

!ControlPanel methodsFor: 'building' stamp: 'len 20/Mar/2026 15:01:13'!
addTextualControl: aControl
	self addMorph: (TextualControlMorph new control: aControl)! !

!ControlPanel methodsFor: 'building' stamp: 'len 18/Mar/2026 19:16:03'!
addToggle: aControl label: aString
	self addMorph: (ToggleControlMorph new control: aControl; label: aString)! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:58:36'!
addVerticalSlider: aControl
	self addMorph: (SliderControlMorph control: aControl)! !

!ControlPanel methodsFor: 'building' stamp: 'len 14/Feb/2026 22:29:16'!
addVerticalSlider: aControl label: aString
	self addMorph: ((SliderControlMorph control: aControl) withLabel: aString)! !

!ControlPanel methodsFor: 'drawing' stamp: 'len 25/Nov/2025 00:29:00'!
drawOn: aCanvas
	super drawOn: aCanvas.
"	isExpanded = false ifTrue: ["! !

!ControlPanel methodsFor: 'geometry' stamp: 'len 25/Nov/2025 00:26:00'!
minimumExtent
	^ super minimumExtent max: 24@24! !

!ControlPanel methodsFor: 'initialization' stamp: 'len 4/Nov/2025 15:48:00'!
defaultColor
	^ Color transparent! !

!ControlPanel methodsFor: 'initialization' stamp: 'len 4/Nov/2025 15:37:00'!
defaultGap
	^ 12! !

!ControlPanel methodsFor: 'initialization' stamp: 'len 12/Mar/2026 17:54:58'!
initialize
	super initialize.
	color := Color transparent! !

!ControlPanel class methodsFor: 'instance creation' stamp: 'len 12/Mar/2026 17:56:12'!
new
	^ self newRow! !

!RoundedLinearLayoutMorph methodsFor: 'drawing' stamp: 'len 27/Jan/2026 19:19:39'!
drawOn: aCanvas
	| rect |
	rect := self localBounds.
	aCanvas
		fillRectangle: rect color: color cornerRadius: 8.0;
		frameRectangle: rect borderWidth: borderWidth  color: borderColor cornerRadius: 8.0! !

!RoundedLinearLayoutMorph methodsFor: 'as yet unclassified' stamp: 'len 9/Apr/2026 19:29:01'!
adoptWidgetsColor: paneColor
	^ self! !

!PluggableChoiceMorph methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:12:04'!
color: aColor
	color := aColor! !

!PluggableChoiceMorph methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:49:32'!
getter: aSymbol
	getter := aSymbol! !

!PluggableChoiceMorph methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:11:09'!
inactiveColor
	self flag: #fixme.
	^ Color veryLightGray! !

!PluggableChoiceMorph methodsFor: 'accessing' stamp: 'len 22/Jan/2026 14:44:23'!
options: anArray
	options := anArray.
	extent := self minimumExtent! !

!PluggableChoiceMorph methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:49:25'!
setter: aSymbol
	setter := aSymbol! !

!PluggableChoiceMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 20:28:47'!
moveDown
	model perform: setter with: (options at: ((options indexOf: (model perform: getter) ifAbsent: [^ self]) + 1 min: options size))! !

!PluggableChoiceMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 20:28:56'!
moveUp
	model perform: setter with: (options at: ((options indexOf: (model perform: getter) ifAbsent: [^ self]) - 1 max: 1))! !

!PluggableChoiceMorph methodsFor: 'dependency mechanism' stamp: 'len 19/Jan/2026 18:53:44'!
update: aSymbol
	self redrawNeeded! !

!PluggableChoiceMorph methodsFor: 'drawing' stamp: 'len 13/Feb/2026 00:51:55'!
drawOn: aCanvas
	| string |
"	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color;
		drawString: control value asString at: 4@0 font: font color: color
"
	string := (model perform: getter) asString.
	aCanvas
"		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color cornerRadius: 6;"
		drawString: string at: 3@0 font: font color: color.
"	aCanvas frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color.
	aCanvas drawString: string asString at: 3 @ 0 font: font color: color.
	aCanvas
		roundRect: (0 @ 0 extent: self minimumExtent) color: color radius: 6;
		drawString: string asString at: 3 @ 0 font: font color: Color black."
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: string) + 3 @ y width: 2 color: color]! !

!PluggableChoiceMorph methodsFor: 'event handling testing' stamp: 'len 19/Jan/2026 18:11:09'!
handlesMouseDown: anEvent
	^ true
! !

!PluggableChoiceMorph methodsFor: 'event handling testing' stamp: 'len 19/Jan/2026 18:27:46'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!PluggableChoiceMorph methodsFor: 'events' stamp: 'len 19/Jan/2026 18:54:25'!
keyStroke: anEvent
	(anEvent isArrowUp or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true. ^ self moveUp].
	(anEvent isArrowDown or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true. self moveDown]! !

!PluggableChoiceMorph methodsFor: 'events' stamp: 'len 19/Jan/2026 18:51:56'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	| menu |
	menu := MenuMorph new.
	options do: [:each| menu add: each asString target: model action: setter argument: each].
	menu invokeModal! !

!PluggableChoiceMorph methodsFor: 'events' stamp: 'len 19/Jan/2026 18:31:13'!
mouseScroll: aMouseEvent localPosition: localEventPosition
	(aMouseEvent direction = #up or: [aMouseEvent direction = #right]) ifTrue: [self moveUp] ifFalse: [self moveDown]! !

!PluggableChoiceMorph methodsFor: 'focus handling' stamp: 'len 19/Jan/2026 18:37:18'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!PluggableChoiceMorph methodsFor: 'geometry' stamp: 'len 19/Jan/2026 18:27:22'!
minimumExtent
	^ (options max: [:each| font widthOfString: each asString]) + 6 @ font lineSpacing! !

!PluggableChoiceMorph methodsFor: 'geometry' stamp: 'len 19/Jan/2026 18:29:52'!
requiresVectorCanvas
	^ true! !

!PluggableChoiceMorph methodsFor: 'initialization' stamp: 'len 19/Jan/2026 18:12:18'!
defaultColor
	^ Color white! !

!PluggableChoiceMorph methodsFor: 'initialization' stamp: 'len 19/Jan/2026 18:11:09'!
defaultExtent
	^ 24 @ 24! !

!PluggableChoiceMorph methodsFor: 'initialization' stamp: 'len 6/Apr/2026 21:01:17'!
defaultFontSize
	^ (FontFamily defaultPointSize * 0.8) truncated! !

!PluggableChoiceMorph methodsFor: 'initialization' stamp: 'len 22/Jan/2026 14:44:04'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize! !

!PluggableToggleMorph methodsFor: 'accessing' stamp: 'len 20/Jan/2026 18:35:12'!
color: aColor
	color := aColor! !

!PluggableToggleMorph methodsFor: 'accessing' stamp: 'len 20/Jan/2026 18:35:12'!
getter: aSymbol
	getter := aSymbol! !

!PluggableToggleMorph methodsFor: 'accessing' stamp: 'len 20/Jan/2026 18:35:12'!
inactiveColor
	self flag: #fixme.
	^ Color veryLightGray! !

!PluggableToggleMorph methodsFor: 'accessing' stamp: 'len 20/Jan/2026 20:16:56'!
label: aString
	label := aString! !

!PluggableToggleMorph methodsFor: 'accessing' stamp: 'len 20/Jan/2026 18:35:12'!
setter: aSymbol
	setter := aSymbol! !

!PluggableToggleMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 20:15:07'!
moveDown
	model perform: setter with: false! !

!PluggableToggleMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 20:15:13'!
moveUp
	model perform: setter with: true! !

!PluggableToggleMorph methodsFor: 'dependency mechanism' stamp: 'len 20/Jan/2026 18:35:12'!
update: aSymbol
	self redrawNeeded! !

!PluggableToggleMorph methodsFor: 'drawing' stamp: 'len 22/Jan/2026 04:28:21'!
drawOn: aCanvas
	| labelColor |
"	aCanvas fillRectangle: self localBounds color: Color red."
"	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color;
		drawString: control value asString at: 4@0 font: font color: color
"
"	aCanvas
		roundRect: (0@0 extent: self minimumExtent) color: color radius: 6;
		roundRect: ((0@0 extent: self minimumExtent) insetBy: 1) color: Color black radius: 6;
		drawString: control value asString at: 3@0 font: font color: color"
	labelColor := (model perform: getter) ifTrue: [color] ifFalse: [self inactiveColor].
	aCanvas drawString: label at: 3 @ 0 font: font color: labelColor.

"	(model perform: getter)
		ifTrue:
			[aCanvas roundRect: (0 @ 0 extent: self minimumExtent) color: color radius: 6.
			labelColor := Color black]
		ifFalse:
			[aCanvas roundRect: (0 @ 0 extent: self minimumExtent) color: self inactiveColor radius: 6.
			labelColor := color].
	aCanvas drawString: label at: 3 @ 0 font: font color: labelColor."
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: label) + 3 @ y width: 2 color: labelColor]! !

!PluggableToggleMorph methodsFor: 'event handling testing' stamp: 'len 20/Jan/2026 18:35:12'!
handlesMouseDown: anEvent
	^ true
! !

!PluggableToggleMorph methodsFor: 'event handling testing' stamp: 'len 20/Jan/2026 18:35:12'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!PluggableToggleMorph methodsFor: 'events' stamp: 'len 20/Jan/2026 18:35:12'!
keyStroke: anEvent
	(anEvent isArrowUp or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true. ^ self moveUp].
	(anEvent isArrowDown or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true. self moveDown]! !

!PluggableToggleMorph methodsFor: 'events' stamp: 'len 20/Jan/2026 20:14:45'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	model perform: setter with: (model perform: getter) not! !

!PluggableToggleMorph methodsFor: 'events' stamp: 'len 20/Jan/2026 18:35:12'!
mouseScroll: aMouseEvent localPosition: localEventPosition
	(aMouseEvent direction = #up or: [aMouseEvent direction = #right]) ifTrue: [self moveUp] ifFalse: [self moveDown]! !

!PluggableToggleMorph methodsFor: 'focus handling' stamp: 'len 20/Jan/2026 18:35:12'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!PluggableToggleMorph methodsFor: 'geometry' stamp: 'len 20/Jan/2026 20:16:07'!
minimumExtent
	^ (font widthOfString: label) + 6 @ font lineSpacing! !

!PluggableToggleMorph methodsFor: 'geometry' stamp: 'len 20/Jan/2026 18:35:12'!
requiresVectorCanvas
	^ true! !

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 18:35:12'!
defaultColor
	^ Color white! !

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 18:35:12'!
defaultExtent
	^ 24 @ 24! !

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 6/Apr/2026 21:01:23'!
defaultFontSize
	^ (FontFamily defaultPointSize * 0.8) truncated! !

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 21/Jan/2026 23:30:32'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize.
	extent := self minimumExtent! !

!ChoiceControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 18:46:40'!
color: aColor
	color := aColor! !

!ChoiceControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 18:48:29'!
control: aControl
	control removeDependent: self.
	control := aControl.
	aControl addDependent: self.
	extent := self minimumExtent! !

!ChoiceControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 18:46:40'!
inactiveColor
	self flag: #fixme.
	^ Color veryLightGray! !

!ChoiceControlMorph methodsFor: 'actions' stamp: 'len 6/Apr/2026 02:17:54'!
moveDown
	control adjustBy: 1.0 / (control options size - 1)! !

!ChoiceControlMorph methodsFor: 'actions' stamp: 'len 6/Apr/2026 02:18:02'!
moveUp
	control adjustBy: -1.0 / (control options size - 1)! !

!ChoiceControlMorph methodsFor: 'dependency mechanism' stamp: 'len 18/Mar/2026 18:46:40'!
update: aSymbol
	self redrawNeeded! !

!ChoiceControlMorph methodsFor: 'drawing' stamp: 'len 18/Mar/2026 18:51:03'!
drawOn: aCanvas
	| string |
"	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color;
		drawString: control value asString at: 4@0 font: font color: color
"
	string := control value asString.
	aCanvas
"		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color cornerRadius: 6;"
		drawString: string at: 3@0 font: font color: color.
"	aCanvas frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color.
	aCanvas drawString: string asString at: 3 @ 0 font: font color: color.
	aCanvas
		roundRect: (0 @ 0 extent: self minimumExtent) color: color radius: 6;
		drawString: string asString at: 3 @ 0 font: font color: Color black."
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: string) + 3 @ y width: 2 color: color]! !

!ChoiceControlMorph methodsFor: 'event handling testing' stamp: 'len 18/Mar/2026 18:46:40'!
handlesMouseDown: anEvent
	^ true
! !

!ChoiceControlMorph methodsFor: 'event handling testing' stamp: 'len 18/Mar/2026 18:46:40'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!ChoiceControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 18:46:40'!
keyStroke: anEvent
	(anEvent isArrowUp or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true. ^ self moveUp].
	(anEvent isArrowDown or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true. self moveDown]! !

!ChoiceControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 18:52:56'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	| menu |
	menu := MenuMorph new.
	control options do: [:each| menu add: each asString target: control action: #baseValue: argument: each].
	menu invokeModal! !

!ChoiceControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 18:46:40'!
mouseScroll: aMouseEvent localPosition: localEventPosition
	(aMouseEvent direction = #up or: [aMouseEvent direction = #right]) ifTrue: [self moveUp] ifFalse: [self moveDown]! !

!ChoiceControlMorph methodsFor: 'focus handling' stamp: 'len 18/Mar/2026 18:46:40'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!ChoiceControlMorph methodsFor: 'geometry' stamp: 'len 18/Mar/2026 18:52:27'!
minimumExtent
	^ (control options max: [:each| font widthOfString: each asString]) + 6 @ font lineSpacing! !

!ChoiceControlMorph methodsFor: 'geometry' stamp: 'len 18/Mar/2026 18:46:40'!
requiresVectorCanvas
	^ true! !

!ChoiceControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 18:46:40'!
defaultColor
	^ Color white! !

!ChoiceControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 18:46:40'!
defaultExtent
	^ 24 @ 24! !

!ChoiceControlMorph methodsFor: 'initialization' stamp: 'len 6/Apr/2026 21:01:27'!
defaultFontSize
	^ (FontFamily defaultPointSize * 0.8) truncated! !

!ChoiceControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 19:22:47'!
initialize
	super initialize.
	color := Color white.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 30/Sep/2025 22:36:00'!
color: aColor
	color := aColor! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 1/Dec/2025 15:21:00'!
control: aControl
	control removeDependent: self.
	control := aControl.
	aControl addDependent: self! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 21:51:00'!
defaultColor
	^ Color white! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 6/Apr/2026 21:01:30'!
defaultFontSize
	^ (FontFamily defaultPointSize * 0.8) truncated! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 6/Apr/2026 21:02:57'!
defaultLabelFontSize
	^ (FontFamily defaultPointSize * 0.6) truncated! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 19/Nov/2025 19:08:00'!
inactiveColor
	^ self hasKeyboardFocus ifTrue: [Color veryLightGray] ifFalse: [Color lightGray]! !

!ControlMorph methodsFor: 'building' stamp: 'len 10/Apr/2026 00:12:03'!
withLabel: aString
	^ LinearLayoutMorph newColumn
		color: Color transparent;
		gap: 2;
		addMorph: self;
		addMorph: ((LabelMorph contents: aString fontSize: self defaultLabelFontSize) color: Color white)! !

!ControlMorph methodsFor: 'dependency mechanism' stamp: 'len 20/Jan/2026 15:17:15'!
update: anObject
	self redrawNeeded! !

!ControlMorph methodsFor: 'events' stamp: 'len 14/Jan/2026 12:25:53'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!ControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:10:00'!
keyStroke: anEvent
	anEvent isEsc ifTrue:
		[anEvent wasHandled: true.
		control resetToDefault.
		self wantsBalloon ifTrue: [self showBalloon: control printedBaseValueWithLabel].
		^ self].
	(anEvent isArrowUp or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true.
		self adjustControlBy: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]).
		^ self].
	(anEvent isArrowDown or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true.
		self adjustControlBy: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]) negated.
		^ self].
	^ super keyStroke: anEvent! !

!ControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:10:08'!
mouseScroll: anEvent localPosition: localEventPosition
	| step |
	step := anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep].
	self adjustControlBy: ((anEvent direction = #up or: [anEvent direction = #right]) ifTrue: [step negated] ifFalse: [step])! !

!ControlMorph methodsFor: 'focus handling' stamp: 'len 19/Nov/2025 19:02:00'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!ControlMorph methodsFor: 'geometry testing' stamp: 'len 1/Dec/2025 14:53:00'!
requiresVectorCanvas
	^ true! !

!ControlMorph methodsFor: 'halos and balloon help' stamp: 'len 27/Jan/2026 16:34:52'!
balloonText
	^ control printedBaseValueWithLabel! !

!ControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 18:06:10'!
initialize
	super initialize.
	self control:​ Knob new.
	color := self defaultColor! !

!ControlMorph methodsFor: 'private' stamp: 'len 5/Mar/2026 02:13:50'!
adjustControlBy: aNumber
	control adjustBy: aNumber.
	control apply.
	self redrawNeeded.
	self wantsBalloon ifTrue: [self showBalloon: control printedBaseValueWithLabel]! !

!ControlMorph class methodsFor: 'instance creation' stamp: 'len 4/Nov/2025 15:49:00'!
control: aControl
	^ self new control: aControl! !

!KnobControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:20:51'!
defaultExtent
	^ `36 @ 36`! !

!KnobControlMorph methodsFor: 'drawing' stamp: 'len 14/Jan/2026 16:58:20'!
drawOn: aCanvas
	| v vMod center radius zeroPosition dialPosition |
"	self hasKeyboardFocus ifTrue: [self drawFocusIndicatorOn: aCanvas]."
	v := control basePosition.
	vMod := v + control modulation min: 1.0 max: 0.0.
	center := self morphExtent / 2.0.
	radius := center - 1.
	zeroPosition := (0 @ radius y rotatedBy: Float pi * 0.2) + center.
	dialPosition := (zeroPosition - center / 2 rotatedBy: Float pi * 1.6 * v) + center.
	"draw the dial on the base value:"
	aCanvas strokeWidth: 3.0 color: self inactiveColor do:
		[aCanvas
			arcCenter: center radius: radius rotationAngle: Float pi / 2 start: Float pi * 1.8 sweep: Float pi * -1.6;
			moveTo: dialPosition;
			lineTo: center].
	"and here show the modulated value, not the base value:"
	aCanvas strokeWidth: 3.0 color: color do:
		[control isBipolar
			ifTrue: [aCanvas arcCenter: center radius: radius rotationAngle: Float halfPi start: Float pi sweep: Float pi * 1.6 * (vMod - 0.5)]
			ifFalse: [aCanvas arcCenter: center radius: radius rotationAngle: Float halfPi start: Float pi * 0.2 sweep: Float pi * 1.6 * vMod]]! !

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 13/Feb/2026 19:59:57'!
drawHorizontalOn: aCanvas
	| v vMod w h basePos modulatedPos |
	v := control basePosition.
	vMod := v + control modulation min: 1.0 max: 0.0.
	w := self morphWidth.
	h := self morphHeight.
	basePos := w - 1 * v.
	modulatedPos := w - 1 * vMod.
	control isBipolar
		ifTrue:
			[aCanvas
				fillRectangle: (0 @ 8 corner: w @ (h - 8)) color: self inactiveColor;
				fillRectangle: (w / 2.0 @ 8 corner: modulatedPos @ (h - 8)) color: color]
		ifFalse:
			[aCanvas
				fillRectangle: (0 @ 8 corner: modulatedPos @ (h - 8)) color: color;
				fillRectangle: (modulatedPos @ 8 corner: w @ (h - 8)) color: self inactiveColor].
	aCanvas line: basePos @ 8 to: basePos @ (h - 8) width: 3 color: color! !

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 14/Oct/2025 15:55:00'!
drawOn: aCanvas
	self isHorizontal ifTrue: [self drawHorizontalOn: aCanvas] ifFalse: [self drawVerticalOn: aCanvas]! !

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 13/Feb/2026 20:04:55'!
drawVerticalOn: aCanvas
	| v vMod w h basePos modulatedPos |
	v := control basePosition.
	vMod := v + control modulation min: 1.0 max: 0.0.
	w := self morphWidth.
	h := self morphHeight.
	basePos := h - 1 * (1.0 - v).
	modulatedPos := h - 1 * (1.0 - vMod).
	control isBipolar
		ifTrue:
			[aCanvas
				fillRectangle: (8 @ 0 corner: w - 8 @ h) color: self inactiveColor;
				fillRectangle: (8 @ modulatedPos corner: w - 8 @ (h / 2.0)) color: color]
		ifFalse:
			[aCanvas
				fillRectangle: (8 @ 0 corner: w - 8 @ modulatedPos) color: self inactiveColor;
				fillRectangle: (8 @ modulatedPos corner: w - 8 @ h) color: color].
		aCanvas line: 8 @ basePos to: w - 8 @ basePos width: 3 color: color! !

!SliderControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:32'!
defaultExtent
	^ `24 @ 48`! !

!SliderControlMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 14:47:24'!
transpose
	self morphExtent: extent y @ extent x! !

!SliderControlMorph methodsFor: 'testing' stamp: 'len 20/Jan/2026 14:44:53'!
isHorizontal
	^ extent x > extent y! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 2/Dec/2025 18:31:00'!
color2: aColor
	1 to: colors size do: [:i| colors at: i put: (color mixed:  (i - 1.0) / 6.0 with: aColor)]! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:27'!
defaultExtent
	^ `128 @ 64`! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 18:06:16'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	colors := Array new: 7.
	self color2: PatchMorph waveformColor2.
	phases := {0.0. 0.1. 0.2. 0.3. 0.4. 0.5. 0.6}.
	self control: (Knob min: 0.0 max: 1.0 value: 0.0)! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 7/Jan/2026 15:06:02'!
phases: anArray
	phases := anArray! !

!SupersawControlMorph methodsFor: 'drawing' stamp: 'len 7/Jan/2026 15:05:42'!
drawOn: aCanvas
	| w h mixStep t₀ |
	w := self morphWidth - 4.0.
	h := self morphHeight - 4.0.
	mixStep := 1.0 / (phases size - 1).
	t₀ := (phases at: 4) + 0.01. "phase of the central wave"
	t₀ := t₀ + (t₀ / 100.0) max: 0.0. "move it to move slightly, just to make the animation more lively"
	1 to: phases size do: [:i|
		| x y t |
		t := (phases at: i) - t₀ \\ 1.0. "make all phases relative to the phase of the central wave"
		x := w - (w * t) + 2.0.
		y := h * t + 2.0.
		aCanvas strokeWidth: 1.5 color: (colors at: i) do:
			[aCanvas moveTo: 2.0 @ y; lineTo: x @ (h + 2.0); lineTo: x @ 2.0; lineTo: (w + 2.0) @ y]]! !

!SupersawControlMorph methodsFor: 'stepping' stamp: 'len 2/Dec/2025 16:47:00'!
step
	self redrawNeeded! !

!SupersawControlMorph methodsFor: 'stepping' stamp: 'len 2/Dec/2025 16:55:00'!
stepTime
	^ 100! !

!SupersawControlMorph methodsFor: 'stepping' stamp: 'len 2/Dec/2025 16:47:00'!
wantsSteps
	^ true! !

!TextualControlMorph methodsFor: 'accessing' stamp: 'len 1/Dec/2025 15:21:00'!
control: aControl
	super control: aControl.
	contents := control printedBaseValue! !

!TextualControlMorph methodsFor: 'dependency mechanism' stamp: 'len 1/Dec/2025 12:10:00'!
update: anObject
	super update: anObject.
	contents := control printedBaseValue.
	self morphExtent: extent "will grow if necessary, depending on minimumExtent"! !

!TextualControlMorph methodsFor: 'drawing' stamp: 'len 19/Jan/2026 20:08:35'!
drawOn: aCanvas
"	aCanvas roundRect: (0@0 extent: self minimumExtent) color: color radius: 6."
"	self hasKeyboardFocus ifTrue: [aCanvas fillRectangle: self localBounds color: (Color redCathode alpha: 0.3)]."
	aCanvas drawString: contents at: 3 @ 0 font: font color: color.
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: contents) + 3 @ y width: 2 color: color]
"	self hasKeyboardFocus ifTrue: [self drawFocusIndicatorOn: aCanvas]"! !

!TextualControlMorph methodsFor: 'geometry' stamp: 'len 1/Dec/2025 18:44:00'!
minimumExtent
	^ (font widthOfString: contents) + 6 @ font lineSpacing! !

!TextualControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:12'!
defaultExtent
	^ `24 @ 24`! !

!TextualControlMorph methodsFor: 'initialization' stamp: 'len 1/Dec/2025 12:10:00'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize.
	contents := ''! !

!VariableWaveControlMorph methodsFor: 'accessing' stamp: 'len 16/Jan/2026 22:04:52'!
control: aControl
	super control: aControl.
	currentShape := aControl value! !

!VariableWaveControlMorph methodsFor: 'accessing' stamp: 'len 16/Jan/2026 22:20:03'!
waveBlock: aBlock
	wave := aBlock! !

!VariableWaveControlMorph methodsFor: 'dependency mechanism' stamp: 'len 16/Jan/2026 16:52:10'!
update: anObject
	super update: anObject.
	currentShape := control value! !

!VariableWaveControlMorph methodsFor: 'drawing' stamp: 'len 1/Mar/2026 14:58:22'!
drawOn: aCanvas
	| step stepX t x y h steps |
	steps := 64.
	step := 1.0 / (steps + 1).
	stepX := self morphWidth - 8.0 * step.
	h := self morphHeight - 6.0 / 2.0.
	t := 0.0.
	y := 1.0 - (self waveAt: t) * h + 3.0.
	x := 4.0.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		steps timesRepeat:
			[t := t + step.
			y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
			x := x + stepX.
			aCanvas lineTo: x @ y]]! !

!VariableWaveControlMorph methodsFor: 'drawing' stamp: 'len 16/Jan/2026 22:11:46'!
waveAt: aNumber
	^ wave value: aNumber value: currentShape! !

!VariableWaveControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:22'!
defaultExtent
	^ `128 @ 64`! !

!VariableWaveControlMorph methodsFor: 'initialization' stamp: 'len 16/Jan/2026 16:53:16'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	currentShape := 0.0! !

!SymmetricWaveshaperControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:19'!
defaultExtent
	^ `96 @ 64`! !

!SymmetricWaveshaperControlMorph methodsFor: 'initialization' stamp: 'len 13/Feb/2026 19:32:00'!
initialize
	super initialize.
	color := PatchMorph waveformColor2.
	image := Form extent: self defaultExtent depth: 32.
	image fillColor: PatchMorph panelColor.
! !

!SymmetricWaveshaperControlMorph methodsFor: 'drawing' stamp: 'len 15/Feb/2026 15:23:14'!
drawLevel: aNumber
	| x0 δ |
	x0 := image width * 0.5.
	δ := aNumber * x0.
	image fill: (x0 - δ @ 0 extent: δ * 2.0 @ image height) fillColor: (PatchMorph waveformColor alpha: aNumber).
	image fill: (x0 + δ @ 0 extent: 1 @ image height) fillColor: PatchMorph waveformColor.
	image fill: (x0 - δ @ 0 extent: 1 @ image height) fillColor: PatchMorph waveformColor! !

!SymmetricWaveshaperControlMorph methodsFor: 'drawing' stamp: 'len 13/Feb/2026 19:32:19'!
drawOn: aCanvas
	aCanvas image: image at: 0 @ 0.
	super drawOn: aCanvas! !

!SymmetricWaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 13/Feb/2026 19:32:42'!
step
	image fill: image boundingBox rule: Form blend fillColor: (PatchMorph panelColor alpha: 0.3).
	self redrawNeeded! !

!SymmetricWaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 13/Feb/2026 19:32:47'!
stepTime
	^ 100! !

!SymmetricWaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 13/Feb/2026 19:32:58'!
wantsSteps
	^ true! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 5/Mar/2026 02:20:15'!
defaultExtent
	^ `160 @ 96`! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 29/Mar/2026 16:35:44'!
initialize
	super initialize.
	currentPosition := 0.0.
	color := PatchMorph waveformColor! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 29/Mar/2026 16:36:03'!
table: aBuffer frameSize: anInteger
	table := aBuffer.
	frameSize := anInteger.
	currentPosition := control value.
	self redrawNeeded! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 6/Apr/2026 15:48:31'!
drawFlatOn: aCanvas
	| L N w h  alphaColor waveIndex stepL stepN |
	(L := table size / frameSize) > 0 ifFalse: [^ self].
	N := frameSize.
	waveIndex := (currentPosition * (L - 1) + 1) asInteger.
	w := self morphWidth - 4.0.
	h := self morphHeight - 4.0.
	alphaColor := (color mixed: 0.25 with: Color white) alpha: 0.05.
	"Don't draw all, it's enough to draw 64 frames with 64 samples each:"
	stepL := L // 64.
	stepN := N // 64.
	"Draw back-to-front so later (closer) waves paint over earlier ones."
	L to: 1 by: -1 do: [:i|
		| waveColor strokeWidth |
		(i = waveIndex or: [i \\ stepL = 0]) ifTrue:
			[i = waveIndex ifTrue: [waveColor := color. strokeWidth := 1.5] ifFalse: [waveColor := alphaColor. strokeWidth := 1].
			aCanvas strokeWidth: strokeWidth color: waveColor do:
				[| x y baseline |
				x := 2.0.
				baseline := (1.0 -  (i asFloat / L)) / 2.0.
				y := ((1.0 - (table at: i - 1 * frameSize + 1)) / 4.0 + baseline) * h + 2.0.
				aCanvas moveTo: x @ y.
				1+stepN to: N by: stepN do: [:j|
					x := (j - 1.0) / (N - 1) * w + 2.0.
					y := ((1.0 - (table at: i - 1 * frameSize + j)) / 4.0 + baseline) * h + 2.0.
					aCanvas lineTo:  x @ y]]]]! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 6/Apr/2026 15:43:32'!
drawIsometricOn: aCanvas
	| L N projection w h  alphaColor waveIndex Sx Sy Sa cx cy stepL stepN |
	(L := table size / frameSize) > 0 ifFalse: [^ self].
	N := frameSize.
	waveIndex := (currentPosition * (L - 1) + 1) asInteger.
	w := self morphWidth - 4.0.
	h := self morphHeight - 4.0.
	alphaColor := (color mixed: 0.25 with: Color white) alpha: 0.1.

	Sx := w * 0.50.  "horizontal spread"
	Sy := h * 0.25.  "isometric tilt depth"
	Sa := h * 0.25.  "amplitude height"
	cx := w  / 2.0 + 2.0.
	cy := h / 2.0 - Sy + 2.0.
	projection := [:j :amp :i | | xNorm zNorm screenX screenY |
		xNorm := (j - 1) / (N - 1.0).
		zNorm := (L - i) / (L - 1.0).
		"Classic isometric: x-axis at +30°, z-axis at +150°, y-axis vertical.
		Scale factors tune the overall spread and amplitude height."
		screenX := cx + ((xNorm - zNorm) * Sx).
		screenY := cy + ((xNorm + zNorm) * Sy) - (amp * Sa).
		screenX @ screenY].

	"Don't draw all, it's enough to draw 64 frames with 64 samples each:"
	stepL := L // 64.
	stepN := N // 64.
	"Draw back-to-front so later (closer) waves paint over earlier ones."
	L to: 1 by: -1 do: [:i|
		i = waveIndex
			ifTrue:
				[aCanvas strokeWidth: 1.5 color: color do:
					[aCanvas moveTo: (projection value: 1 value: (table at: i - 1 * frameSize + 1) value: i).
					1+stepN to: N by: stepN do: [:j| aCanvas lineTo: (projection value: j value: (table at: i - 1 * frameSize + j) value: i)]]]
			ifFalse:
				[i \\ stepL = 0 ifTrue:
					[aCanvas strokeWidth: 1.0 color: alphaColor do:
						[aCanvas moveTo: (projection value: 1 value: (table at: i - 1 * frameSize + 1) value: i).
						1+stepN to: N by: stepN do: [:j| aCanvas lineTo: (projection value: j value: (table at: i - 1 * frameSize + j) value: i)]]]]]! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 6/Apr/2026 15:49:26'!
drawOn: aCanvas
	self drawIsometricOn: aCanvas! !

!WavetableControlMorph methodsFor: 'dependency mechanism' stamp: 'len 26/Mar/2026 23:30:44'!
update: anObject
	super update: anObject.
	currentPosition := control value! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:03:18'!
adjust: control by: aNumber
	control adjustBy: aNumber.
	control apply.
	self redrawNeeded.
	self showBalloon: control printedBaseValueWithLabel! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:08:39'!
balloonText
	| answer |
	answer := control1 printedBaseValueWithLabel.
	control2 ifNotNil: [answer := answer, ', ', control2 printedBaseValueWithLabel].
	^ answer! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 18:56:44'!
control1: aControl
	control1 removeDependent: self.
	control1 := aControl.
	aControl addDependent: self! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 18:56:51'!
control2: aControl
	control2 removeDependent: self.
	control2 := aControl.
	aControl addDependent: self! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:08:51'!
defaultExtent
	^ `128 @ 64`! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:05:29'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not or: [anEvent secondaryModifierPressed]! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:02:53'!
keyStroke: anEvent
	| control |
	control := anEvent secondaryModifierPressed ifTrue: [control2] ifFalse: [control1].
	control ifNil: [^ self].
	anEvent isEsc ifTrue:
		[anEvent wasHandled: true. control resetToDefault. ^ self].
	(anEvent isArrowUp or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true. self adjust: control by: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]). ^ self].
	(anEvent isArrowDown or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true. self adjust: control by: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]) negated. ^ self]! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:07:53'!
mouseScroll: anEvent localPosition: localEventPosition
	| control |
	control := anEvent secondaryModifierPressed ifTrue: [control2] ifFalse: [control1].
	control ifNil: [^ self].
	(anEvent direction = #left or: [anEvent direction = #down]) ifTrue: [self adjust: control by: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]). ^ self].
	(anEvent direction = #right or: [anEvent direction = #up]) ifTrue: [self adjust: control by: (anEvent shiftPressed ifTrue: [control fineStep] ifFalse: [control coarseStep]) negated. ^ self]! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 18:57:05'!
requiresVectorCanvas
	^ true! !

!DualControlMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 18:56:57'!
update: anObject
	self redrawNeeded! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Mar/2026 21:17:50'!
addEnvelope: aNumber
	currentPosition := currentPosition < envelopeBuffer size ifTrue: [currentPosition + 1] ifFalse: [1].
	envelopeBuffer at: currentPosition put: (aNumber min: 1.0 max: 0.0)! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Mar/2026 21:17:44'!
addGainReduction: aNumber
	gainReductionBuffer at: currentPosition put: (aNumber min: 1.0 max: 0.0).
	self redrawNeeded! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Mar/2026 21:07:05'!
defaultExtent
	^`128 @ 64`! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Mar/2026 19:12:38'!
drawOn: aCanvas
	| step x y h pos delta |
	delta := 20.
	step := self morphWidth / (envelopeBuffer size - delta) * 5.
	(pos := currentPosition + delta) > envelopeBuffer size ifTrue: [pos := pos - envelopeBuffer size].
	h := self morphHeight - 6.0.
	x := 0.
	y := 1.0 - (gainReductionBuffer at: pos) * h + 3.0.
	aCanvas strokeWidth: 2 color: PatchMorph waveformColor3 do:
		[aCanvas moveTo: x @ y.
		0 to: gainReductionBuffer size - delta - 5 by: 5 do: [:i|
			x := x + step.
			y := 1.0 - (gainReductionBuffer at: pos + i \\ gainReductionBuffer size + 1) * h + 3.0.
			aCanvas lineTo: x @ y]].
	x := 0.
	y := 1.0 - (envelopeBuffer at: pos) * h + 3.0.
	aCanvas fillColor: Color lightGray do:
		[aCanvas moveTo: x @ (h + 3.0); lineTo: x @ y.
		0 to: envelopeBuffer size - delta - 5 by: 5 do: [:i|
			x := x + step.
			y := 1.0 - (envelopeBuffer at: pos + i \\ envelopeBuffer size + 1) * h + 3.0.
			aCanvas lineTo: x @ y].
		aCanvas lineTo: x @ (h + 3.0); closePath].
	y := 1.0 - control1 modulatedPosition * h + 3.0.
	aCanvas line: 0 @ y to: self morphWidth @ y width: 2 color: PatchMorph waveformColor.
	control2 ifNil: [^ self].
	y := 1.0 - control2 modulatedPosition * h + 3.0.
	aCanvas line: 0 @ y to: self morphWidth @ y width: 2 color: (PatchMorph waveformColor darker: 0.25)! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Mar/2026 21:19:34'!
initialize
	super initialize.
	envelopeBuffer := Float32Array new: 64*5.
	gainReductionBuffer := Float32Array new: 64*5 withAll: 1.0.
	currentPosition := 1! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Mar/2026 21:07:05'!
requiresVectorCanvas
	^ true! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 21/Mar/2026 17:52:02'!
return: aControl
	self control2: aControl! !

!DynamicsActivityMorph methodsFor: 'as yet unclassified' stamp: 'len 21/Mar/2026 17:51:47'!
threshold: aControl
	self control1: aControl! !

!ToggleControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 19:11:13'!
color: aColor
	color := aColor! !

!ToggleControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 19:14:22'!
control: aControl
	control removeDependent: self.
	control := aControl.
	aControl addDependent: self! !

!ToggleControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 19:11:13'!
inactiveColor
	self flag: #fixme.
	^ Color veryLightGray! !

!ToggleControlMorph methodsFor: 'accessing' stamp: 'len 18/Mar/2026 19:11:13'!
label: aString
	label := aString! !

!ToggleControlMorph methodsFor: 'actions' stamp: 'len 18/Mar/2026 19:12:15'!
moveDown
	control baseValue: false! !

!ToggleControlMorph methodsFor: 'actions' stamp: 'len 18/Mar/2026 19:12:22'!
moveUp
	control baseValue: true! !

!ToggleControlMorph methodsFor: 'dependency mechanism' stamp: 'len 18/Mar/2026 19:11:13'!
update: aSymbol
	self redrawNeeded! !

!ToggleControlMorph methodsFor: 'drawing' stamp: 'len 18/Mar/2026 19:12:48'!
drawOn: aCanvas
	| labelColor |
"	aCanvas fillRectangle: self localBounds color: Color red."
"	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color;
		drawString: control value asString at: 4@0 font: font color: color
"
"	aCanvas
		roundRect: (0@0 extent: self minimumExtent) color: color radius: 6;
		roundRect: ((0@0 extent: self minimumExtent) insetBy: 1) color: Color black radius: 6;
		drawString: control value asString at: 3@0 font: font color: color"
	labelColor := control baseValue ifTrue: [color] ifFalse: [self inactiveColor].
	aCanvas drawString: label at: 3 @ 0 font: font color: labelColor.

"	(model perform: getter)
		ifTrue:
			[aCanvas roundRect: (0 @ 0 extent: self minimumExtent) color: color radius: 6.
			labelColor := Color black]
		ifFalse:
			[aCanvas roundRect: (0 @ 0 extent: self minimumExtent) color: self inactiveColor radius: 6.
			labelColor := color].
	aCanvas drawString: label at: 3 @ 0 font: font color: labelColor."
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: label) + 3 @ y width: 2 color: labelColor]! !

!ToggleControlMorph methodsFor: 'event handling testing' stamp: 'len 18/Mar/2026 19:11:13'!
handlesMouseDown: anEvent
	^ true
! !

!ToggleControlMorph methodsFor: 'event handling testing' stamp: 'len 18/Mar/2026 19:11:13'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!ToggleControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 19:11:13'!
keyStroke: anEvent
	(anEvent isArrowUp or: [anEvent isArrowLeft]) ifTrue:
		[anEvent wasHandled: true. ^ self moveUp].
	(anEvent isArrowDown or: [anEvent isArrowRight]) ifTrue:
		[anEvent wasHandled: true. self moveDown]! !

!ToggleControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 19:13:16'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	control baseValue: control baseValue not! !

!ToggleControlMorph methodsFor: 'events' stamp: 'len 18/Mar/2026 19:11:13'!
mouseScroll: aMouseEvent localPosition: localEventPosition
	(aMouseEvent direction = #up or: [aMouseEvent direction = #right]) ifTrue: [self moveUp] ifFalse: [self moveDown]! !

!ToggleControlMorph methodsFor: 'focus handling' stamp: 'len 18/Mar/2026 19:11:13'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!ToggleControlMorph methodsFor: 'geometry' stamp: 'len 18/Mar/2026 19:11:13'!
minimumExtent
	^ (font widthOfString: label) + 6 @ font lineSpacing! !

!ToggleControlMorph methodsFor: 'geometry' stamp: 'len 18/Mar/2026 19:11:13'!
requiresVectorCanvas
	^ true! !

!ToggleControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 19:11:13'!
defaultExtent
	^ 24 @ 24! !

!ToggleControlMorph methodsFor: 'initialization' stamp: 'len 6/Apr/2026 21:01:32'!
defaultFontSize
	^ (FontFamily defaultPointSize * 0.8) truncated! !

!ToggleControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 19:21:43'!
initialize
	super initialize.
	color := Color white.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize.
	extent := self minimumExtent! !

!XYControlMorph methodsFor: 'accessing' stamp: 'len 6/Dec/2025 14:26:58'!
controlX: aControl
	controlX removeDependent: self.
	controlX := aControl.
	aControl addDependent: self! !

!XYControlMorph methodsFor: 'accessing' stamp: 'len 6/Dec/2025 14:26:51'!
controlY: aControl
	controlY removeDependent: self.
	controlY := aControl.
	aControl addDependent: self! !

!XYControlMorph methodsFor: 'dependency mechanism' stamp: 'len 20/Jan/2026 15:18:05'!
update: anObject
	self redrawNeeded! !

!XYControlMorph methodsFor: 'drawing' stamp: 'len 4/Dec/2025 16:30:38'!
requiresVectorCanvas
	^ true! !

!XYControlMorph methodsFor: 'events' stamp: 'len 14/Jan/2026 12:26:30'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!XYControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:04:28'!
keyStroke: anEvent
	anEvent isEsc ifTrue:
		[anEvent wasHandled: true. controlX resetToDefault. controlY resetToDefault. ^ self].
	anEvent isArrowUp ifTrue:
		[anEvent wasHandled: true. self adjustYBy: (anEvent shiftPressed ifTrue: [controlY fineStep] ifFalse: [controlY coarseStep]). ^ self].
	anEvent isArrowDown ifTrue:
		[anEvent wasHandled: true. self adjustYBy: (anEvent shiftPressed ifTrue: [controlY fineStep] ifFalse: [controlY coarseStep]) negated. ^ self].
	anEvent isArrowLeft ifTrue:
		[anEvent wasHandled: true. self adjustXBy: (anEvent shiftPressed ifTrue: [controlX fineStep] ifFalse: [controlX coarseStep]) negated. ^ self].
	anEvent isArrowRight ifTrue:
		[anEvent wasHandled: true. self adjustXBy: (anEvent shiftPressed ifTrue: [controlX fineStep] ifFalse: [controlX coarseStep])]! !

!XYControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:04:13'!
mouseScroll: anEvent localPosition: localEventPosition
	anEvent direction = #left ifTrue: [self adjustXBy: (anEvent shiftPressed ifTrue: [controlX fineStep] ifFalse: [controlX coarseStep]). ^ self].
	anEvent direction = #right ifTrue: [self adjustXBy: (anEvent shiftPressed ifTrue: [controlX fineStep] ifFalse: [controlX coarseStep]) negated. ^ self].
	anEvent direction = #down ifTrue: [self adjustYBy: (anEvent shiftPressed ifTrue: [controlY fineStep] ifFalse: [controlY coarseStep]). ^ self].
	anEvent direction = #up ifTrue: [self adjustYBy: (anEvent shiftPressed ifTrue: [controlY fineStep] ifFalse: [controlY coarseStep]) negated]! !

!XYControlMorph methodsFor: 'halos and balloon help' stamp: 'len 1/Mar/2026 14:45:54'!
balloonText
	^ controlY printedBaseValueWithLabel, ', ', controlX printedBaseValueWithLabel! !

!XYControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:44'!
defaultExtent
	^ `128 @ 64`! !

!XYControlMorph methodsFor: 'private' stamp: 'len 5/Mar/2026 02:14:25'!
adjustXBy: aNumber
	controlX adjustBy: aNumber.
	controlX apply.
	self redrawNeeded.
	self showBalloon: controlX printedBaseValueWithLabel! !

!XYControlMorph methodsFor: 'private' stamp: 'len 5/Mar/2026 02:13:05'!
adjustYBy: aNumber
	controlY adjustBy: aNumber.
	controlY apply.
	self redrawNeeded.
	self showBalloon: controlY printedBaseValueWithLabel! !

!FilterControlMorph methodsFor: 'accessing' stamp: 'len 6/Dec/2025 14:26:58'!
frequency: aControl
	self controlX: aControl! !

!FilterControlMorph methodsFor: 'accessing' stamp: 'len 10/Mar/2026 14:36:39'!
mode: aSymbol
	mode := aSymbol.
"	aSymbol = #LP ifTrue: [color := PatchMorph lowsColor. ^ self].
	aSymbol = #HP ifTrue: [color := PatchMorph highsColor. ^ self].
	(aSymbol = #BP or: [aSymbol = #BS]) ifTrue: [color := PatchMorph midsColor. ^ self].
	color := Color white"! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 05:45:25'!
drawBPOn: aCanvas frequency: freq bandwidth: bandwidth color: curveColor fillColor: fillColor
	| w h x y notch bw δ p1 p2 p3 |
	w := self morphWidth.
	h := self morphHeight.
	x := freq * w.
	y := h / 2.0.
	bw := self notchWidth / (1.2 - bandwidth).
	δ := bw / 5.0 @ 0.0.
	notch := (1.0 - bandwidth) * h * 0.5.
	p1 := (x - (bw / 2.0)) @ h.
	p2 := x @ (y - notch).
	p3 := (x + (bw / 2.0)) @ h.
	fillColor ifNotNil:
		[aCanvas fillColor: fillColor do:
			[aCanvas
				moveTo: (p1 x min: 0.0) @ h;
				lineTo: p1;
				cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
				cubicBezierTo: p3 control1: p2 + δ control2: p3 - δ;
				lineTo: w @ h;
				closePath]].
	aCanvas strokeWidth: 1.0 color: curveColor do:
		[aCanvas
			moveTo: (p1 x min: 0.0) @ h;
			lineTo: p1;
			cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
			cubicBezierTo: p3 control1: p2 + δ control2: p3 - δ;
			lineTo: w @ h]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 05:44:56'!
drawBSOn: aCanvas frequency: freq bandwidth: bandwidth color: aColor fillColor: fillColor
	| w h x y notch bw δ p1 p2 p3 |
	w := self morphWidth.
	h := self morphHeight.
	x := freq * w.
	y := h / 2.0.
	bw := self notchWidth / (1.2 - bandwidth).
	δ := bw / 5.0 @ 0.0.
	notch := (bandwidth - 1.0) * h * 0.5.
	p1 := (x - (bw / 2.0)) @ y.
	p2 := x @ (y - notch).
	p3 := (x + (bw / 2.0)) @ y.
	fillColor ifNotNil:
		[aCanvas fillColor: fillColor do:
			[aCanvas
				moveTo: (p1 x min: 0.0) @ y;
				lineTo: p1;
				cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
				cubicBezierTo: p3 control1: p2 + δ control2: p3 - δ;
				lineTo: w @ y;
				lineTo: w @ h;
				lineTo: 0.0 @ h;
				closePath]].
	aCanvas strokeWidth: 1.0 color: aColor do:
		[aCanvas
			moveTo: (p1 x min: 0.0) @ y;
			lineTo: p1;
			cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
			cubicBezierTo: p3 control1: p2 + δ control2: p3 - δ;
			lineTo: w @ y]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 10/Mar/2026 14:33:28'!
drawDecadesOn: aCanvas
	| h lineColor w x |
	w := self morphWidth.
	h := self morphHeight.
	lineColor := Color gray.
	#(100 1000 10000) do: [:f|
		x := w * (controlX positionFromValue: f).
		aCanvas line: x @ 0 to: x @ h width: 1.0 color: lineColor].
	lineColor := Color darkGray.
	#(10 20 30 40 50 60 70 80 90 200 300 400 500 600 700 800 900 2000 3000 4000 5000 6000 7000 8000 9000) do: [:f|
		x := w * (controlX positionFromValue: f).
		aCanvas line: x @ 0 to: x @ h width: 1.0 color: lineColor]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 05:43:20'!
drawHPOn: aCanvas frequency: freq Q: Q color: aColor fillColor: fillColor
	| w h x y notch bw δ p1 p2 p3 |
	w := self morphWidth.
	h := self morphHeight.
	x := freq * w.
	y := h / 2.0.
	bw := self notchWidth * (1.2 - Q).
	δ := bw / 5.0 @ 0.0.
	notch := Q * h * 0.5.
	p1 := x - (bw / 2.0) - (Q*bw) @ h.
	p2 := x @ (y - notch).
	p3 := x + (bw / 2.0) @ y.
	fillColor ifNotNil:
		[aCanvas fillColor: fillColor do:
			[aCanvas
				moveTo: p1;
				cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
				cubicBezierTo: p3 control1: p2 + δ control2: p3 - (δ*1);
				lineTo: w @ y;
				lineTo: w @ h;
				closePath]].
	aCanvas strokeWidth: 1.0 color: aColor do:
		[aCanvas
			moveTo: p1;
			cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
			cubicBezierTo: p3 control1: p2 + δ control2: p3 - (δ*1.5);
			lineTo: w @ y]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 05:44:04'!
drawLPOn: aCanvas frequency: freq Q: Q color: aColor fillColor: fillColor
	| w h x y notch bw δ p1 p2 p3 |
	w := self morphWidth.
	h := self morphHeight.
	x := freq * w.
	y := h / 2.0.
	bw := self notchWidth * (1.2 - Q).
	δ := bw / 5.0 @ 0.0.
	notch := Q * h * 0.5.
	p1 := (x - (bw / 2.0)) @ y.
	p2 := x @ (y - notch).
	p3 := x + (bw / 2.0) + (Q*bw) @ h.
	fillColor ifNotNil:
		[aCanvas fillColor: fillColor do:
			[aCanvas
				moveTo: (p1 x min: 0.0) @ y;
				lineTo: p1;
				cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
				cubicBezierTo: p3 control1: p2 + δ control2: p3 - (δ*1);
				lineTo: 0@h;
				closePath]].
	aCanvas strokeWidth: 1.0 color: aColor do:
		[aCanvas
			moveTo: (p1 x min: 0.0) @ y;
			lineTo: p1;
			cubicBezierTo: p2 control1: p1 + δ control2: p2 - δ;
			cubicBezierTo: p3 control1: p2 + δ control2: p3 - (δ*1.5)]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 05:51:14'!
drawOn: aCanvas
	| prevClipRect |
	self drawDecadesOn: aCanvas.
	prevClipRect := aCanvas clipRect.
	aCanvas setClipRect: ((self externalizeBoundsToWorld: self localBounds) intersect: prevClipRect).
	"draw the base values first, unless it's not modulated:"
	(controlX modulation = 0.0 and: [controlY modulation = 0.0]) ifFalse:
		[self drawOn: aCanvas frequency: controlX basePosition Y: controlY basePosition color: (color darker: 0.25) fillColor: nil].
	"then the modulated values:"
	self drawOn: aCanvas frequency: controlX modulatedPosition Y: controlY modulatedPosition color: color fillColor: (color alpha: 0.15).
	aCanvas setClipRect: prevClipRect! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 15:19:12'!
drawOn: aCanvas frequency: freq Y: yParameter color: aColor fillColor: fillColor
	mode = #LP ifTrue: [^ self drawLPOn: aCanvas frequency: freq Q: yParameter color: aColor fillColor: fillColor].
	mode = #HP ifTrue: [^ self drawHPOn: aCanvas frequency: freq Q: yParameter color: aColor fillColor: fillColor].
	mode = #BP ifTrue: [^ self drawBPOn: aCanvas frequency: freq bandwidth: yParameter color: aColor fillColor: fillColor].
	mode = #BS ifTrue: [^ self drawBSOn: aCanvas frequency: freq bandwidth: yParameter color: aColor fillColor: fillColor].
	self drawLPOn: aCanvas frequency: freq Q: yParameter color: aColor fillColor: fillColor! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 28/Jan/2026 16:14:59'!
notchWidth
	^ 80.0! !

!FilterControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:55'!
defaultExtent
	^ `144 @ 96`! !

!FilterControlMorph methodsFor: 'initialization' stamp: 'len 12/Feb/2026 05:51:24'!
initialize
	super initialize.
	color := Color white! !

!FilterControlMorph methodsFor: 'private' stamp: 'len 4/Feb/2026 00:40:14'!
adjustYBy: aNumber
	super adjustYBy: (mode = #BP ifTrue: [aNumber negated] ifFalse: [aNumber])! !

!LFOControlMorph methodsFor: 'accessing' stamp: 'len 23/Feb/2026 22:14:27'!
lfo: anLFO
	lfo removeDependent: self.
	lfo := anLFO.
	lfo addDependent: self.
	self controlY: (lfo controls at: #speed).
	self controlX: (lfo controls at: #offset)! !

!LFOControlMorph methodsFor: 'drawing' stamp: 'len 23/Feb/2026 22:16:18'!
drawOn: aCanvas
	| step x y h pos delta |
	delta := 20.
	step := self morphWidth / (samples size - delta) * 5.
	(pos := currentPosition + delta) > samples size ifTrue: [pos := pos - samples size].
	h := self morphHeight.
	lfo bipolar ifTrue: [h := h / 2.0].
	x := 0.
	y := 1.0 - (samples at: pos) * h.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		0 to: samples size - delta - 5 by: 5 do: [:i|
			x := x + step.
			y := 1.0 - (samples at: pos + i \\ samples size + 1) * h.
			aCanvas lineTo: x @ y]]! !

!LFOControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:59'!
defaultExtent
	^ `128 @ 64`! !

!LFOControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 14:50:22'!
initialize
	super initialize.
	color := PatchMorph waveformColor3.
	samples := Float32Array new: 64*5.
	currentPosition := 1! !

!LFOControlMorph methodsFor: 'private' stamp: 'len 23/Feb/2026 22:14:59'!
addSample: aNumber
	currentPosition := currentPosition < samples size ifTrue: [currentPosition + 1] ifFalse: [1].
	samples at: currentPosition put: (aNumber min: 1.0 max: -1.0).
	self redrawNeeded! !

!LFOControlMorph methodsFor: 'private' stamp: 'len 23/Feb/2026 22:32:14'!
adjustXBy: aNumber
	super adjustXBy: aNumber * 2.0! !

!WaveshaperControlMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 14:25:23'!
bias: aControl
	self controlX: aControl.
	valueX := aControl value! !

!WaveshaperControlMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 14:22:21'!
color: aColor
	color := aColor! !

!WaveshaperControlMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 14:34:40'!
shape: aControl
	self controlY: aControl.
	valueY := aControl value! !

!WaveshaperControlMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 14:24:40'!
waveAt: aNumber
	^ wave value: aNumber value: valueY! !

!WaveshaperControlMorph methodsFor: 'accessing' stamp: 'len 11/Feb/2026 18:58:59'!
waveBlock: aBlock
	wave := aBlock! !

!WaveshaperControlMorph methodsFor: 'dependency mechanism' stamp: 'len 11/Feb/2026 18:58:59'!
update: anObject
	super update: anObject.
	valueX := controlX value.
	valueY := controlY value! !

!WaveshaperControlMorph methodsFor: 'drawing' stamp: 'len 15/Feb/2026 15:21:58'!
drawLevel: aNumber
	| x0 δ |
	x0 := image width * (valueX + 1.0) / 2.0.
	δ := aNumber * image width / 2.0.
	image fill: (x0 - δ @ 0 extent: δ * 2.0 @ image height) fillColor: (PatchMorph waveformColor alpha: aNumber).
	image fill: (x0 + δ @ 0 extent: 1 @ image height) fillColor: PatchMorph waveformColor.
	image fill: (x0 - δ @ 0 extent: 1 @ image height) fillColor: PatchMorph waveformColor

"	h := image height / 2.0.
	y := (1.0 - (self waveAt: x0 - δ / image width)) * h.
	image fill: (x0 + δ @ (h - y) extent: 1 @ h) fillColor: PatchMorph waveformColor.
	y := (1.0 - (self waveAt: x0 + δ / image width)) * h.
	image fill: (x0 - δ @ h extent: 1 @ y) fillColor: PatchMorph waveformColor"

"	| t x v h |
	t := ((aNumber min: 1.0 max: -1.0) + 1.0) / 2.0.
	x := t * image width.
	v := self waveAt: t.
	h := (v + 1.0) / 2.0 * image height.
	image fill: (x @ (image height // 2) extent: 3 @ (image height // 2 - h)) fillColor: Color white "! !

!WaveshaperControlMorph methodsFor: 'drawing' stamp: 'len 1/Mar/2026 14:47:15'!
drawOn: aCanvas
	| step stepX t x y h steps m |
	aCanvas image: image at: 0 @ 0.
	m := self morphWidth / 2.0.
	x := valueX * m + m.
	aCanvas strokeWidth: 1.0 color: Color white dashedStrokeBits: 2r1110000000 do:
		[aCanvas moveTo: x @ 0; lineTo: x @ self morphHeight].
	steps := 64.
	step := 1.0 / (steps + 1).
	stepX := self morphWidth - 8.0 * step.
	h := self morphHeight - 6.0 / 2.0.
	t := 0.0.
	y := 1.0 - (self waveAt: t) * h + 3.0.
	x := 4.0.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		steps timesRepeat:
			[t := t + step.
			y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
			x := x + stepX.
			aCanvas lineTo: x @ y]]! !

!WaveshaperControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:22:09'!
defaultExtent
	^ `96 @ 64`! !

!WaveshaperControlMorph methodsFor: 'initialization' stamp: 'len 18/Mar/2026 18:06:26'!
initialize
	super initialize.
	color := PatchMorph waveformColor2.
	image := Form extent: self defaultExtent depth: 32.
	image fillColor: PatchMorph panelColor.
	controlY := Knob min: 0.0 max: 0.0 value: 0.0! !

!WaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 15/Feb/2026 15:13:22'!
step
	image fill: image boundingBox rule: Form blend fillColor: (PatchMorph panelColor alpha: 0.1).
	self redrawNeeded! !

!WaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 12/Feb/2026 19:24:07'!
stepTime
	^ 100! !

!WaveshaperControlMorph methodsFor: 'stepping' stamp: 'len 12/Feb/2026 19:20:28'!
wantsSteps
	^ true! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 19:16:48'!
color: aColor
	color := aColor! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:59:29'!
controlX: aControl
	super controlX: aControl.
	valueX := aControl value! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:59:40'!
controlY: aControl
	super controlY: aControl.
	valueY := aControl value! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 1/Mar/2026 15:22:14'!
defaultExtent
	^ `128 @ 64`! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 1/Mar/2026 15:00:25'!
drawOn: aCanvas
	| step stepX t x y h steps |
	steps := 64.
	step := 1.0 / (steps + 1).
	stepX := self morphWidth - 8.0 * step.
	h := self morphHeight - 6.0 / 2.0.
	t := 0.0.
	y := 1.0 - (self waveAt: t) * h + 3.0.
	x := 4.0.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		steps timesRepeat:
			[t := t + step.
			y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
			x := x + stepX.
			aCanvas lineTo: x @ y]]! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:57:38'!
initialize
	super initialize.
	color := PatchMorph waveformColor! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:58:29'!
update: anObject
	super update: anObject.
	valueX := controlX value.
	valueY := controlY value! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:58:52'!
waveAt: aNumber
	^ wave value: aNumber value: valueX value: valueY! !

!XYVariableWaveControlMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Feb/2026 15:57:06'!
waveBlock: aBlock
	wave := aBlock! !

!LFOControlMorphOld methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:57:51'!
lfo: anLFO
	lfo removeDependent: self.
	lfo := anLFO.
	lfo addDependent: self.
	self controlY: (lfo controls at: #speed).
	self controlX: (lfo controls at: #offset)! !

!LFOControlMorphOld methodsFor: 'drawing' stamp: 'len 22/Jan/2026 16:16:27'!
drawOn: aCanvas
	| step stepX t₀ t x y h steps |
	steps := 32.
	step := 1.0 / steps.
	stepX := self morphWidth - 8.0 * step.
	h := self morphHeight - 6.0 / 2.0.
	t₀ := controlX value.
	lfo shape = #random ifTrue:
		[t := currentPhase.
		y := 1.0 - (lfo bipolar ifTrue: [lfo peek] ifFalse: [lfo peek * 2.0 - 1.0]) * h + 3.0.
		x := 4.0 + (t - t₀ \\ 1.0 * stepX * steps).
		aCanvas line: x @ y to: x @ y width: 6.0 color: Color white.
		^ self].
	t := t₀.
	y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
	x := 4.0.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		steps timesRepeat:
			[t := t + step.
			y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
			x := x + stepX.
			aCanvas lineTo: x @ y]].
	t := currentPhase.
	y := 1.0 - (self waveAt: t) * h + 3.0.
	x := 4.0 + (t - t₀ \\ 1.0 * stepX * steps).
	aCanvas line: x @ y to: x @ y width: 6.0 color: Color white! !

!LFOControlMorphOld methodsFor: 'drawing' stamp: 'len 19/Jan/2026 18:56:05'!
waveAt: t
	| v |
	v := lfo shape.
	v == #sine ifTrue: [^ (t * Float twoPi) sin].
	v == #square ifTrue: [^ t < 0.5 ifTrue: [1.0] ifFalse: [-1.0]].
	v == #rise ifTrue: [^ (t - 0.5) * 2.0].
	v == #fall ifTrue: [^ (0.5 - t) * 2.0].
	self notYetImplemented! !

!LFOControlMorphOld methodsFor: 'initialization' stamp: 'len 1/Mar/2026 15:21:49'!
defaultExtent
	^ `128 @ 64`! !

!LFOControlMorphOld methodsFor: 'initialization' stamp: 'len 11/Feb/2026 22:59:37'!
initialize
	super initialize.
	color := PatchMorph waveformColor3.
	currentPhase := 0.0.
	self lfo: LFO new! !

!LFOControlMorphOld methodsFor: 'stepping' stamp: 'len 1/Dec/2025 18:05:00'!
step
	currentPhase := lfo phase.
	self redrawNeeded! !

!LFOControlMorphOld methodsFor: 'stepping' stamp: 'len 2/Dec/2025 16:48:00'!
stepTime
	^ 100! !

!LFOControlMorphOld methodsFor: 'stepping' stamp: 'len 25/Nov/2025 18:58:00'!
wantsSteps
	^ true! !

!LFOControlMorphOld methodsFor: 'private' stamp: 'len 6/Dec/2025 14:31:24'!
adjustXBy: aNumber
	super adjustXBy: aNumber * -4.0! !

!PinMorph methodsFor: 'accessing' stamp: 'len 31/Jan/2026 16:28:27'!
balloonText
	^ self name! !

!PinMorph methodsFor: 'accessing' stamp: 'len 25/Jan/2026 17:30:40'!
borderWidth
	^ focused ifTrue: [4.0] ifFalse: [2.0]! !

!PinMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 19:26:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!PinMorph methodsFor: 'accessing' stamp: 'len 23/Nov/2025 16:21:00'!
defaultColor
	^ Color white! !

!PinMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 21:29:09'!
level: aNumber
	level := aNumber abs.
	self triggerEvent: #level: with: level.
	self redrawNeeded! !

!PinMorph methodsFor: 'accessing' stamp: 'len 5/Feb/2026 16:06:16'!
model
	^ self patchableOwner model! !

!PinMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 22:02:00'!
patch
	^ self firstOwnerSuchThat: [:m| m isKindOf: PatchMorph]! !

!PinMorph methodsFor: 'accessing' stamp: 'len 5/Feb/2026 16:05:46'!
patchableOwner
	^ self firstOwnerSuchThat: [:m| m isKindOf: PatchableMorph]! !

!PinMorph methodsFor: 'accessing' stamp: 'len 2/Apr/2026 19:19:00'!
radius
	^ extent x / 3.0! !

!PinMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 15:51:00'!
selector
	^ selector! !

!PinMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 15:51:00'!
selector: aSymbol
	selector := aSymbol! !

!PinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 16:26:00'!
connections
	^ connections! !

!PinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 22:46:00'!
isConnected
	^ connections notEmpty! !

!PinMorph methodsFor: 'connections' stamp: 'len 27/Nov/2025 18:15:00'!
uninstallDisconnectedSignals
	^ self! !

!PinMorph methodsFor: 'drawing' stamp: 'len 12/Feb/2026 21:27:57'!
drawOn: aCanvas
	| m |
	(m := level abs) > 0.01
		ifTrue:
			[| bc fc bw |
			m > 1.0 ifTrue: [fc := bc := Color redCathode] ifFalse: [fc := color alpha: (m raisedTo: 0.25). bc := color].
			bw := self borderWidth + ((m sqrt min: 1.0) * 2.0).
			aCanvas strokeWidth: bw color: bc fillColor: fc do:
				[self drawShapeOn: aCanvas]]
		ifFalse:
			[aCanvas strokeWidth: self borderWidth color: color do:
				[self drawShapeOn: aCanvas]]! !

!PinMorph methodsFor: 'drawing' stamp: 'len 18/Nov/2025 14:37:00'!
drawShapeOn: aCanvas
	self subclassResponsibility! !

!PinMorph methodsFor: 'event handling testing' stamp: 'len 22/Nov/2025 20:08:00'!
handlesDragOver: aMouseEvent
	^ true! !

!PinMorph methodsFor: 'event handling testing' stamp: 'len 17/Nov/2025 22:34:00'!
handlesMouseOver: anEvent
	^ true! !

!PinMorph methodsFor: 'events' stamp: 'len 22/Nov/2025 20:07:00'!
dragLeave: evt
	focused := false.
	self redrawNeeded! !

!PinMorph methodsFor: 'events' stamp: 'len 22/Nov/2025 20:12:00'!
mouseEnter: anEvent
	focused := true.
	self redrawNeeded.
"	self showBalloon: self balloonText"! !

!PinMorph methodsFor: 'events' stamp: 'len 22/Nov/2025 20:03:00'!
mouseLeave: anEvent
	focused := false.
	self redrawNeeded! !

!PinMorph methodsFor: 'geometry testing' stamp: 'len 9/Nov/2025 16:33:00'!
requiresVectorCanvas
	^ true! !

!PinMorph methodsFor: 'initialization' stamp: 'len 2/Apr/2026 19:32:07'!
defaultExtent
	^ 14 @ 14! !

!PinMorph methodsFor: 'initialization' stamp: 'len 12/Feb/2026 21:09:08'!
initialize
	super initialize.
	color := self defaultColor.
	connections := #().
	focused := false.
	level := 0.0! !

!PinMorph methodsFor: 'stepping' stamp: 'len 12/Feb/2026 21:26:27'!
step
	level abs > 0.01 ifTrue: [level := level * 0.5. self redrawNeeded]! !

!PinMorph methodsFor: 'stepping' stamp: 'len 26/Nov/2025 15:22:00'!
stepTime
	^ 100! !

!PinMorph methodsFor: 'stepping' stamp: 'len 26/Nov/2025 15:09:00'!
wantsSteps
	^ true! !

!InputPinMorph methodsFor: 'connections' stamp: 'len 22/Nov/2025 01:53:00'!
addConnectionFrom: anOutput
	connections := connections copyWith: anOutput.
	self redrawNeeded! !

!InputPinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 23:57:00'!
connectionPoint
	^ extent x / 2.0 - self radius - 2 @ (extent y / 2.0)! !

!InputPinMorph methodsFor: 'connections' stamp: 'len 22/Nov/2025 01:52:00'!
removeConnectionFrom: anOutput
	(connections includes: anOutput) ifFalse: [^ self].
	connections := connections copyWithout: anOutput.
	connections isEmpty ifTrue: [self redrawNeeded]! !

!InputPinMorph methodsFor: 'drawing' stamp: 'len 2/Apr/2026 19:28:26'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 0.5.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: extent x @ y₀; lineTo: x₀ + r @ y₀; arcCenter: x₀ @ y₀ radius: r @ r rotationAngle: 0 start: 0 sweep: Float twoPi! !

!InputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 22/Nov/2025 19:48:00'!
acceptDroppingMorph: aConnectorMorph event: aDropEvent
	aConnectorMorph delete.
	aConnectorMorph source addConnectionTo: self! !

!InputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 26/Nov/2025 13:44:00'!
wantsDroppedMorph: aMorph event: evt
	^ false! !

!InputPinMorph methodsFor: 'event handling testing' stamp: 'len 22/Nov/2025 02:51:00'!
allowsMorphDrop
	^ true! !

!InputPinMorph methodsFor: 'events' stamp: 'len 14/Jan/2026 02:16:16'!
dragEnter: event
	self redrawNeeded.
	self allowsMorphDrop ifFalse: [^ self].
	event hand ifNotNil: [:aHandMorph|
		(aHandMorph submorphs detect: [:any| self wantsDroppedMorph: any event: event] ifNone: [])
			ifNotNil: [:connector|
				connector beSolid.
				focused := true.
				self showBalloon: self balloonText]]! !

!InputPinMorph methodsFor: 'events' stamp: 'len 26/Nov/2025 18:38:00'!
dragLeave: event
	super dragLeave: event.
	event hand ifNotNil: [:aHandMorph|
		aHandMorph submorphs do:
			[:each| (each isKindOf: ConnectorMorph) ifTrue: [each beDashed]]]! !

!AudioInputPinMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 21:09:08'!
balloonText
	level > 0.0001 ifFalse: [^ self name].
	^ self name, ' (', level linearToDecibelsFSPrintString, ')'! !

!AudioInputPinMorph methodsFor: 'connections' stamp: 'len 12/Feb/2026 21:10:38'!
uninstallDisconnectedSignals
	self isConnected ifFalse: [self level:​ 0.0. self model perform: selector with: nil]! !

!AudioInputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 19/Jan/2026 19:31:12'!
wantsDroppedMorph: aMorph event: evt
	^ (aMorph isKindOf: ConnectorMorph) and: [aMorph source isKindOf: AudioOutputPinMorph]! !

!AudioInputPinMorph methodsFor: 'event handling testing' stamp: 'len 19/Jan/2026 19:55:58'!
allowsMorphDrop
	"Audio inputs don't allow many simultaneous connections."
	^ connections isEmpty! !

!ControlInputPinMorph methodsFor: 'accessing' stamp: 'len 30/Nov/2025 10:49:00'!
arity
	^ selector numArgs! !

!ControlInputPinMorph methodsFor: 'accessing' stamp: 'len 2/Feb/2026 15:24:32'!
control
	^ selector isUnary ifTrue: [self model controls at: selector]! !

!ControlInputPinMorph methodsFor: 'accessing' stamp: 'len 18/Jan/2026 03:27:45'!
defaultColor
	^ Color veryLightGray! !

!ControlInputPinMorph methodsFor: 'drawing' stamp: 'len 2/Apr/2026 19:28:33'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 1.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: extent x @ y₀; lineTo: x₀ + r @ y₀; lineTo: x₀ + r @ (y₀ - r); lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ + r @ (y₀ + r); lineTo: x₀ + r @ y₀! !

!ControlInputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 19/Jan/2026 19:31:19'!
wantsDroppedMorph: aMorph event: evt
	^ (aMorph isKindOf: ConnectorMorph) and: [(aMorph source isKindOf: ControlOutputPinMorph) and: [aMorph source arity >= self arity]]! !

!OutputPinMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 21:11:05'!
level: aNumber
	super level:​ aNumber.
	connections do: [:each| each level: aNumber].
"	wires do: [:each| each redrawNeeded]"! !

!OutputPinMorph methodsFor: 'connections' stamp: 'len 18/Feb/2026 17:30:30'!
addConnectionTo: anInput
	| wire |
	(connections includes: anInput) ifTrue: [^ self].
	anInput addConnectionFrom: self.
	connections := connections copyWith: anInput.
	self redrawNeeded.
	self installConnectionTo: anInput.
	wire := WireMorph new source: self; target: anInput; color: color.
	wires := wires copyWith: wire.
	self patch addMorph: wire! !

!OutputPinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 23:57:00'!
connectionPoint
	^ extent x / 2.0 + self radius + 2 @ (extent y / 2.0)! !

!OutputPinMorph methodsFor: 'connections' stamp: 'len 27/Nov/2025 18:17:00'!
removeConnectionTo: anInput
	| wire |
	(connections includes: anInput) ifFalse: [^ self].
	connections := connections copyWithout: anInput.
	connections isEmpty ifTrue: [self redrawNeeded].
	anInput removeConnectionFrom: self.
	self uninstallConnectionTo: anInput.
	wire := wires detect: [:one| one target = anInput].
	wires := wires copyWithout: wire.
	wire delete! !

!OutputPinMorph methodsFor: 'drawing' stamp: 'len 2/Apr/2026 19:28:52'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 0.5.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: 0 @ y₀; lineTo: x₀ - r @ y₀; arcCenter: x₀ @ y₀ radius: r @ r rotationAngle: 0 start: Float pi sweep: Float twoPi! !

!OutputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 17/Nov/2025 19:24:00'!
aboutToBeGrabbedBy: aHand
	^ ConnectorMorph new source: self; color: color! !

!OutputPinMorph methodsFor: 'event handling testing' stamp: 'len 12/Nov/2025 14:47:00'!
handlesMouseDown: aMouseButtonEvent
	^ true! !

!OutputPinMorph methodsFor: 'events' stamp: 'len 17/Nov/2025 19:24:00'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	^ (ConnectorMorph new source: self; color: color; morphPosition: aMouseButtonEvent eventPosition) openInHand! !

!OutputPinMorph methodsFor: 'initialization' stamp: 'len 26/Nov/2025 18:14:00'!
initialize
	super initialize.
	connections := #().
	wires := #()! !

!AudioOutputPinMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 21:09:08'!
balloonText
	level > 0.0001 ifFalse: [^ self name].
	^ self name, ' (', level linearToDecibelsFSPrintString, ')'! !

!AudioOutputPinMorph methodsFor: 'accessing' stamp: 'len 12/Feb/2026 23:39:03'!
buffer
	"Each audio output owns a buffer."
	^ buffer! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 26/Nov/2025 18:12:00'!
installConnectionTo: anInput
	self model perform: selector with: buffer. "perhaps it's already set, unless this is the first connection"
	anInput model perform: anInput selector with: buffer! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 3/Jan/2026 14:45:51'!
uninstallConnectionTo: anInput
	self patch ifNotNil: [:p| p scheduleRecompute]

"	anInput model perform: anInput selector with: nil.
	connections isEmpty ifTrue: [self model perform: selector with: nil]"! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 12/Feb/2026 21:11:34'!
uninstallDisconnectedSignals
	self isConnected ifFalse: [self level:​ 0.0. self model perform: selector with: nil]! !

!AudioOutputPinMorph methodsFor: 'initialization' stamp: 'len 7/Dec/2025 00:22:35'!
initialize
	super initialize.
	buffer := Float32Array new: Module blockSize! !

!AudioOutputPinMorph methodsFor: 'stepping' stamp: 'len 12/Feb/2026 22:18:55'!
step
	self isConnected ifTrue: [self level:​ "buffer first abs" buffer rms].
	super step! !

!ControlOutputPinMorph methodsFor: 'accessing' stamp: 'len 30/Nov/2025 10:56:00'!
arity
	^ selector numArgs! !

!ControlOutputPinMorph methodsFor: 'accessing' stamp: 'len 18/Jan/2026 03:27:50'!
defaultColor
	^ Color veryLightGray! !

!ControlOutputPinMorph methodsFor: 'connections' stamp: 'len 2/Feb/2026 15:22:44'!
installConnectionTo: anInput
	anInput selector isUnary
		ifTrue: [self model when: selector send: #modulateBy: to: anInput control]
		ifFalse: [self model when: selector send: anInput selector to: anInput model]! !

!ControlOutputPinMorph methodsFor: 'connections' stamp: 'len 2/Feb/2026 15:23:51'!
uninstallConnectionTo: anInput
	anInput selector isUnary
		ifTrue:
			[self model removeActionsSatisfying: [:anAction | anAction receiver == anInput control and: [anAction selector = #modulateBy:]] forEvent: selector]		
		ifFalse:
			[self model removeActionsSatisfying: [:anAction | anAction receiver == anInput model and: [anAction selector = anInput selector]] forEvent: selector]! !

!ControlOutputPinMorph methodsFor: 'drawing' stamp: 'len 2/Apr/2026 19:29:00'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 1.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: 0 @ y₀; lineTo: x₀ - r @ y₀; lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ + r @ (y₀ - r); lineTo: x₀ + r @ (y₀ + r); lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ - r @ y₀! !

!ControlOutputPinMorph methodsFor: 'stepping' stamp: 'len 12/Feb/2026 21:12:07'!
startStepping
	self model when: selector send: #level: to: self.
	super startStepping! !

!ScrollerMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 15:31:15'!
drawOn: aCanvas
"	aCanvas fillRectangle: self localBounds color: Color black"! !

!ScrollerMorph methodsFor: 'event handling testing' stamp: 'len 28/Dec/2025 22:33:15'!
handlesMouseScroll: aMouseScrollEvent
	^ true! !

!ScrollerMorph methodsFor: 'events' stamp: 'len 24/Feb/2026 17:34:01'!
handlesKeyboardFocus
	^ false! !

!ScrollerMorph methodsFor: 'events' stamp: 'len 6/Jan/2026 20:51:13'!
keyStroke: anEvent 
	anEvent isEsc ifTrue:
		[scrollable mouseButton2Activity.
		anEvent wasHandled: true.
		^ self].
	^ super keyStroke: anEvent! !

!ScrollerMorph methodsFor: 'events' stamp: 'len 29/Dec/2025 15:34:12'!
mouseScroll: aMouseScrollEvent localPosition: localEventPosition
	aMouseScrollEvent delta ifNotNil: [:aPoint|
		| delta |
		horizontal & vertical ifTrue: [delta := aPoint x negated @ aPoint y] ifFalse: [horizontal ifTrue: [delta := aPoint x negated @ 0] ifFalse: [vertical ifTrue: [delta := 0 @ aPoint y]]].
		^ self scrollBy: delta].
	horizontal ifTrue:
		[aMouseScrollEvent direction = #left ifTrue: [self scrollBy: 16 @ 0].
		aMouseScrollEvent direction = #right ifTrue: [self scrollBy: -16 @ 0]].
	vertical ifTrue:
		[aMouseScrollEvent direction = #up ifTrue: [self scrollBy: 0 @ 16].
		aMouseScrollEvent direction = #down ifTrue: [self scrollBy: 0 @ -16]]! !

!ScrollerMorph methodsFor: 'geometry' stamp: 'len 30/Dec/2025 14:27:10'!
extentChanged: oldExtent
	super extentChanged: oldExtent.
	scrollable ifNotNil:
		[scrollable morphExtent: extent.
		"force to keep scrollable morph within correct bounds:"
		self scrollBy: 0 @ 0].
	^ true! !

!ScrollerMorph methodsFor: 'geometry' stamp: 'len 30/Dec/2025 14:35:00'!
minimumExtent
	scrollable ifNil: [^ 1 @ 1].
	^ (horizontal ifTrue: [1] ifFalse: [scrollable minimumExtent x]) @ (vertical ifTrue: [1] ifFalse: [scrollable minimumExtent y])! !

!ScrollerMorph methodsFor: 'geometry' stamp: 'len 7/Jan/2026 02:22:54'!
someSubmorphPositionOrExtentChanged
	self ensureMinimumExtent! !

!ScrollerMorph methodsFor: 'geometry testing' stamp: 'len 28/Dec/2025 22:33:15'!
clipsSubmorphs
	^ true! !

!ScrollerMorph methodsFor: 'initialization' stamp: 'len 29/Dec/2025 14:51:17'!
defaultExtent
	^ 400 @ 400! !

!ScrollerMorph methodsFor: 'initialization' stamp: 'len 28/Dec/2025 22:51:59'!
horizontal: aBoolean
	horizontal := aBoolean! !

!ScrollerMorph methodsFor: 'initialization' stamp: 'len 28/Dec/2025 22:51:43'!
initialize
	super initialize.
	horizontal := false.
	vertical := false! !

!ScrollerMorph methodsFor: 'initialization' stamp: 'len 5/Jan/2026 22:43:01'!
scrollable: aMorph
	scrollable ifNotNil: [self removeMorph: scrollable].
	scrollable := aMorph.
	self addMorphBack: scrollable.
	scrollable morphPosition: 0 @ 0! !

!ScrollerMorph methodsFor: 'initialization' stamp: 'len 28/Dec/2025 22:52:08'!
vertical: aBoolean
	vertical := aBoolean! !

!ScrollerMorph methodsFor: 'scrolling' stamp: 'len 29/Dec/2025 15:50:04'!
scrollBy: aPoint
	scrollable ifNil: [^ self].
	scrollable morphPosition: ((scrollable morphPosition + aPoint max: self morphExtent - scrollable morphExtent) min: 0 @ 0)! !

!ScrollerMorph methodsFor: 'stepping' stamp: 'len 28/Dec/2025 22:33:15'!
wantsSteps
	^ true! !

!ZoomerMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 15:31:30'!
drawOn: aCanvas
"	aCanvas fillRectangle: self localBounds color: Color black"! !

!ZoomerMorph methodsFor: 'event handling testing' stamp: 'len 9/Feb/2026 21:01:23'!
allowsSubmorphDrag
	^ true! !

!ZoomerMorph methodsFor: 'event handling testing' stamp: 'len 15/Nov/2025 15:11:00'!
handlesMouseScroll: aMouseScrollEvent
	^ true! !

!ZoomerMorph methodsFor: 'events' stamp: 'len 6/Jan/2026 20:51:43'!
keyStroke: aKeyboardEvent 
	aKeyboardEvent isEsc ifTrue:
		[aKeyboardEvent wasHandled: true.
		submorphs do: [:any| any mouseButton2Activity].
		^ self].
	^ super keyStroke: aKeyboardEvent! !

!ZoomerMorph methodsFor: 'events' stamp: 'len 9/Mar/2026 22:26:26'!
mouseScroll: aMouseScrollEvent localPosition: localEventPosition
	aMouseScrollEvent primaryModifierPressed ifTrue:
		[| factor |
		aMouseScrollEvent direction = #down ifTrue: [factor := 1.1] ifFalse: [aMouseScrollEvent direction = #up ifTrue: [factor := 0.9] ifFalse: [^ self]].
		self submorphsDo: [:each| each scaleBy: factor around: localEventPosition].
		^ self].
"	(aMouseScrollEvent rawMacOptionKeyPressed or: [aMouseScrollEvent controlKeyPressed]) ifTrue:
		[| step |
		aMouseScrollEvent delta ifNotNil: [:aPoint| self submorphsDo: [:each| each translateBy: aPoint x negated / 2.0 @ (aPoint y / 2.0)]. ^ self].
		aMouseScrollEvent direction = #up ifTrue: [step := 0@1].
		aMouseScrollEvent direction = #down ifTrue: [step := 0@-1].
		aMouseScrollEvent direction = #left ifTrue: [step := 1@0].
		aMouseScrollEvent direction = #right ifTrue: [step := -1@0].
		self submorphsDo: [:each| each translateBy: step * 16]]"! !

!ZoomerMorph methodsFor: 'geometry testing' stamp: 'len 15/Nov/2025 15:10:00'!
clipsSubmorphs
	^ true! !

!ZoomerMorph methodsFor: 'initialization' stamp: 'len 29/Dec/2025 19:19:11'!
defaultExtent
	^ 720 @ 512
"	^ 1024 + 512 @ 1024"! !

!ZoomerMorph methodsFor: 'stepping' stamp: 'len 15/Nov/2025 15:03:00'!
wantsSteps
	^ true! !

!OscilloscopeMorph methodsFor: 'drawing' stamp: 'len 3/Apr/2026 00:31:41'!
drawOn: aCanvas
	| step buf x y h |
	step := self morphWidth / buffer size.
	buf := buffer copy.
	h := self morphHeight / 2.0.
	x := 0.
	y := 1.0 - (buf at: 1) * h.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x@y.
		2 to: buf size do: [:i|
			x := x + step.
			y := 1.0 - (buf at: i) * h.
			aCanvas lineTo: x@y]]! !

!OscilloscopeMorph methodsFor: 'drawing' stamp: 'len 23/Feb/2026 00:34:49'!
requiresVectorCanvas
	^ true! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 3/Apr/2026 00:27:10'!
buffer: aBuffer
	buffer := aBuffer! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 21/Sep/2025 15:07:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 9/Feb/2026 01:07:22'!
defaultExtent
	^`144@96`! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 3/Apr/2026 00:27:01'!
initialize
	super initialize.
	color := PatchMorph waveformColor! !

!PhosphorDisplayMorph methodsFor: 'drawing' stamp: 'len 3/Feb/2026 00:23:19'!
drawOn: aCanvas
	aCanvas image: image at: 0 @ 0! !

!PhosphorDisplayMorph methodsFor: 'drawing' stamp: 'len 3/Feb/2026 00:06:32'!
requiresVectorCanvas
	^ true ! !

!PhosphorDisplayMorph methodsFor: 'initialization' stamp: 'len 3/Apr/2026 15:49:25'!
image: aForm
	image := aForm.
	self morphExtent: image extent! !

!PhosphorDisplayMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 02:32:24'!
step
	image fill: image boundingBox rule: Form blend fillColor: (Color black alpha: 0.1).
	self redrawNeeded! !

!PhosphorDisplayMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 00:35:27'!
stepTime
	^ 100! !

!PhosphorDisplayMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 00:36:32'!
wantsSteps
	^ true! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:48:29'!
computeMinMax
	(functions isEmpty or: [domain isEmpty]) ifTrue: [min := max := 0.0. ^ self].
	min := functions min: [:f| domain min: [:x| f value: x]].
	max := functions max: [:f| domain max: [:x| f value: x]]! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 19:40:00'!
defaultExtent
	^`256@128`! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:24:13'!
domain: aCollection
	domain := aCollection.
	self computeMinMax! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:47:51'!
drawFunction: f color: color on: aCanvas
	| step h x y |
	step := self morphWidth / domain size.
	h := self morphHeight / (max - min max: 0.01).
	x := 0.0.
	y := (max - (f value: domain first)) * h.
	aCanvas strokeWidth: 1.0 color: color do:
		[aCanvas moveTo: x @ y.
		domain allButFirstDo: [:t|
			x := x + step.
			y := (max - (f value: t)) * h.
			aCanvas lineTo: x @ y]]! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 16:01:10'!
drawOn: aCanvas
	aCanvas drawString: (max printStringFractionDigits: 3) at: 4 @ 0 font: font color: Color white.
	aCanvas drawString: (min printStringFractionDigits: 3) at: 4 @ (self morphHeight - font lineSpacing) font: font color: Color white.
	(min < 0.0 and: [max > 0.0]) ifTrue:
		[| y |
		y := max / (max - min) * self morphHeight.
		aCanvas line: 0 @ y to: self morphWidth @ y width: 1.0 color: Color gray].
	functions with: colors do: [:f :color| self drawFunction: f color: color on: aCanvas]! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:52:14'!
initialize
	super initialize.
	functions := OrderedCollection new.
	colors := OrderedCollection new.
	domain := (0.0 to: 10.0 by: 0.1) asArray.
	min := -1.0.
	max := 1.0.
	font := FontFamily defaultFamilyPointSize: 12! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 19:40:00'!
plot: aBlock
	self plot: aBlock color: Color white! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:28:14'!
plot: aBlockOrCollection color: aColor
	aBlockOrCollection isCollection
		ifTrue: [domain := 1 to: aBlockOrCollection size. functions add: [:i| aBlockOrCollection at: i]]
		ifFalse: [functions add: aBlockOrCollection].
	colors add: aColor.
	self computeMinMax! !

!PlotMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 15:48:51'!
requiresVectorCanvas
	^ true ! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 8/Mar/2026 21:35:37'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 1/Mar/2026 15:22:51'!
defaultBufferSize
	^ 32! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Jan/2026 15:08:43'!
defaultExtent
	^ self defaultBufferSize @ 24! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Mar/2026 19:50:07'!
drawOn: aCanvas
	| m |
	m := extent y / 2.0.
	0 to: buffer size - 1 do: [:i| | h v |
		v := buffer at: i + position \\ buffer size + 1.
		v > 0.01 ifTrue:
			[h := (v min: 1.0) * m.
			aCanvas line: i @ (m-h) to: i @ (m+h-1) width: 1 color: color]]! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Mar/2026 00:28:00'!
initialize
	super initialize.
	buffer := Float32Array new: self defaultBufferSize.
	position := buffer size.
	color := PatchMorph waveformColor! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 18/Jan/2026 23:58:38'!
meterBlock: aBlock
	meterBlock := aBlock! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Jan/2026 19:44:49'!
step
	buffer at: position put: (((meterBlock value linearToDecibels + 60.0 max: 0.0) / 60.0) min: 1.0).
	(position := position - 1) > 0 ifFalse: [position := buffer size].
	self redrawNeeded! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 18/Jan/2026 23:57:33'!
stepTime
	^ 100! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 18/Jan/2026 23:58:57'!
wantsSteps
	^ true! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Feb/2026 00:51:00'!
addSample: aNumber
	currentPosition := currentPosition < samples size ifTrue: [currentPosition + 1] ifFalse: [1].
	samples at: currentPosition put: (aNumber min: 1.0 max: -1.0).
	self redrawNeeded! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Feb/2026 19:34:16'!
bipolar: aBoolean
	bipolar := aBoolean! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Feb/2026 00:35:04'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 1/Mar/2026 15:26:03'!
defaultExtent
	^`128 @ 64`! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Mar/2026 17:54:38'!
drawOn: aCanvas
	| step x y h pos delta |
	delta := 20.
	step := self morphWidth / (samples size - delta) * 5.
	(pos := currentPosition + delta) > samples size ifTrue: [pos := pos - samples size].
	h := self morphHeight - 6.0.
	bipolar ifTrue: [h := h / 2.0].
	x := 0.
	y := 1.0 - (samples at: pos) * h + 3.0.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas moveTo: x @ y.
		0 to: samples size - delta - 5 by: 5 do: [:i|
			x := x + step.
			y := 1.0 - (samples at: pos + i \\ samples size + 1) * h + 3.0.
			aCanvas lineTo: x @ y]]! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 1/Mar/2026 14:51:31'!
initialize
	super initialize.
	color := PatchMorph waveformColor3.
	samples := Float32Array new: 64*5.
	currentPosition := 1.
	bipolar := true! !

!RollingWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Feb/2026 00:34:47'!
requiresVectorCanvas
	^ true! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 22:40:54'!
computeImage
	| h canvas x y step waveform alphaColor |
	image := Form extent: self defaultExtent depth: Display depth.
	image fillColor: "Color black. " PatchMorph panelColor.
	h := self defaultExtent y.
	waveform := sample buffer.
	canvas := BitBltCanvas onForm: image.
	step := image width / waveform size asFloat.
	alphaColor := color alpha: (step * 5.0 min: 1.0).
	x := 0.
	1 to: waveform size do: [:i|
		x := x + step.
		y := (1.0 - (waveform at: i) / 2.0) * h.
		canvas line: x @ y to: x @ (h / 2.0) width: 1 color: alphaColor]! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Feb/2026 01:46:54'!
defaultExtent
	^ `384 @ 92`! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 29/Mar/2026 03:47:29'!
drawOn: aCanvas
	| x n |
	aCanvas image: image at: 0@0.
	n := sample buffer size.
	sample loopLength > 0 ifTrue:
		[x := sample loopStart / n * self morphWidth.
		aCanvas line: x @ 0 to: x @ extent y width: 1 color: Color lightGray.
		x := sample loopEnd / n * self morphWidth.
		aCanvas line: x @ 0 to: x @ extent y width: 1 color: Color lightGray].
	x := (lastPosition ifNil: [^ self]) - 1.0 /  n * self morphWidth.
	aCanvas line: x @ 0 to: x @ extent y width: 2 color: Color white! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 16:54:53'!
initialize
	super initialize.
	color := PatchMorph waveformColor! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 28/Mar/2026 20:20:31'!
sample: aSample
	sample := aSample.
	lastPosition := sample position.
	self computeImage! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 28/Mar/2026 20:20:36'!
step
	| position |
	(position := sample position) = lastPosition ifTrue: [^ self].
	lastPosition := position.
	self redrawNeeded! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 17:03:09'!
stepTime
	^ 30! !

!SampleWaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Jan/2026 16:39:33'!
wantsSteps
	^ true! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 17/Oct/2025 19:42:00'!
defaultExtent
	^`256@128`! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:24:19'!
displayMode
	^ displayMode! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:24:10'!
displayMode: aSymbol
	displayMode := aSymbol.
	self changed! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:01:47'!
drawBarsOn: aCanvas
	| step x h n |
	n := spectrum size asFloat.
	step := self morphWidth / n.
	h := self morphHeight.
	x := 0.
	1 to: spectrum size do: [:i|
		| v y |
		y := (1.0 - (v := spectrum at: i)) * h.
		v := v min: 0.99 max: 0.1. "make it a bit more visible on black background"
		aCanvas line: x@y to: x@h width: step color: (Viridis at: (v * Viridis size + 1.0) truncated).
		x := x + step]! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:00:48'!
drawLogBarsOn: aCanvas
	| step x h  |
	step := self morphWidth / 20.0.
	h := self morphHeight.
	x := 0.
	1 to: spectrum size do: [:i|
		| v y |
		y := (1.0 - (v := spectrum at: i)) * h.
		v := v min: 0.99 max: 0.1. "make it a bit more visible on black background"
		aCanvas fillRectangle: (x@y corner: x+step@h) color: (Viridis at: (v * Viridis size + 1.0) truncated).
		x := x + step.
		step := step * 0.95]! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 15:08:00'!
drawLogOutlineOn: aCanvas
	| step  x y h |
	step := self morphWidth / 20.0.
	h := self morphHeight.
	y := 1.0 - (spectrum at: 1) * h.
	x := 0.0.
	2 to: spectrum size do: [:i|
		| v x2 y2 |
		y2 := 1.0 - (v := spectrum at: i) * h.
		x2 := x + step.
		aCanvas line: x@y to: x2@y2 width: 1 color: color.
		x := x2.
		y := y2.
		step := step * 0.95]! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Apr/2026 19:30:24'!
drawOn: aCanvas
	spectrum ifNil: [^ self].
	frequencyScale = #linear ifTrue:
		[^ displayMode = #bars ifTrue: [self drawBarsOn: aCanvas] ifFalse: [self drawOutlineOn: aCanvas]].
	^ displayMode = #bars ifTrue: [self drawLogBarsOn: aCanvas] ifFalse: [self drawLogOutlineOn: aCanvas]! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 14:40:00'!
drawOutlineOn: aCanvas
	| step  x y h |
	step := self morphWidth / spectrum size.
	h := self morphHeight.
	y := 1.0 - (spectrum at: 1) * h.
	x := 0.
	2 to: spectrum size do: [:i|
		| v x2 y2 |
		y2 := 1.0 - (v := spectrum at: i) * h.
		x2 := x + step.
		aCanvas line: x@y to: x2@y2 width: 1 color: color.
		x := x2.
		y := y2]! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:23:41'!
frequencyScale
	^ frequencyScale! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 18:23:31'!
frequencyScale: aSymbol
	frequencyScale := aSymbol.
	self changed! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Apr/2026 19:11:16'!
initialize
	super initialize.
	color := Color white.
	frequencyScale := #linear.
	displayMode := #bars! !

!SpectrumMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Apr/2026 19:20:42'!
spectrum: aBuffer
	spectrum := aBuffer.
	self redrawNeeded! !

!WaterfallMorph methodsFor: 'drawing' stamp: 'len 4/Feb/2026 19:14:11'!
drawOn: aCanvas
	"Draw the form, wrapping, with the current row always at the top. This produces the the impression of infinite scrolling top to bottom (waterfall)."
	| w h p |
	w := image width.
	h := image height.
	p := position.
	"from left to right, draw from the current column position to the last column:"
	aCanvas image: image at: 0 @ 0 sourceRect: (0 @ (p + 1) corner: w @ h).
	"and then wrap and continue drawing from the first column to the current column position - 1:"
	aCanvas image: image at: 0 @ (h - p - 2) sourceRect: (0 @ 0 corner: w @ (p - 1))! !

!WaterfallMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Apr/2026 16:44:18'!
image: aForm
	image := aForm.
	position := 0.
	self morphExtent: image extent! !

!WaterfallMorph methodsFor: 'as yet unclassified' stamp: 'len 3/Apr/2026 16:44:36'!
position: anInteger
	position := anInteger.
	self redrawNeeded! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 16:38:50'!
attack: aControl
	attack removeDependent: self.
	attack := aControl.
	aControl addDependent: self! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 23/Jan/2026 22:14:59'!
defaultExtent
	^ 96 @ 64! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 1/Mar/2026 14:51:27'!
initialize
	super initialize.
	color := PatchMorph waveformColor3! !

!EGControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:08:46'!
coarseStep
	^ attack coarseStep! !

!EGControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:09:02'!
fineStep
	^ attack fineStep! !

!EGControlMorph methodsFor: 'events' stamp: 'len 18/Jan/2026 18:49:12'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!EGControlMorph methodsFor: 'events' stamp: 'len 18/Jan/2026 18:49:37'!
mouseScroll: aMouseEvent localPosition: localEventPosition
	^ self! !

!EGControlMorph methodsFor: 'geometry testing' stamp: 'len 18/Jan/2026 16:38:50'!
requiresVectorCanvas
	^ true! !

!EGControlMorph methodsFor: 'dependency mechanism' stamp: 'len 20/Jan/2026 15:17:59'!
update: anObject
	self redrawNeeded! !

!ADControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:30:28'!
decay: aControl
	decay removeDependent: self.
	decay := aControl.
	aControl addDependent: self! !

!ADControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:57:39'!
drawOn: aCanvas
	| w h a d |
	w := self maximumSegmentWidth.
	h := self morphHeight.
	a := attack basePosition * w.
	d := decay basePosition * w.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas
			moveTo: 0@h;
			lineTo: a @ 0;
			quadraticBezierTo: a+d @ h control: a @ h;
			lineTo: extent]! !

!ADControlMorph methodsFor: 'drawing' stamp: 'len 23/Jan/2026 22:15:43'!
maximumSegmentWidth
	^ self morphWidth / 2.0! !

!ADControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 18:59:05'!
mouseScroll: anEvent localPosition: localEventPosition
	| a step control |
	a := attack basePosition * self maximumSegmentWidth.
	step := anEvent shiftPressed ifTrue: [attack fineStep] ifFalse: [attack coarseStep].
	anEvent direction = #right ifTrue: [step := step negated] ifFalse: [anEvent direction = #left ifFalse: [^ self]].
	localEventPosition x < a ifTrue: [control := attack] ifFalse: [control := decay].
	control basePosition: control basePosition + step.
	self showBalloon: control printedBaseValueWithLabel! !

!ADSRControlMorph methodsFor: 'initialization' stamp: 'len 24/Oct/2025 16:41:00'!
decay: aControl
	decay removeDependent: self.
	decay := aControl.
	aControl addDependent: self! !

!ADSRControlMorph methodsFor: 'initialization' stamp: 'len 23/Jan/2026 22:16:46'!
defaultExtent
	^ 192 @ 64! !

!ADSRControlMorph methodsFor: 'initialization' stamp: 'len 24/Oct/2025 16:42:00'!
release: aControl
	release removeDependent: self.
	release := aControl.
	aControl addDependent: self! !

!ADSRControlMorph methodsFor: 'initialization' stamp: 'len 24/Oct/2025 16:42:00'!
sustain: aControl
	sustain removeDependent: self.
	sustain := aControl.
	aControl addDependent: self! !

!ADSRControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:48:24'!
drawOn: aCanvas
	| w h a d s r sustainWidth |
	w := self maximumSegmentWidth.
	h := self morphHeight.
	a := attack basePosition * w.
	d := decay basePosition * w.
	s := (1.0 - sustain basePosition) * h.
	r := release basePosition * w.
	sustainWidth := self morphWidth - a - d - r.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas
			moveTo: 0@h;
			lineTo: a @ 0;
			quadraticBezierTo: a+d @ s control: a @ s;
			lineTo: a+d+sustainWidth @ s;
			quadraticBezierTo: (a+d+sustainWidth+r)@h control: a+d+sustainWidth @ h].
"	aCanvas strokeWidth: 1 color: color dashedStrokeBits: 2r1000000000000 do:
		[aCanvas
			moveTo: a+d @ (s + 2);
			lineTo: a+d @ h;
			moveTo: a+d+sustainWidth @ (s + 2);
			lineTo: a+d+sustainWidth @ h]
"! !

!ADSRControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:35:29'!
maximumSegmentWidth
	^ self morphWidth / 3.0! !

!ADSRControlMorph methodsFor: 'events' stamp: 'len 6/Feb/2026 17:56:15'!
mouseScroll: anEvent localPosition: localEventPosition
	| step w a d s r control |
	step := anEvent shiftPressed ifTrue: [self fineStep] ifFalse: [self coarseStep].
	(anEvent direction = #up or: [anEvent direction = #down]) ifTrue:
		[anEvent direction = #up ifTrue: [step := step negated].
		sustain basePosition: sustain basePosition + step.
		self showBalloon: sustain printedBaseValueWithLabel.
		^ self].
	w := self maximumSegmentWidth.
	a := attack basePosition * w.
	d := decay basePosition * w.
	r := release basePosition * w.
	s := self morphWidth - a - r.
	anEvent direction = #right ifTrue: [step := step negated] ifFalse: [anEvent direction = #left ifFalse: [^ self]].
	control := localEventPosition x < a ifTrue: [attack] ifFalse: [localEventPosition x < (s/2.0 + a + d) ifTrue: [decay] ifFalse: [step := step negated. release]].
	control basePosition: control basePosition + step.
	self showBalloon: control printedBaseValueWithLabel! !

!AHDControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:30:32'!
decay: aControl
	decay removeDependent: self.
	decay := aControl.
	aControl addDependent: self! !

!AHDControlMorph methodsFor: 'initialization' stamp: 'len 23/Jan/2026 22:16:16'!
defaultExtent
	^ 144 @ 64! !

!AHDControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:30:52'!
hold: aControl
	hold removeDependent: self.
	hold := aControl.
	aControl addDependent: self! !

!AHDControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:58:17'!
drawOn: aCanvas
	| w h a h2 d |
	w := self maximumSegmentWidth.
	h := self morphHeight.
	a := attack basePosition * w.
	h2 := hold basePosition * w.
	d := decay basePosition * w.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas
			moveTo: 0 @ h;
			lineTo: a @ 0;
			lineTo: a+h2 @ 0;
			quadraticBezierTo: a+h2+d @ h control: a+h2 @ h;
			lineTo: extent]! !

!AHDControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:32:42'!
maximumSegmentWidth
	^ self morphWidth / 3.0! !

!AHDControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:08:32'!
mouseScroll: anEvent localPosition: localEventPosition
	| a h step control |
	a := attack basePosition * self maximumSegmentWidth.
	h := hold basePosition * self maximumSegmentWidth.
	step := anEvent shiftPressed ifTrue: [self fineStep] ifFalse: [self coarseStep].
	anEvent direction = #right ifTrue: [step := step negated] ifFalse: [anEvent direction = #left ifFalse: [^ self]].
	control := localEventPosition x < a ifTrue: [attack] ifFalse: [localEventPosition x < (a + h) ifTrue: [hold] ifFalse: [decay]].
	control basePosition: control basePosition + step.
	self showBalloon: control printedBaseValueWithLabel! !

!ARControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:58:48'!
drawOn: aCanvas
	| w h a r |
	w := self maximumSegmentWidth.
	h := self morphHeight.
	a := attack basePosition * w.
	r := release basePosition * w.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas
			moveTo: 0@h;
			lineTo: a @ 0;
			quadraticBezierTo: a+r @ h control: a @ h;
			lineTo: extent]! !

!ARControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:32:35'!
maximumSegmentWidth
	^ self morphWidth / 2.0! !

!ARControlMorph methodsFor: 'events' stamp: 'len 29/Jan/2026 19:09:22'!
mouseScroll: anEvent localPosition: localEventPosition
	| a step control |
	a := attack basePosition * self maximumSegmentWidth.
	step := anEvent shiftPressed ifTrue: [self fineStep] ifFalse: [self coarseStep].
	anEvent direction = #right ifTrue: [step := step negated] ifFalse: [anEvent direction = #left ifFalse: [^ self]].
	localEventPosition x < a ifTrue: [control := attack] ifFalse: [control := release].
	control basePosition: control basePosition + step.
	self showBalloon: control printedBaseValueWithLabel! !

!ARControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:31:14'!
release: aControl
	release removeDependent: self.
	release := aControl.
	aControl addDependent: self! !

!ASRControlMorph methodsFor: 'initialization' stamp: 'len 23/Jan/2026 22:17:08'!
defaultExtent
	^ 144 @ 64! !

!ASRControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:31:21'!
release: aControl
	release removeDependent: self.
	release := aControl.
	aControl addDependent: self! !

!ASRControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:31:36'!
sustain: aControl
	sustain removeDependent: self.
	sustain := aControl.
	aControl addDependent: self! !

!ASRControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:55:42'!
drawOn: aCanvas
	| w h a s r sustainWidth |
	w := self maximumSegmentWidth.
	h := self morphHeight.
	a := attack basePosition * w.
	s := (1.0 - sustain basePosition) * h.
	r := release basePosition * w.
	sustainWidth := self morphWidth - a - r.
	aCanvas strokeWidth: 2 color: color do:
		[aCanvas
			moveTo: 0@h;
			lineTo: a @ s;
			lineTo: a+sustainWidth @ s;
			quadraticBezierTo: (a+sustainWidth+r)@h control: a+sustainWidth @ h]! !

!ASRControlMorph methodsFor: 'drawing' stamp: 'len 18/Jan/2026 18:32:55'!
maximumSegmentWidth
	^ self morphWidth / 2.0! !

!ASRControlMorph methodsFor: 'events' stamp: 'len 6/Feb/2026 17:57:39'!
mouseScroll: anEvent localPosition: localEventPosition
	| step w a s r control |
	step := anEvent shiftPressed ifTrue: [self fineStep] ifFalse: [self coarseStep].
	(anEvent direction = #up or: [anEvent direction = #down]) ifTrue:
		[anEvent direction = #up ifTrue: [step := step negated].
		sustain basePosition: sustain basePosition + step.
		self showBalloon: sustain printedBaseValue.
		^ self].
	w := self maximumSegmentWidth.
	a := attack basePosition * w.
	r := release basePosition * w.
	s := self morphWidth - a - r.
	anEvent direction = #right ifTrue: [step := step negated] ifFalse: [anEvent direction = #left ifFalse: [^ self]].
	localEventPosition x < (s/2.0 + a) ifTrue: [control := attack] ifFalse: [control := release. step := step negated].
	control basePosition: control basePosition + step.
	self showBalloon: control printedBaseValueWithLabel! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Nov/2025 11:33:00'!
defaultExtent
	^`290@90`! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 27/Nov/2025 17:28:00'!
drawOn: aCanvas
	| w h whiteKeysCount whiteKeyWidth blackKeyWidth blackKeyHeight x i k |
	w := self morphWidth.
	h := self morphHeight.
	"draw white keys:"
	aCanvas fillRectangle: (0 @ 0 extent: self morphExtent) color: Color white.
	whiteKeysCount := 15.
	whiteKeyWidth := w asFloat / whiteKeysCount.
	blackKeyWidth := whiteKeyWidth / 1.62.
	blackKeyHeight := h * 0.65.
	"draw pressed white keys:"
	(pressedKeys at: firstMidiKey) ifTrue: [aCanvas fillRectangle: (0 @ 0 corner:  whiteKeyWidth @ h) color: Color veryLightGray].
	i := 1.
	k := firstMidiKey + 1. "first black key on this morph"
	x := whiteKeyWidth.
	whiteKeysCount - 1 timesRepeat:
		[(i = 0 or: [i = 3]) ifFalse: [k := k + 1].
		(pressedKeys at: k) ifTrue: [aCanvas fillRectangle: (x @ 0 corner: x + whiteKeyWidth @ h) color: Color veryLightGray].
 		i := i + 1 \\ 7.
		k := k + 1.
		x := x + whiteKeyWidth].
	"draw black keys and gap between white keys:"
	x := whiteKeyWidth.
	i := 1.
	k := firstMidiKey + 1. "first black key on this morph"
	whiteKeysCount - 1 timesRepeat:
		[aCanvas line: x @ 0 to: x @ h width: 1 color: Color black.
		(i = 0 or: [i = 3])
			ifFalse: [aCanvas fillRectangle: (x - (blackKeyWidth/2) @ 0 extent: blackKeyWidth @ blackKeyHeight) color: ((pressedKeys at: k) ifTrue: [Color lightGray] ifFalse: [Color black]). k := k + 1].
 		i := i + 1 \\ 7.
		k := k + 1.
		x := x + whiteKeyWidth]! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 28/Nov/2025 01:52:00'!
initialize
	super initialize.
	pressedKeys := Array new: 128 withAll: false.
	firstMidiKey := 60.
	queue := SharedQueue new! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 11/Jan/2026 18:27:40'!
keyDown: anEvent
	| i midiKey |
	i := self textKeysMapping indexOf: anEvent keyValue ifAbsent: [^ self].
	midiKey := i + firstMidiKey - 1.
	pressedKeys at: midiKey put: true.
	queue nextPut: {#note:. midiKey}; nextPut: {#velocity:. 0.6}; nextPut: {#gate:. 1.0}.
"	self triggerEvent: #event: with: (Event gateOn key: midiKey; velocity: 0.6)."
	self redrawNeeded! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 30/Nov/2025 10:59:00'!
keyUp: anEvent
	| i midiKey |
	i := self textKeysMapping indexOf: anEvent keyValue ifAbsent: [^ self].
	midiKey := i + firstMidiKey - 1.
	pressedKeys at: midiKey put: false.
	queue nextPut: {#gate:. 0.0}.
"	self triggerEvent: #event: with: (Event gateOff key: midiKey)."
	self redrawNeeded! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Jan/2026 19:27:44'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self.
	answer
		addControlOutput: #note: label: 'Note';
		addControlOutput: #velocity: label: 'Velocity';
		addGateOutput: #gate: label: 'Gate'.
	^ answer! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 22/Oct/2025 00:30:00'!
textKeysMapping
	^ #(6 1 7 2 8 9 5 11 4 45 38 46 "43 37 47 41 44" 12 19 13 20 14 15 23 17 22 16 26 32 34)! !

!PianoKeyboardMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Dec/2025 14:19:00'!
tick
	queue nextOrNil ifNotNil: [:anArray|
		anArray size = 1
			ifTrue: [self triggerEvent: anArray first]
			ifFalse: [self triggerEvent: anArray first with: anArray second]]! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:54:00'!
defaultExtent
	^ 20@20! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:56:00'!
drawOn: aCanvas
	| color r width x₀ y₀ |
	width := focused ifTrue: [4.0] ifFalse: [2.0].
	color := Color veryVeryLightGray.
	r := extent x / 5.0.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas strokeWidth: width color: color "fillColor: color" do:
		[aCanvas moveTo: x₀ - r @ (y₀ - r); lineTo: x₀ + r @ (y₀ - r); lineTo: x₀ @ (y₀ + r); lineTo: x₀ - r @ (y₀ - r)]! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:47:00'!
handlesMouseDown: anEvent
	^ true! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:37:00'!
handlesMouseOver: anEvent
	^ true! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:45:00'!
initialize
	super initialize.
	focused := false! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:47:00'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	self triggerEvent: #clicked! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:38:00'!
mouseEnter: anEvent
	focused := true.
	self redrawNeeded! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:38:00'!
mouseLeave: anEvent
	focused := false.
	self redrawNeeded! !

!TriangleButtonMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Nov/2025 20:38:00'!
requiresVectorCanvas
	^ true! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:45:00'!
defaultExtent
	^`256@192`! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:47:00'!
drawOn: aCanvas
	aCanvas image: video at: 0@0 sourceRect: (0@position extent: self morphExtent)! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:54:00'!
initialize
	super initialize.
	bits := ByteArray new: 1024*1024*4.
	Smalltalk imageName asFileEntry readStreamDo: [:r| r binary nextWordsInto: bits].
	position := 0.
	self lineSize: self morphWidth.
	increment := self morphHeight! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:41:00'!
lineSize: anInteger
	video := Form extent: anInteger @ (bits size // (anInteger * 4)) depth: 32 bits: bits! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:53:00'!
step
	position := position + increment.
	position + self morphHeight > video height ifTrue: [position := position - video height].
	self redrawNeeded! !

!VideoMorph methodsFor: 'as yet unclassified' stamp: 'len 6/Sep/2025 16:48:00'!
stepTime
	^ 25! !

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 20:14:00'!
computeImage
	| h canvas x y |
	h := 128.
	image := Form extent: waveform size @ h.
	canvas := BitBltCanvas onForm: image.
	1 to: waveform size do: [:i|
		x := i-1.
		y := (1.0 - (waveform at: i) / 2.0) * h.
		canvas line: x @ y to: x @ (h // 2) width: 1 color: Color black]! !

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 17:04:00'!
defaultExtent
	^ `512 @ 128`! !

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 12/Feb/2026 22:37:39'!
drawOn: aCanvas
	aCanvas stencil: (image magnifyTo: self morphExtent) at: 0@0 color: color! !

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 30/Nov/2025 01:45:00'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	self waveform:​ (((1 to: 1000) collect: [:i| (i / 40.0) sin * (i + 200.0 / 10.0) squared cos]) as: Float32Array)! !

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Sep/2025 15:50:00'!
waveform: aFloatArray
	waveform := aFloatArray.
	self computeImage! !

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Oct/2025 15:07:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Oct/2025 15:07:00'!
defaultExtent
	^ `512 @ 64`! !

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 28/Nov/2025 00:25:00'!
drawOn: aCanvas
	"Draw the form, wrapping, with the current column always at the right. This produces the the impression of infinite scrolling right to left."
	| w h |
	w := image width - 1.
	h := image height - 1.
	"from left to right, draw from the next column position+1 to the last column:"
	aCanvas image: image at: 0 @ 0 sourceRect: ((position + 1) @ 0 corner: w @ h).
	"and then wrap and continue drawing from the first column to the current column position:"
	aCanvas image: image at: (w - position - 1) @ 0 sourceRect: (0 @ 0 corner: position @ h)! !

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 30/Nov/2025 01:45:00'!
initialize
	super initialize.
	image := Form extent: self defaultExtent depth: Display depth.
	image fillColor: Color black.
	position := 0.
	color := PatchMorph waveformColor! !

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Oct/2025 15:13:00'!
process: aBuffer
	| h step canvas y |
	h := image height.
	step := 1.
	canvas := BitBltCanvas onForm: image.
	1 to: aBuffer size by: step do: [:i|
		y := (1.0 - (aBuffer at: i) / 2.0) * h.
		canvas
			line: position @ 0 to: position @ h width: 1 color: Color black;
			line: position @ y to: position @ (h // 2) width: 1 color: color.
		position := position + 1 \\ image width].
	self redrawNeeded! !

!ConnectorMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 19:26:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!ConnectorMorph methodsFor: 'accessing' stamp: 'len 8/Nov/2025 22:46:00'!
source
	^ source! !

!ConnectorMorph methodsFor: 'accessing' stamp: 'len 8/Nov/2025 22:00:00'!
source: aMorph
	source := aMorph! !

!ConnectorMorph methodsFor: 'accessing' stamp: 'len 18/Nov/2025 14:22:00'!
sourcePoint
	^ self internalizeFromWorld: (source externalizeToWorld: source connectionPoint)! !

!ConnectorMorph methodsFor: 'drawing' stamp: 'len 26/Nov/2025 18:42:00'!
beDashed
	dashed := true.
	self redrawNeeded! !

!ConnectorMorph methodsFor: 'drawing' stamp: 'len 26/Nov/2025 18:42:00'!
beSolid
	dashed := false.
	self redrawNeeded! !

!ConnectorMorph methodsFor: 'drawing' stamp: 'len 30/Nov/2025 11:36:00'!
drawOn: aCanvas
	dashed
		ifTrue:
			[aCanvas strokeWidth: 2 color: color dashedStrokeBits: 2r1000000000000 do:
				[aCanvas moveTo: self sourcePoint; lineTo: 0 @ 0]]
		ifFalse:
			[aCanvas strokeWidth: 1.5 color: color do:
				[aCanvas moveTo: self sourcePoint; lineTo: 0 @ 0]]! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'len 14/Nov/2025 14:35:00'!
dragCancel
	self delete! !

!ConnectorMorph methodsFor: 'dropping/grabbing' stamp: 'len 15/Nov/2025 20:59:00'!
wantsToBeDroppedInto: aMorph
	^ true! !

!ConnectorMorph methodsFor: 'initialization' stamp: 'len 26/Nov/2025 18:39:00'!
initialize
	super initialize.
	color := Color white.
	dashed := true! !

!ConnectorMorph methodsFor: 'stepping' stamp: 'len 16/Nov/2025 15:29:00'!
step
	(self owner isKindOf: HandMorph) ifFalse: [^ self delete].
	self redrawNeeded! !

!ConnectorMorph methodsFor: 'stepping' stamp: 'len 8/Nov/2025 22:52:00'!
stepTime
	^ 10! !

!ConnectorMorph methodsFor: 'stepping' stamp: 'len 8/Nov/2025 22:19:00'!
wantsSteps
	^ true! !

!PatchMorph methodsFor: 'drawing' stamp: 'len 18/Nov/2025 22:41:00'!
drawOn: aCanvas
	^ self! !

!PatchMorph methodsFor: 'events' stamp: 'len 9/Feb/2026 21:00:50'!
aboutToBeGrabbedBy: aHand
	^ MoverMorph new target: self; offset: (self owner internalizeFromWorld: aHand morphPosition) - self morphPosition! !

!PatchMorph methodsFor: 'events' stamp: 'len 22/Nov/2025 11:43:00'!
allowsMorphDrop
	^ true! !

!PatchMorph methodsFor: 'events' stamp: 'len 9/Feb/2026 21:08:22'!
allowsSubmorphDrag
	^ true! !

!PatchMorph methodsFor: 'geometry services' stamp: 'len 18/Nov/2025 22:52:00'!
fullIncludesPixel: aPoint
	^ true! !

!PatchMorph methodsFor: 'geometry services' stamp: 'len 9/Feb/2026 21:39:32'!
includesPixel: aPoint
	^ submorphs noneSatisfy: [:m| m fullIncludesPixel: aPoint]! !

!PatchMorph methodsFor: 'layout' stamp: 'len 5/Jan/2026 22:27:47'!
someSubmorphPositionOrExtentChanged
	self submorphsDo: [:each| (each isMemberOf: WireMorph) ifTrue: [each update]].
	self scheduleRecompute! !

!PatchMorph methodsFor: 'menu' stamp: 'len 18/Mar/2026 20:29:53'!
addControlInput
	| port ports |
	ports := (self modules select: [:each| each isMemberOf: ControlIn]) collect: [:each| each port].
	port := (0 to: 9) detect: [:i| (ports includes: i) not] ifNone: [^ self].
	self addMorph: (ControlIn new port: port) patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 8/Jan/2026 15:28:00'!
addModuleCopying: aModule
	self addMorph: aModule copy patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 8/Jan/2026 15:28:00'!
addModuleInstantiating: aClass
	self addMorph: aClass new patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 3/Apr/2026 19:06:56'!
getMenu
	| menu submenu |
	self setProperty: #lastMenuOpeningPosition toValue: (self internalizeFromWorld: self activeHand morphPosition).
	menu := MenuMorph new defaultTarget: self.
	#('Oscillators' 'Noise' 'Mix' 'Modulation' 'Envelopes' 'Filters' 'VA Filters' 'Shapers' 'Dynamics' 'FX') do: [:subcategory|
		submenu := MenuMorph new defaultTarget: self.
		(SystemOrganization classesAt: 'Signals-', subcategory)
			do: [:each| each hasSubclasses ifFalse: [submenu add: each name camelSeparatedWords action: #addModuleInstantiating: argument: each]].
		menu add: subcategory subMenu: submenu].

	submenu := MenuMorph new defaultTarget: self.
	submenu
		add: 'Control In' action: #addControlInput;
		add: 'Audio In' action: #addModuleInstantiating: argument: AudioIn;
		add: 'Audio Out' action: #addModuleInstantiating: argument: AudioOut.
	menu add: 'I/O' subMenu: submenu.

	submenu := MenuMorph new defaultTarget: self.
	submenu
		add: 'Oscilloscope' action: #addModuleInstantiating: argument: Oscilloscope;
		add: 'Spectrogram' action: #addModuleInstantiating: argument: Spectrogram;
		add: 'Spectrum Analyzer' action: #addModuleInstantiating: argument: SpectrumAnalyzer;
		add: 'Vectorscope' action: #addModuleInstantiating: argument: Vectorscope;
		add: 'Sine Sweep' action: #addModuleInstantiating: argument: SineSweep.
	menu add: 'Utilities' subMenu: submenu.

	Sample library ifNotNil: [:aDict|
		submenu := MenuMorph new defaultTarget: self.
		aDict associationsDo: [:each| submenu add: each key action: #addModuleCopying: argument: each value].
		menu add: 'Samples' subMenu: submenu].

	Multisample library ifNotNil: [:aDict|
		submenu := MenuMorph new defaultTarget: self.
		aDict associationsDo: [:each| submenu add: each key action: #addModuleCopying: argument: each value].
		menu add: 'Multisamples' subMenu: submenu].

	Wavetable library ifNotNil: [:aDict|
		submenu := MenuMorph new defaultTarget: self.
		aDict associationsDo: [:each| submenu add: each key action: #addModuleCopying: argument: each value].
		menu add: 'Wavetables' subMenu: submenu].

	^ menu! !

!PatchMorph methodsFor: 'stepping' stamp: 'len 9/Nov/2025 22:13:00'!
wantsSteps
	^ true! !

!PatchMorph methodsFor: 'testing' stamp: 'len 9/Nov/2025 15:32:00'!
honorsLayerOrder
	^ true! !

!PatchMorph methodsFor: 'private' stamp: 'len 9/Apr/2026 15:16:06'!
fitTo: aRectangle
	| bounds |
	bounds := self fullBoundsInOwner.
	self translateBy: aRectangle center - bounds center.
	self scaleBy: ((aRectangle width / bounds width asFloat min: aRectangle height / bounds height asFloat) min: 1.0) around: aRectangle center! !

!PatchMorph methodsFor: 'private' stamp: 'len 4/Jan/2026 15:40:13'!
modules
	| patchables answer |
	modules ifNotNil: [:anArray| ^ anArray].
	patchables := submorphs select: [:m| m isKindOf: PatchableMorph].
	patchables do: [:m| m uninstallDisconnectedSignals].
	answer := (patchables sort: [:a :b| a morphPosition x <= b morphPosition x]) collect: [:m| m model].
	modules := answer.
	^ answer! !

!PatchMorph methodsFor: 'private' stamp: 'len 5/Jan/2026 22:05:52'!
scheduleRecompute
	modules := nil.
	self triggerEvent: #recomputeNeeded! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026 20:15:55'!
highsColor
	^ `Color okl: 0.65 c: 0.35 h: 250.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026 20:17:37'!
lowsColor
	^ `Color okl: 0.65 c: 0.35 h: -5.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 22/Feb/2026 20:21:04'!
midsColor
	^ `Color okl: 0.65 c: 0.35 h: 123.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 12/Feb/2026 22:39:58'!
panelColor
	^ `Color fromHexString: '#141414'`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 1/Mar/2026 19:33:00'!
waveformColor
	^ `Color okl: 0.8 c: 0.2 h: 220.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 1/Mar/2026 19:33:04'!
waveformColor2
	^ `Color okl: 0.8 c: 0.2 h: 0.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 1/Mar/2026 19:33:07'!
waveformColor3
	^ `Color okl: 0.8 c: 0.2 h: 80.0`! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 1/Mar/2026 19:33:11'!
waveformColor4
	^ `Color okl: 0.8 c: 0.2 h: 160.0`! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 19:49:00'!
body
	^ body! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 13/Feb/2026 00:29:02'!
flap
	^ flap! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 6/Feb/2026 01:55:15'!
inputs
	^ inputsArea submorphs! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 22:00:00'!
model
	^ model! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 3/Apr/2026 19:13:41'!
model: anObject
	model := anObject.
	self setTitle: model title! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 6/Feb/2026 01:55:32'!
outputs
	^ outputsArea submorphs! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 22:01:00'!
patch
	^ self firstOwnerSuchThat: [:m| m isKindOf: PatchMorph]! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 22/Jan/2026 02:41:28'!
setTitle: aString
	title contents: aString! !

!PatchableMorph methodsFor: 'building' stamp: 'len 2/Feb/2026 15:40:17'!
addAudioInput: aSymbol
	^ self addAudioInput: aSymbol label: 'In'! !

!PatchableMorph methodsFor: 'building' stamp: 'len 31/Jan/2026 15:50:11'!
addAudioInput: aSymbol label: labelString
	| pin |
	pin := AudioInputPinMorph new selector: aSymbol; name: labelString.
	inputsArea addMorph: pin.
	^ pin! !

!PatchableMorph methodsFor: 'building' stamp: 'len 2/Feb/2026 15:39:58'!
addAudioOutput: aSymbol
	^ self addAudioOutput: aSymbol label: 'Out'! !

!PatchableMorph methodsFor: 'building' stamp: 'len 31/Jan/2026 15:50:03'!
addAudioOutput: aSymbol label: labelString
	| pin |
	pin := AudioOutputPinMorph new selector: aSymbol; name: labelString.
	outputsArea addMorph: pin.
	^ pin! !

!PatchableMorph methodsFor: 'building' stamp: 'len 2/Feb/2026 15:28:01'!
addControlInput: aSymbol
	self assert: aSymbol isUnary.
	^ self addControlInput: aSymbol label: aSymbol asPlainString capitalized camelSeparatedWords! !

!PatchableMorph methodsFor: 'building' stamp: 'len 31/Jan/2026 15:49:57'!
addControlInput: aSymbol label: labelString
	| pin |
	pin := ControlInputPinMorph new selector: aSymbol; name: labelString.
	inputsArea addMorph: pin.
	^ pin! !

!PatchableMorph methodsFor: 'building' stamp: 'len 31/Jan/2026 15:49:50'!
addControlOutput: aSymbol label: labelString
	| pin |
	pin := ControlOutputPinMorph new selector: aSymbol; name: labelString.
	outputsArea addMorph: pin.
	^ pin! !

!PatchableMorph methodsFor: 'drawing' stamp: 'len 22/Jan/2026 02:36:22'!
drawOn: aCanvas
	^ self! !

!PatchableMorph methodsFor: 'dropping/grabbing' stamp: 'len 16/Nov/2025 15:52:00'!
aboutToBeGrabbedBy: aHand
	^ MoverMorph new target: self; offset: (self owner internalizeFromWorld: aHand morphPosition) - self morphPosition! !

!PatchableMorph methodsFor: 'events' stamp: 'len 31/Jan/2026 19:07:05'!
dragEnter: anEvent
	self mouseEnter: anEvent! !

!PatchableMorph methodsFor: 'events' stamp: 'len 31/Jan/2026 19:06:56'!
dragLeave: anEvent
	self mouseLeave: anEvent! !

!PatchableMorph methodsFor: 'events' stamp: 'len 31/Jan/2026 18:59:58'!
handlesDragOver: anEvent
	^ true! !

!PatchableMorph methodsFor: 'events' stamp: 'len 24/Nov/2025 14:03:00'!
handlesKeyboardFocus
	^ true! !

!PatchableMorph methodsFor: 'events' stamp: 'len 22/Nov/2025 01:33:00'!
handlesMouseOver: anEvent
	^ true! !

!PatchableMorph methodsFor: 'events' stamp: 'len 9/Mar/2026 22:27:09'!
keyStroke: aKeyboardEvent
	aKeyboardEvent isBackspace
		ifTrue: [self delete. aKeyboardEvent wasHandled: true. ^ self].
	aKeyboardEvent primaryModifierPressed ifTrue:
		[aKeyboardEvent keyCharacter = $b
			ifTrue: [Smalltalk browseFull: self model class. aKeyboardEvent wasHandled: true. ^ self].
		aKeyboardEvent keyCharacter = $i
			ifTrue: [self model inspect. aKeyboardEvent wasHandled: true. ^ self]].
	^ super keyStroke: aKeyboardEvent! !

!PatchableMorph methodsFor: 'events' stamp: 'len 13/Feb/2026 00:44:43'!
mouseEnter: anEvent
	body borderColor: Color veryVeryLightGray.
	title morphPosition: body morphPosition x @ title morphHeight negated.
	title visible: true.
	flap hasSubmorphs ifTrue:
		[flap morphPosition: body morphPosition x @ body morphHeight.
		flap morphExtent: body morphWidth @ flap morphHeight.
		flap visible: true]! !

!PatchableMorph methodsFor: 'events' stamp: 'len 13/Feb/2026 00:31:09'!
mouseLeave: anEvent
	body borderColor: body defaultBorderColor.
	title visible: false.
	flap visible: false! !

!PatchableMorph methodsFor: 'initialization' stamp: 'len 10/Apr/2026 00:10:14'!
initialize
	| container |
	super initialize.
	container := LinearLayoutMorph newRow gap: 1; color: Color transparent.
	inputsArea := LinearLayoutMorph newColumn padding: 0@0; gap: 2; color: Color transparent.
	outputsArea := LinearLayoutMorph newColumn padding: 0@0; gap: 12; color: Color transparent.
	body := RoundedLinearLayoutMorph newColumn gap: 10; padding: 4 @ 4; borderWidth: 1; borderColor: Color lightGray; color: PatchMorph panelColor.
	container addMorph: inputsArea; addMorph: body; addMorph: outputsArea.
	self addMorph: container.
	self addMorph: (title := LabelMorph contents: '' fontSize: 12 emphasis: 1) position: 0 @ -24.
	title color: Color white; visible: false.
	flap := RoundedLinearLayoutMorph newColumn gap: 10; padding: 4 @ 8; "borderWidth: 0; borderColor: Color lightGray; color: PatchMorph panelColor" color: (Color darkGray alpha: 0.6).
	self addMorph: flap.
	flap visible: false! !

!PatchableMorph methodsFor: 'private' stamp: 'len 27/Nov/2025 18:20:00'!
uninstallDisconnectedSignals
	inputsArea submorphsDo: [:m| m uninstallDisconnectedSignals].
	outputsArea submorphsDo: [:m| m uninstallDisconnectedSignals]	! !

!MoverMorph methodsFor: 'accessing' stamp: 'len 16/Nov/2025 15:52:00'!
offset: aPoint
	offset := aPoint! !

!MoverMorph methodsFor: 'accessing' stamp: 'len 11/Nov/2025 22:34:00'!
target: aMorph
	target := aMorph! !

!MoverMorph methodsFor: 'drawing' stamp: 'len 16/Nov/2025 15:23:00'!
drawOn: aCanvas
	^ self! !

!MoverMorph methodsFor: 'dropping/grabbing' stamp: 'len 16/Nov/2025 15:14:00'!
dragCancel
	self delete! !

!MoverMorph methodsFor: 'dropping/grabbing' stamp: 'len 11/Nov/2025 22:37:00'!
wantsToBeDroppedInto: aMorph
	^ true! !

!MoverMorph methodsFor: 'stepping' stamp: 'len 4/Jan/2026 16:40:25'!
step
	(self owner isKindOf: HandMorph) ifFalse: [^ self delete].
	target morphPosition: ((target owner ifNil: [^ self]) internalizeFromWorld: self owner morphPosition) - offset! !

!MoverMorph methodsFor: 'stepping' stamp: 'len 16/Nov/2025 15:28:00'!
stepTime
	^ 10! !

!MoverMorph methodsFor: 'stepping' stamp: 'len 11/Nov/2025 22:37:00'!
wantsSteps
	^ true! !

!WireMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 19:27:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!WireMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 23:53:00'!
defaultLayerNumber
	^ 125! !

!WireMorph methodsFor: 'accessing' stamp: 'len 19/Nov/2025 15:36:00'!
source
	^ source! !

!WireMorph methodsFor: 'accessing' stamp: 'len 8/Nov/2025 22:51:00'!
source: aMorph
	source := aMorph! !

!WireMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 23:34:00'!
sourcePoint
	^ self internalizeFromWorld: (source externalizeToWorld: source connectionPoint)! !

!WireMorph methodsFor: 'accessing' stamp: 'len 19/Nov/2025 15:36:00'!
target
	^ target! !

!WireMorph methodsFor: 'accessing' stamp: 'len 8/Nov/2025 22:51:00'!
target: aMorph
	target := aMorph! !

!WireMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 23:34:00'!
targetPoint
	^ self internalizeFromWorld: (target externalizeToWorld: target connectionPoint)! !

!WireMorph methodsFor: 'drawing' stamp: 'len 30/Nov/2025 11:25:00'!
drawOn: aCanvas
	| s t δ |
	s := self sourcePoint.
	t := self targetPoint.
	δ := 50 @ 0.
	aCanvas strokeWidth: self wireWidth * 2.5 color: (Color black alpha: 0.5) do:
		[aCanvas moveTo: s; cubicBezierTo: t control1: s+δ control2: t-δ].
	aCanvas strokeWidth: self wireWidth color: color do:
		[aCanvas moveTo: s; cubicBezierTo: t control1: s+δ control2: t-δ].
"	aCanvas strokeWidth: self wireWidth color: color do:
		[aCanvas moveTo: s; lineTo: t]"
"	aCanvas strokeWidth: 1 color: color fillColor: color do: [aCanvas circleCenter: t - (0.5@0.5) radius: 2]"! !

!WireMorph methodsFor: 'drawing' stamp: 'len 18/Feb/2026 17:27:12'!
update
	(source patch notNil and: [target patch notNil]) ifFalse: [source removeConnectionTo: target. ^ self delete].
	self redrawNeeded! !

!WireMorph methodsFor: 'drawing' stamp: 'len 26/Nov/2025 18:24:00'!
wireWidth
	^ (self hasKeyboardFocus ifTrue: [3.0] ifFalse: [1.5]) "+ source voltage"! !

!WireMorph methodsFor: 'events' stamp: 'len 17/Nov/2025 16:21:00'!
keyStroke: aKeyboardEvent
	aKeyboardEvent isBackspace ifFalse: [^ super keyStroke: aKeyboardEvent].
	aKeyboardEvent wasHandled: true.
	source removeConnectionTo: target! !

!WireMorph methodsFor: 'focus handling' stamp: 'len 19/Nov/2025 19:44:00'!
keyboardFocusChange: aBoolean
	self redrawNeeded! !

!WireMorph methodsFor: 'initialization' stamp: 'len 14/Nov/2025 18:27:00'!
initialize
	super initialize.
	color := Color white! !

!Bus methodsFor: 'accessing' stamp: 'len 5/Mar/2026 14:43:08'!
leftBuffer
	^ leftBuffer! !

!Bus methodsFor: 'accessing' stamp: 'len 5/Mar/2026 14:43:14'!
rightBuffer
	^ rightBuffer! !

!Bus methodsFor: 'initialization' stamp: 'len 5/Mar/2026 14:43:59'!
initialize
	super initialize.
	leftBuffer := Float32Array new: Module blockSize.
	rightBuffer := Float32Array new: Module blockSize! !

!Bus methodsFor: 'mixing' stamp: 'len 5/Mar/2026 14:46:42'!
clear
	leftBuffer atAllPut: 0.0.
	rightBuffer atAllPut: 0.0! !

!Bus methodsFor: 'mixing' stamp: 'len 5/Mar/2026 14:42:44'!
mixInto: anAudioBuffer startingAt: startIndex
	| j x s |
	j := 2 * startIndex - 1.
	1 to: leftBuffer size do: [:i|
		(x := leftBuffer at: i) = 0.0 ifFalse:
			[s := (anAudioBuffer at: j) + (x * 32767.0) asInteger.
			s > 32767 ifTrue: [s := 32767].  "clipping!!"
			s < -32767 ifTrue: [s := -32767].  "clipping!!"
			anAudioBuffer at: j put: s].	
		j := j + 1.
		(x := rightBuffer at: i) = 0.0 ifFalse:
			[s := (anAudioBuffer at: j) + (x * 32767.0) asInteger.
			s > 32767 ifTrue: [s := 32767].  "clipping!!"
			s < -32767 ifTrue: [s := -32767].  "clipping!!"
			anAudioBuffer at: j put: s].	
		j := j + 1]! !

!AllpassComb methodsFor: 'accessing' stamp: 'len 5/Mar/2026 22:17:13'!
feedback: aNumber
	feedback := aNumber! !

!AllpassComb methodsFor: 'controlling' stamp: 'len 5/Mar/2026 22:17:59'!
reset
	buffer atAllPut: 0.0! !

!AllpassComb methodsFor: 'initialization' stamp: 'len 5/Mar/2026 22:26:19'!
initialize: anInteger
	buffer := Float32Array new: anInteger.
	position := 1.
	feedback := 0.5! !

!AllpassComb methodsFor: 'processing' stamp: 'len 5/Mar/2026 22:13:54'!
value: in
	| y |
	y := buffer at: position.
	buffer at: position put: in + (y * feedback).
	(position := position + 1) > buffer size ifTrue: [position := 1].
	^ y - in! !

!AllpassComb class methodsFor: 'instance creation' stamp: 'len 5/Mar/2026 22:23:37'!
new: anInteger
	^ self new initialize: anInteger! !

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:19:43'!
Q: Q
	"Setup coefficients for a second order allpass filter with resonance Q."
	| a b |
	a := ((Float pi * Q) tan - 1.0) / ((Float pi * Q) tan + 1.0).
	b := (Float pi * Q) cos negated.
	a0 := a negated.
	a1 := b * (1.0 - a).
	a2 := 1.0.
	b1 := a1.
	b2 := a0! !

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:17:25'!
bp: frequency Q: Q
	"Setup coefficients for a second order band-pass filter."
	| ω α b g |
	ω := Float twoPi * frequency.
	α := (ω / (2.0 * Q)) tan.
	b := 0.5 * (1.0 - α) / (1.0 + α).
	g := (0.5 + b) * ω cos.
	a0 := 0.5 - b.
	a1 := 0.0.
	a2 := b - 0.5.
	b1 := -2.0 * g.
	b2 := 2.0 * b! !

!Biquad methodsFor: 'accessing' stamp: 'len 30/Jan/2026 01:30:53'!
bs: frequency Q: Q
	"Setup coefficients for a second order band-stop filter."
	| ω α b g |
	ω := Float twoPi * frequency.
	α := (ω / (2.0 * Q)) tan.
	b := 0.5 * (1.0 - α) / (1.0 + α).
	g := (0.5 + b) * ω cos.
	a0 := 0.5 + b.
	a1 := -2.0 * g.
	a2 := 0.5 + b.
	b1 := -2.0 * g.
	b2 := 2.0 * b! !

!Biquad methodsFor: 'accessing' stamp: 'len 25/Jan/2026 17:07:11'!
butterworth_bp: frequency bw: bandwidth
	"Setup coefficients for a second order Butterworth band-stop filter.
	This is made by cascading a Butterworth LPF and a Butterworth HPF."
	| c d |
	c := (Float pi * frequency * bandwidth) tan.
	d := -2.0 * (Float twoPi * frequency) cos.
	a0 := 1.0 / (1.0 + c).
	a1 := 0.0.
	a2 := a0 negated.
	b1 := a0 * c * d.
	b2 := a0 * (c - 1.0)! !

!Biquad methodsFor: 'accessing' stamp: 'len 25/Jan/2026 17:07:25'!
butterworth_bs: frequency bw: bandwidth
	"Setup coefficients for a second order Butterworth band-stop filter.
	This is made by a Butterworth LPF and a Butterworth HPF in parallel."
	| c d |
	c := (Float pi * frequency * bandwidth) tan.
	d := -2.0 * (Float twoPi * frequency) cos.
	a0 := 1.0 / (1.0 + c).
	a1 := a0 * d.
	a2 := a0.
	b1 := a1.
	b2 := a0 * (1.0 - c)! !

!Biquad methodsFor: 'accessing' stamp: 'len 25/Jan/2026 15:22:14'!
butterworth_hp: frequency
	"Setup coefficients for a second order Butterworth high-pass filter."
	| c |
	c := (Float pi * frequency) tan.
	a0 := 1.0 / (1.0 + (2.0 sqrt * c) + c squared).
	a1 := -2.0 * a0.
	a2 := a0.
	b1 := -2.0 * a0 * (1.0 - c squared).
	b2 := a0 * (1.0 - (2.0 sqrt * c) + c squared)! !

!Biquad methodsFor: 'accessing' stamp: 'len 25/Jan/2026 15:22:19'!
butterworth_lp: frequency
	"Setup coefficients for a second order Butterworth low-pass filter."
	| c |
	c := 1.0 / (Float pi * frequency) tan.
	a0 := 1.0 / (1.0 + (2.0 sqrt * c) + c squared).
	a1 := 2.0 * a0.
	a2 := a0.
	b1 := 2.0 * a0 * (1.0 - c squared).
	b2 := a0 * (1.0 - (2.0 sqrt * c) + c squared)! !

!Biquad methodsFor: 'accessing' stamp: 'len 26/Sep/2025 16:25:00'!
frequencyResponse: ω
	| z |
	z := (Float twoPi i * ω) exp.
	^ a0 + (a1*z) + (z*z*a2) / (1.0 + (z*b1) + (z*z*b2))! !

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:18:02'!
hp: frequency Q: Q
	"Setup coefficients for a second order high-pass filter."
	| ω α b g |
	ω := Float twoPi * frequency.
	α := ω sin / (Q * 2.0).
	b := 0.5 * (1.0 - α) / (1.0 + α).
	g := (0.5 + b) * ω cos.
	a1 := -0.5 - b - g.
	a0 := a1 / -2.0.
	a2 := a0.
	b1 := -2.0 * g.
	b2 := 2.0 * b! !

!Biquad methodsFor: 'accessing' stamp: 'len 2/Mar/2026 17:22:16'!
hs: frequency Q: Q gain: gain
	"Setup coefficients for a second order high-shelf filter.
	The gain is linear, and the frequency is normalized (already divided by the sample rate)."
	| ω α A sqrtA cosω b0 |
	ω := Float twoPi * frequency.
	α := ω sin / (Q * 2.0).
	A := gain sqrt.
	sqrtA := A sqrt.
	cosω  := ω cos.
	b0 := (A + 1.0) - ((A - 1.0) * cosω) + (2.0 * sqrtA * α).
	a0 :=  A * ((A + 1.0) + ((A - 1.0) * cosω) + (2.0 * sqrtA * α)) / b0.
	a1 := -2.0 * A * ((A - 1.0) + ((A + 1.0) * cosω)) / b0.
	a2 :=  A * ((A + 1.0) + ((A - 1.0) * cosω) - (2.0 * sqrtA * α)) / b0.
	b1 :=  2.0 * ((A - 1.0) - ((A + 1.0) * cosω)) / b0.
	b2 := ((A + 1.0) - ((A - 1.0) * cosω) - (2.0 * sqrtA * α)) / b0! !

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:40:13'!
linkwitz_hp: frequency Q: Q
	"Setup coefficients for a second order Linkwitz/Riley high-pass filter."
	| c d |
	c := 1.0 / (Float pi * frequency) tan.
	d := c squared + 1.0 + (c*2.0).
	a0 := c squared / d.
	a1 := -2.0 * c squared / d.
	a2 := a0.
	b1 := -2.0 * c squared + 2.0 / d.
	b2 := -2.0 * c + c squared + 1.0 / d! !

!Biquad methodsFor: 'accessing' stamp: 'len 25/Jan/2026 16:59:12'!
linkwitz_lp: frequency Q: Q
	"Setup coefficients for a second order Linkwitz/Riley low-pass filter."
	| c d |
	c := 1.0 / (Float pi * frequency) tan.
	d := c squared + 1.0 + (c*2.0).
	a0 := 1.0 / d.
	a1 := 2.0 * a0.
	a2 := a0.
	b1 := -2.0 * c squared + 2.0 / d.
	b2 := -2.0 * c + c squared + 1.0 / d! !

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:18:13'!
lp: frequency Q: Q
	"Setup coefficients for a second order low-pass filter."
	| ω α b g |
	ω := Float twoPi * frequency.
	α := ω sin / (Q * 2.0).
	b := 0.5 * (1.0 - α) / (1.0 + α).
	g := (0.5 + b) * ω cos.
	a1 := 0.5 + b - g.
	a0 := a1 / 2.0.
	a2 := a0.
	b1 := -2.0 * g.
	b2 := 2.0 * b! !

!Biquad methodsFor: 'accessing' stamp: 'len 2/Mar/2026 17:22:44'!
ls: frequency Q: Q gain: gain
	"Setup coefficients for a second order low-shelf filter.
	The gain is linear, and the frequency is normalized (already divided by the sample rate)."
	| ω α A sqrtA cosω b0 |
	ω := Float twoPi * frequency.
	α := ω sin / (Q * 2.0).
	A := gain sqrt.
 	sqrtA := A sqrt.
	cosω  := ω cos.
	b0  := (A + 1.0) + ((A - 1.0) * cosω) + (2.0 * sqrtA * α).
	a0 :=  A * ((A + 1.0) - ((A - 1.0) * cosω) + (2.0 * sqrtA * α)) / b0.
	a1 :=  2.0 * A * ((A - 1.0) - ((A + 1.0) * cosω)) / b0.
	a2 :=  A * ((A + 1.0) - ((A - 1.0) * cosω) - (2.0 * sqrtA * α)) / b0.
	b1 := -2.0 * ((A - 1.0) + ((A + 1.0) * cosω)) / b0.
	b2 := ((A + 1.0) + ((A - 1.0) * cosω) - (2.0 * sqrtA * α)) / b0! !

!Biquad methodsFor: 'accessing' stamp: 'len 17/Mar/2026 18:20:34'!
peaking: frequency Q: Q gain: gain
	"Setup coefficients for a second order peaking (bell) filter.
	The gain is linear, and the frequency is normalized (already divided by the sample rate)."
	| ω α A cosω b0 |
	ω := Float twoPi * frequency.
	α := ω sin / (Q * 2.0).
	A := gain sqrt.
	cosω := ω cos.
	b0 := 1.0 + (α / A).
	a0 := (1.0 + (α * A)) / b0.
	a1 := (-2.0 * cosω) / b0.
	a2 := (1.0 - (α * A)) / b0.
	b1 := (2.0 * cosω negated) / b0.
	b2 := (1.0 - (α / A)) / b0! !

!Biquad methodsFor: 'controlling' stamp: 'len 22/Sep/2025 19:52:00'!
reset
	x1 := y1 := x2 := y2 := 0.0! !

!Biquad methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:54:51'!
undenormalize
	"Clear any denormal state."
	y1 abs < 1.0e-15 ifTrue: [y1 := 0.0].
	y2 abs < 1.0e-15 ifTrue: [y2 := 0.0]! !

!Biquad methodsFor: 'initialization' stamp: 'len 17/Mar/2026 18:15:10'!
initialize
	self reset! !

!Biquad methodsFor: 'processing' stamp: 'len 29/Mar/2026 01:52:11'!
process: inputBuffer into: outputBuffer
	"Direct Form 1."
	1 to: inputBuffer size do: [:i|
		| in out |
		in := inputBuffer at: i.
		out := a0 * in + (a1 * x1) + (a2 * x2) - (b1 * y1) - (b2 * y2).
		x2 := x1.
		y2 := y1.
		x1 := in.
		outputBuffer at: i put: (y1 := out)].
	x1 abs < 1.0e-15 ifTrue: [x1 := 0.0].
	x2 abs < 1.0e-15 ifTrue: [x2 := 0.0].
	y1 abs < 1.0e-15 ifTrue: [y1 := 0.0].
	y2 abs < 1.0e-15 ifTrue: [y2 := 0.0]! !

!Biquad methodsFor: 'processing' stamp: 'len 17/Mar/2026 18:17:12'!
value: in
	"Direct Form 1."
	| out |
	out := a0 * in + (a1 * x1) + (a2 * x2) - (b1 * y1) - (b2 * y2).
	x2 := x1.
	y2 := y1.
	x1 := in.
	^ y1 := out! !

!DelayLine methodsFor: 'accessing' stamp: 'len 23/Mar/2026 16:36:37'!
at: anInteger
	"Answer the value of the delay line at anInteger samples in the past.
	1 corresponds to the last written sample."
	| i |
	(i := position - anInteger) >= 1 ifFalse: [i := i + buffer size].
	^ buffer at: i! !

!DelayLine methodsFor: 'accessing' stamp: 'len 20/Feb/2026 15:02:19'!
buffer
	^ buffer! !

!DelayLine methodsFor: 'accessing' stamp: 'len 23/Mar/2026 16:36:51'!
length
	^ buffer size! !

!DelayLine methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:56:55'!
position
	^ position! !

!DelayLine methodsFor: 'controlling' stamp: 'len 26/Jan/2026 14:54:03'!
reset
	buffer atAllPut: 0.0! !

!DelayLine methodsFor: 'initialization' stamp: 'len 23/Mar/2026 16:35:55'!
initialize: anInteger
	buffer := Float32Array new: anInteger + 1.
	position := 0! !

!DelayLine methodsFor: 'processing' stamp: 'len 23/Mar/2026 16:36:25'!
write: in
	| n |
	position := position + 1.
	position > (n := buffer size) ifTrue: [position := position - n].
	buffer at: position put: in! !

!DelayLine class methodsFor: 'instance creation' stamp: 'len 26/Jan/2026 14:53:09'!
new: anInteger
	^ self new initialize: anInteger! !

!DelayTap methodsFor: 'accessing' stamp: 'len 22/Mar/2026 15:22:16'!
delay
	"Answer the number of samples delayed by this tap."
	^ delay! !

!DelayTap methodsFor: 'accessing' stamp: 'len 22/Mar/2026 15:22:16'!
setDelay: aNumber
	"Set a new delay time.."
	delay := aNumber.
	increment := 0.0! !

!DelayTap methodsFor: 'accessing' stamp: 'len 22/Mar/2026 15:22:16'!
setDelayIncrement: aNumber
	"Set a delay increment. This is added to the delay time on every read."
	increment := aNumber! !

!DelayTap methodsFor: 'controlling' stamp: 'len 22/Mar/2026 15:26:14'!
reset
	increment := 0.0! !

!DelayTap methodsFor: 'initialization' stamp: 'len 22/Mar/2026 15:26:29'!
setDelayLine: aDelayLine
	delayLine := aDelayLine.
	delay := delayLine length.
	self reset! !

!DelayTap methodsFor: 'processing' stamp: 'len 22/Mar/2026 15:39:19'!
read
	| n i |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	^​ delayLine buffer at: i truncated "no interpolation"! !

!DelayTap class methodsFor: 'instance creation' stamp: 'len 22/Mar/2026 15:22:16'!
on: aDelayLine
	^ self new setDelayLine: aDelayLine! !

!DelayTapC methodsFor: 'processing' stamp: 'len 23/Mar/2026 16:33:35'!
read
	| n i |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	^​ delayLine buffer atWrapCubic: i "Lagrange cubic interpolation"! !

!DelayTapL methodsFor: 'processing' stamp: 'len 23/Mar/2026 16:30:45'!
read
	| n i |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	^​ delayLine buffer atWrapLinear: i "linear interpolation"! !

!DelayTapT1 methodsFor: 'controlling' stamp: 'len 22/Mar/2026 15:36:09'!
reset
	super reset.
	x1 := y1 := 0.0! !

!DelayTapT1 methodsFor: 'processing' stamp: 'len 20/Feb/2026 15:03:30'!
read
	| n i f a x |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	f := i - (i := i truncated). "fractional and integer parts"
	a := (1.0 - f) / (1.0 + f). "coefficient for the Thiran 1-pole filter"
	x := delayLine buffer at: i.
	y1 := x * a + x1 - (y1 * a).
	x1 := x.
	^ y1! !

!DelayTapT1 class methodsFor: 'instance creation' stamp: 'len 26/Jan/2026 17:11:08'!
on: aDelayLine
	^ self new setDelayLine: aDelayLine! !

!DelayTapT2 methodsFor: 'controlling' stamp: 'len 22/Mar/2026 15:35:59'!
reset
	super reset.
	x1 := x2 := y1 := y2 := 0.0! !

!DelayTapT2 methodsFor: 'processing' stamp: 'len 22/Mar/2026 15:34:56'!
read
	| n i f a1 a2 x y |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	f := i - (i := i truncated).

	"2nd-order filter delay is 1+f, so read one sample newer to compensate"
	i := i + 1.
	i > n ifTrue: [i := i - n].
	x := delayLine buffer at: i.

	"Thiran coefficients for D = 1+f, derived by substituting into the general formula"
	a1 := 2.0 * (1.0 - f) / (f + 2.0).
	a2 := f * (f - 1.0) / ((f + 2.0) * (f + 3.0)).

	"y[n] = a2*x[n] + a1*x[n-1] + x[n-2] - a1*y[n-1] - a2*y[n-2]"
 	y := a2 * x + (a1 * x1) + x2 - (a1 * y1) - (a2 * y2).
	x2 := x1. x1 := x.
	y2 := y1. y1 := y.
	^ y! !

!DelayTapT2 class methodsFor: 'instance creation' stamp: 'len 22/Mar/2026 15:27:44'!
on: aDelayLine
	^ self new setDelayLine: aDelayLine! !

!FFT methodsFor: 'initialization' stamp: 'len 30/Mar/2026 17:55:13'!
basicRealData: real
	"Avoids conversion to FloatArray.
	This disables the fast plugin, but allows for 64 bit Double precision:"
	self
		basicRealData: real
		imagData: real * 0.0  "imaginary component all zero"! !

!FFT methodsFor: 'initialization' stamp: 'jmv 3/Sep/2020 18:38:00'!
basicRealData: real imagData: imag
	"Avoids conversion to FloatArray.
	If data is not in Float32Arrays,  the fast plugin is disabled, but this allows for 64 bit Double precision:
	In any case, make the sinTable match the data, to allow either the plugin or the full precision"
	(real is: #Float32Array)
		ifTrue: [
			(sinTable is: #Float32Array)
				ifFalse: [ sinTable _ sinTable asFloat32Array ]]
		ifFalse: [
			(sinTable is: #Float32Array)
				ifTrue: [ sinTable _ (0 to: n/4) collect: [:i | (i asFloat / (n//4) * Float pi / 2.0) sin ]]].
	realData _ real.
	imagData _ imag! !

!FFT methodsFor: 'initialization' stamp: 'len 30/Mar/2026 18:05:11'!
nu: order
	"Initialize variables and tables for transforming 2^nu points"
	|  j perms k |
	nu := order.
	n := 2 bitShift: nu-1.

	"Initialize permutation table (bit-reversed indices)"
	j := 0.
	perms := WriteStream on: (Array new: n).
	0 to: n-2 do:
		[:i |
		i < j ifTrue: [perms nextPut: i+1; nextPut: j+1].
		k := n // 2.
		[k <= j] whileTrue: [j := j-k.  k := k//2].
		j := j + k].
	permTable := perms contents asWordArray.

	"Initialize sin table 0..pi/2 in n/4 steps."
	sinTable := (0 to: n/4) collect: [:i | (i asFloat / (n//4) * Float pi / 2.0) sin].
	
	sinTable := sinTable asFloat32Array.
	realData := Float32Array new: n.
	imagData := Float32Array new: n! !

!FFT methodsFor: 'initialization' stamp: 'jmv 3/Sep/2020 18:38:00'!
realData: real
	"By defaults use Float32Arrays to allow for the fast primitive.
	This means precision is limeted to 32bit Float.
	For 64 bit Double precision, use #basicRealData:"
	self basicRealData: real asFloat32Array! !

!FFT methodsFor: 'initialization' stamp: 'jmv 3/Sep/2020 18:38:00'!
realData: real imagData: imag
	"By defaults use Float32Arrays to allow for the fast primitive.
	This means precision is limeted to 32bit Float.
	For 64 bit Double precision, use #basicRealData:imagData:"
	self basicRealData: real asFloat32Array imagData: imag asFloat32Array! !

!FFT methodsFor: 'initialization' stamp: 'jmv 10/Aug/2010 10:42:00'!
setSize: anIntegerPowerOfTwo
	"Initialize variables and tables for performing an FFT on the given number of samples. The number of samples must be an integral power of two (e.g. 1024). Prepare data for use with the fast primitive."

	self nu: (anIntegerPowerOfTwo log: 2) asInteger.
	n = anIntegerPowerOfTwo ifFalse: [self error: 'size must be a power of two']
! !

!FFT methodsFor: 'accessing' stamp: 'len 30/Mar/2026 22:52:57'!
imagData
	^ imagData! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 14:28:00'!
order
	^ nu! !

!FFT methodsFor: 'accessing' stamp: 'len 30/Mar/2026 16:17:11'!
realData
	^ realData! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 20:49:00'!
size
	^ n! !

!FFT methodsFor: 'processing' stamp: 'len 30/Mar/2026 16:18:32'!
transformForward
	self transformForward: true! !

!FFT methodsFor: 'processing' stamp: 'len 30/Mar/2026 16:18:39'!
transformInverse
	self transformForward: false! !

!FFT methodsFor: 'private' stamp: 'di 17/Jun/1997 07:47:00'!
permuteData
	| i end a b |
	i _ 1.
	end _ permTable size.
	[i <= end] whileTrue:
		[a _ permTable at: i.
		b _ permTable at: i+1.
		realData swap: a with: b.
		imagData swap: a with: b.
		i _ i + 2]! !

!FFT methodsFor: 'private' stamp: 'di 17/Jun/1997 07:47:00'!
scaleData
	"Scale all elements by 1/n when doing inverse"
	| realN |
	realN _ n asFloat.
	1 to: n do:
		[:i |
		realData at: i put: (realData at: i) / realN.
		imagData at: i put: (imagData at: i) / realN]! !

!FFT methodsFor: 'private' stamp: 'jmv 3/Sep/2020 17:15:00'!
transformForward: forward
	| lev lev1 ip theta realU imagU realT imagT i |

	"Use the primitive if available and if data is in the correct format (Float32Arrays and a WordArray for permTable)"
	<primitive: 'primitiveFFTTransformData' module: 'FFTPlugin'>

	self permuteData.
	1 to: nu do:
		[:level |
		lev _ 1 bitShift: level.
		lev1 _ lev // 2.
		1 to: lev1 do:
			[:j |
			theta _ j-1 * (n // lev).   "pi * (j-1) / lev1 mapped onto 0..n/2"
			theta < (n//4)  "Compute U, the complex multiplier for each level"
				ifTrue:
					[realU _ sinTable at: sinTable size - theta.
					imagU _ sinTable at: theta + 1]
				ifFalse:
					[realU _ (sinTable at: theta - (n//4) + 1) negated.
					imagU _ sinTable at: (n//2) - theta + 1].
			forward ifFalse: [imagU _ imagU negated].
"
			Here is the inner loop...
			j to: n by: lev do:
				[:i |   hand-transformed to whileTrue...
"
			i _ j.
			[i <= n] whileTrue:
				[ip _ i + lev1.
				realT _ ((realData at: ip) * realU) - ((imagData at: ip) * imagU).
				imagT _ ((realData at: ip) * imagU) + ((imagData at: ip) * realU).
				realData at: ip put: (realData at: i) - realT.
				imagData at: ip put: (imagData at: i) - imagT.
				realData at: i put: (realData at: i) + realT.
				imagData at: i put: (imagData at: i) + imagT.
				i _ i + lev]]].
	forward ifFalse: [self scaleData]  "Reverse transform must scale to be an inverse"! !

!FFT methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 23:16:00'!
highestSignificantFrequency
	"The a frequency is considered significant if it's power is at least 1/50th that of the maximum frequency component in the frequency spectrum."
	| powerArray threshold indices |
	powerArray := self normalizedPowers.
	threshold := powerArray max / 50.0.
	indices := (1 to: powerArray size) select: [:i | (powerArray at: i) > threshold].
	^ 1.0 / (self samplesPerCycleForIndex: indices last)! !

!FFT methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 22:56:00'!
normalizedPowers
	"Answer an array whose size is half of the FFT window size containing power in each frequency band, normalized to the average power over the entire FFT. A value of 10.0 in this array thus means that the power at the corresponding frequencies is ten times the average power across the entire FFT."
	| r avg |
	r := (1 to: realData size // 2) collect:
		[:i | ((realData at: i) squared + (imagData at: i) squared) sqrt].
	avg := r sum / r size.
	^ r collect: [:v | v / avg]! !

!FFT methodsFor: 'as yet unclassified' stamp: 'len 1/Apr/2026 19:25:15'!
reset
	realData atAllPut: 0.0.
	imagData atAllPut: 0.0! !

!FFT methodsFor: 'as yet unclassified' stamp: 'len 19/Oct/2025 13:37:00'!
samplesPerCycleForIndex: i
	"Answer the number of samples per cycle corresponding to a power peak at the given index. Answer zero if i = 1, since an index of 1 corresponds to the D.C. component."
	(i < 1 or: [i > (n // 2)]) ifTrue: [^ self error: 'index is out of range'].
	i = 1 ifTrue: [^ 0].  "the D.C. component"
	^ n asFloat / (i - 1)! !

!FFT class methodsFor: 'instance creation' stamp: 'jm 25/Aug/1999 12:49:00'!
new: anIntegerPowerOfTwo
	"Answer a new FFT instance for transforming data packets of the given size."

	^ self new setSize: anIntegerPowerOfTwo
! !

!FIR methodsFor: 'as yet unclassified' stamp: 'len 7/Mar/2026 14:48:27'!
coefficients: anArray
	coefficients := anArray.
	state := Float64Array new: anArray size! !

!FIR methodsFor: 'as yet unclassified' stamp: 'len 7/Mar/2026 14:58:31'!
value: in
	state replaceFrom: 1 to: state size - 1 with: state startingAt: 2; at: state size put: in.
	^ state dot: coefficients! !

!IIR methodsFor: 'as yet unclassified' stamp: 'len 7/Mar/2026 14:58:21'!
value: in
	| n out |
	n := stateIn size.
	stateIn replaceFrom: 1 to: n - 1 with: stateIn startingAt: 2; at: n put: in.
	out := (stateIn dot: numerators) - (stateOut dot: denominators).
	^ stateOut replaceFrom: 1 to: n - 1 with: stateOut startingAt: 2; at: n put: out! !

!LagrangeOversampler2x methodsFor: 'controlling' stamp: 'len 2/Feb/2026 01:26:13'!
reset
	u0 := u1 := u2 := u3 := d0 := d1 := d2 := d3 := 0.0! !

!LagrangeOversampler2x methodsFor: 'initialization' stamp: 'len 2/Feb/2026 01:26:13'!
initialize
	self reset! !

!LagrangeOversampler2x methodsFor: 'processing' stamp: 'len 3/Feb/2026 02:47:21'!
oversampling: aNumber do: aBlock
	| f1 f2 o1 o2 s1 s2 |
	"1. Upsample (generate 2 subsamples):"
	u3 := u2. u2 := u1. u1 := u0. u0 := aNumber.
	"Branch 1: Interpolation (Odd samples)"
	"Using standard Cubic/Lagrange coefficients: -0.0625, 0.5625, 0.5625, -0.0625"
	"Note: We multiply by 2 implicit gain here. The raw coeffs sum to 0.5, so we use coeffs that sum to 1.0"
	s1 := (u0 + u3) * -0.0625 + ((u1 + u2) * 0.5625).
	"Branch 2: Pass-through (Even samples)"
	"Pure delay. We use u1 (center). Multiplied by 1.0 (instead of 0.5) to handle the 2x gain."
	s2 := u1.
	"2. Process (Apply non-linear VA filter, etc):"
	f1 := aBlock value: s1.
	f2 := aBlock value: s2.
	"3. Downsample:"
	"Standard polyphase decimation: Filter both branches and sum."
	d3 := d2. d2 := d1. d1 := d0. d0 := f1.
	"Branch 1: Filter the 'odd' processed samples"
	"We reuse the same coefficients for symmetry"
	o1 := (d0 + d3) * -0.0625 + ((d1 + d2) * 0.5625).
	"Branch 2: The 'even' processed samples"
	"In downsampling, we technically average. Gain is 0.5."
	o2 := f2 * 0.5.
	"The o1 branch also needs the 0.5 gain for downsampling averaging."
	^ o1 * 0.5 + o2! !

!LowpassComb methodsFor: 'accessing' stamp: 'len 5/Mar/2026 22:19:21'!
damp: aNumber
	damp := aNumber! !

!LowpassComb methodsFor: 'accessing' stamp: 'len 5/Mar/2026 22:19:03'!
feedback: aNumber
	feedback := aNumber! !

!LowpassComb methodsFor: 'controlling' stamp: 'len 5/Mar/2026 22:22:31'!
reset
	buffer atAllPut: 0.0.
	state := 0.0! !

!LowpassComb methodsFor: 'controlling' stamp: 'len 9/Mar/2026 16:45:40'!
undenormalize
	"Clear any denormal state."
	state abs < 1.0e-15 ifTrue: [state := 0.0]! !

!LowpassComb methodsFor: 'initialization' stamp: 'len 5/Mar/2026 22:22:44'!
initialize: anInteger
	buffer := Float32Array new: anInteger.
	position := 1.
	state := 0.0.
	feedback := 0.0.
	damp := 0.0! !

!LowpassComb methodsFor: 'processing' stamp: 'len 5/Mar/2026 22:23:03'!
value: in
	| y |
	y := buffer at: position.
	state := y * (1.0 - damp) + (state * damp).
	buffer at: position put: in + (state * feedback).
	(position := position + 1) > buffer size ifTrue: [position := 1].
	^ y! !

!LowpassComb class methodsFor: 'instance creation' stamp: 'len 5/Mar/2026 22:23:29'!
new: anInteger
	^ self new initialize: anInteger! !

!MultiTapDelayLine methodsFor: 'accessing' stamp: 'len 6/Mar/2026 16:56:35'!
delays: delayList gains: gainList
	"For best results it's desirable that the delays are primes.
	
	MultiTapDelayLine new delays: #(537 691 1191) gains: #(0.07 0.07 0.07)
	
	The default in SoundPlayer:
	MultiTapDelayLine new delays: #(1601 7919) gains: #(0.12 0.07).
"
	self assert: delayList size = gainList size.
	delays := delayList.
	gains := gainList.
	buffer := Float32Array new: delayList max.
	position := 1! !

!MultiTapDelayLine methodsFor: 'controlling' stamp: 'len 6/Mar/2026 16:56:35'!
reset
	buffer atAllPut: 0.0! !

!MultiTapDelayLine methodsFor: 'initialization' stamp: 'len 6/Mar/2026 16:56:35'!
initialize
	super initialize.
"	self delays: #(537 691 1191) gains: #(0.07 0.07 0.07)
"
	"The default in Squeak SoundPlayer:"
	self delays: #(1601 7919) gains: #(0.12 0.07)! !

!MultiTapDelayLine methodsFor: 'processing' stamp: 'len 6/Mar/2026 16:57:18'!
value: in
	| n i out |
	n := buffer size. "max delay"
	position := position + 1.
	i := position truncated.
	out := 0.0.
	delays with: gains do: [:delay :gain|
		| j |
		j := position - delay.
		j < 1 ifTrue: [j := j + n].
		out := (buffer at: j) * gain + out].
	buffer at: i put: out + in.
	position := position \\ buffer size.
	^ out! !

!OnePole methodsFor: 'accessing' stamp: 'len 19/Mar/2026 16:59:30'!
frequency: normalizedFrequency
	pole := (Float pi * normalizedFrequency * -2.0) exp! !

!OnePole methodsFor: 'accessing' stamp: 'len 19/Mar/2026 16:59:45'!
pole: aNumber
	pole := aNumber! !

!OnePole methodsFor: 'accessing' stamp: 'len 19/Mar/2026 16:59:30'!
time: timeInSamples
	pole := (-1.0 / timeInSamples) exp! !

!OnePole methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:54:09'!
reset
	y := 0.0! !

!OnePole methodsFor: 'controlling' stamp: 'len 8/Feb/2026 14:54:09'!
undenormalize
	"Clear any denormal state."
	y abs < 1.0e-15 ifTrue: [y := 0.0]! !

!OnePole methodsFor: 'initialization' stamp: 'len 19/Mar/2026 16:59:30'!
initialize
	pole := 1.0.
	self reset! !

!OnePole methodsFor: 'processing' stamp: 'len 19/Mar/2026 16:59:30'!
value: in
	^ y := (1.0 - pole) * in + (pole * y)! !

!Polyphase13TapOversampler2x methodsFor: 'controlling' stamp: 'len 23/Mar/2026 16:40:25'!
reset
	x1 := x2 := x3 := x4 := x5 := x6 := d1 := d2 := d3 := d4 := d5 := d6 := e1 := 0.0! !

!Polyphase13TapOversampler2x methodsFor: 'initialization' stamp: 'len 3/Feb/2026 03:43:37'!
initialize
	self reset! !

!Polyphase13TapOversampler2x methodsFor: 'processing' stamp: 'len 3/Feb/2026 03:55:41'!
oversampling: x0 do: aBlock
	| even odd d0 e0 answer |
	"Note: we use coefficients ​-0.0083, 0.0625, 0.1958.
	Alternatives:
		-0.0102, 0.0736, 0.1866;
		-0.0050, 0.0480, 0.2070."
	"1. Polyphase upsample."
	"Even phase: center tap only"
	even := 0.5 * x3.
	"Odd phase: half-band FIR"
	odd := ​-0.0083 * (x0 + x6) + (0.0625 * (x1 + x5)) + (0.1958 * (x2 + x4)).
	"Shift input history:"
	x6 := x5. x5 := x4. x4 := x3. x3 := x2. x2 := x1. x1 := x0.
	"2. Process at 2× rate:"
	e0 := aBlock value: even.
	d0 := aBlock value: odd.
	"3. Polyphase downsample. Same structure, roles reversed."
	answer := (0.5 * e1) + (​-0.0083 * (d0 + d6) + (0.0625 * (d1 + d5)) + (0.1958 * (d2 + d4))).
	d6 := d5. d5 := d4. d4 := d3. d3 := d2. d2 := d1. d1 := d0.
	e1 := e0.
	^ answer! !

!STFT methodsFor: 'initialization' stamp: 'len 30/Mar/2026 20:14:08'!
window: anArray
	window := anArray asFloat32Array.
	fft := FFT new: window size.
	spectrum := Float32Array new: fft size // 2.
	aux := Float32Array new: fft size // 2! !

!STFT methodsFor: 'accessing' stamp: 'len 30/Mar/2026 18:06:26'!
size
	^ fft size! !

!STFT methodsFor: 'processing' stamp: 'len 31/Mar/2026 17:39:04'!
logSpectrumFrom: anArray into: logArray
	"Compute the log power spectrum of a frame.
	The frequency bins are logarithmic."
	| b k |
	self spectrumFrom: anArray.
	b := spectrum size - 1.0.
	k := logArray size - 1.0.
	1 to: logArray size do: [:i|
		| low high sum |
		low := (b raisedTo: i - 2.0 / k) truncated + 1.
		high := (b raisedTo: i - 1.0 / k) truncated + 1.
		sum := 0.0.
		low to: high do: [:j| sum := sum + (spectrum at: j)].
		logArray at: i put: sum / (high - low + 1)].! !

!STFT methodsFor: 'processing' stamp: 'len 31/Mar/2026 17:42:44'!
spectrumFrom: anArray
	"Answer the log power spectrum of anArray.
	The magnitudes are in normalized logarithmic scale (from 0 to 1).
	The frequency bins are linear."
	fft realData replaceWith: anArray.
	fft realData *= window.
	fft imagData atAllPut: 0.0.
	fft transformForward.
	"Compute the magnitudes of the complex results."
	"Note: the results are in bottom half; the upper half is just its mirror image."
	spectrum replaceFrom: 1 to: spectrum size with: fft realData startingAt: 1.
	spectrum *= spectrum.
	aux replaceFrom: 1 to: aux size with:​ fft imagData startingAt: 1.
	aux *= aux.
	spectrum += aux.
	spectrum *= (1.0 / fft size) squared. "square here because we take sqrt next"
	1 to: spectrum size do: [:i| spectrum at: i put: (spectrum at: i) sqrt linearToNormalizedLog].
	^ spectrum! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:59:00'!
hamming: n
	^ self hamming: n alpha: 0.54! !

!STFT class methodsFor: 'instance creation' stamp: 'len 30/Mar/2026 18:04:50'!
hamming: n alpha: alpha
	"Set the windowing function to the generalized Hamming window. See F. Richard Moore, Elements of Computer Music, p. 100. An alpha of 0.54 gives the Hamming window, 0.5 gives the Hann window."
	| window midPoint |
	window := Float32Array new: n.
	midPoint := (n + 1) / 2.0.
	1 to: n do: [:i| window at: i put: alpha + ((1.0 - alpha) * (2.0 * Float pi * ((i - midPoint) / n)) cos)].
	^ self window: window! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:59:00'!
hann: n
	^ self hamming: n alpha: 0.5! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 21:00:00'!
new: anInteger
	^ self hamming: anInteger! !

!STFT class methodsFor: 'instance creation' stamp: 'len 30/Mar/2026 18:04:36'!
triangular: n
	"Set the windowing function to the triangular, or Parzen, window. See F. Richard Moore, Elements of Computer Music, p. 100."
	| window v |
	window := Float32Array new: n.
	0 to: n // 2 - 1 do: [:i |
		v := i / (n // 2 - 1).
		window at: i + 1 put: v.
		window at: n - i put: v].
	^ self window: window! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:53:00'!
window: anArray
	^ self new window: anArray! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 31/Dec/2025 01:15:55'!
channels
	^ channels! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 31/Dec/2025 01:16:11'!
leftSamples
	^ leftSamples! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 17/Feb/2026 15:00:34'!
loopEnd
	^ loopEnd! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 17/Feb/2026 15:00:30'!
loopStart
	^ loopStart! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 31/Dec/2025 01:16:17'!
rightSamples
	^ rightSamples! !

!WAVFileReader methodsFor: 'accessing' stamp: 'len 15/Feb/2026 15:36:14'!
sampleRate
	^ sampleRate! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 26/Mar/2026 18:29:36'!
convert16bitSignedToFloat: aByteArray
	"Convert the given ByteArray sample data to 32 bit float."
	| n answer j b1 b2 w |
	n := aByteArray size // 2.
	answer := Float32Array new: n.
	j := 1.
	1 to: n do: [:i|
		b1 := aByteArray at: j.
		b2 := aByteArray at: j + 1.
		w := (b2 bitShift: 8) + b1.
		w > 32767 ifTrue: [w := w - 65536].
		answer at: i put: w / 32768.0.
		j := j + 2].
	^ answer! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 31/Dec/2025 14:33:14'!
convert8bitUnsignedToFloat: anArray
	"Convert the given array of samples--assumed to be 8-bit unsigned, linear data--into 32-bit float samples. Return an array containing the resulting samples. Typically used to read uncompressed WAVE sound data."
	| answer |
	answer := Float32Array new: anArray size.
	1 to: anArray do: [:i| answer at: i put: ((anArray at: i) - 128 / 128.0)].
	^ answer! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 26/Mar/2026 18:38:27'!
convertBytesToFloat: aByteArray
	"Convert the given ByteArray sample data in IEEE 32-bit float format to 32 bit float."
	| answer |
	answer := Float32Array new: aByteArray size // 4.
	1 to: answer size do: [:i| answer at: i put: (aByteArray float32At: i - 1 * 4 + 1 bigEndian: false)].
	^ answer! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 31/Dec/2025 00:55:57'!
next16BitWord
	"Read a 16-bit positive integer from the input stream."
	"Assume: Stream has at least two bytes left."
	| n |
	n := stream next: 2.
	^ (n at: 2) * 256 + (n at: 1)! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 31/Dec/2025 00:55:57'!
next32BitWord
	"Read a 32-bit positive integer from the input stream."
	"Assume: Stream has at least four bytes left."
	| n |
	n := stream next: 4.
	^ (n at: 4) * 256 + (n at: 3) * 256 + (n at: 2) * 256 + (n at: 1)! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 31/Dec/2025 15:30:17'!
readFromFileEntry: fileEntry
	^ fileEntry readStreamDo: [:strm| self readFromStream: strm]! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 26/Mar/2026 18:34:35'!
readFromStream: fileStream
	| header data smpl type blockAlign numberOfLoops |
	stream := fileStream.
	header := self readWaveChunk: 'fmt '.
	data := self readWaveChunk: 'data'.
	smpl := self readWaveChunk: 'smpl'.
	smpl isEmpty ifFalse:
		[numberOfLoops := smpl uint32At: 16r24 - 8 + 1 bigEndian: false.
		numberOfLoops > 1 ifTrue: [self error: 'more than one loop'].
		loopStart := smpl uint32At: 16r2C - 8 + 1 + 16r08 bigEndian: false.
		loopEnd := smpl uint32At: 16r2C - 8 + 1 + 16r0C bigEndian: false].
	stream close.
	stream := ReadStream on: header.
	type := self next16BitWord.
	(type = 1 "PCM" or: [type = 3 "Float"]) ifFalse: [^ self error: 'unexpected wave format'].
	channels := self next16BitWord.
	(channels < 1 or: [channels > 2])
		ifTrue: [^ self error: 'unexpected number of wave channels'].
	sampleRate := self next32BitWord.
	stream skip: 4. "skip average bytes per second"
	blockAlign := self next16BitWord.
	bitsPerSample := self next16BitWord.
	(bitsPerSample = 8 or: [bitsPerSample = 16])
		ifFalse: [  "recompute bits per sample"
			bitsPerSample := (blockAlign // channels) * 8].

	type = 1
		ifTrue: "PCM"
			[bitsPerSample = 8
				ifTrue: [data := self convert8bitUnsignedToFloat: data]
				ifFalse: [data := self convert16bitSignedToFloat: data]]
		ifFalse: "Float"
			[data := self convertBytesToFloat: data].

	channels = 2
		ifTrue:
			[leftSamples := Float32Array new: data size // 2.
			rightSamples := Float32Array new: data size // 2.
			1 to: leftSamples size do: [:i|
				leftSamples at: i put: (data at: i*2 - 1).
				rightSamples at: i put: (data at: i*2)]]
		ifFalse:
			[leftSamples := rightSamples := data]! !

!WAVFileReader methodsFor: 'reading' stamp: 'len 17/Feb/2026 14:51:14'!
readWaveChunk: chunkType
	"Search the stream for a format chunk of the given type and return its contents."

	| id count |
	stream reset; binary.
	stream skip: 8.  "skip 'RIFF' and total length"
	id := (stream next: 4) asString.  "contents type"
	id = 'WAVE' ifFalse: [^ ''].     "content type must be WAVE"

	"search for a chunk of the given type"
	[id := (stream next: 4) asString.
	count := self next32BitWord.
	id = chunkType] whileFalse:
		"skip this chunk, rounding length up to a word boundary"
		[stream skip: (count + 1 bitAnd: 16rFFFFFFFE).
		stream atEnd ifTrue: [^ '']].

	^ stream next: count  "return raw chunk data"
! !

!SequenceableCollection methodsFor: '*signals' stamp: 'len 2/Oct/2025 21:40:00'!
plot
	^ PlotMorph new plot: self! !

!FloatArray methodsFor: '*signals' stamp: 'len 25/Mar/2026 19:10:01'!
atCubic: floatIndex
	"Cubic Lagrange interpolation (4 points).
	Note: this is about 3 times slower than linear interpolation (atLinear:)"
	| i f n x0 x1 x2 x3 c0 c1 c2 c3 |
	i := floatIndex truncated.
	(f := floatIndex - i) = 0.0 ifTrue: [^ self at: i].
	n := self size.
	x1 := self at: i.
	x0 := i > 1 ifTrue: [self at: i - 1] ifFalse: [0.0].
	(i := i + 1) <= n
		ifTrue:
			[x2 := self at: i.
			x3 := (i := i + 1) <= n ifTrue: [self at: i] ifFalse: [0.0]]
		ifFalse: [x2 := x3 := 0.0].
	c0 := x0.
	c1 := 0.5 * (x2 - x0).
	c2 := x0 - (2.5 * x1) + (2.0 * x2) - (0.5 * x3).
	c3 := (0.5 * (x3 - x0)) + (1.5 * (x1 - x2)).
	^ ((((c3 * f) + c2) * f) + c1) * f + c0! !

!FloatArray methodsFor: '*signals' stamp: 'len 29/Mar/2026 16:59:57'!
atLinear: floatIndex
	"Linear interpolation."
	| i f start |
	i := floatIndex truncated.
	(f := floatIndex - i) = 0.0 ifTrue: [^ self at: i].
	start := self at: i.
	^ ((self at: i+1) - start) * f + start! !

!FloatArray methodsFor: '*signals' stamp: 'len 25/Mar/2026 19:01:20'!
atWrapCubic: floatIndex
	"Cubic Lagrange interpolation (4 points)."
	| i f x0 x1 x2 x3 c0 c1 c2 c3 |
	i := floatIndex truncated.
	(f := floatIndex - i) = 0.0 ifTrue: [^ self atWrap: i].
	x0 := self atWrap: i - 1.
	x1 := self atWrap: i.
	x2 := self atWrap: i + 1.
	x3 := self atWrap: i + 2.
	c0 := x0.
	c1 := 0.5 * (x2 - x0).
	c2 := x0 - (2.5 * x1) + (2.0 * x2) - (0.5 * x3).
	c3 := (0.5 * (x3 - x0)) + (1.5 * (x1 - x2)).
	^ ((((c3 * f) + c2) * f) + c1) * f + c0! !

!FloatArray methodsFor: '*signals' stamp: 'len 23/Mar/2026 16:33:30'!
atWrapLinear: floatIndex
	"Linear interpolation."
	| i f |
	i := floatIndex truncated.
	f := floatIndex - i.
	^ (1.0 - f) * (self atWrap: i) + (f * (self atWrap: i+1))! !

!Float32Array methodsFor: '*signals' stamp: 'len 30/Sep/2025 02:02:00'!
hardclip
	1 to: self size do: [:i| self at: i put: (self at: i) hardclip]! !

!Float32Array methodsFor: '*signals' stamp: 'len 24/Jan/2026 17:55:03'!
peak
	"Answer the peak absolute value."
	| answer |
	answer := 0.0.
	1 to: self size do: [:i| | x | (x := (self at: i) abs) > answer ifTrue: [answer := x]].
	^ answer! !

!Float32Array methodsFor: '*signals' stamp: 'len 18/Nov/2025 17:48:00'!
replaceWith: aFloat32Array
	self replaceFrom: 1 to: self size with: aFloat32Array startingAt: 1! !

!Float32Array methodsFor: '*signals' stamp: 'len 24/Jan/2026 15:49:52'!
rms
	"Answer the root mean square (RMS) of the receiver."
	^ ((self dot: self) / self size) sqrt! !

!Float32Array methodsFor: '*signals' stamp: 'len 29/Sep/2025 02:40:00'!
softclip
	1 to: self size do: [:i| self at: i put: (self at: i) softclip]! !

!CharacterSequence methodsFor: '*signals' stamp: 'len 27/Jan/2026 14:36:17'!
camelSeparatedWords
	| r w ch |
	r := self readStream.
	w := '' writeStream.
	[r atEnd] whileFalse:
		[w nextPut: (ch := r next).
		(ch isUppercase not and: [r atEnd not and: [r peek isUppercase]]) ifTrue: [w space]].
	^ w contents
! !

!CharacterSequence methodsFor: '*signals' stamp: 'len 15/Feb/2026 23:05:34'!
nameToSemitones
"
	(0 to: 127) allSatisfy: [:i| i semitonesToName nameToSemitones = i]
"
	| answer |
	answer := #(60 62 64 65 67 69 71) at: ('CDEFGAB' indexOf: self first asUppercase).
	(self includesAnyOf: '#♯') ifTrue: [answer := answer + 1].
	answer := (('0123456789' indexOf: self last) - 5) * 12 + answer.
	^ answer! !

!BlockClosure methodsFor: '*signals' stamp: 'len 3/Feb/2026 15:45:44'!
plot: aCollection
	^ PlotMorph new domain: aCollection; plot: self! !

!Number methodsFor: '*signals' stamp: 'len 13/Oct/2025 15:56:00'!
centsToRatio
	^ (self / 100.0) semitonesToRatio! !

!Number methodsFor: '*signals' stamp: 'len 31/Jan/2026 16:32:44'!
decibelsFSPrintString
	self < -59.9 ifTrue: [^ '-∞ dBFS'].
	self abs < 0.1 ifTrue: [^ '0 dBFS'].
	^ (self positive ifTrue: ['+'] ifFalse: ['']), (self printStringFractionDigits: 1), ' dBFS'! !

!Number methodsFor: '*signals' stamp: 'len 24/Jan/2026 15:56:54'!
decibelsPrintString
	self < -59.9 ifTrue: [^ '-∞ dB'].
	self abs < 0.1 ifTrue: [^ '0 dB'].
	^ (self positive ifTrue: ['+'] ifFalse: ['']), (self printStringFractionDigits: 1), ' dB'! !

!Number methodsFor: '*signals' stamp: 'len 17/Oct/2025 21:20:00'!
decibelsToLinear
	^ 10.0 raisedTo: self / 20.0! !

!Number methodsFor: '*signals' stamp: 'len 28/Nov/2025 12:51:00'!
hertzPrintString
	self < 5.0 ifTrue: [^ (self printStringFractionDigits: 2), ' Hz'].
	self < 100.0 ifTrue: [^ (self printStringFractionDigits: 1), ' Hz'].
	self < 1000.0 ifTrue: [^ self asInteger printString, ' Hz'].
	^ ((self / 1000.0) printStringFractionDigits: 1), ' kHz'! !

!Number methodsFor: '*signals' stamp: 'len 22/Oct/2025 15:24:00'!
hertzToSemitones
	^ 12.0 * (self / 440.0 log: 2) + 69.0! !

!Number methodsFor: '*signals' stamp: 'len 17/Oct/2025 21:20:00'!
linearToDecibels
	| x |
	x := self abs.
	x < 1.0e-12 ifTrue: [^ -120.0].
	^ 20.0 * x log! !

!Number methodsFor: '*signals' stamp: 'len 31/Jan/2026 16:32:57'!
linearToDecibelsFSPrintString
	^ self linearToDecibels decibelsFSPrintString! !

!Number methodsFor: '*signals' stamp: 'len 28/Nov/2025 13:02:00'!
linearToDecibelsPrintString
	^ self linearToDecibels decibelsPrintString! !

!Number methodsFor: '*signals' stamp: 'len 31/Mar/2026 17:48:41'!
linearToNormalizedLog
	"Map linear amplitude to a value between 0 and 1 in log scale."
	^ ((self abs + 1.0e-8) log * 20.0 + 80.0) / 80.0 min: 1.0 max: 0.0! !

!Number methodsFor: '*signals' stamp: 'len 13/Oct/2025 15:56:00'!
ratioToCents
	^ self ratioToSemitones * 100.0! !

!Number methodsFor: '*signals' stamp: 'len 13/Oct/2025 15:54:00'!
ratioToSemitones
	^ 12.0 * (self log: 2)! !

!Number methodsFor: '*signals' stamp: 'len 28/Nov/2025 12:54:00'!
secondsPrintString
	self abs < 0.01 ifTrue: [^ (self * 1000.0 printStringFractionDigits: 1), ' ms'].
	self abs < 1.0 ifTrue: [^ (self * 1000.0) asInteger printString, ' ms'].
	^ (self printStringFractionDigits: 1), ' s'! !

!Number methodsFor: '*signals' stamp: 'len 14/Jan/2026 17:04:15'!
semitonesOffsetPrintString
	self > 0.001 ifTrue: [^ '+', (self printStringFractionDigits: 2), ' st'].
	self < -0.001 ifTrue: [^ '-', (self abs printStringFractionDigits: 2), ' st'].
	^ '0.00 st'! !

!Number methodsFor: '*signals' stamp: 'len 22/Oct/2025 15:23:00'!
semitonesToHertz
	^ 440.0 * (2.0 raisedTo: self - 69.0 / 12.0)! !

!Number methodsFor: '*signals' stamp: 'len 6/Jan/2026 17:17:12'!
semitonesToName
	"Return a note name corresponding to the closest MIDI key.
	The answer is always 3 characters long."
	| midiKey |
	midiKey := self rounded.
	^ (#('C‐' 'C♯' 'D‐' 'D♯' 'E‐' 'F‐' 'F♯' 'G‐' 'G♯' 'A‐' 'A♯' 'B‐') at: (midiKey \\ 12) + 1) , (#('N' '0' '1' '2' '3' '4' '5' '6' '7' '8' '9') at: (midiKey // 12) + 1)! !

!Number methodsFor: '*signals' stamp: 'len 13/Oct/2025 15:54:00'!
semitonesToRatio
	^ 2.0 raisedTo: self / 12.0! !

!Number methodsFor: '*signals' stamp: 'len 29/Mar/2026 16:58:09'!
to: end at: fraction
	^ (end - self) * fraction + self! !

!Number methodsFor: '*signals' stamp: 'len 29/Mar/2026 23:27:35'!
to: end atExp: fraction
	^ (self ln to: end ln at: fraction) exp! !

!Number methodsFor: '*signals' stamp: 'len 1/Nov/2025 14:07:00'!
velocityToGain
	"Map a value velocity in the range 0.0..1.0 to a volume in the range 0.0..1.0."
	"Details: A quadratic function seems to give a good keyboard feel.
	(Originally from MIDISynthChannel>>convertVelocity:.)"
	| r |
	r := self squared * 1.344.
	r > 1.0 ifTrue: [^ 1.0].
	r < 0.08 ifTrue: [^ 0.08].
	^ r! !

!Float methodsFor: '*signals' stamp: 'len 23/Sep/2025 19:47:00'!
blamp: dt
	"This is the PolyBLAMP function used for removing aliasing from digitally generated waves.
	This is similar to PolyBLEP but for ramp discontinuities."
	| x |
	self < dt ifTrue: "start of cycle"
		[x := self / dt.
		^ -0.5 * x * x + x - 0.5].
	self > (1.0 - dt) ifTrue: "end of cycle"
		[x := (self - 1.0) / dt.
		^ 0.5 * x * x + x + 0.5].
	^ 0.0! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 18:46:49'!
blep: dt
	"This is the PolyBLEP (Polynomial Band-Limited Step) function used for removing aliasing from digitally generated waves.
	This is a variation of BLEP (Band-Limited Step).
	The PolyBLEP technique smooths the sharp corners (discontinuities) in digital waveforms like sawtooth and square waves. These sharp corners create aliasing. PolyBLEP works by adding a small polynomial correction exactly where the discontinuity occurs, effectively rounding it off and removing the aliasing.
	Note: this method already has a baked-in scaling factor of 2, which corresponds to the jump of sawthood and pulse waves between -1 and 1."
	| x |
	self < dt ifTrue: "raising edge"
		[x := self / dt.
		^ x + x - (x*x) - 1.0].
	self > (1.0 - dt) ifTrue: "falling edge"
		[x := (self - 1.0) / dt.
		^ x * x + (x+x) + 1.0].
	^ 0.0! !

!Float methodsFor: '*signals' stamp: 'len 30/Sep/2025 02:03:00'!
hardclip
	self > 1.0 ifTrue: [^ 1.0].
	self < -1.0 ifTrue: [^ -1.0].
	^ self! !

!Float methodsFor: '*signals' stamp: 'len 17/Jan/2026 16:04:55'!
inverseSaw: dt
	"Answer a PolyBLEP antialiased inverse sawtooth wave.
	Note: the #blep: method already has a baked-in scaling factor of 2, which corresponds to the jump from -1 to 1."
	^ (2.0 * (1.0 - self) - 1.0) + (self blep: dt)! !

!Float methodsFor: '*signals' stamp: 'len 2/Feb/2026 18:25:07'!
parabolic: dt
	"Answer a PolyBLAMP antialiased parabolic wave.
	The parabolic wave is the result of integrating a sawtooth wave. It has a distinctive mellow character, somewhere between a sine and a triangle wave, but with richer harmonic series that rools off at 12 dB/oct (compared to 6 dB/oct for a saw)."
	^ ((4.0 * (self - 0.5) squared) + (8.0 * dt * (self blamp: dt)) - 0.5) * 1.95! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 18:46:01'!
pulse: dt width: width
	"Answer a PolyBLEP antialiased pulse wave.
	Note: the #blep: method already has a baked-in scaling factor of 2, which corresponds to the jump between -1 and 1."
	^ (self < width ifTrue: [1.0] ifFalse: [-1.0]) + (self blep: dt) - (self - width + 1.0 \\ 1.0 blep: dt)! !

!Float methodsFor: '*signals' stamp: 'len 22/Jan/2026 04:22:11'!
pulseWidth: width
	"Answer a pulse wave."
	^ self < width ifTrue: [1.0] ifFalse: [-1.0]! !

!Float methodsFor: '*signals' stamp: 'len 22/Jan/2026 04:20:09'!
saw
	"Answer a sawtooth wave."
	^ 2.0 * self - 1.0! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 18:43:19'!
saw: dt
	"Answer a PolyBLEP antialiased sawtooth wave.
	Note: the #blep: method already has a baked-in scaling factor of 2, which corresponds to the jump from -1 to 1."
	^ (2.0 * self - 1.0) - (self blep: dt)! !

!Float methodsFor: '*signals' stamp: 'len 24/Jan/2026 18:20:22'!
softclip
	"Perform a soft clip, distorting to a signal between -1.0 and 1.0.
	This is a Padé rational approximation of tanh.
	This method is about 2x faster than tanhclip."
	| square |
	self > 3.0 ifTrue: [^ 1.0].
	self < -3.0 ifTrue: [^ -1.0].
	square := self squared.
	^ (square + 27.0) * self / (square * 9.0 + 27.0)! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 19:46:52'!
syncSaw: dt
	"Answer the sync part of a hard-sync'ed sawthooth wave."
	| naive jumpSize |
	naive := 2.0 * self - 1.0.
	"The jump is from the current naive value back to -1.0:"
	jumpSize := -1.0 - naive.
	"Note: We divide by 2.0 because the #blep: method is hardcoded for a range of 2.0:"
	^ -1.0 + (jumpSize / 2.0 * (self blep: dt))! !

!Float methodsFor: '*signals' stamp: 'len 28/Sep/2025 21:46:00'!
tanhclip
	"Perform an approximation of a tanh clip, distorting to a signal between -1.0 and 1.0.
	See softclip for a faster alternative."
	(self > -0.5 and: [self < 0.5]) ifTrue: [^ self].
	self >= 4.0 ifTrue: [^ 1.0].
	self <= -4.0 ifTrue: [^ -1.0].
	^ self tanh! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 18:32:01'!
triangle
	"Answer a naive triangle wave."
	^ self < 0.5 ifTrue: [4.0 * self - 1.0] ifFalse: [-4.0 * self + 3.0]! !

!Float methodsFor: '*signals' stamp: 'len 16/Jan/2026 18:32:33'!
triangle: dt
	"Answer a PolyBLAMP antialiased triangle wave."
	^ (self < 0.5 ifTrue: [4.0 * self - 1.0] ifFalse: [-4.0 * self + 3.0]) + (((self blamp: dt) - (self - 0.5 \\ 1.0 blamp: dt)) * 8.0 * dt)! !

!Float methodsFor: '*signals' stamp: 'len 17/Jan/2026 16:39:26'!
triangle: dt skew: skew
	"Variable-slope triangle wave using PolyBLEP and PolyBLAMP antialiasing.
	This morphs from an falling saw at skew 0.0, to a triangle at skew 0.5, to a rising saw at skew 1.0."
	| naive dSlope |
	"Falling Saw (Skew is at or near 0.0). Jumps from -1.0 to +1.0 at phase wrap (+2.0 jump)"
	skew < dt ifTrue: [^ 1.0 - (2.0 * self) + (self blep: dt)].
	"Rising Saw (Skew is at or near 1.0). Jumps from +1.0 to -1.0 at phase wrap (-2.0 jump)"
	skew > (1.0 - dt) ifTrue: [^ (2.0 * self - 1.0) - (self blep: dt)].
	"Normal Triangle (Safe Zone). We use BLAMP for the slope corners."
	naive := self < skew ifTrue: [self / skew * 2.0 - 1.0 ] ifFalse: [1.0 - ((self - skew) / (1.0 - skew) * 2.0)].
	"Slope 1: 2/s, Slope 2: -2/(1-s). dSlope = Slope1 - Slope2"
	dSlope := (2.0 / skew) + (2.0 / (1.0 - skew)).
	^ naive + (dSlope * dt * (self blamp: dt)) - (dSlope * dt * ((self - skew + 1.0 \\ 1.0) blamp: dt))! !

!Float methodsFor: '*signals' stamp: 'len 22/Jan/2026 04:23:39'!
triangleSkew: skew
	"Variable-slope triangle wave.
	This morphs from an falling saw at skew 0.0, to a triangle at skew 0.5, to a rising saw at skew 1.0."
	^​ self < skew ifTrue: [self / skew * 2.0 - 1.0 ] ifFalse: [1.0 - ((self - skew) / (1.0 - skew) * 2.0)]! !

!Color methodsFor: '*signals' stamp: 'len 21/Dec/2025 21:32:58'!
darker: amount
	^ self lighter: amount negated! !

!Color methodsFor: '*signals' stamp: 'len 21/Dec/2025 21:33:37'!
lighter: amount
	^ self oklchDo: [:l :c :h| self class okl: (l + amount min: 1.0 max: 0.0) c: c h: h]! !

!Color methodsFor: '*signals' stamp: 'len 20/Feb/2026 19:41:22'!
lightnessAndChromaBy: aNumber
	^ self oklchDo: [:l :c :h| self class okl: l * aNumber c: c * aNumber h: h]! !

!Color methodsFor: '*signals' stamp: 'len 20/Feb/2026 19:25:25'!
oklch
	self oklchDo: [:l :c :h| ^ {l. c. h}]! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:45'!
amberAlert
	^ `Color fromHexString: '#FFAA00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:56'!
azureBeam
	^ `Color fromHexString: '#4488FF'`! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 22:55:00'!
categoricalPalette
	"Palette with equal perceptual lighness (L=64) and chroma (C=85).
	All colors are ~90° apart and ordered to flow smoothly around the wheel."
	^ self categoricalPalette5! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 20:33:00'!
categoricalPalette1
	"Palette with equal perceptual lighness (L=64) and chroma (C=85).
	All colors are ~90° apart and ordered to flow smoothly around the wheel."
	^ #(cyanPhosphor violetBeam magentaGlow redCathode amberAlert emeraldScreen) collect: [:each| self perform: each]! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 19:12:00'!
categoricalPalette2
	^ #(cyanPhosphor magentaGlow limeScreen amberAlert violetBeam redCathode) collect: [:each| self perform: each]! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 19:12:00'!
categoricalPalette3
	^ #(cyanPhosphor violetBeam roseCathode coralPulse amberAlert emeraldScreen) collect: [:each| self perform: each]! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 19:13:00'!
categoricalPalette4
	^ #(cyanPhosphor violetBeam hotPinkGlow vermillionRay amberAlert emeraldScreen) collect: [:each| self perform: each]! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 22:55:00'!
categoricalPalette5
	^ #(cyanPhosphor azureBeam violetBeam hotPinkGlow vermillionRay amberAlert lemonPhosphor emeraldScreen) collect: [:each| self perform: each]! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:46:44'!
coralPulse
	^ `Color fromHexString: '#FF5544'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:46:35'!
cyanPhosphor
	^ `Color fromHexString: '#00D4FF'`! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 18:29:00'!
divergingPalette
	"For data with negative and positive values. Blue represents negative/cold, orange represents positive/hot."
	^ #('#0088FF' '#4DB8FF' '#888888' '#FFAA44' '#FF7700') collect: [:each| self fromHexString: each]! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:04'!
emeraldScreen
	^ `Color fromHexString: '#00DD88'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:18'!
hotPinkGlow
	^ `Color fromHexString: '#FF44BB'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:32'!
lemonPhosphor
	^ `Color fromHexString: '#DDFF00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:51'!
lemonYellow
	^ `Color fromHexString: '#EEDD00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:57'!
limeScreen
	^ `Color fromHexString: '#88FF00'`! !

!Color class methodsFor: '*signals' stamp: 'len 8/Mar/2026 22:53:46'!
magentaGlow
	^ `Color okl: 0.75 c: 0.2925533843465949 h: 340.3661356956038`
"	^ `Color fromHexString: '#FF00CC'`"! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:09'!
redCathode
	^ `Color fromHexString: '#FF4466'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:15'!
roseCathode
	^ `Color fromHexString: '#FF4488'`! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 18:26:00'!
sequentialBluePalette
	"Sequential blue palette (fixed hue, varying lightness for smooth gradients), for continuos data (low to high)."
	^ #('#001A33' '#003D66' '#0066AA' '#0099FF' '#33CCFF') collect: [:each| self fromHexString: each]! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 18:26:00'!
sequentialGreenPalette
	"Sequential green (phosphor) palette. Fixed hue, varying lightness for smooth gradients, for continuos data (low to high)."
	^ #('#001A0A' '#003D1A' '#00AA44' '#00FF66' '#88FFAA') collect: [:each| self fromHexString: each]! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:24'!
vermillionRay
	^ `Color fromHexString: '#FF4422'`! !

!Color class methodsFor: '*signals' stamp: 'len 8/Mar/2026 22:55:39'!
violetBeam
	^ `Color okl: 0.75 "0.5793982863755205" c: 0.4 h: 293.26079576193126`
"	^ `Color fromHexString: '#8844FF'`"! !

!UserInputEvent methodsFor: '*signals' stamp: 'len 9/Mar/2026 22:38:55'!
primaryModifierPressed
	"The primary modifier key is intended to be used in hotkeys for the main commands of an application. For example, with c/x/v for copy/cut/paste.
	In PC it is Control, and in Mac it is Command."
	^ Smalltalk platformName = 'Mac OS' ifTrue: [self commandAltKeyPressed] ifFalse: [self controlKeyPressed]! !

!UserInputEvent methodsFor: '*signals' stamp: 'len 9/Mar/2026 22:39:18'!
secondaryModifierPressed
	"The secondary modifier key is used for alternative or 'second option' commands.
	It is often a variation of the command of the primary modifier key.
	In PC it is Alt, and in Mac it is Option."
	^ Smalltalk platformName = 'Mac OS' ifTrue:  [self rawMacOptionKeyPressed] ifFalse: [self commandAltKeyPressed]! !

!KeyboardEvent methodsFor: '*signals' stamp: 'len 22/Feb/2026 16:01:46'!
isArrow
	"Answer true if the receiver is an arrow key event: arrow left/up/down/right."
	^ #[28 29 30 31] includes: keyValue! !

!KeyboardEvent methodsFor: '*signals' stamp: 'len 22/Feb/2026 16:00:47'!
isNavigation
	"Answer true if the receiver is a navigation key event: arrow left/up/down/right, page up/down, or home/end."
	^ #[1 4 11 12 28 29 30 31] includes: keyValue! !

!Morph methodsFor: '*signals' stamp: 'len 4/Mar/2026 14:54:49'!
bench
	| canvas form |
	form := self morphExtent ifNil: [Display] ifNotNil: [:aPoint| Form extent: aPoint depth: Display depth].
	canvas := VectorCanvas onForm: form.
	^ [self drawOn: canvas] bench! !

!Morph methodsFor: '*signals' stamp: 'len 4/Mar/2026 14:54:58'!
timeProfile
	| canvas form |
	form := self morphExtent ifNil: [Display] ifNotNil: [:aPoint| Form extent: aPoint depth: Display depth].
	canvas := VectorCanvas onForm: form.
	^ [100 timesRepeat: [self drawOn: canvas]] timeProfile! !
Wavetable initialize!
Supersaw initialize!
Multisample initialize!
Sample initialize!
Spectrogram initialize!
