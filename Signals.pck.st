'From Cuis7.7 [latest update: #7797] on 7 February 2026 at 7:20:08 pm'!
'Description Tracker and lively dataflow programming environment for real-time musical synthesis.'!
!provides: 'Signals' 1 450!
!requires: 'FFI' 1 57 nil!
!requires: 'JSON' 1 29 nil!
SystemOrganization addCategory: #'Signals-Kernel'!
SystemOrganization addCategory: #'Signals-Oscillators'!
SystemOrganization addCategory: #'Signals-Noise'!
SystemOrganization addCategory: #'Signals-Samples'!
SystemOrganization addCategory: #'Signals-Modulation'!
SystemOrganization addCategory: #'Signals-Envelopes'!
SystemOrganization addCategory: #'Signals-Levels'!
SystemOrganization addCategory: #'Signals-Filters'!
SystemOrganization addCategory: #'Signals-VA Filters'!
SystemOrganization addCategory: #'Signals-FX'!
SystemOrganization addCategory: #'Signals-IO'!
SystemOrganization addCategory: #'Signals-Utility'!
SystemOrganization addCategory: #'Signals-Tracker'!
SystemOrganization addCategory: #'Signals-Morphic-Widgets'!
SystemOrganization addCategory: #'Signals-Morphic-Controls'!
SystemOrganization addCategory: #'Signals-Morphic-Patches'!
SystemOrganization addCategory: #'Signals-Morphic-Tracker'!
SystemOrganization addCategory: #'Signals-Morphic-Support'!
SystemOrganization addCategory: #'Signals-Support'!
SystemOrganization addCategory: #'Signals-Etc'!


!classDefinition: #AudioBuffer category: #'Signals-Support'!
ArrayedCollection variableWordSubclass: #AudioBuffer
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'AudioBuffer class' category: #'Signals-Support'!
AudioBuffer class
	instanceVariableNames: ''!

!classDefinition: #Control category: #'Signals-Kernel'!
ActiveModel subclass: #Control
	instanceVariableNames: 'min max curve base modulation lastValue printer default label coarseStep fineStep'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Kernel'!
!classDefinition: 'Control class' category: #'Signals-Kernel'!
Control class
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

!classDefinition: #DiodeLadder category: #'Signals-Etc'!
Module subclass: #DiodeLadder
	instanceVariableNames: 's1 s2 s3 s4 ρ G1 G2 G3 G4 γ k input outputLP4 outputLP3 outputLP2 outputLP1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'DiodeLadder class' category: #'Signals-Etc'!
DiodeLadder class
	instanceVariableNames: ''!

!classDefinition: #Chorus category: #'Signals-FX'!
Module subclass: #Chorus
	instanceVariableNames: 'input outputL outputR phase increment depth delayLine tap1 tap2 tap3 time mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Chorus class' category: #'Signals-FX'!
Chorus class
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
	instanceVariableNames: 'outputL outputR aux meterLeftValue meterRightValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'AudioIn class' category: #'Signals-IO'!
AudioIn class
	instanceVariableNames: ''!

!classDefinition: #AudioOut category: #'Signals-IO'!
Module subclass: #AudioOut
	instanceVariableNames: 'level levelLeft levelRight inputL inputR aux meterLeftValue meterRightValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-IO'!
!classDefinition: 'AudioOut class' category: #'Signals-IO'!
AudioOut class
	instanceVariableNames: ''!

!classDefinition: #ControlIn category: #'Signals-IO'!
Module subclass: #ControlIn
	instanceVariableNames: 'index value'
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
	instanceVariableNames: 'phase frequency inputFM'
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

!classDefinition: #Wavetable category: #'Signals-Oscillators'!
Oscillator subclass: #Wavetable
	instanceVariableNames: 'waves position name smooth'
	classVariableNames: 'Banks'
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Wavetable class' category: #'Signals-Oscillators'!
Wavetable class
	instanceVariableNames: ''!

!classDefinition: #Supersaw category: #'Signals-Oscillators'!
TunedGenerator subclass: #Supersaw
	instanceVariableNames: 'frequency phases frequencies centerGain sideGain'
	classVariableNames: 'DetuneCurveLUT'
	poolDictionaries: ''
	category: 'Signals-Oscillators'!
!classDefinition: 'Supersaw class' category: #'Signals-Oscillators'!
Supersaw class
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
	instanceVariableNames: 'keymap velocity sample'
	classVariableNames: 'Library'
	poolDictionaries: ''
	category: 'Signals-Samples'!
!classDefinition: 'Multisample class' category: #'Signals-Samples'!
Multisample class
	instanceVariableNames: ''!

!classDefinition: #Sample category: #'Signals-Samples'!
TunedGenerator subclass: #Sample
	instanceVariableNames: 'buffer baseRate loopEnd loopLength offset speed smooth warp cycle released position increment'
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

!classDefinition: #DiodeLadder2 category: #'Signals-Etc'!
Transform subclass: #DiodeLadder2
	instanceVariableNames: 's1 s2 s3 s4 vc1 vc2 vc3 vc4 vout k g'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'DiodeLadder2 class' category: #'Signals-Etc'!
DiodeLadder2 class
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

!classDefinition: #Decimator category: #'Signals-FX'!
Transform subclass: #Decimator
	instanceVariableNames: 'quantization downsample holdCount heldValue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Decimator class' category: #'Signals-FX'!
Decimator class
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
	instanceVariableNames: 'phase increment depth delayLine tap time feedback mix'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Flanger class' category: #'Signals-FX'!
Flanger class
	instanceVariableNames: ''!

!classDefinition: #Overdrive category: #'Signals-FX'!
Transform subclass: #Overdrive
	instanceVariableNames: 'drive pregain postgain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Overdrive class' category: #'Signals-FX'!
Overdrive class
	instanceVariableNames: ''!

!classDefinition: #Phaser category: #'Signals-FX'!
Transform subclass: #Phaser
	instanceVariableNames: 'phase increment depth x1 y1 feedback lastOutput mix'
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

!classDefinition: #Vibrato category: #'Signals-FX'!
Transform subclass: #Vibrato
	instanceVariableNames: 'phase increment depth delayLine tap time'
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

!classDefinition: #Clipper category: #'Signals-FX'!
Transform2x subclass: #Clipper
	instanceVariableNames: 'pregain negativeClip positiveClip postgain'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Clipper class' category: #'Signals-FX'!
Clipper class
	instanceVariableNames: ''!

!classDefinition: #Wavefolder category: #'Signals-FX'!
Transform2x subclass: #Wavefolder
	instanceVariableNames: 'gain offset'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-FX'!
!classDefinition: 'Wavefolder class' category: #'Signals-FX'!
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

!classDefinition: #Limiter category: #'Signals-Levels'!
Transform subclass: #Limiter
	instanceVariableNames: 'peak'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Limiter class' category: #'Signals-Levels'!
Limiter class
	instanceVariableNames: ''!

!classDefinition: #MultiTapDelayLine category: #'Signals-Support'!
Transform subclass: #MultiTapDelayLine
	instanceVariableNames: 'buffer position delays gains'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'MultiTapDelayLine class' category: #'Signals-Support'!
MultiTapDelayLine class
	instanceVariableNames: ''!

!classDefinition: #Amp category: #'Signals-Levels'!
Module subclass: #Amp
	instanceVariableNames: 'input gain output inputRM'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Amp class' category: #'Signals-Levels'!
Amp class
	instanceVariableNames: ''!

!classDefinition: #Balance category: #'Signals-Levels'!
Module subclass: #Balance
	instanceVariableNames: 'inputA inputB outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Balance class' category: #'Signals-Levels'!
Balance class
	instanceVariableNames: ''!

!classDefinition: #Crossfader category: #'Signals-Levels'!
Module subclass: #Crossfader
	instanceVariableNames: 'inputA inputB output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Crossfader class' category: #'Signals-Levels'!
Crossfader class
	instanceVariableNames: ''!

!classDefinition: #Mixer category: #'Signals-Levels'!
Module subclass: #Mixer
	instanceVariableNames: 'inputA inputB output'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Mixer class' category: #'Signals-Levels'!
Mixer class
	instanceVariableNames: ''!

!classDefinition: #Pan category: #'Signals-Levels'!
Module subclass: #Pan
	instanceVariableNames: 'input outputL outputR'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'Pan class' category: #'Signals-Levels'!
Pan class
	instanceVariableNames: ''!

!classDefinition: #StereoMatrix category: #'Signals-Levels'!
Module subclass: #StereoMatrix
	instanceVariableNames: 'inputA inputB outputL outputR aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Levels'!
!classDefinition: 'StereoMatrix class' category: #'Signals-Levels'!
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

!classDefinition: #LFO category: #'Signals-Modulation'!
Module subclass: #LFO
	instanceVariableNames: 'shape bipolar sync bpm speed offset mode phase heldValue seed random randomValue'
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

!classDefinition: #ControlPanel category: #'Signals-Morphic-Controls'!
LinearLayoutMorph subclass: #ControlPanel
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ControlPanel class' category: #'Signals-Morphic-Controls'!
ControlPanel class
	instanceVariableNames: ''!

!classDefinition: #PatchableBodyMorph category: #'Signals-Morphic-Patches'!
LinearLayoutMorph subclass: #PatchableBodyMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Patches'!
!classDefinition: 'PatchableBodyMorph class' category: #'Signals-Morphic-Patches'!
PatchableBodyMorph class
	instanceVariableNames: ''!

!classDefinition: #TrackerWindow category: #'Signals-Morphic-Tracker'!
SystemWindow subclass: #TrackerWindow
	instanceVariableNames: 'patchEditor meter sequencer patternEditor lowerPane'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'TrackerWindow class' category: #'Signals-Morphic-Tracker'!
TrackerWindow class
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

!classDefinition: #PianoKeyboardMorph category: #'Signals-Etc'!
BoxMorph subclass: #PianoKeyboardMorph
	instanceVariableNames: 'pressedKeys firstMidiKey queue'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'PianoKeyboardMorph class' category: #'Signals-Etc'!
PianoKeyboardMorph class
	instanceVariableNames: ''!

!classDefinition: #TriangleButtonMorph category: #'Signals-Etc'!
BoxMorph subclass: #TriangleButtonMorph
	instanceVariableNames: 'focused'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'TriangleButtonMorph class' category: #'Signals-Etc'!
TriangleButtonMorph class
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

!classDefinition: #TextControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #TextControlMorph
	instanceVariableNames: 'font contents'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'TextControlMorph class' category: #'Signals-Morphic-Controls'!
TextControlMorph class
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

!classDefinition: #WavetableControlMorph category: #'Signals-Morphic-Controls'!
ControlMorph subclass: #WavetableControlMorph
	instanceVariableNames: 'waves currentPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'WavetableControlMorph class' category: #'Signals-Morphic-Controls'!
WavetableControlMorph class
	instanceVariableNames: ''!

!classDefinition: #EGControlMorph category: #'Signals-Morphic-Controls'!
BoxMorph subclass: #EGControlMorph
	instanceVariableNames: 'color attack'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'EGControlMorph class' category: #'Signals-Morphic-Controls'!
EGControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ADControlMorph category: #'Signals-Morphic-Controls'!
EGControlMorph subclass: #ADControlMorph
	instanceVariableNames: 'decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ADControlMorph class' category: #'Signals-Morphic-Controls'!
ADControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ADSRControlMorph category: #'Signals-Morphic-Controls'!
EGControlMorph subclass: #ADSRControlMorph
	instanceVariableNames: 'decay sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ADSRControlMorph class' category: #'Signals-Morphic-Controls'!
ADSRControlMorph class
	instanceVariableNames: ''!

!classDefinition: #AHDControlMorph category: #'Signals-Morphic-Controls'!
EGControlMorph subclass: #AHDControlMorph
	instanceVariableNames: 'hold decay'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'AHDControlMorph class' category: #'Signals-Morphic-Controls'!
AHDControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ARControlMorph category: #'Signals-Morphic-Controls'!
EGControlMorph subclass: #ARControlMorph
	instanceVariableNames: 'release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ARControlMorph class' category: #'Signals-Morphic-Controls'!
ARControlMorph class
	instanceVariableNames: ''!

!classDefinition: #ASRControlMorph category: #'Signals-Morphic-Controls'!
EGControlMorph subclass: #ASRControlMorph
	instanceVariableNames: 'sustain release'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'ASRControlMorph class' category: #'Signals-Morphic-Controls'!
ASRControlMorph class
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
	instanceVariableNames: 'color baseColor mode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'FilterControlMorph class' category: #'Signals-Morphic-Controls'!
FilterControlMorph class
	instanceVariableNames: ''!

!classDefinition: #LFOControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #LFOControlMorph
	instanceVariableNames: 'color lfo currentPhase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'LFOControlMorph class' category: #'Signals-Morphic-Controls'!
LFOControlMorph class
	instanceVariableNames: ''!

!classDefinition: #StereoMatrixControlMorph category: #'Signals-Morphic-Controls'!
XYControlMorph subclass: #StereoMatrixControlMorph
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Controls'!
!classDefinition: 'StereoMatrixControlMorph class' category: #'Signals-Morphic-Controls'!
StereoMatrixControlMorph class
	instanceVariableNames: ''!

!classDefinition: #PinMorph category: #'Signals-Morphic-Patches'!
BoxMorph subclass: #PinMorph
	instanceVariableNames: 'color selector connections focused voltage'
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

!classDefinition: #PatchEditorMorph category: #'Signals-Morphic-Tracker'!
ZoomerMorph subclass: #PatchEditorMorph
	instanceVariableNames: 'tracker clipboard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'PatchEditorMorph class' category: #'Signals-Morphic-Tracker'!
PatchEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #MultitrackMeterMorph category: #'Signals-Morphic-Tracker'!
BoxMorph subclass: #MultitrackMeterMorph
	instanceVariableNames: 'tracker leftMargin meterWidth meterSpacing'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'MultitrackMeterMorph class' category: #'Signals-Morphic-Tracker'!
MultitrackMeterMorph class
	instanceVariableNames: ''!

!classDefinition: #PatternEditorMorph category: #'Signals-Morphic-Tracker'!
BoxMorph subclass: #PatternEditorMorph
	instanceVariableNames: 'tracker cursorPosition font labelFont emptyTriggerImage centerKey editStep showCursor pauseBlinking clipboard'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'PatternEditorMorph class' category: #'Signals-Morphic-Tracker'!
PatternEditorMorph class
	instanceVariableNames: ''!

!classDefinition: #SequencerMorph category: #'Signals-Morphic-Tracker'!
BoxMorph subclass: #SequencerMorph
	instanceVariableNames: 'tracker font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'SequencerMorph class' category: #'Signals-Morphic-Tracker'!
SequencerMorph class
	instanceVariableNames: ''!

!classDefinition: #TransportBarMorph category: #'Signals-Morphic-Tracker'!
BoxMorph subclass: #TransportBarMorph
	instanceVariableNames: 'tracker font'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Tracker'!
!classDefinition: 'TransportBarMorph class' category: #'Signals-Morphic-Tracker'!
TransportBarMorph class
	instanceVariableNames: ''!

!classDefinition: #OscilloscopeMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #OscilloscopeMorph
	instanceVariableNames: 'input samples currentPosition color remainder'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'OscilloscopeMorph class' category: #'Signals-Morphic-Widgets'!
OscilloscopeMorph class
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
	instanceVariableNames: 'buffer position meterBlock'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'RollingMeterMorph class' category: #'Signals-Morphic-Widgets'!
RollingMeterMorph class
	instanceVariableNames: ''!

!classDefinition: #SampleDisplayMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #SampleDisplayMorph
	instanceVariableNames: 'sample color image lastPosition'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'SampleDisplayMorph class' category: #'Signals-Morphic-Widgets'!
SampleDisplayMorph class
	instanceVariableNames: ''!

!classDefinition: #SpectrogramMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #SpectrogramMorph
	instanceVariableNames: 'input image position fft hop buffer bufferIndex colormap frequencyScale logSpectrum'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'SpectrogramMorph class' category: #'Signals-Morphic-Widgets'!
SpectrogramMorph class
	instanceVariableNames: ''!

!classDefinition: #SpectrumAnalyzerMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #SpectrumAnalyzerMorph
	instanceVariableNames: 'input color spectrum fft buffer bufferIndex'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'SpectrumAnalyzerMorph class' category: #'Signals-Morphic-Widgets'!
SpectrumAnalyzerMorph class
	instanceVariableNames: ''!

!classDefinition: #VectorscopeMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #VectorscopeMorph
	instanceVariableNames: 'inputX inputY scaleX scaleY image color colorHigh'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'VectorscopeMorph class' category: #'Signals-Morphic-Widgets'!
VectorscopeMorph class
	instanceVariableNames: ''!

!classDefinition: #VideoMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #VideoMorph
	instanceVariableNames: 'screen bits video position increment'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'VideoMorph class' category: #'Signals-Morphic-Widgets'!
VideoMorph class
	instanceVariableNames: ''!

!classDefinition: #WaveformMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #WaveformMorph
	instanceVariableNames: 'waveform color image'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'WaveformMorph class' category: #'Signals-Morphic-Widgets'!
WaveformMorph class
	instanceVariableNames: ''!

!classDefinition: #WaveformScrollingMorph category: #'Signals-Morphic-Widgets'!
BoxMorph subclass: #WaveformScrollingMorph
	instanceVariableNames: 'image position color'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Morphic-Widgets'!
!classDefinition: 'WaveformScrollingMorph class' category: #'Signals-Morphic-Widgets'!
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
	instanceVariableNames: 'inputsArea outputsArea body title model'
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

!classDefinition: #Instrument2 category: #'Signals-Etc'!
Object subclass: #Instrument2
	instanceVariableNames: 'voice polyphony legato activeVoices clock eventQueue level panning spread'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'Instrument2 class' category: #'Signals-Etc'!
Instrument2 class
	instanceVariableNames: ''!

!classDefinition: #STFT category: #'Signals-Etc'!
Object subclass: #STFT
	instanceVariableNames: 'fft window'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Etc'!
!classDefinition: 'STFT class' category: #'Signals-Etc'!
STFT class
	instanceVariableNames: ''!

!classDefinition: #AudioPlayer category: #'Signals-Support'!
Object subclass: #AudioPlayer
	instanceVariableNames: ''
	classVariableNames: 'ActiveSounds Buffer BufferSize PlayerProcess PlayerSemaphore ReadyForBuffer SampleRate SoundSupported Stereo UseReadySemaphore'
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'AudioPlayer class' category: #'Signals-Support'!
AudioPlayer class
	instanceVariableNames: ''!

!classDefinition: #AudioPort category: #'Signals-Support'!
Object subclass: #AudioPort
	instanceVariableNames: 'handle'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'AudioPort class' category: #'Signals-Support'!
AudioPort class
	instanceVariableNames: ''!

!classDefinition: #Biquad category: #'Signals-Support'!
Object subclass: #Biquad
	instanceVariableNames: 'a0 a1 a2 b1 b2 c0 d0 x1 x2 y1 y2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Biquad class' category: #'Signals-Support'!
Biquad class
	instanceVariableNames: ''!

!classDefinition: #DelayLine category: #'Signals-Support'!
Object subclass: #DelayLine
	instanceVariableNames: 'buffer length position'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayLine class' category: #'Signals-Support'!
DelayLine class
	instanceVariableNames: ''!

!classDefinition: #DelayLineTap category: #'Signals-Support'!
Object subclass: #DelayLineTap
	instanceVariableNames: 'delayLine delay increment x1 y1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'DelayLineTap class' category: #'Signals-Support'!
DelayLineTap class
	instanceVariableNames: ''!

!classDefinition: #Downsampler2x category: #'Signals-Support'!
Object subclass: #Downsampler2x
	instanceVariableNames: 'd0 d1 d2 d3'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Downsampler2x class' category: #'Signals-Support'!
Downsampler2x class
	instanceVariableNames: ''!

!classDefinition: #FFT category: #'Signals-Support'!
Object subclass: #FFT
	instanceVariableNames: 'nu n sinTable permTable realData imagData window spectrum aux'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'FFT class' category: #'Signals-Support'!
FFT class
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

!classDefinition: #Polyphase13TapOversampler2x category: #'Signals-Support'!
Object subclass: #Polyphase13TapOversampler2x
	instanceVariableNames: 'x1 x2 x3 x4 x5 x6 d1 d2 d3 d4 d5 d6 e1'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Polyphase13TapOversampler2x class' category: #'Signals-Support'!
Polyphase13TapOversampler2x class
	instanceVariableNames: ''!

!classDefinition: #Sound category: #'Signals-Support'!
Object subclass: #Sound
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Sound class' category: #'Signals-Support'!
Sound class
	instanceVariableNames: ''!

!classDefinition: #SineTestSound category: #'Signals-Support'!
Sound subclass: #SineTestSound
	instanceVariableNames: 'phase'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'SineTestSound class' category: #'Signals-Support'!
SineTestSound class
	instanceVariableNames: ''!

!classDefinition: #Upsampler2x category: #'Signals-Support'!
Object subclass: #Upsampler2x
	instanceVariableNames: 'u0 u1 u2 u3'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'Upsampler2x class' category: #'Signals-Support'!
Upsampler2x class
	instanceVariableNames: ''!

!classDefinition: #WAVFileReader category: #'Signals-Support'!
Object subclass: #WAVFileReader
	instanceVariableNames: 'stream channels bitsPerSample samplingRate leftSamples rightSamples'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Support'!
!classDefinition: 'WAVFileReader class' category: #'Signals-Support'!
WAVFileReader class
	instanceVariableNames: ''!

!classDefinition: #Patch category: #'Signals-Tracker'!
Object subclass: #Patch
	instanceVariableNames: 'label patchMorph modules noteReceivers gateReceivers velocityReceivers tempoReceivers samples controlInputs audioOutput buffer track trigger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Tracker'!
!classDefinition: 'Patch class' category: #'Signals-Tracker'!
Patch class
	instanceVariableNames: ''!

!classDefinition: #Pattern category: #'Signals-Tracker'!
Object subclass: #Pattern
	instanceVariableNames: 'blocks length'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Tracker'!
!classDefinition: 'Pattern class' category: #'Signals-Tracker'!
Pattern class
	instanceVariableNames: ''!

!classDefinition: #Track category: #'Signals-Tracker'!
Object subclass: #Track
	instanceVariableNames: 'tracker label color muted soloed delay patch ticksToTrigger trigger'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Tracker'!
!classDefinition: 'Track class' category: #'Signals-Tracker'!
Track class
	instanceVariableNames: ''!

!classDefinition: #Tracker category: #'Signals-Tracker'!
Object subclass: #Tracker
	instanceVariableNames: 'tracks patches patterns masks bpm lpb swing level cursorPattern cursorLine cursorTrack cursorPatch playheadPattern playheadLine followPlayhead anyTrackSoloed ticksToLine leftBuffer rightBuffer peakLeft peakRight'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Tracker'!
!classDefinition: 'Tracker class' category: #'Signals-Tracker'!
Tracker class
	instanceVariableNames: ''!

!classDefinition: #Trigger category: #'Signals-Tracker'!
Object subclass: #Trigger
	instanceVariableNames: 'note instrument velocity fx1 fx2'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Signals-Tracker'!
!classDefinition: 'Trigger class' category: #'Signals-Tracker'!
Trigger class
	instanceVariableNames: ''!


!AudioBuffer commentStamp: '<historical>' prior: 0!
AudioBuffers store 16 bit unsigned quantities.

Array size must be even, as two vales are stored in each word.!

!Control commentStamp: '<historical>' prior: 0!
A control is a an abstraction based on the idea of a knob that changes a parameter.

Controls can have different curves, e.g. linear (like a control to morph the wave shape of an oscillator) or logarithmic (like a volume or pitch knob). Controls have a base value typically set by the user in the UI, and a modulated value that depends on external modulations (for example modulation coming from an LFO or an envelope, simulating the action of a hand moving the knob).!

!Module commentStamp: '<historical>' prior: 0!
This is an abstract superclass for signal processing modules.!

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

!DiodeLadder commentStamp: '<historical>' prior: 0!
Virtual analog model of the 4th-order TB-303 diode ladder low-pass filter. This uses the Zero-Delay Feedback (ZDF) approach from Vadim Zavalishin's "The Art of VA Filter Design", and uses the Topology-Preserving Transform (TPT).

See https://www.native-instruments.com/fileadmin/ni_media/downloads/pdf/VAFilterDesign_2.1.2.pdf

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!SVF commentStamp: 'len 2/Feb/2026 18:24:09' prior: 0!
This is a state variable filter with a 12 dB/oct slope (2 poles). It has outputs for low-pass, high-pass, band-pass and normalized band-pass modes. Based on stmlib/dsp/filter.h by Emilie Gillet.!

!Generator commentStamp: '<historical>' prior: 0!
A signal generator produces a stream of samples from a real-valued function of time (typically a mono audio signal). It is similar to a Stream, but its values are 32-bit floats. See subclasses.!

!TunedGenerator commentStamp: '<historical>' prior: 0!
A tuned generator is a signal generator with pitch, such as an oscillator. See subclasses.!

!Oscillator commentStamp: '<historical>' prior: 0!
Abstract superclass for simple oscillators that can be defined by a single phase value that is incremented at sampling step.!

!OPN commentStamp: '<historical>' prior: 0!
This oscillator emulates the oscillators of the Yamaha sound chips YM2414 (used in the TX81Z and DX11 synthesizers) and YM2612 (used in the Sega Mega Drive game console). It has a choice of 8 waveforms.!

!Pulse commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator. It generates a pulse wave applying PolyBLEP to prevent aliasing. This oscillator supports audio-rate pulse width modulation (PWM).!

!Saw commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator. It generates a variable-slope saw that morphs between falling saw, triangle and rising saw, applying PolyBLEP and PolyBLAMP to prevent aliasing.!

!Sine commentStamp: '<historical>' prior: 0!
This is a sine wave oscillator with variable warping produced by self-phase modulation.!

!TriSawPulse commentStamp: '<historical>' prior: 0!
This is a virtual analog oscillator that can morph between triangle, saw and pulse waves. It uses PolyBLEP and PolyBLAMP to prevent aliasing.!

!Triangle commentStamp: '<historical>' prior: 0!
This is a virtual analog triangle oscillator that uses PolyBLAMP for antialiasing. It morphs from a pure triangle to a sine wave.!

!Wavetable commentStamp: '<historical>' prior: 0!
This is a wavetable oscillator inspired by classic wavetable synthesizers such as the PPG Wave and the Waldorf Microwave 1. The waves are typically small and low-resolution (e.g., 128 8-bit PCM samples), and this results in digital artifacts such as aliasing and imaging characteristic of the classic wavetable sound. By default, it uses the wavetables of the Microwave 1, but with linear interpolation between samples (smoothing on).!

!Supersaw commentStamp: 'len 5/Jan/2026 15:49:43' prior: 0!
Emulation of the Roland JP-8000 and JP-8080 supersaw oscillator based on Adam Szabo's thesis [1]. It consists of 7 detuned saws. It is not a perfect emulation, e.g. it uses PolyBLEP saws to achieve antialiasing, instead of oversampling and applying a high pass filter as the original.

[1] Szabo, Adam; "How to Emulate the Super Saw"; Skolan för datavetenskap och kommunikation, Kungliga Tekniska högskolan, 2010.!

!VOSIM commentStamp: '<historical>' prior: 0!
This is a VOSIM (VOcal SIMulation) oscillator based on the synthesis method developed by Kaegi and Tempelaars in the 1970s. The oscillator consists of two sine waves multiplied by and sync'ed to a carrier. Ported from plaits/dsp/oscillator/vosim_oscillator.h by Emilie Gillet.!

!Multisample commentStamp: '<historical>' prior: 0!
A multisample is the basis of a rompler (from "ROM" and "sampler"). It generates sounds from a set of recordings (samples) of an instrument for different keys and velocities. Given a MIDI key and velocity value, it chooses the sample closest to the desired key and velocity and repitches it by playing it faster or slower.
!

!Sample commentStamp: '<historical>' prior: 0!
A sample is a recorded signal. It has a buffer of recorded samples, base sample rate that corresponds either to the original sampling rate or (in the case of samples with pitch) to middle C, a start position, and optional loop points. Samples can be played at different rates to produce different pitches.!

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

!DiodeLadder2 commentStamp: 'len 2/Feb/2026 18:24:19' prior: 0!
This is a virtual analog model of the Korg 35 low-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.!

!Decimator commentStamp: '<historical>' prior: 0!
A simple bitcrusher and sample rate reducer.!

!Overdrive commentStamp: '<historical>' prior: 0!
Based on code from Emilie Gillet for the Plaits eurorack module.!

!PitchShifter commentStamp: '<historical>' prior: 0!
Time-domain pitch shifter based on two modulated delay lines with crossfading windows. This is the algorithm of the Eventide H3000 Ultra-Harmonizer.

Pitch-shifting is achieved by modulating a delay line: the write pointer always advances at normal speed, but the read pointer advances faster (pitch up) or slower (pitch down). This causes discontinuities when the read pointer catches up or falls too far behind, but the discontinuities are hidden by crossfading between two delay lines running the same algorithm in parallel with a phase offset of 180°.!

!BPF commentStamp: 'len 2/Feb/2026 18:24:24' prior: 0!
This is a second order (12 dB/oct) band-pass filter based on a biquad.!

!BSF commentStamp: 'len 2/Feb/2026 18:24:28' prior: 0!
This is a second order (12 dB/oct) band-stop or notch filter based on a biquad.!

!EQ3 commentStamp: '<historical>' prior: 0!
Three-band DJ-style equalizer. This is a crossover-based EQ that splits the audio into three fixed frequency bands (low, mid, high) using Linkwitz-Riley filters. Each band has an independent gain control. Crossover frequencies: Low/Mid at 250 Hz, and Mid/High at 2.5 kHz.

The implementation uses 4 second-order Linkwitz-Riley biquad filters (Q=0.707) configured as two crossover points, with parallel band processing and summing.!

!HPF commentStamp: 'len 2/Feb/2026 18:24:32' prior: 0!
This is a second order (12 dB/oct) high-pass filter based on a biquad.!

!LPF commentStamp: 'len 2/Feb/2026 18:24:37' prior: 0!
This is a second order (12 dB/oct) low-pass filter based on a biquad.!

!Transform2x commentStamp: 'len 4/Feb/2026 00:25:50' prior: 0!
An abstract superclass for transforms that internally do 2× oversampling. This is useful for implementing transforms that are not linear-time-invariant (LTI), such as saturation, wavefolding, or virtual analog filters.!

!Wavefolder commentStamp: '<historical>' prior: 0!
Basic wavefolder. Amplitude of input determines level of folding. Amplitudes of magnitude > 1.0 will start to fold.

Based on code from DaisySP by Nick Donaldson.!

!Korg35HPF commentStamp: 'len 2/Feb/2026 18:24:43' prior: 0!
This is a virtual analog model of the Korg 35 high-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!Korg35LPF commentStamp: 'len 2/Feb/2026 18:24:52' prior: 0!
This is a virtual analog model of the Korg 35 low-pass 12 dB/oct filter found in the MS-10 and MS-20 synthesizers. See Will C. Pinkle, 'Designing Software Synthesizer Plug-Ins in C++', section 12.7.1.

See also https://github.com/grame-cncm/faustlibraries/blob/master/vaeffects.lib!

!MultiTapDelayLine commentStamp: '<historical>' prior: 0!
This is based on Squeak's original ReverbSound by John Maloney.!

!Amp commentStamp: '<historical>' prior: 0!
An amplifier just multiplies the input signal by a gain parameter, typically modulated by an envolope. When the gain parameter changes, the actual gain is varied smoothly by sample to avoid clicks or zipper noise.!

!StereoMatrix commentStamp: '<historical>' prior: 0!
Linear stereo transform based on a Mid/Side representation.

This module takes two arbitrary audio inputs A and B and produces stereo outputs L and R using a fixed −6 dB Mid/Side normalization. It can be used as a conventional stereo width control, an MS decoder, or a general-purpose stereo spatializer, depending on how it is patched.

Internally, the signal is converted to Mid and Side as:
	• Mid  = (A + B) * 0.5
	• Side = (A − B) * 0.5

The −6 dB (* 0.5) normalization preserves headroom symmetry and predictable gain
behavior when collapsing to mono or increasing width.

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
An attenuator scales a control signal by a number between 0 and 1. It is typically used to control modulation depth.!

!Attenuverter commentStamp: '<historical>' prior: 0!
An attenuverter is similar to an attenuator, but it can also invert the polarity of the signal. It scales a control signal by a number between -1 and 1. When the knob is at 12 o'clock the resulting signal is 0, and bellow that it is inverted.!

!LFO commentStamp: '<historical>' prior: 0!
Low frequency oscillator.!

!LogAttenuator commentStamp: '<historical>' prior: 0!
An attenuator scales a control signal by a number between 0 and 1. It is typically used to control modulation depth.!

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

!Instrument2 commentStamp: '<historical>' prior: 0!
An instrument has one or more voices, each of them monophonic. A monophonic instrument has only one voice.

Instruments handle events such as notes and control changes and distribute them to their voices. They can also handle presets, and allow to have a central control panel for simultaneously controlling all the voices.

Instruments can mix the output of the voices to stereo buffers, and can apply effects (for example, spreading the voices in stereo).!

!Biquad commentStamp: 'len 27/Jan/2026 23:55:10' prior: 0!
This is a biquad filter in direct form 1, modified with extra parameters c0 (amount of the filtered signal) and d1 (amount of the dry signal).

There are methods to setup the following types of biquad filters:
	∙ Standard LP/HP/BP/notch with a resonance parameter Q;
	∙ Butterwordth LP/HP/BP/notch;
	∙ Linkwitz-Riley LP/HP.

Standard biquad filters are designed using the RBJ (Robert Bristow-Johnson) cookbook formulas. These give you direct control over center frequency and Q. They’re versatile general-purpose filters that work well for most EQ tasks, cutting or boosting specific frequencies, and creating resonant effects. The response shape is straightforward to predict and adjust.

Butterworth filters are specifically designed for maximally flat passband response - meaning no ripples or peaks in the frequencies you want to keep. The tradeoff is a gentler rolloff slope compared to some other filter types. You’d choose Butterworth when you want the cleanest, most transparent filtering with minimal coloration in your passband. They’re excellent for crossovers or whenever you need precise frequency separation without introducing artifacts in the region you’re preserving.

Linkwitz-Riley filters are built from cascaded Butterworth filters, designed specifically for crossover applications. Their key feature is that when you use complementary LP and HP Linkwitz-Riley filters at the same frequency, they sum to a flat magnitude response with no phase issues at the crossover point. This makes them ideal for splitting a signal and processing bands separately while maintaining coherent recombination.
!

!Downsampler2x commentStamp: '<historical>' prior: 0!
This is a polyphase 2x oversampler designed to reduce aliasing in non-linear DSP modules (e.g. distortion, saturation or virtual analog filters).

This class uses a Polyphase Half-Band FIR filter (13-tap) to increase the internal sample rate. By processing signals at 2x the original frequency, we push the Nyquist limit higher, allowing harmonics to exist without folding back (aliasing) into the audible spectrum.

The polyphase implementation is highly efficient:
1. It avoids zero-stuffing (doesn't multiply by 0.0),
2. It splits the work intwo two paths (an FIR branch and a pure delay branch),
3. It maintains internal state for both upsampling and downsampling.

Usage: 'anOversampler oversampling: inputSample do: [:subsample| ... ]'. Two subsamples are derived from the input sample, then the block is evaluated twice (once per subsample), and the result is downsampled and returned.

Note: this process introduces a fixed latency (group delay) of approximately 6 samples. If mixing this signal with a 'dry' signal, the dry path must be delayed by the same amount to maintain phase alignment.!

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

!Upsampler2x commentStamp: '<historical>' prior: 0!
This is a polyphase 2x oversampler designed to reduce aliasing in non-linear DSP modules (e.g. distortion, saturation or virtual analog filters).

This class uses a Polyphase Half-Band FIR filter (13-tap) to increase the internal sample rate. By processing signals at 2x the original frequency, we push the Nyquist limit higher, allowing harmonics to exist without folding back (aliasing) into the audible spectrum.

The polyphase implementation is highly efficient:
1. It avoids zero-stuffing (doesn't multiply by 0.0),
2. It splits the work intwo two paths (an FIR branch and a pure delay branch),
3. It maintains internal state for both upsampling and downsampling.

Usage: 'anOversampler oversampling: inputSample do: [:subsample| ... ]'. Two subsamples are derived from the input sample, then the block is evaluated twice (once per subsample), and the result is downsampled and returned.

Note: this process introduces a fixed latency (group delay) of approximately 6 samples. If mixing this signal with a 'dry' signal, the dry path must be delayed by the same amount to maintain phase alignment.!

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

!AudioBuffer methodsFor: 'as yet unclassified' stamp: 'len 26/Nov/2025 21:25:00'!
writeOnGZIPByteStream: aStream 
	
	aStream nextPutAllWordArray: self! !

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

!Control methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:01:00'!
basePosition
	"Answer the base value of the receiver mapped to a number between 0.0 and 1.0."
	^ base! !

!Control methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:01:00'!
basePosition: aNumber
	"Set the base value of the receiver from a number between 0.0 and 1.0."
	base := aNumber min: 1.0 max: 0.0.
	self changed: self baseValue! !

!Control methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:02:00'!
baseValue
	^ self valueFromPosition: base! !

!Control methodsFor: 'accessing' stamp: 'len 28/Nov/2025 11:04:00'!
baseValue: anObject
	self basePosition: (self positionFromValue: anObject)! !

!Control methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:42:54'!
coarseStep
	^ coarseStep! !

!Control methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:19'!
coarseStep: aNumber
	coarseStep := aNumber! !

!Control methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:04'!
fineStep
	^ fineStep! !

!Control methodsFor: 'accessing' stamp: 'len 29/Jan/2026 18:43:12'!
fineStep: aNumber
	fineStep := aNumber! !

!Control methodsFor: 'control and modulation' stamp: 'len 3/Oct/2025 00:43:00'!
apply
	| newValue |
	(newValue := self value) = lastValue ifFalse: [lastValue := newValue. self changed: newValue]! !

!Control methodsFor: 'control and modulation' stamp: 'len 8/Dec/2025 18:05:22'!
clear
	"Clear modulation, preparing to compute it again." 
	modulation := 0.0! !

!Control methodsFor: 'control and modulation' stamp: 'len 28/Sep/2025 14:13:00'!
modulateBy: aNumber
	modulation := modulation + aNumber! !

!Control methodsFor: 'control and modulation' stamp: 'len 29/Nov/2025 15:26:00'!
modulatedPosition
	"Answer the modulated value of the receiver mapped to a number between 0.0 and 1.0."
	^ base + modulation min: 1.0 max: 0.0! !

!Control methodsFor: 'control and modulation' stamp: 'len 28/Nov/2025 11:02:00'!
modulatedValue
	^ self valueFromPosition: base + modulation! !

!Control methodsFor: 'control and modulation' stamp: 'len 30/Sep/2025 17:50:00'!
modulation
	^ modulation! !

!Control methodsFor: 'control and modulation' stamp: 'len 4/Dec/2025 14:43:58'!
resetToDefault
	self baseValue: default! !

!Control methodsFor: 'control and modulation' stamp: 'len 14/Oct/2025 15:06:00'!
value
	^ self modulatedValue! !

!Control methodsFor: 'initialization' stamp: 'len 29/Jan/2026 19:06:05'!
initialize
	super initialize.
	lastValue := base := 0.0.
	min := -1.0.
	max := 1.0.
	modulation := 0.0.
	curve := #linear.
	coarseStep := 1.0 / 128.0.
	fineStep := coarseStep * 0.1! !

!Control methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:28:29'!
label: aString
	label := aString! !

!Control methodsFor: 'printing' stamp: 'len 11/Dec/2025 16:22:16'!
printOn: aStream
	| v |
	v := self value.
	printer ifNotNil: [aStream nextPutAll: (printer value: v). ^ self].
	v isNumber ifTrue: [v printOn: aStream fractionDigits: 2] ifFalse: [aStream print: v]! !

!Control methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:34:37'!
printedBaseValue
	^ printer ifNil: [self baseValue printStringFractionDigits: 2] ifNotNil: [printer value: self baseValue]! !

!Control methodsFor: 'printing' stamp: 'len 27/Jan/2026 16:34:28'!
printedBaseValueWithLabel
	^ (label ifNil: [''] ifNotNil: [label, ': ']), self printedBaseValue! !

!Control methodsFor: 'printing' stamp: 'len 4/Dec/2025 14:41:33'!
printer: aSymbol
	printer := aSymbol! !

!Control methodsFor: 'testing' stamp: 'len 28/Sep/2025 02:03:00'!
isBipolar
	^ min = max negated! !

!Control methodsFor: 'private' stamp: 'len 16/Jan/2026 15:22:25'!
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

!Control methodsFor: 'private' stamp: 'len 16/Jan/2026 15:29:48'!
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

!Control methodsFor: 'private' stamp: 'len 19/Jan/2026 19:21:07'!
positionFromValue: aNumber
	| v |
	v := aNumber.
	v := v min: max max: min.
	^ self curveInverseAt: v! !

!Control methodsFor: 'private' stamp: 'len 4/Dec/2025 14:42:40'!
setMin: _min max: _max curve: aSymbol value: defaultValue
	min := _min.
	max := _max.
	curve := aSymbol.
	lastValue := defaultValue.
	base := self positionFromValue: defaultValue.
	modulation := 0.0.
	default := defaultValue! !

!Control methodsFor: 'private' stamp: 'len 19/Jan/2026 19:21:26'!
valueFromPosition: aNumber
	^​ self curveAt: (aNumber min: 1.0 max: 0.0)! !

!Control class methodsFor: 'instance creation' stamp: 'len 14/Oct/2025 15:01:00'!
min: min max: max curve: aSymbol value: defaultValue
	^ self new setMin: min max: max curve: aSymbol value: defaultValue! !

!Control class methodsFor: 'instance creation' stamp: 'len 14/Oct/2025 15:02:00'!
min: min max: max value: defaultValue
	^ self min: min max: max curve: #linear value: defaultValue! !

!Module methodsFor: 'controlling' stamp: 'len 8/Dec/2025 18:04:50'!
clear
	"Clear all modulations from the controls:"
	controls do: [:each| each clear]! !

!Module methodsFor: 'controlling' stamp: 'len 18/Nov/2025 15:19:00'!
reset
	^ self! !

!Module methodsFor: 'controlling' stamp: 'len 8/Dec/2025 18:07:22'!
update
	"Apply modulations again for each control and update internal state.
	Subclasses with internal state that depends on the controls should implement this method."
	controls do: [:each| each apply]! !

!Module methodsFor: 'controls and modulations' stamp: 'len 27/Jan/2026 16:47:43'!
addControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Control min: min max: max value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:45:37'!
addFrequencyControl: aSymbol min: min max: max value: defaultValue
	^ (self addLogControl: aSymbol min: min max: max value: defaultValue) printer: #hertzPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:46:13'!
addFrequencyControl: aSymbol value: defaultValue
	^ self addFrequencyControl: aSymbol min: 20.0 "Hz" max: 20000.0 "20 kHz" value: defaultValue! !

!Module methodsFor: 'controls and modulations' stamp: 'len 27/Jan/2026 16:47:56'!
addLogControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Control min: min max: max curve: #exp value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 28/Jan/2026 00:09:19'!
addPitchControl: aSymbol value: defaultValue
	^ (self addControl: aSymbol min: 0 semitonesToHertz max: 127 semitonesToHertz value: defaultValue) printer: #hertzPrintString! !

!Module methodsFor: 'controls and modulations' stamp: 'len 27/Jan/2026 16:47:59'!
addQuadraticControl: aSymbol min: min max: max value: defaultValue
	^ controls at: aSymbol put: ((Control min: min max: max curve: #quadratic value: defaultValue) label: aSymbol asPlainString capitalized camelSeparatedWords)! !

!Module methodsFor: 'controls and modulations' stamp: 'len 1/Feb/2026 15:46:28'!
addSpeedControl: aSymbol value: defaultValue
	^ self addFrequencyControl: aSymbol min: 0.01 max: 20.0 value: defaultValue! !

!Module methodsFor: 'controls and modulations' stamp: 'len 4/Dec/2025 14:41:16'!
addTimeControl: aSymbol min: min max: max value: defaultValue
	^ (self addLogControl: aSymbol min: min max: max value: defaultValue) printer: #secondsPrintString! !

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

!Module methodsFor: 'controls and modulations' stamp: 'len 25/Jan/2026 22:25:45'!
at: aSymbol
	self flag: #deprecated.
	^ self get: aSymbol! !

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

!Module methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:16'!
tick
	"Read input buffers, and write to output buffers. Here's where signal processing modules do they work, processing input signals and producing output signals.
	Note: assume #update was called before calling #tick, so that the internal state was updated from the (possibly modulated) controls."! !

!Module methodsFor: 'serialization' stamp: 'len 5/Feb/2026 17:49:59'!
asJsonWithBuffers: aList
	^ OrderedDictionary new
		at: #settings put: self settings;
		yourself! !

!Module methodsFor: 'serialization' stamp: 'len 5/Feb/2026 14:43:18'!
readFromJson: json buffers: aList
	self settings: (json at: #settings)! !

!Module methodsFor: 'testing' stamp: 'len 7/Dec/2025 00:18:27'!
is: aSymbol
	^ aSymbol == #Module or: [super is: aSymbol]! !

!Module methodsFor: 'tools' stamp: 'len 30/Jan/2026 15:03:59'!
panel
	"Answer a panel to use in the patchable views."
	| panel |
	panel := ControlPanel new.
	controls keysAndValuesDo: [:name :control| panel addKnob: control label: name capitalized].
	^ panel! !

!Module methodsFor: 'tools' stamp: 'len 10/Jan/2026 16:16:26'!
patchable
	"Answer a patchable view of the receiver, with input and output pins, intended to be used in patches.
	See also messages #edit and #panel, and see PatchMorph and PatchableMorph."
	| answer |
	answer := PatchableMorph new model: self.
	controls ifNotEmpty: [answer body addMorph: self panel].
	^ answer! !

!Module methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:32:09'!
title
	^ self class name camelSeparatedWords! !

!Module class methodsFor: 'constants' stamp: 'len 3/Feb/2026 22:59:22'!
blockSize
	"Answer the size of the input and output buffers.
	This is the number of samples processed on each tick."
	^ 128! !

!Module class methodsFor: 'constants' stamp: 'len 7/Dec/2025 00:22:17'!
controlRate
	^ self sampleRate asFloat / self blockSize! !

!Module class methodsFor: 'constants' stamp: 'len 6/Dec/2025 15:31:46'!
sampleRate
	^ AudioPlayer sampleRate! !

!EG methodsFor: 'accessing' stamp: 'len 6/Jan/2026 18:33:45'!
stage
	^ stage! !

!EG methodsFor: 'accessing' stamp: 'len 6/Jan/2026 18:35:09'!
value
	^ value! !

!EG methodsFor: 'controlling' stamp: 'len 29/Nov/2025 15:46:00'!
gateOff
	^ self! !

!EG methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:37:22'!
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

!EG methodsFor: 'processing' stamp: 'len 29/Nov/2025 20:41:00'!
next
	^ self subclassResponsibility! !

!EG methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:36'!
tick
	stage = #idle ifFalse: [self triggerEvent: #output: with: self next]! !

!AD methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:13'!
update
	super update.
	decay := (self get: #decay) * self class controlRate! !

!AD methodsFor: 'initialization' stamp: 'len 28/Nov/2025 13:19:00'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5! !

!AD methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:45:01'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
		^ value * velocity].
	stage = #decay ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!AD methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:38:09'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ADControlMorph new attack: (controls at: #attack); decay: (controls at: #decay).
	answer body addMorph: display.
	answer
		addControlInput: #attack;
		addControlInput: #decay;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!ADSR methodsFor: 'controlling' stamp: 'len 6/Jan/2026 17:06:03'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!ADSR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:38:34'!
update
	| rate |
	super update.
	rate := self class controlRate.
	decay := (self get: #decay) * rate.
	sustain := self get: #sustain.
	release := (self get: #release) * rate! !

!ADSR methodsFor: 'initialization' stamp: 'len 6/Jan/2026 17:34:36'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5.
	self addVolumeControl: #sustain value: 0.6.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0! !

!ADSR methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:46:07'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
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

!ADSR methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:38:20'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ADSRControlMorph new attack: (controls at: #attack); decay: (controls at: #decay); sustain: (controls at: #sustain); release: (controls at: #release).
	answer body addMorph: display.
	answer
		addControlInput: #attack;
		addControlInput: #decay;
		addControlInput: #release;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!AHD methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:31'!
update
	| rate |
	super update.
	rate := self class controlRate.
	hold := (self get: #hold) * rate.
	decay := (self get: #decay) * rate! !

!AHD methodsFor: 'initialization' stamp: 'len 28/Nov/2025 13:20:00'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01.
	self addTimeControl: #hold min: 0.001 max: 10.0 value: 1.0.
	self addTimeControl: #decay min: 0.001 max: 2.0 value: 0.5! !

!AHD methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:46:40'!
next
	stage = #attack ifTrue:
		["value := (1.0 - value) * factor + value." value := value + increment.
		value >= 0.999 ifTrue: [value := 1.0. stage := #hold. holding := (hold * self class controlRate) asInteger].
		^ value * velocity].
	stage = #hold ifTrue:
		[(holding := holding - 1) > 0 ifFalse: [stage := #decay. factor := 0.001 "-60 dB" raisedTo: 1.0 / decay].
		^ value * velocity].
	stage = #decay ifTrue:
		[value := value * factor.
		value <= 0.00001 "-100 dB" ifTrue: [value := 0.0. stage := #idle]].
	^ value * velocity! !

!AHD methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:38:31'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := AHDControlMorph new attack: (controls at: #attack); hold: (controls at: #hold); decay: (controls at: #decay).
	answer body addMorph: display.
	answer
		addControlInput: #attack;
		addControlInput: #hold;
		addControlInput: #decay;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!AR methodsFor: 'controlling' stamp: 'len 6/Jan/2026 18:32:04'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!AR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:44'!
update
	super update.
	release := (self get: #release) * self class controlRate! !

!AR methodsFor: 'initialization' stamp: 'len 28/Nov/2025 13:20:00'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0! !

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

!AR methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:38:39'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ARControlMorph new attack: (controls at: #attack); release: (controls at: #release).
	answer body addMorph: display.
	answer
		addControlInput: #attack;
		addControlInput: #release;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!ASR methodsFor: 'controlling' stamp: 'len 6/Jan/2026 18:32:10'!
gateOff
	self update.
	stage := #release.
	factor := 0.001 raisedTo: 1.0 / release! !

!ASR methodsFor: 'controlling' stamp: 'len 18/Jan/2026 19:39:58'!
update
	super update.
	sustain := self get: #sustain.
	release := (self get: #release) * self class controlRate! !

!ASR methodsFor: 'initialization' stamp: 'len 6/Jan/2026 17:34:20'!
initializeControls
	super initializeControls.
	self addTimeControl: #attack min: 0.001 max: 2.0 value: 0.01.
	self addVolumeControl: #sustain value: 0.6.
	self addTimeControl: #release min: 0.001 max: 10.0 value: 1.0! !

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

!ASR methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:38:48'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := ASRControlMorph new attack: (controls at: #attack); sustain: (controls at: #sustain); release: (controls at: #release).
	answer body addMorph: display.
	answer
		addControlInput: #attack;
		addControlInput: #release;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

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

!DiodeLadder methodsFor: 'tools' stamp: 'len 29/Jan/2026 03:00:39'!
display
	^ super display mode: #LP! !

!DiodeLadder methodsFor: 'tools' stamp: 'len 29/Jan/2026 03:00:39'!
patchable
	^ super patchable
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1';
		yourself! !

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

!Chorus methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:46:23'!
reset
	phase := 0.0.
	delayLine reset! !

!Chorus methodsFor: 'controlling' stamp: 'len 2/Feb/2026 16:14:07'!
update
	super update.
	increment := (self get: #speed) / self class controlRate * Float twoPi.
	depth := self get: #depth.
	time := self get: #time.
	mix := self get: #mix! !

!Chorus methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:46:23'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.035 "35 ms max") ceiling.
	tap1 := DelayLineTap on: delayLine.
	tap2 := DelayLineTap on: delayLine.
	tap3 := DelayLineTap on: delayLine.
	self reset! !

!Chorus methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:46:37'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.010 "10 ms" max: 0.025 "25 ms" value: 0.015 "15 ms".
	self addFrequencyControl: #speed min: 0.1 "Hz" max: 1.5 "Hz" value: 0.5 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addControl: #mix min: 0.0 max: 1.0 value: 0.5! !

!Chorus methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:13:54'!
tick
	| twoPi d1 d2 d3 dry |
	outputL ifNil: [^ self].
	input ifNil: [outputL atAllPut: 0.0. outputR ifNotNil: [outputR atAllPut: 0.0].^ self].
	twoPi := Float twoPi.
	d1 := (phase sin * depth * 0.002 "2 ms" + (time * 0.8)) * self class sampleRate.
	d2 := ((twoPi/3.0 + phase) sin * depth * 0.002 "2 ms" + time) * self class sampleRate.
	d3 := ((twoPi/1.5 + phase) sin * depth * 0.002 "2 ms" + (time * 1.2)) * self class sampleRate.
	(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
	tap1 setDelayIncrement: (d1 - tap1 delay) / self class blockSize.
	tap2 setDelayIncrement: (d2 - tap2 delay) / self class blockSize.
	tap3 setDelayIncrement: (d3 - tap3 delay) / self class blockSize.
	dry := 1.0 - mix.
	outputR isNil
		ifTrue:
			[1 to: input size do: [:i|
				| in out |
				delayLine write: (in := input at: i).
				out := tap1 read + tap2 read + tap3 read / 3.0.
				outputL at: i put: in * dry + (out * mix)]]
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
				outputL at: i put: in + (mid + side * mix).
				outputR at: i put: in + (mid - side * mix)]]! !

!Chorus methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:40:47'!
patchable
	^ super patchable
		addAudioInput: #setInput:;
		addAudioOutput: #setOutputL: label: 'Out L/M';
		addAudioOutput: #setOutputR: label: 'Out R';
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

!SVF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:14:11'!
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

!SVF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:40:56'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q).
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutputLP: label: 'LP';
		addAudioOutput: #setOutputHP: label: 'HP';
		addAudioOutput: #setOutputBP: label: 'BP';
		addAudioOutput: #setOutputBPN: label: 'BPN'.
	^ answer! !

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

!AudioIn methodsFor: 'controlling' stamp: 'len 2/Feb/2026 04:10:50'!
clear
	super clear.
	outputL ifNotNil: [outputL atAllPut: 0.0].
	outputR ifNotNil: [outputR atAllPut: 0.0]! !

!AudioIn methodsFor: 'initialization' stamp: 'len 21/Jan/2026 02:49:31'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize.
	meterLeftValue := meterRightValue := 0.0! !

!AudioIn methodsFor: 'mixing' stamp: 'len 24/Jan/2026 22:06:51'!
meterLeftValue
	meterLeftValue := meterLeftValue * 0.95.
	^ meterLeftValue! !

!AudioIn methodsFor: 'mixing' stamp: 'len 24/Jan/2026 22:06:55'!
meterRightValue
	meterRightValue := meterRightValue * 0.95.
	^ meterRightValue! !

!AudioIn methodsFor: 'mixing' stamp: 'len 21/Jan/2026 02:56:39'!
meterValue
	^ self meterLeftValue max: self meterRightValue! !

!AudioIn methodsFor: 'mixing' stamp: 'len 2/Feb/2026 04:10:50'!
mixFromLeft: leftBuffer right: rightBuffer gain: gain
	outputL ifNotNil:
		[aux replaceWith: leftBuffer.
		aux *= gain.
		outputL += aux].
	outputR ifNotNil:
		[aux replaceWith: rightBuffer.
		aux *= gain.
		outputR += aux]! !

!AudioIn methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:14:15'!
tick
	meterLeftValue := meterLeftValue * 0.98 "dampen" max: (outputL rms max: outputL last abs).
	meterRightValue := meterRightValue * 0.98 "dampen" max: (outputR rms max: outputR last abs).! !

!AudioIn methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:09:34'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: (RollingMeterMorph new meterBlock: [self meterValue]).
	answer
		addAudioOutput: #setOutputL: label: 'Out L/M';
		addAudioOutput: #setOutputR: label: 'Out R'.
	^ answer! !

!AudioIn methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:10:50'!
setOutputL: aBuffer
	outputL := aBuffer! !

!AudioIn methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:10:28'!
setOutputR: aBuffer
	outputR := aBuffer! !

!AudioOut methodsFor: 'controlling' stamp: 'len 18/Jan/2026 02:32:16'!
setLevel: aNumber
	self set: #level to: aNumber! !

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

!AudioOut methodsFor: 'initialization' stamp: 'len 24/Jan/2026 22:03:54'!
initialize
	super initialize.
	aux := Float32Array new: self class blockSize.
	level := levelLeft := levelRight := 0.5.
	meterLeftValue := meterRightValue := 0.0! !

!AudioOut methodsFor: 'initialization' stamp: 'len 21/Jan/2026 15:56:17'!
initializeControls
	super initializeControls.
	self addVolumeControl: #level value: 0.5.
	(self addControl: #pan min: -1.0 max: 1.0 value: 0.0) printer: [:x| x abs < 0.01 ifTrue: ['Center'] ifFalse: [(x abs * 100.0) rounded printString, '% ', (x < 0.0 ifTrue: ['L'] ifFalse: ['R'])]]! !

!AudioOut methodsFor: 'mixing' stamp: 'len 24/Jan/2026 22:11:37'!
meterLeftValue
	meterLeftValue := meterLeftValue * 0.95.
	^ meterLeftValue * levelLeft! !

!AudioOut methodsFor: 'mixing' stamp: 'len 24/Jan/2026 22:09:50'!
meterRightValue
	meterRightValue := meterRightValue * 0.95.
	^ meterRightValue * levelRight! !

!AudioOut methodsFor: 'mixing' stamp: 'len 24/Jan/2026 22:09:34'!
meterValue
	^ (meterLeftValue max: meterRightValue) * level! !

!AudioOut methodsFor: 'mixing' stamp: 'len 2/Feb/2026 04:06:40'!
mixIntoLeft: leftBuffer right: rightBuffer
	inputL ifNil: [^ self].
	meterLeftValue := meterLeftValue * 0.9 "dampen" max: (inputL rms max: inputL last abs).
	inputR
		ifNil:
			[meterRightValue := meterLeftValue.
			aux replaceWith: inputL]
		ifNotNil:
			[meterRightValue := meterRightValue * 0.9 max: (inputR rms max: inputR last abs).
			aux replaceWith: inputR].
	aux *= levelRight.
	rightBuffer += aux.
	aux replaceWith: inputL.
	aux *= levelLeft.
	leftBuffer += aux! !

!AudioOut methodsFor: 'tools' stamp: 'len 20/Jan/2026 15:05:44'!
panel
	| column |
	column := LinearLayoutMorph newColumn
		color: Color transparent;
		addMorph: (KnobControlMorph control:(controls at: #level));
		addMorph: (SliderControlMorph new transpose; control: (controls at: #pan)).
	^ ControlPanel new
		addMorph: column! !

!AudioOut methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:30:33'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: (RollingMeterMorph new meterBlock: [self meterValue]); addMorph: self panel.
	answer
		addAudioInput: #setInputL: label: 'In L/M';
		addAudioInput: #setInputR: label: 'In R';
		addControlInput: #level;
		addControlInput: #pan.
	^ answer! !

!AudioOut methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:06:40'!
setInputL: aBuffer
	inputL := aBuffer! !

!AudioOut methodsFor: 'wiring' stamp: 'len 2/Feb/2026 04:06:33'!
setInputR: aBuffer
	inputR := aBuffer! !

!ControlIn methodsFor: 'accessing' stamp: 'len 6/Jan/2026 14:30:25'!
index
	^ index! !

!ControlIn methodsFor: 'accessing' stamp: 'len 6/Jan/2026 14:30:18'!
index: anInteger
	self assert: (anInteger between: 0 and: 9).
	index := anInteger! !

!ControlIn methodsFor: 'controlling' stamp: 'len 6/Jan/2026 14:29:16'!
setValue: aNumber
	value := aNumber! !

!ControlIn methodsFor: 'initialization' stamp: 'len 8/Jan/2026 21:44:47'!
initialize
	super initialize.
	value := 0.0! !

!ControlIn methodsFor: 'processing' stamp: 'len 8/Jan/2026 21:45:42'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #value: with: value]! !

!ControlIn methodsFor: 'tools' stamp: 'len 22/Jan/2026 02:42:38'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: (LabelMorph contents: '#', index printString).
	answer addControlOutput: #value: label: 'Value'.
	^ answer! !

!Generator methodsFor: 'processing' stamp: 'len 24/Sep/2025 20:19:00'!
next
	^ 0.0! !

!Generator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:07:53'!
next: anInteger
	| buffer |
	buffer := Float32Array new: anInteger.
	self read: buffer.
	^ buffer! !

!Generator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:11:23'!
read: aBuffer
	"Subclasses should reimplement this for speed, possibly with primitives."
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

!Generator methodsFor: 'tools' stamp: 'len 26/Jan/2026 11:07:48'!
bench
	| n buffer t |
	n := 1024*1024. "1 M  samples"
	buffer := Float32Array new: n.
	self reset.
	t := [self read: buffer] timeToRun.
	^ (n / t) truncated printString, ' kHz'! !

!Generator methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:45:22'!
patchable
	^ super patchable addAudioOutput: #setOutput:; yourself! !

!Generator methodsFor: 'tools' stamp: 'len 3/Jan/2026 18:51:41'!
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

!Generator methodsFor: 'tools' stamp: 'len 26/Jan/2026 11:08:02'!
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

!TunedGenerator methodsFor: 'controlling' stamp: 'len 4/Jan/2026 14:54:25'!
setNote: aNumber
	note := aNumber! !

!TunedGenerator methodsFor: 'tools' stamp: 'len 29/Jan/2026 18:50:03'!
panel
	^​ ControlPanel new addMorph: (TextControlMorph control: (controls at: #tune))! !

!TunedGenerator methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:09:43'!
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

!Oscillator methodsFor: 'controlling' stamp: 'len 2/Jan/2026 01:08:05'!
update
	super update.
	frequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate! !

!Oscillator methodsFor: 'initialization' stamp: 'len 4/Jan/2026 14:56:23'!
initialize
	super initialize.
	self reset.
	frequency := note semitonesToHertz! !

!Oscillator methodsFor: 'processing' stamp: 'len 5/Dec/2025 15:02:14'!
next
	| answer |
	answer := self peek.
	(phase := phase + frequency) >= 1.0 ifTrue: [phase := phase - phase truncated].
	^ answer! !

!Oscillator methodsFor: 'processing' stamp: 'len 3/Dec/2025 14:21:52'!
peek
	^ self subclassResponsibility! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:08:51'!
read: aBuffer AM: envelopeBuffer FM: modulatorBuffer feedback: feedbackAmount
	1 to: aBuffer size do: [:i|
		| value |
		value := self peek * (envelopeBuffer at: i).
		aBuffer at: i put: value.
		phase := phase + (modulatorBuffer at: i) + (value * feedbackAmount) + frequency.
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:00'!
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
		phase := oldPhase + frequency.
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:21'!
read: aBuffer FM: modulatorBuffer
	self read: aBuffer FM: modulatorBuffer feedback: 0.0! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:21'!
read: aBuffer FM: modulatorBuffer feedback: feedbackAmount
	1 to: aBuffer size do: [:i|
		| value |
		value := self peek.
		aBuffer at: i put: value.
		phase := phase + (modulatorBuffer at: i) + (value * feedbackAmount) + frequency.
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:09:33'!
read: aBuffer PM: modulatorBuffer
	self read: aBuffer PM: modulatorBuffer feedback: 0.0! !

!Oscillator methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:08:41'!
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
		phase := oldPhase + frequency.
		phase >= 1.0 ifTrue: [phase := phase - phase truncated]]! !

!Oscillator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:14:59'!
tick
	output ifNil: [^ self].
	inputFM ifNotNil: [^ self read: output PM: inputFM].
	self read: output! !

!Oscillator methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:09:33'!
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

!Pulse methodsFor: 'processing' stamp: 'len 15/Jan/2026 19:08:04'!
peek
	^ (phase pulse: frequency width: width) * 0.577 "normalize amplitude to match perceived loudness with other oscillators"! !

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

!Pulse methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:09:51'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := VariableWaveControlMorph new
		control: (controls at: #width);
		waveBlock: [:x :w| x pulseWidth: w].
	answer body addMorph: display; addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #width;
		addAudioInput: #setInputPWM: label: 'PWM';
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

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

!Saw methodsFor: 'processing' stamp: 'len 17/Jan/2026 16:40:42'!
peek
	shape = 1.0 ifTrue: [^ phase saw: frequency].
	^ phase triangle: frequency skew: shape! !

!Saw methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:09:58'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s| x triangleSkew: s].
	answer body addMorph: display; addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

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

!Sine methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:10:40'!
read: aBuffer
	| α f |
	warp = 0.0 ifFalse: [^ super read: aBuffer].
	"This is about 3x the speed of the original method that calls #next."
	α := phase * Float twoPi.
	f := frequency * Float twoPi.
	1 to: aBuffer size do: [:i|
		aBuffer at: i put: α sin.
		α := α + f].
	phase := α / Float twoPi.
	phase := phase - phase truncated! !

!Sine methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:02'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := VariableWaveControlMorph new
		control: (controls at: #warp);
		waveBlock: [:x :s| (((x * Float twoPi) sin * s + x) * Float twoPi) sin].
	answer body addMorph: display; addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #warp;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

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

!TriSawPulse methodsFor: 'processing' stamp: 'len 16/Jan/2026 15:39:26'!
peek
	"Answer a mix of two waves, depending on the shape parameter.
	Normalize the amplitude of the pulse wave to match perceived loudness with the other wave shapes."
	shape = 0.0 ifTrue: [^ phase triangle: frequency].
	shape < 0.25 ifTrue: [^ (phase triangle: frequency) * (0.25 - shape) + ((phase saw: frequency) * shape) / 0.25].
	shape = 0.25 ifTrue: [^ phase saw: frequency].
	shape < 0.5 ifTrue: [^ (phase saw: frequency) * (0.5 - shape) + ((phase pulse: frequency width: shape - 0.25 * 2) * 0.577 * (shape - 0.25)) / 0.25].
	^ (phase pulse: frequency width: shape) * 0.577! !

!TriSawPulse methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:07'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s|
			s < 0.25
				ifTrue: [x triangle * (0.25 - s) + (x saw * s) / 0.25]
				ifFalse:
					[s < 0.5
						ifTrue: [x saw * (0.5 - s) + ((x pulseWidth: s - 0.25 * 2) * (s - 0.25)) / 0.25]
						ifFalse: [x pulseWidth: s]]].
	answer body addMorph: display; addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

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

!Triangle methodsFor: 'processing' stamp: 'len 17/Jan/2026 15:16:30'!
peek
	^ (phase triangle: frequency) * (1.0 - shape) + ((phase * Float twoPi) sin * shape)! !

!Triangle methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:11'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := VariableWaveControlMorph new
		control: (controls at: #shape);
		waveBlock: [:x :s| x triangle * (1.0 - s) + ((x * Float twoPi) sin * s)].
	answer body addMorph: display; addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #shape;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Wavetable methodsFor: 'accessing' stamp: 'len 14/Jan/2026 02:10:46'!
bank: aSymbol wavetable: anInteger
	| entry |
	entry := (Banks at: aSymbol) at: anInteger.
	waves := entry first.
	name := entry second.
	position := 0.0.
	phase := 0.0.
	frequency := 1.0 / waves first size! !

!Wavetable methodsFor: 'accessing' stamp: 'len 26/Oct/2025 14:32:00'!
smooth: aBoolean
	smooth := aBoolean! !

!Wavetable methodsFor: 'accessing' stamp: 'len 3/Oct/2025 16:15:00'!
waves
	^ waves! !

!Wavetable methodsFor: 'accessing' stamp: 'len 28/Sep/2025 19:18:00'!
wavetable: anInteger
	^ self bank: #MW1 wavetable: anInteger! !

!Wavetable methodsFor: 'controlling' stamp: 'len 14/Jan/2026 02:11:06'!
update
	super update.
	position := self get: #position! !

!Wavetable methodsFor: 'initialization' stamp: 'len 5/Dec/2025 17:32:01'!
initialize
	super initialize.
	self wavetable: 2.
	smooth := true! !

!Wavetable methodsFor: 'initialization' stamp: 'len 14/Jan/2026 02:11:21'!
initializeControls
	super initializeControls.
	self addControl: #position min: 0.0 max: 1.0 value: 0.0! !

!Wavetable methodsFor: 'processing' stamp: 'len 14/Jan/2026 02:10:46'!
peek
	| wave |
	wave := waves at: (position * (waves size - 1)) truncated + 1.
	^ smooth
		ifTrue: [wave atWrapSmooth: phase * (wave size - 1) + 1.0]
		ifFalse: [wave at: (phase * (wave size - 1)) truncated + 1]! !

!Wavetable methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:12:35'!
read: aBuffer
	| wave n |
	wave := waves at: (position * (waves size - 1)) truncated + 1.
	n := wave size - 1.0.
	smooth
		ifTrue:
			[1 to: aBuffer size do: [:i|
				aBuffer at: i put: (wave atWrapSmooth: phase * n + 1.0).
				phase := phase + frequency.
				phase >= 1.0 ifTrue: [phase := phase - phase truncated]]]
		ifFalse:
			[1 to: aBuffer size do: [:i|
				aBuffer at: i put: (wave at: (phase * n) truncated + 1).
				phase := phase + frequency.
				phase >= 1.0 ifTrue: [phase := phase - phase truncated]]]! !

!Wavetable methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:12:42'!
read: aBuffer WIM: modulatorBuffer
"	1 to: aBuffer size do: [:i|
		wave := (modulatorBuffer at: i) * depth + wave \\ 1.0.
		aBuffer at: i put: (aBuffer at: i) + self next]"
	self notYetImplemented! !

!Wavetable methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:17'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body
		addMorph: (WavetableControlMorph new waves: waves; control: (controls at: #position));
		addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #position;
		addAudioInput: #setInputFM: label: 'FM';
		addAudioOutput: #setOutput:.
	^ answer! !

!Wavetable class methodsFor: 'class initialization' stamp: 'len 31/Dec/2025 15:31:19'!
initialize
	super initialize.
	Banks := Dictionary new.
	self loadMW1Wavetables.
	self loadPPGWavetables! !

!Wavetable class methodsFor: 'class initialization' stamp: 'len 3/Jan/2026 03:05:31'!
loadMW1Wavetables
	Banks at: #MW1 put: (('/Users/len/Cuis/samples/mw1_wavetables' asDirectoryEntry files asSortedCollection: [:a :b| a name <= b name]) asArray collect: [:each|
		| label allTables table |
		label := (each name findTokens: '-.') second.
		allTables := (WAVFileReader new readFromFileEntry: each) leftSamples.
		table := (1 to: allTables size / 128) collect: [:i| allTables copyFrom: i-1*128+1 to: i*128].
		{table. label}])! !

!Wavetable class methodsFor: 'class initialization' stamp: 'len 3/Oct/2025 15:57:00'!
loadPPGWavetables
	| bytes |
	"32 wavetables, with 64 waves each, and 256 signed bytes per wave:"
	bytes := '/Users/len/Cuis/samples/ppg.bin' asFileEntry binaryContents.
	Banks at: #PPG put: ((0 to: 31) collect: [:i|
		| table |
		table := Float32Array new: 256 * 64.
		1 to: table size do: [:j| table at: j put: (bytes at: i * 256 * 64 + j) - 128 / 128.0].
		table := (1 to: table size / 256) collect: [:k| table copyFrom: k-1*256+1 to: k*256].
		{table. (i-1) printString}])! !

!Supersaw methodsFor: 'controlling' stamp: 'len 1/Dec/2025 15:32:00'!
reset
	super reset.
	phases atAllPut: 0.0! !

!Supersaw methodsFor: 'controlling' stamp: 'len 5/Jan/2026 17:24:02'!
update
	| detune detune2 detune3 mix normalization |
	super update.
	frequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	frequencies
		at: 1 put: (frequency - detune) abs;
		at: 2 put: (frequency - detune2) abs;
		at: 3 put: (frequency - detune3) abs;
		at: 4 put: frequency;
		at: 5 put: frequency + detune3;
		at: 6 put: frequency + detune2;
		at: 7 put: frequency + detune.
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'controlling' stamp: 'len 5/Jan/2026 15:29:43'!
update2
	| detune detune2 detune3 |
	super update.
	frequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := (self get: #detune) / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	frequencies
		at: 1 put: (frequency - detune) abs;
		at: 2 put: (frequency - detune2) abs;
		at: 3 put: (frequency - detune3) abs;
		at: 4 put: frequency;
		at: 5 put: frequency + detune3;
		at: 6 put: frequency + detune2;
		at: 7 put: frequency + detune! !

!Supersaw methodsFor: 'controlling' stamp: 'len 5/Jan/2026 17:23:16'!
update3
	| detune mix normalization |
	super update.
	frequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	frequencies
		at: 1 put: (frequency - (0.11002313*detune)) abs;
		at: 2 put: (frequency - (0.06288439*detune)) abs;
		at: 3 put: (frequency - (0.01952356*detune)) abs;
		at: 4 put: frequency;
		at: 5 put: frequency + (0.01991221*detune);
		at: 6 put: frequency + (0.06216538*detune);
		at: 7 put: frequency + (0.10745242*detune).
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'controlling' stamp: 'len 5/Jan/2026 17:24:07'!
update4
	| detune detune2 detune3 mix normalization |
	super update.
	frequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	detune := self get: #detune.
	"detune := DetuneCurveLUT at: (detune*1023.0 + 1.0) truncated."
	mix := detune. "should use separate control #mix, but for now we just tie it to #detune"
	detune := detune / self class sampleRate.
	detune2 := detune * 0.5826491486398412 "0.66 raisedTo: 1.3".
	detune3 := detune * 0.23662908360881574 "0.33 raisedTo: 1.3".
	frequencies
		at: 1 put: (frequency - detune) abs;
		at: 2 put: (frequency - detune2) abs;
		at: 3 put: (frequency - detune3) abs;
		at: 4 put: frequency;
		at: 5 put: frequency + detune3;
		at: 6 put: frequency + detune2;
		at: 7 put: frequency + detune.
	centerGain := -0.55366 * mix + 0.99785.
	sideGain := (-0.73764 * mix + 1.2841) * mix + 0.044372.
	normalization := 1.0 / 7.0. "/ (sideGain * 6.0 + centerGain)".
	centerGain := centerGain * normalization.
	sideGain := sideGain * normalization! !

!Supersaw methodsFor: 'initialization' stamp: 'len 5/Jan/2026 16:45:38'!
initialize
	super initialize.
	phases := Float32Array new: 7.
	frequency := 0.01.
	frequencies := (Float32Array new: 7) atAllPut: frequency.
	centerGain := sideGain := 1.0 / 7.0! !

!Supersaw methodsFor: 'initialization' stamp: 'len 29/Jan/2026 18:57:13'!
initializeControls
	super initializeControls.
	self addControl: #detune min: 0.0 max: 1.0 value: 0.001! !

!Supersaw methodsFor: 'processing' stamp: 'len 5/Dec/2025 15:14:20'!
next
	| answer |
	answer := self peek.
	phases += frequencies.
	1 to: 7 do: [:i| | t | (t := phases at: i) >= 1.0 ifTrue: [phases at: i put: t - t truncated]].
	^ answer! !

!Supersaw methodsFor: 'processing' stamp: 'len 5/Jan/2026 17:07:23'!
peek
	| answer |
	answer := 0.0.
	1 to: 7 do: [:i| answer := ((phases at: i) saw: (frequencies at: i)) * (i = 4 ifTrue: [centerGain] ifFalse: [sideGain]) + answer].
	^ answer! !

!Supersaw methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:21'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body
		addMorph: ((SupersawControlMorph control: (controls at: #detune)) phases: phases);
		addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #detune;
		addAudioOutput: #setOutput:.
	^ answer! !

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

!VOSIM methodsFor: 'controlling' stamp: 'len 2/Jan/2026 01:10:32'!
update
	| f1 f2 vowelIndex |
	super update.
	carrierFrequency := ((self get: #tune) + note) semitonesToHertz / self class sampleRate.
	carrierShape := self get: #shape.
	vowelIndex := ((self get: #vowel) * 15.0 + 1.0).
	f1 := #[240.0 235.0 390.0 370.0 610.0 585.0 850.0 820.0 750.0 700.0 600.0 500.0 460.0 360.0 300.0 250.0] atSmooth: vowelIndex.
	f2 := #[2400.0 2100.0 2300.0 1900.0 1900.0 1710.0 1610.0 1530.0 940.0 760.0 1170.0 700.0 1310.0 640.0 1390.0 595.0] atSmooth: vowelIndex.
"	vowelIndex := (self get: #vowel) * 3.0 + 1.0.
	f1 := #[270.0 730.0 570.0 300.0] atSmooth: vowelIndex.
	f2 := #[2300.0 1090.0 840.0 870.0] atSmooth: vowelIndex."
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

!VOSIM methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:48:37'!
panel
	^​ super panel
		addKnob: (controls at: #shape) label: 'Shape';
		addKnob: (controls at: #vowel) label: 'Vowel'! !

!Multisample methodsFor: 'controlling' stamp: 'len 21/Jan/2026 04:38:16'!
gateOff
	sample ifNotNil: [sample gateOff]! !

!Multisample methodsFor: 'controlling' stamp: 'len 21/Jan/2026 04:37:45'!
gateOn
	| samplesByVelocity |
	samplesByVelocity := keymap at: note.
	sample := (samplesByVelocity at: ((velocity * (samplesByVelocity size - 1)) truncated + 1 min: samplesByVelocity size)) copy reset.
	sample gateOn! !

!Multisample methodsFor: 'controlling' stamp: 'len 30/Nov/2025 02:15:00'!
reset
	sample ifNotNil: [sample reset]! !

!Multisample methodsFor: 'controlling' stamp: 'len 2/Dec/2025 14:33:00'!
setVelocity: aNumber
	velocity := aNumber! !

!Multisample methodsFor: 'copying' stamp: 'len 19/Jan/2026 19:51:44'!
copy
	^ super copy keymap: keymap! !

!Multisample methodsFor: 'initialization' stamp: 'len 15/Jan/2026 19:14:25'!
initialize
	super initialize.
	velocity := 0.5! !

!Multisample methodsFor: 'initialization' stamp: 'len 20/Nov/2025 16:39:00'!
keymap: anArray
	keymap := anArray! !

!Multisample methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:11:36'!
read: aBuffer
	sample ifNil: [^ aBuffer *= 0.0].
	sample read: aBuffer.
	aBuffer *= velocity! !

!Multisample methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:25'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addAudioOutput: #setOutput:.
	^ answer! !

!Multisample class methodsFor: 'as yet unclassified' stamp: 'len 3/Dec/2025 02:12:00'!
library
	^ Library! !

!Multisample class methodsFor: 'as yet unclassified' stamp: 'len 3/Dec/2025 02:07:00'!
loadLibrary
	"
	MultiSample loadLibrary
	"
	
	Library := Dictionary new.
	Library at: 'Rhodes' put: self loadRhodes! !

!Multisample class methodsFor: 'as yet unclassified' stamp: 'len 3/Dec/2025 00:09:00'!
loadRhodes
	| samples keymap |
	samples := Dictionary new.
	'/Users/len/Cuis/samples/jrhodes3' asDirectoryEntry files do: [:each|
		| tokens sampledSound midiKey velocityLayer buffer |
		tokens := each name findTokens: '_'.
		midiKey := tokens first asNumber.
		velocityLayer := tokens second asNumber.
		sampledSound := each wavContents.
		buffer := Float32Array new: sampledSound samples size.
		1 to: buffer size do: [:i| buffer at: i put: (sampledSound samples at: i) / 32767.0].
		(samples at: midiKey ifAbsentPut: [Dictionary new]) at: velocityLayer put: (Sample buffer: buffer)].
	samples := samples collect: [:each| each associations sorted reversed collect: #value].
	keymap := ((0 to: 127) collect: [:k|
		| closestKey speedFactor closestSamples |
		closestKey := samples keys detectMin: [:x| (x - k) abs].
		speedFactor := k semitonesToHertz / closestKey semitonesToHertz.
		closestSamples := samples at: closestKey.
		closestSamples collect: [:each| each copy speed: each speed * speedFactor]]).
	^ self new keymap: keymap! !

!Sample methodsFor: 'accessing' stamp: 'len 2/Jan/2026 14:42:45'!
baseRate
	^ baseRate! !

!Sample methodsFor: 'accessing' stamp: 'len 2/Jan/2026 14:43:07'!
baseRate: aNumber
	baseRate := aNumber! !

!Sample methodsFor: 'accessing' stamp: 'len 2/Oct/2025 23:07:00'!
buffer
	^ buffer! !

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

!Sample methodsFor: 'accessing' stamp: 'len 13/Oct/2025 16:25:00'!
position
	^ position! !

!Sample methodsFor: 'accessing' stamp: 'len 20/Jan/2026 20:21:45'!
smooth
	^ smooth! !

!Sample methodsFor: 'accessing' stamp: 'len 20/Jan/2026 20:21:50'!
smooth: aBoolean
	smooth := aBoolean.
	self changed! !

!Sample methodsFor: 'accessing' stamp: 'len 21/Jan/2026 23:01:44'!
warp
	^ warp! !

!Sample methodsFor: 'accessing' stamp: 'len 21/Jan/2026 23:01:54'!
warp: aBoolean
	warp := aBoolean.
	self changed! !

!Sample methodsFor: 'controlling' stamp: 'len 27/Sep/2025 01:15:00'!
gateOff
	released := true! !

!Sample methodsFor: 'controlling' stamp: 'len 9/Jan/2026 16:20:26'!
gateOn
	self reset! !

!Sample methodsFor: 'controlling' stamp: 'len 21/Jan/2026 22:44:13'!
reset
	position := (buffer size - 1) * offset.
	released := false! !

!Sample methodsFor: 'controlling' stamp: 'len 21/Jan/2026 22:44:13'!
setOffset: aNumber
	offset := aNumber.
	position := (buffer size - 1) * aNumber "change it here, otherwise wouldnt have any effect until a gateOn"! !

!Sample methodsFor: 'controlling' stamp: 'len 23/Jan/2026 14:28:16'!
setSpeed: aNumber
	self set: #speed to: aNumber! !

!Sample methodsFor: 'controlling' stamp: 'len 21/Jan/2026 23:00:53'!
update
	super update.
	speed := self get: #speed.
	increment := baseRate * ((self get: #tune) + note - 60) semitonesToRatio / self class sampleRate.
	warp ifFalse: [increment := increment * speed abs]! !

!Sample methodsFor: 'copying' stamp: 'len 21/Jan/2026 23:15:51'!
copy
	^ (self class buffer: buffer baseRate: baseRate)
		settings: self settings;
		loopEnd: loopEnd;
		loopLength: loopLength;
		smooth: smooth;
		warp: warp! !

!Sample methodsFor: 'initialization' stamp: 'len 21/Jan/2026 23:00:53'!
initialize
	super initialize.
	smooth := true.
	warp := false! !

!Sample methodsFor: 'initialization' stamp: 'len 21/Jan/2026 23:14:32'!
initializeControls
	super initializeControls.
	(self addControl: #speed min: -4.0 max: 4.0 value: 1.0) printer: [:x| '×', (x printStringFractionDigits: 2)]! !

!Sample methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:13:36'!
read: aBuffer
	(warp and: [speed abs ~= 1.0]) ifTrue: [^ self readWarp: aBuffer].
	speed < 0 ifTrue: [^ self readBackwards: aBuffer].
	self readForward: aBuffer! !

!Sample methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:13:17'!
readBackwards: aBuffer
	1 to: aBuffer size do: [:i|
		"if smooth = true perform linear interpolation between samples:"
		aBuffer at: i put: (smooth ifTrue: [buffer atSmooth: position + 1.0] ifFalse: [buffer at: position truncated + 1]).
		(position := position - increment) >= 0.0 ifFalse:
			[position := 0.0.
			released := true.
			aBuffer from: i to: aBuffer size put: 0.0.
			^ self]]! !

!Sample methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:22:14'!
readForward: aBuffer
	| end |
	end := buffer size.
	smooth ifTrue: [end := end - 1]. "to allow for interpolation with next sample without checking bounds every time"
	1 to: aBuffer size do: [:i|
		"if smooth = true perform linear interpolation between samples:"
		aBuffer at: i put: (smooth ifTrue: [buffer atSmooth: position + 1.0] ifFalse: [buffer at: position truncated + 1]).
		(position := position + increment) < end ifFalse:
			[released := true.
			position := end - 1.0.
			aBuffer from: i to: aBuffer size put: 0.0.
			^ self].
		(position > loopEnd and: [released not]) ifTrue: [position := position - loopLength]]! !

!Sample methodsFor: 'processing' stamp: 'len 26/Jan/2026 11:13:45'!
readWarp: aBuffer
	speed < 0 ifTrue: [^ self readWarpBackwards: aBuffer].
	self readWarpForward: aBuffer! !

!Sample methodsFor: 'serialization' stamp: 'len 5/Feb/2026 15:53:03'!
asJsonWithBuffers: aList
	^ (super asJsonWithBuffers: aList)
		at: #buffer put: (aList indexOf: buffer ifAbsent: [aList add: buffer. aList size]);
		at: #baseRate put: baseRate;
		at: #loopLength put: loopLength;
		at: #loopEnd put: loopEnd;
		yourself! !

!Sample methodsFor: 'serialization' stamp: 'len 5/Feb/2026 15:53:44'!
readFromJson: json buffers: aList
	super readFromJson: json buffers: aList.
	self buffer: (aList at: (json at: #buffer)) baseRate: (json at: #baseRate).
	loopLength := json at: #loopLength.
	loopEnd := json at: #loopEnd! !

!Sample methodsFor: 'tools' stamp: 'len 22/Jan/2026 04:28:30'!
panel
	^ super panel
		addMorph: (TextControlMorph control: (controls at: #speed));
		addMorph: (PluggableToggleMorph new model: self; getter: #smooth; setter: #smooth:; label: 'HQ');
		addMorph: (PluggableToggleMorph new model: self; getter: #warp; setter: #warp:; label: 'Warp')! !

!Sample methodsFor: 'tools' stamp: 'len 2/Feb/2026 16:10:30'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body
		addMorph: (SampleDisplayMorph new sample: self);
		addMorph: self panel.
	answer
		addControlInput: #tune label: 'Pitch';
		addControlInput: #speed;
		addAudioOutput: #setOutput:.
	^ answer! !

!Sample methodsFor: 'tools' stamp: 'len 2/Oct/2025 20:06:00'!
plot
	^ PlotMorph new domain: (1 to: buffer size); plot: [:t| buffer at: t]! !

!Sample methodsFor: 'tools' stamp: 'len 31/Oct/2025 14:40:00'!
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

!Sample methodsFor: 'private' stamp: 'len 21/Jan/2026 22:44:13'!
buffer: aFloatArray baseRate: aNumber
	buffer := aFloatArray.
	baseRate := aNumber.
	offset := 0.0.
	loopEnd := buffer size.
	loopLength := 0.
	increment := 1.
	self reset! !

!Sample class methodsFor: 'library' stamp: 'len 3/Dec/2025 02:10:00'!
library
	^ Library! !

!Sample class methodsFor: 'library' stamp: 'len 4/Feb/2026 00:16:48'!
loadLibrary
	"
	Sample loadLibrary
	"
	
	Library := OrderedDictionary new.
	Library
		at: 'Amen 152 BPM' put: (self fromFileNamed: '/Users/len/Cuis/samples/breaks152/000_AMEN.WAV');
		at: 'pad2' put: (self fromFileNamed: '/Users/len/Cuis/samples/pads/pad2.wav');
		at: 'pad3' put: (self fromFileNamed: '/Users/len/Cuis/samples/pads/pad3.wav');
		at: 'pad4' put: (self fromFileNamed: '/Users/len/Cuis/samples/pads/pad4.wav');
		at: 'pad5' put: (self fromFileNamed: '/Users/len/Cuis/samples/pads/pad5.wav')! !

!Sample class methodsFor: 'instance creation' stamp: 'len 2/Jan/2026 16:58:08'!
buffer: aFloatArray
	^ self buffer: aFloatArray baseRate: self sampleRate! !

!Sample class methodsFor: 'instance creation' stamp: 'len 2/Jan/2026 14:42:24'!
buffer: aFloatArray baseRate: aNumber
	^ self new buffer: aFloatArray baseRate: aNumber! !

!Sample class methodsFor: 'instance creation' stamp: 'len 2/Jan/2026 15:01:40'!
buffer: aFloatArray sampleRate: aNumber
	^ self buffer: aFloatArray baseRate: aNumber! !

!Sample class methodsFor: 'instance creation' stamp: 'len 2/Jan/2026 15:02:36'!
buffer: aFloatArray sampleRate: aNumber rootNote: anotherNumber
	^ self buffer: aFloatArray baseRate: aNumber * (60 - anotherNumber) semitonesToRatio! !

!Sample class methodsFor: 'instance creation' stamp: 'len 22/Jan/2026 18:15:21'!
fromFileNamed: aString
	| reader samples i |
	reader := WAVFileReader new readFromFileNamed: aString.
	"If stereo, sum channels:"
	samples := reader channels = 2 ifTrue: [reader leftSamples + reader rightSamples] ifFalse: [reader leftSamples].
	"Remove DC offset:"
	samples -= (samples sum / samples size).
	"Normalize amplitude:"
	samples /= (samples max abs max: samples min abs).
	"Trim anything below -50 dB:"
	(i := samples findFirst: [:x| x abs > 0.00316]) > 0 ifTrue: [samples := samples copyFrom: i to: samples size].
"	(i := samples findLast: [:x| x abs > 0.00316]) > 0 ifTrue: [samples := samples copyFrom: 1 to: i]."
	^ self buffer: samples baseRate: reader sampleRate! !

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

!ColoredNoise methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:45:44'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #color;
		addAudioOutput: #setOutput:.
	^ answer! !

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

!SineSweep methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 19:33:21'!
initialize
	super initialize.
	self reset! !

!SineSweep methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 17:21:47'!
initializeControls
	super initializeControls.
	self addFrequencyControl: #start value: 20.0.
	self addFrequencyControl: #end value: 20000.0! !

!SineSweep methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 19:34:34'!
next
	| answer |
	answer := (phase * Float twoPi) sin.
	(phase := phase + frequency) >= 1.0 ifTrue: [phase := phase - phase truncated].
	frequency := frequency * 1.00001.
	^ answer! !

!SineSweep methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 17:22:48'!
reset
	phase := 0.0.
	frequency := startFrequency! !

!SineSweep methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 03:42:13'!
update
	super update.
	startFrequency := (self get: #start) / self class sampleRate.
	endFrequency := (self get: #end) / self class sampleRate.
	(frequency isNil or: [frequency > endFrequency]) ifTrue: [self reset]! !

!Transform methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:17'!
tick
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [1 to: output size do: [:i| output at: i put: (self value: 0.0)]. ^ self].
	1 to: input size do: [:i| output at: i put: (self value: (input at: i))]! !

!Transform methodsFor: 'processing' stamp: 'len 20/Nov/2025 00:38:00'!
value: in
	^ in! !

!Transform methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:42:15'!
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

!DiodeLadder2 methodsFor: 'tools' stamp: 'len 29/Jan/2026 15:19:55'!
display
	^ super display mode: #LP! !

!DiodeLadder2 methodsFor: 'tools' stamp: 'len 29/Jan/2026 15:19:55'!
patchable
	^ super patchable
		addAudioOutput: #setOutput: label: 'Out';
		yourself! !

!DiodeLadder2 methodsFor: 'wiring' stamp: 'len 29/Jan/2026 15:19:55'!
setOutput: aBuffer
	output := aBuffer! !

!Allpass methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:14:27'!
reset
	delayLine reset.
	tap reset! !

!Allpass methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:14:39'!
update
	super update.
	tap setDelayIncrement: (self get: #time) * self class sampleRate - tap delay / (self class sampleRate * 0.1). "slide over 100 ms to avoid phaser effect"
	gain := self get: #gain! !

!Allpass methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:46:14'!
initialize
	super initialize.
	delayLine := DelayLine new: (0.03 * self class sampleRate) ceiling.
	tap := DelayLineTap on: delayLine.
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

!Comb methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:46:14'!
initialize
	super initialize.
	delayLine := DelayLine new: (0.5 * self class sampleRate) ceiling.
	tap := DelayLineTap on: delayLine.
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

!Comb methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:48:54'!
panel
	^ ControlPanel new
		addKnob: (controls at: #time) label: 'Time';
		addKnob: (controls at: #feedback) label: 'FB';
		addKnob: (controls at: #damping) label: 'Damp'! !

!Decimator methodsFor: 'controlling' stamp: 'len 27/Sep/2025 20:49:00'!
reset
	holdCount := 0! !

!Decimator methodsFor: 'controlling' stamp: 'len 8/Jan/2026 21:29:58'!
update
	super update.
	quantization := self get: #quantization.
	downsample := self get: #downsample! !

!Decimator methodsFor: 'initialization' stamp: 'len 8/Jan/2026 21:27:24'!
initialize
	super initialize.
	quantization := 65535.0.
	downsample := 1.0.
	self reset! !

!Decimator methodsFor: 'initialization' stamp: 'len 23/Jan/2026 15:17:58'!
initializeControls
	super initializeControls.
	(self addLogControl: #quantization min: 1.0 max: 65535.0 value: 65535.0) printer: [:x| ((x + 1 log: 2) printStringFractionDigits: 2), ' bits'].
	(self addControl: #downsample min: 1.0 max: 8.0 value: 1.0) printer: [:x| (self class sampleRate / x) rounded printString, ' kHz']! !

!Decimator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:25'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	(downsample = 1.0 and: [quantization >= 65535.0]) ifTrue: [^ self].
	1 to: input size do: [:i|
		"downsampling via sample & hold:"
		holdCount > 0 ifFalse: "reset holdCount and take and process a new sample value"
			[holdCount := holdCount + downsample.
			heldValue := input at: i.
			"apply bitcrusher:"
			quantization < 65535.0 ifTrue: [heldValue := (heldValue * quantization) rounded / quantization]].
		holdCount := holdCount - 1.
		output at: i put: heldValue]! !

!Decimator methodsFor: 'processing' stamp: 'len 20/Nov/2025 01:21:00'!
value: in
	(downsample = 1.0 and: [quantization >= 65535.0]) ifTrue: [^ in].
	"downsampling via sample & hold:"
	holdCount > 0 ifFalse: "reset holdCount and take and process a new sample value"
		[holdCount := holdCount + downsample.
		heldValue := in.
		"apply bitcrusher:"
		quantization < 65535.0 ifTrue: [heldValue := (heldValue * quantization) rounded / quantization]].
	holdCount := holdCount - 1.
	^ heldValue! !

!Decimator methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:49:11'!
panel
	^​ ControlPanel new
		addKnob: (controls at: #quantization) label: 'BR';
		addKnob: (controls at: #downsample) label: 'SRR'! !

!Decimator methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:42:29'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	^ answer
		addAudioInput: #setInput:;
		addControlInput: #quantization label: 'BR';
		addControlInput: #downsample label: 'SRR';
		addAudioOutput: #setOutput:;
		yourself! !

!Echo methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:17:04'!
reset
	delayLine reset.
	tap reset! !

!Echo methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:17:11'!
update
	super update.
	tap setDelayIncrement: (self get: #time) * self class sampleRate - tap delay / (self class sampleRate * 0.03) "slide over 30 ms"! !

!Echo methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:46:14'!
initialize
	super initialize.
	delayLine := DelayLine new: self class sampleRate ceiling.
	tap := DelayLineTap on: delayLine! !

!Echo methodsFor: 'initialization' stamp: 'len 14/Jan/2026 15:44:28'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.001 "1 ms" max: 1.0 "1 s" value: 0.5 "500 ms"! !

!Echo methodsFor: 'processing' stamp: 'len 26/Jan/2026 17:17:29'!
value: in
	delayLine write: in.
	^ tap read! !

!Echo methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:33:21'!
patchable
	^ super patchable
		addControlInput: #time;
		yourself! !

!Flanger methodsFor: 'controlling' stamp: 'len 26/Jan/2026 17:08:06'!
reset
	phase := 0.0.
	delayLine reset.
	tap reset! !

!Flanger methodsFor: 'controlling' stamp: 'len 27/Jan/2026 02:04:37'!
update
	super update.
	increment := (self get: #speed) / self class controlRate * Float twoPi.
	depth := self get: #depth.
	time := self get: #time.
	feedback := self get: #feedback.
	mix := self get: #mix! !

!Flanger methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:46:14'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.005 "5 ms max") ceiling.
	tap := DelayLineTap on: delayLine.
	self reset! !

!Flanger methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:46:42'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.0002 "0.2 ms" max: 0.002 "2 ms" value: 0.001 "1 ms".
	self addFrequencyControl: #speed min: 0.05 "Hz" max: 1.0 "Hz" value: 0.1 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addControl: #feedback min: -0.8 max: 0.8 value: 0.5.
	self addControl: #mix min: 0.0 max: 1.0 value: 0.5! !

!Flanger methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:31'!
tick
	| d |
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	d := (phase sin * depth * 0.002 "2 ms" + time max: 0.0) * self class sampleRate.
	(phase := phase + increment) > Float twoPi ifTrue: [phase := phase - Float twoPi].
	tap setDelayIncrement: (d - tap delay) / self class blockSize.
	1 to: input size do: [:i|
		| in out |
		in := input at: i.
		out := tap read.
		delayLine write: out * feedback + in.
		output at: i put: in * (1.0 - mix) + (out * mix)]! !

!Overdrive methodsFor: 'accessing' stamp: 'len 31/Jan/2026 16:18:20'!
drive: aNumber
	"Set a drive amount from 0 to 2."
	| drive_2 pre_gain_a pre_gain_b drive_squashed |
	drive := aNumber.
	drive_2 := drive * drive.
	pre_gain_a := drive * 0.5.
	pre_gain_b := drive_2 * drive_2 * drive * 24.0.
	pregain := pre_gain_a + ((pre_gain_b - pre_gain_a) * drive_2).
	drive_squashed := drive * (2.0001 - drive). "2.0001 in order to avoid discontinuity at drive=2.0"
	postgain := 1.0 / (0.33 + (drive_squashed * (pregain - 0.33))) softclip! !

!Overdrive methodsFor: 'controlling' stamp: 'len 20/Nov/2025 16:48:00'!
update
	super update.
	self drive: (self get: #drive)! !

!Overdrive methodsFor: 'initialization' stamp: 'len 12/Oct/2025 19:42:00'!
initialize
	super initialize.
	self drive: 1.0! !

!Overdrive methodsFor: 'initialization' stamp: 'len 20/Nov/2025 16:49:00'!
initializeControls
	super initializeControls.
	self addControl: #drive min: 0.0 max: 2.0 value: 1.0! !

!Overdrive methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:37'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	output replaceWith: input.
	output *= pregain.
	output softclip.
	output *= postgain! !

!Overdrive methodsFor: 'processing' stamp: 'len 20/Nov/2025 00:39:00'!
value: in
	^ (in * pregain) softclip * postgain! !

!Overdrive methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:42:38'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	^ answer
		addAudioInput: #setInput:;
		addControlInput: #drive;
		addAudioOutput: #setOutput:;
		yourself! !

!Phaser methodsFor: 'controlling' stamp: 'len 26/Jan/2026 13:42:09'!
reset
	lastOutput := 0.0.
	phase := 0.0.
	x1 atAllPut: 0.0.
	y1 atAllPut: 0.0! !

!Phaser methodsFor: 'controlling' stamp: 'len 27/Jan/2026 02:04:44'!
update
	super update.
	increment := (self get: #speed) / self class sampleRate * Float twoPi.
	depth := self get: #depth.
	feedback := self get: #feedback.
	mix := self get: #mix! !

!Phaser methodsFor: 'initialization' stamp: 'len 26/Jan/2026 13:41:55'!
initialize
	super initialize.
	x1 := Float32Array new: 4.
	y1 := Float32Array new: 4.
	self reset! !

!Phaser methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:12:42'!
initializeControls
	super initializeControls.
	self addSpeedControl: #speed value: 0.5.
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1.
	self addControl: #feedback min: -0.7 max: 0.7 value: 0.5.
	self addControl: #mix min: 0.0 max: 1.0 value: 0.5! !

!Phaser methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:49'!
tick
	| twoPi a |
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [output atAllPut: 0.0. ^ self].
	twoPi := Float twoPi.
	1 to: input size do: [:i|
		| in out |
		a :=(phase sin + 1.0) * depth * 0.3 + 0.3. "0.3 - 0.9"
		(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
		in := input at: i.
		out := lastOutput * feedback + in.
		1 to: x1 size do: [:k|
			| y |
			y := (y1 at: k) * a + (x1 at: k) - (out * a).
			x1 at: k put: out.
			y1 at: k put: (out := y)].
		lastOutput := out.
		output at: i put: in * (1.0 - mix) + (out * mix)]! !

!PitchShifter methodsFor: 'as yet unclassified' stamp: 'len 26/Jan/2026 17:18:20'!
initialize
	| maxLength |
	super initialize.
	maxLength := (self class sampleRate * 0.160) ceiling.
	delayLine1 := DelayLine new: maxLength.
	delayLine2 := DelayLine new: maxLength.! !

!PitchShifter methodsFor: 'as yet unclassified' stamp: 'len 26/Jan/2026 17:19:26'!
initializeControls
	super initializeControls.
	(self addControl: #shift min: -48.0 max: 48.0 value: 0.0) printer: #semitonesOffsetPrintString.
	self addTimeControl: #time min: 0.010 "10 ms" max: 0.160 "160 ms" value: 0.04 "40 ms".
	self addTimeControl: #window min: 0.005 "5 ms" max: 0.080 "80 ms" value: 0.02 "20 ms"! !

!PitchShifter methodsFor: 'as yet unclassified' stamp: 'len 27/Jan/2026 02:04:52'!
update
"	window := self get: #window."
	| delayIncrement delayTime length |
	super update.
	length := ((self get: #time) * self class sampleRate) rounded.
	delayTime := length / 2.0.
	delayIncrement := (self get: #shift) semitonesToRatio.
	delayLine1 setLength: length; setDelay: delayTime; setDelayIncrement: delayIncrement.
	delayLine1 setLength: length; setDelay: length - delayTime; setDelayIncrement: delayIncrement! !

!Vibrato methodsFor: 'controlling' stamp: 'len 26/Jan/2026 18:09:39'!
reset
	phase := 0.0.
	delayLine reset! !

!Vibrato methodsFor: 'controlling' stamp: 'len 27/Jan/2026 02:05:00'!
update
	super update.
	increment := (self get: #speed) / self class controlRate * Float twoPi.
	depth := self get: #depth.
	time := self get: #time! !

!Vibrato methodsFor: 'initialization' stamp: 'len 26/Jan/2026 18:15:10'!
initialize
	super initialize.
	delayLine := DelayLine new: (self class sampleRate * 0.015 "15 ms max") ceiling.
	tap := DelayLineTap on: delayLine.
	self reset! !

!Vibrato methodsFor: 'initialization' stamp: 'len 1/Feb/2026 15:46:49'!
initializeControls
	super initializeControls.
	self addTimeControl: #time min: 0.002 "2 ms" max: 0.010 "10 ms" value: 0.005 "5 ms".
	self addFrequencyControl: #speed min: 3.0 "Hz" max: 8.0 "Hz" value: 5.0 "Hz".
	self addControl: #depth min: 0.0 max: 1.0 value: 0.1! !

!Vibrato methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:15:59'!
tick
	| d twoPi |
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	twoPi := Float twoPi.
	d := (phase sin * depth * 0.002 "2 ms" + time) * self class sampleRate.
	(phase := phase + increment) > twoPi ifTrue: [phase := phase - twoPi].
	tap setDelayIncrement: (d - tap delay) / self class blockSize.
	1 to: input size do: [:i|
		delayLine write: (input at: i).
		output at: i put: tap read]! !

!BPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:18:45'!
reset
	biquad reset! !

!BPF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 18:21:42'!
update
	super update.
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

!BPF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:04'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad write: input read: output! !

!BPF methodsFor: 'tools' stamp: 'len 3/Feb/2026 18:08:00'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #bandwidth); mode: #BP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #bandwidth;
		addAudioOutput: #setOutput:.
	^ answer! !

!BSF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:41:35'!
reset
	biquad reset! !

!BSF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 18:21:14'!
update
	super update.
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

!BSF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:12'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad write: input read: output! !

!BSF methodsFor: 'tools' stamp: 'len 3/Feb/2026 18:08:09'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #bandwidth); mode: #BS.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #bandwidth;
		addAudioOutput: #setOutput:.
	^ answer! !

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

!EQ3 methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:16'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	lowPassLow write: input read: output.
	output *= (self get: #low).
	highPassMid write: input read: aux.
	lowPassMid write: aux read: aux.
	aux *= (self get: #mid).
	output += aux.
	highPassHigh write: input read: aux.
	aux *= (self get: #high).
	output += aux! !

!HPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:18:06'!
reset
	biquad reset! !

!HPF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 18:20:20'!
update
	super update.
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

!HPF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:24'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad write: input read: output! !

!HPF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:43:13'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q); mode: #HP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutput:.
	^ answer! !

!LPF methodsFor: 'controlling' stamp: 'len 25/Jan/2026 22:16:21'!
reset
	biquad reset! !

!LPF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 18:19:58'!
update
	super update.
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

!LPF methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:29'!
tick
	output ifNil: [^ self].
	input ifNil: [output atAllPut: 0.0. ^ self].
	biquad write: input read: output! !

!LPF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:43:22'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #Q); mode: #LP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #Q;
		addAudioOutput: #setOutput:.
	^ answer! !

!Transform2x methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:27:53'!
initialize
	super initialize.
	oversampler := Polyphase13TapOversampler2x new! !

!Transform2x methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:34'!
tick
	output ifNil: [^ self]. "actually, we should process the input anyway, if available"
	input ifNil: [1 to: output size do: [:i| output at: i put: (self value: 0.0)]. ^ self].
	1 to: input size do: [:i| output at: i put: (oversampler oversampling: (input at: i) do: self)]! !

!Clipper methodsFor: 'controlling' stamp: 'len 2/Feb/2026 23:57:42'!
update
	super update.
	pregain := self get: #pregain.
	positiveClip := self get: #clip.
	negativeClip := positiveClip negated.
	postgain := self get: #postgain! !

!Clipper methodsFor: 'initialization' stamp: 'len 2/Feb/2026 23:54:49'!
initializeControls
	super initializeControls.
	self addVolumeControl: #pregain min: 0.25 max: 64.0 value: 1.0.
	self addVolumeControl: #clip min: 0.063 max: 1.0 value: 1.0.
	self addVolumeControl: #postgain min: 0.25 max: 4.0 value: 1.0! !

!Clipper methodsFor: 'processing' stamp: 'len 2/Feb/2026 23:57:46'!
value: in
	| x |
	x := in * pregain.
	x := x < negativeClip ifTrue: [negativeClip] ifFalse: [x > positiveClip ifTrue: [positiveClip] ifFalse: [x]].
	^ x * postgain! !

!Wavefolder methodsFor: 'controlling' stamp: 'len 22/Nov/2025 22:51:00'!
update
	super update.
	gain := self get: #gain.
	offset := self get: #offset! !

!Wavefolder methodsFor: 'initialization' stamp: 'len 6/Feb/2026 02:23:35'!
initializeControls
	super initializeControls.
	self addControl: #gain min: -4.0 max: 4.0 value: 1.0. "negative gain values for thru-zero"
	self addControl: #offset min: -2.0 max: 2.0 value: 0.0 "offset added to input (pre-gain) for asymmetrical folding"! !

!Wavefolder methodsFor: 'processing' stamp: 'len 20/Nov/2025 00:52:00'!
value: in
	| x ft |
	x := in.
	x := (x + offset) * gain.
	ft := ((x + 1.0) * 0.5) floor.
	x := x - (ft * 2).
	ft odd ifTrue: [x := x negated].
	^ x! !

!Wavefolder methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:42:47'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	^ answer
		addAudioInput: #setInput:;
		addControlInput: #gain;
		addControlInput: #offset;
		addAudioOutput: #setOutput:;
		yourself! !

!Korg35HPF methodsFor: 'controlling' stamp: 'len 16/Oct/2025 18:46:00'!
reset
	s1 := s2 := s3 := 0.0! !

!Korg35HPF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 02:51:08'!
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
	g := (Float pi * frequency / (self class sampleRate * 2.0)) tan. "oversampled 2x"
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

!Korg35HPF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:43:39'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #HP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutput:.
	^ answer! !

!Korg35LPF methodsFor: 'controlling' stamp: 'len 17/Oct/2025 20:13:00'!
reset
	s1 := s2 := s3 := 0.0! !

!Korg35LPF methodsFor: 'controlling' stamp: 'len 2/Feb/2026 02:38:31'!
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
	g := (Float pi * frequency / (self class sampleRate * 2.0)) tan. "oversampled 2x"
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

!Korg35LPF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:43:48'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutput:.
	^ answer! !

!Limiter methodsFor: 'initialization' stamp: 'len 20/Nov/2025 16:10:00'!
initialize
	super initialize.
	peak := 0.5! !

!Limiter methodsFor: 'processing' stamp: 'len 20/Nov/2025 16:12:00'!
value: in
	| error |
	error := in abs - peak.
	peak := (error > 0 ifTrue: [0.05] ifFalse: [0.00002]) * error + peak.
	^ in * (peak <= 1.0 ifTrue: [0.8] ifFalse: [0.8 / peak])! !

!MultiTapDelayLine methodsFor: 'as yet unclassified' stamp: 'len 26/Jan/2026 15:01:05'!
delays: delayList gains: gainList
	"For best results it's desirable that the delays are primes.
	
	MultiTapDelay new delays: #(537 691 1191) gains: #(0.07 0.07 0.07)
	
	The default in SoundPlayer:
	MultiTapDelay new delays: #(1601 7919) gains: #(0.12 0.07).
"
	self assert: delayList size = gainList size.
	delays := delayList.
	gains := gainList.
	buffer := Float32Array new: delayList max.
	position := 1! !

!MultiTapDelayLine methodsFor: 'as yet unclassified' stamp: 'len 6/Oct/2025 15:53:00'!
reset
	buffer atAllPut: 0.0! !

!MultiTapDelayLine methodsFor: 'as yet unclassified' stamp: 'len 26/Jan/2026 15:01:05'!
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
	out := out + in.
	buffer at: i put: out.
	position := position \\ buffer size.
	^ out! !

!Amp methodsFor: 'initialization' stamp: 'len 31/Jan/2026 21:50:16'!
initialize
	super initialize.
	gain := 0.0! !

!Amp methodsFor: 'initialization' stamp: 'len 2/Dec/2025 23:42:00'!
initializeControls
	super initializeControls.
	self addControl: #gain min: 0.0 max: 1.0 value: 0.0! !

!Amp methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:39'!
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

!Amp methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:56:14'!
panel
	^ ControlPanel new addVerticalSlider: (controls at: #gain)! !

!Amp methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:43:59'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInput:;
		addControlInput: #gain;
		addAudioInput: #setInputRM: label: 'RM';
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

!Balance methodsFor: 'tools' stamp: 'len 2/Feb/2026 03:12:01'!
panel
	^ ControlPanel new addKnob: (controls at: #balance)! !

!Balance methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:36:03'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'In A';
		addAudioInput: #setInputB: label: 'In B';
		addControlInput: #balance;
		addAudioOutput: #setOutputL: label: 'Out L';
		addAudioOutput: #setOutputR: label: 'Out R'.
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

!Crossfader methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:43'!
tick
	| x |
	output ifNil: [^ self].
	x := (self get: #mix) + 1.0 / 2.0.
	inputB ifNil:
		[inputA ifNil: [output atAllPut: 0.0. ^ self].
		output replaceWith: inputA.
		output *= (1.0 - x).
		^ self].
	inputA ifNil:
		[output replaceWith: inputB.
		output *= x.
		^ self].
	x = 0.0 ifTrue: [output replaceWith: inputA. ^ self].
	x = 1.0 ifTrue: [output replaceWith: inputB. ^ self].
	output replaceWith: inputA.
	output *= ((1.0 - x) / x).
	output += inputB.
	output *= x! !

!Crossfader methodsFor: 'tools' stamp: 'len 27/Jan/2026 15:19:30'!
panel
	^ ControlPanel new addKnob: (controls at: #mix)! !

!Crossfader methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:08'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'In A';
		addAudioInput: #setInputB: label: 'In B';
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

!Mixer methodsFor: 'initialization' stamp: 'len 27/Jan/2026 15:17:58'!
initializeControls
	super initializeControls.
	self addVolumeControl: #gainA value: 0.6; addVolumeControl: #gainB value: 0.6! !

!Mixer methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:47'!
tick
	| gainA gainB |
	output ifNil: [^ self].
	gainA := self get: #gainA.
	gainB := self get: #gainB.
	gainB = 0.0 ifTrue:
		[gainA = 0.0 ifTrue: [output atAllPut: 0.0. ^ self].
		output replaceWith: inputA.
		gainA = 1.0 ifFalse: [output *= gainA].
		^ self].
	gainA = 0.0 ifTrue:
		[output replaceWith: inputB.
		gainB = 1.0 ifFalse: [output *= gainB].
		^ self].
	output replaceWith: inputA.
	output *= (gainA / gainB).
	output += inputB.
	output *= gainB! !

!Mixer methodsFor: 'tools' stamp: 'len 27/Jan/2026 15:18:20'!
panel
	^ ControlPanel new
		addKnob: (controls at: #gainA);
		addKnob: (controls at: #gainB)! !

!Mixer methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:15'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'In A';
		addAudioInput: #setInputB: label: 'In B';
"		addControlInput: #modulateGainA: label: 'Gain A';
		addControlInput: #modulateGainB: label: 'Gain B';"
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

!Pan methodsFor: 'tools' stamp: 'len 27/Jan/2026 15:05:19'!
panel
	^ ControlPanel new addKnob: (controls at: #pan)! !

!Pan methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:23'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInput:;
		addControlInput: #pan;
		addAudioOutput: #setOutputL: label: 'Out L';
		addAudioOutput: #setOutputR: label: 'Out R'.
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

!StereoMatrix methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:51'!
tick
	| width balance |
	(inputA isNil or: [inputB isNil]) ifTrue: [^ self].
	(outputL isNil or: [outputR isNil]) ifTrue: [^ self].
	width := self get: #width.
	balance := self get: #balance.
	outputL replaceWith: inputA.
	outputL += inputB.
	outputL *= ((1.0 + balance) * 0.5).
	outputR replaceWith: outputL.
	aux replaceWith: inputA.
	aux -= inputB.
	aux *= ((1.0 - balance) * width * 0.5).
	outputL += aux.
	outputR -= aux! !

!StereoMatrix methodsFor: 'tools' stamp: 'len 2/Feb/2026 04:09:58'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addAudioInput: #setInputA: label: 'In A';
		addAudioInput: #setInputB: label: 'In B';
"		addControlInput: #modulateWidth: label: 'WIdth';
		addControlInput: #modulateBalance: label: 'Balance';"
		addAudioOutput: #setOutputL: label: 'Out L';
		addAudioOutput: #setOutputR: label: 'Out R'.
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

!Attenuator methodsFor: 'initialization' stamp: 'len 15/Jan/2026 20:31:05'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: 0.0 max: 1.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!Attenuator methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:16:57'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #output: with: value * (self get: #amount). value := 0.0]! !

!Attenuator methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:53:48'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!Attenuator methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:36:40'!
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

!Attenuverter methodsFor: 'initialization' stamp: 'len 15/Jan/2026 20:31:55'!
initializeControls
	super initializeControls.
	(self addControl: #amount min: -1.0 max: 1.0 value: 0.0) printer: [:x| (x * 100.0) rounded printString, '%']! !

!Attenuverter methodsFor: 'processing' stamp: 'len 2/Feb/2026 16:17:06'!
tick
	value = 0.0 ifFalse: [self triggerEvent: #output: with: value * (self get: #amount). value := 0.0]! !

!Attenuverter methodsFor: 'tools' stamp: 'len 27/Jan/2026 14:53:58'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!Attenuverter methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:36:47'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #input: label: 'In';
		addControlInput: #amount;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

!LFO methodsFor: 'accessing' stamp: 'len 20/Jan/2026 15:56:54'!
bipolar
	^ bipolar! !

!LFO methodsFor: 'accessing' stamp: 'len 20/Jan/2026 15:57:12'!
bipolar: aBoolean
	bipolar := aBoolean.
	self changed! !

!LFO methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:41:39'!
mode
	^ mode! !

!LFO methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:41:44'!
mode: aSymbol
	mode := aSymbol.
	self changed! !

!LFO methodsFor: 'accessing' stamp: 'len 25/Nov/2025 18:59:00'!
phase
	^ phase! !

!LFO methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:41:03'!
shape
	^ shape! !

!LFO methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:41:49'!
shape: aSymbol
	shape := aSymbol.
	self changed! !

!LFO methodsFor: 'accessing' stamp: 'len 22/Jan/2026 15:52:50'!
sync
	^ sync! !

!LFO methodsFor: 'accessing' stamp: 'len 22/Jan/2026 15:52:54'!
sync: aBoolean
	sync := aBoolean.
	self changed! !

!LFO methodsFor: 'controlling' stamp: 'len 26/Oct/2025 14:16:00'!
gateOff
	heldValue := nil! !

!LFO methodsFor: 'controlling' stamp: 'len 22/Jan/2026 15:57:02'!
gateOn
	heldValue := nil.
	mode = #trig ifTrue: [self reset]! !

!LFO methodsFor: 'controlling' stamp: 'len 22/Jan/2026 16:03:40'!
reset
	phase := offset.
	random seed: seed + offset hash.
	randomValue := random next! !

!LFO methodsFor: 'controlling' stamp: 'len 22/Jan/2026 16:24:41'!
setBPM: aNumber
	bpm := aNumber! !

!LFO methodsFor: 'controlling' stamp: 'len 22/Jan/2026 15:06:19'!
update
	super update.
	speed := (self get: #speed) / self class controlRate.
	offset := self get: #offset.
	mode = #hold ifFalse: [heldValue := nil]! !

!LFO methodsFor: 'initialization' stamp: 'len 22/Jan/2026 16:04:46'!
initialize
	super initialize.
	shape := #sine.
	bipolar := true.
	sync := false.
	mode := #free.
	speed := 0.001.
	offset := 0.0.
	seed := DateAndTime nanosecondsTick \\ 16rFFFFFFFF.
	random := Random seed: seed.
	self reset! !

!LFO methodsFor: 'initialization' stamp: 'len 19/Jan/2026 19:20:12'!
initializeControls
	super initializeControls.
	self addSpeedControl: #speed value: 0.1.
	self addControl: #offset min: 0.0 max: 0.999 value: 0.0! !

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

!LFO methodsFor: 'serialization' stamp: 'len 5/Feb/2026 15:51:56'!
asJsonWithBuffers: aList
	^ (super asJsonWithBuffers: aList)
		at: #mode put: mode;
		at: #bipolar put: bipolar;
		yourself! !

!LFO methodsFor: 'serialization' stamp: 'len 5/Feb/2026 15:53:26'!
readFromJson: json buffers: aList
	super readFromJson: json buffers: aList.
	mode := (json at: #mode) asSymbol.
	bipolar := json at: #bipolar! !

!LFO methodsFor: 'tools' stamp: 'len 22/Jan/2026 16:18:30'!
panel
	^ ControlPanel new
		addMorph: (PluggableChoiceMorph new options: #(sine square rise fall random); model: self; getter: #shape; setter: #shape:);
		addMorph: (PluggableChoiceMorph new options: #(free trig hold); model: self; getter: #mode; setter: #mode:);
		addMorph: (PluggableToggleMorph new model: self; getter: #sync; setter: #sync:; label: '♩')
! !

!LFO methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:36:56'!
patchable
	| answer display row |
	answer := PatchableMorph new model: self.
	display := LFOControlMorph new lfo: self.
	row := LinearLayoutMorph newRow color: Color transparent.
	row addMorph: (PluggableToggleMorph new model: self; getter: #bipolar; setter: #bipolar:; label: '±'); addMorph: display.
	answer body addMorph: row; addMorph: self panel.
	answer
		addControlInput: #speed;
		addControlOutput: #output: label: 'Out'.
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

!LogAttenuator methodsFor: 'tools' stamp: 'len 3/Feb/2026 18:03:22'!
panel
	^​ ControlPanel new addKnob: (controls at: #amount)! !

!LogAttenuator methodsFor: 'tools' stamp: 'len 3/Feb/2026 18:03:22'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self panel.
	answer
		addControlInput: #input: label: 'In';
		addControlInput: #amount;
		addControlOutput: #output: label: 'Out'.
	^ answer! !

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

!MoogLPF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:33'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1'.
	^ answer! !

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

!MoogLadder methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:38'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance); mode: #LP.
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP4: label: 'LP4';
		addAudioOutput: #setOutputLP3: label: 'LP3';
		addAudioOutput: #setOutputLP2: label: 'LP2';
		addAudioOutput: #setOutputLP1: label: 'LP1'.
	^ answer! !

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

!OberheimSVF methodsFor: 'tools' stamp: 'len 2/Feb/2026 15:44:43'!
patchable
	| answer display |
	answer := PatchableMorph new model: self.
	display := FilterControlMorph new frequency: (controls at: #frequency); controlY: (controls at: #resonance).
	answer body addMorph: display.
	answer
		addAudioInput: #setInput:;
		addControlInput: #frequency;
		addControlInput: #resonance;
		addAudioOutput: #setOutputLP: label: 'LP';
		addAudioOutput: #setOutputHP: label: 'HP';
		addAudioOutput: #setOutputBP: label: 'BP';
		addAudioOutput: #setOutputBS: label: 'BS'.
	^ answer! !

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

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:58:32'!
addHorizontalSlider: aControl
	self addMorph: (SliderControlMorph control: aControl) transpose! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:49:48'!
addKnob: aControl
	self addMorph: (KnobControlMorph control: aControl)! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:43:54'!
addKnob: aControl label: labelString
	self addMorph: ((KnobControlMorph control: aControl) withLabel: labelString)! !

!ControlPanel methodsFor: 'building' stamp: 'len 27/Jan/2026 14:58:36'!
addVerticalSlider: aControl
	self addMorph: (SliderControlMorph control: aControl)! !

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

!ControlPanel methodsFor: 'initialization' stamp: 'len 25/Nov/2025 00:50:00'!
initialize
	super initialize.
	layoutObject := RowLayout new gap: self defaultGap.
	color := Color transparent! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:05:52'!
addPanel
	| answer |
	answer := ControlPanel new.
"	answer := LinearLayoutMorph newRow gap: 12; color: Color transparent."
	self addMorph: answer.
	^ answer! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 24/Jan/2026 14:29:23'!
defaultBorderColor
	^ Color lightGray! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 24/Jan/2026 14:29:34'!
defaultBorderWidth
	^ 1! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 24/Jan/2026 14:28:41'!
defaultColor
	^ Color fromHexString: '#141414'! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 24/Jan/2026 14:29:08'!
defaultGap
	^ 10! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 24/Jan/2026 14:28:55'!
defaultPadding
	^ 4 @ 4! !

!PatchableBodyMorph methodsFor: 'as yet unclassified' stamp: 'len 27/Jan/2026 19:19:39'!
drawOn: aCanvas
	| rect |
	rect := self localBounds.
	aCanvas
		fillRectangle: rect color: color cornerRadius: 8.0;
		frameRectangle: rect borderWidth: borderWidth  color: borderColor cornerRadius: 8.0! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 7/Jan/2026 14:25:54'!
setBPM
	self request: 'BPM' initialAnswer: model bpm printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| model bpm: s asNumber]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 7/Jan/2026 14:26:25'!
setLPB
	self request: 'LPB' initialAnswer: model lpb printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| model lpb: s asNumber]! !

!TrackerWindow methodsFor: 'actions' stamp: 'len 22/Jan/2026 17:48:25'!
toggleLowerPane
	lowerPane visible: lowerPane visible not.
	patchEditor layoutSpec proportionalHeight: (lowerPane visible ifTrue: [0.38] ifFalse: [1.0])! !

!TrackerWindow methodsFor: 'events' stamp: 'len 22/Jan/2026 17:48:38'!
keyStroke: anEvent
	anEvent isSpace ifTrue: [model togglePlay. ^ true].
	anEvent commandAltKeyPressed ifTrue:
		[anEvent keyCharacter = $f ifTrue: [anEvent wasHandled: true. ^ self setBPM].
		anEvent keyCharacter = $b ifTrue: [anEvent wasHandled: true. ^ self setLPB].
		anEvent keyCharacter = $j ifTrue: [anEvent wasHandled: true. ^ self toggleLowerPane]].
	^ super keyStroke: anEvent! !

!TrackerWindow methodsFor: 'initialization' stamp: 'len 22/Jan/2026 17:40:42'!
buildMorphicWindow
	| lowerLeftPane sequencerScroller patternEditorScroller bar |
	patchEditor := PatchEditorMorph new setTracker: model.
	meter := MultitrackMeterMorph new setTracker: model.
	sequencer := SequencerMorph new setTracker: model.
	patternEditor := PatternEditorMorph new setTracker: model.
	bar := TransportBarMorph new setTracker: model.
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
		addMorph: patchEditor proportionalHeight: 0.38;
		addMorph: lowerPane proportionalHeight: 1.0 - 0.38! !

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

!PluggableChoiceMorph methodsFor: 'drawing' stamp: 'len 27/Jan/2026 19:19:39'!
drawOn: aCanvas
	| string |
"	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color;
		drawString: control value asString at: 4@0 font: font color: color
"
	string := (model perform: getter) asString.
	aCanvas
		frameRectangle: (0@0 extent: self minimumExtent) borderWidth: 1 color: color cornerRadius: 6;
"		fillRoundRectangle: ((0@0 extent: self minimumExtent) insetBy: 1) color: Color black radius: 6;"
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

!PluggableChoiceMorph methodsFor: 'initialization' stamp: 'len 19/Jan/2026 18:30:18'!
defaultFontSize
	^ 14! !

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

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 18:35:12'!
defaultFontSize
	^ 14! !

!PluggableToggleMorph methodsFor: 'initialization' stamp: 'len 21/Jan/2026 23:30:32'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: self defaultFontSize.
	extent := self minimumExtent! !

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

!ControlMorph methodsFor: 'accessing' stamp: 'len 24/Nov/2025 19:17:00'!
defaultFontSize
	^ 14! !

!ControlMorph methodsFor: 'accessing' stamp: 'len 19/Nov/2025 19:08:00'!
inactiveColor
	^ self hasKeyboardFocus ifTrue: [Color veryLightGray] ifFalse: [Color lightGray]! !

!ControlMorph methodsFor: 'building' stamp: 'len 27/Jan/2026 10:25:08'!
withLabel: aString
	^ LinearLayoutMorph newColumn
		color: Color transparent;
		gap: 4;
		addMorph: self;
		addMorph: (LabelMorph contents: aString fontSize: self defaultFontSize)! !

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

!ControlMorph methodsFor: 'initialization' stamp: 'len 20/Nov/2025 21:51:00'!
initialize
	super initialize.
	self control:​ Control new.
	color := self defaultColor! !

!ControlMorph methodsFor: 'private' stamp: 'len 27/Jan/2026 16:34:48'!
adjustControlBy: aNumber
	control basePosition: control basePosition + aNumber.
	control apply.
	self redrawNeeded.
	self wantsBalloon ifTrue: [self showBalloon: control printedBaseValueWithLabel]! !

!ControlMorph methodsFor: 'drawing' stamp: 'len 14/Jan/2026 16:57:23'!
drawFocusIndicatorOn: aCanvas
	aCanvas fillRectangle: self localBounds color: (Color redCathode alpha: 0.3)

"	| d h w |
	w := extent x.
	h := extent y - 1.
	d := 4.0.
	aCanvas strokeWidth: 2 color: Color redCathode do:
		[aCanvas
			moveTo: 0 @ d; lineTo: 0 @ 0; lineTo: d @ 0;
			moveTo: w - d @ 0; lineTo: w @ 0; lineTo: w @ d;
			moveTo: w @ (h - d); lineTo: w @ h; lineTo: w - d @ h;
			moveTo: 0 @ (h - d); lineTo: 0 @ h; lineTo: d @ h]"! !

!ControlMorph class methodsFor: 'instance creation' stamp: 'len 4/Nov/2025 15:49:00'!
control: aControl
	^ self new control: aControl! !

!KnobControlMorph methodsFor: 'initialization' stamp: 'len 18/Nov/2025 20:01:00'!
defaultExtent
	^ `36@36`! !

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

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 20/Jan/2026 15:00:41'!
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
	aCanvas line: basePos @ 4 to: basePos @ (h - 4) width: 2 color: color! !

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 14/Oct/2025 15:55:00'!
drawOn: aCanvas
	self isHorizontal ifTrue: [self drawHorizontalOn: aCanvas] ifFalse: [self drawVerticalOn: aCanvas]! !

!SliderControlMorph methodsFor: 'drawing' stamp: 'len 20/Jan/2026 15:03:11'!
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
	aCanvas line: 4 @ basePos to: w - 4 @ basePos width: 2 color: color! !

!SliderControlMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 15:20:31'!
defaultExtent
	^ `22@36`! !

!SliderControlMorph methodsFor: 'initialization' stamp: 'len 20/Jan/2026 14:47:24'!
transpose
	self morphExtent: extent y @ extent x! !

!SliderControlMorph methodsFor: 'testing' stamp: 'len 20/Jan/2026 14:44:53'!
isHorizontal
	^ extent x > extent y! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 2/Dec/2025 18:31:00'!
color2: aColor
	1 to: colors size do: [:i| colors at: i put: (color mixed:  (i - 1.0) / 6.0 with: aColor)]! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 2/Dec/2025 14:26:00'!
defaultExtent
	^ `128@64`! !

!SupersawControlMorph methodsFor: 'initialization' stamp: 'len 2/Dec/2025 18:33:00'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	colors := Array new: 7.
	self color2: PatchMorph waveformColor2.
	phases := {0.0. 0.1. 0.2. 0.3. 0.4. 0.5. 0.6}.
	self control: (Control min: 0.0 max: 1.0 value: 0.0)! !

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

!TextControlMorph methodsFor: 'accessing' stamp: 'len 1/Dec/2025 15:21:00'!
control: aControl
	super control: aControl.
	contents := control printedBaseValue! !

!TextControlMorph methodsFor: 'dependency mechanism' stamp: 'len 1/Dec/2025 12:10:00'!
update: anObject
	super update: anObject.
	contents := control printedBaseValue.
	self morphExtent: extent "will grow if necessary, depending on minimumExtent"! !

!TextControlMorph methodsFor: 'drawing' stamp: 'len 19/Jan/2026 20:08:35'!
drawOn: aCanvas
"	aCanvas roundRect: (0@0 extent: self minimumExtent) color: color radius: 6."
"	self hasKeyboardFocus ifTrue: [aCanvas fillRectangle: self localBounds color: (Color redCathode alpha: 0.3)]."
	aCanvas drawString: contents at: 3 @ 0 font: font color: color.
	self hasKeyboardFocus ifTrue:
		[| y |
		y := font ascent + 2.
		aCanvas line: 3 @ y to: (font widthOfString: contents) + 3 @ y width: 2 color: color]
"	self hasKeyboardFocus ifTrue: [self drawFocusIndicatorOn: aCanvas]"! !

!TextControlMorph methodsFor: 'geometry' stamp: 'len 1/Dec/2025 18:44:00'!
minimumExtent
	^ (font widthOfString: contents) + 6 @ font lineSpacing! !

!TextControlMorph methodsFor: 'halos and balloon help' stamp: 'len 16/Jan/2026 18:59:07'!
wantsBalloon
	"This control doesn't need balloon text because we're already showing the value in the control itself."
	^ false! !

!TextControlMorph methodsFor: 'initialization' stamp: 'len 1/Dec/2025 15:17:00'!
defaultExtent
	^ 24 @ 24! !

!TextControlMorph methodsFor: 'initialization' stamp: 'len 1/Dec/2025 12:10:00'!
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

!VariableWaveControlMorph methodsFor: 'drawing' stamp: 'len 17/Jan/2026 16:02:46'!
drawOn: aCanvas
	| step stepX t x y h steps |
	steps := 64.
	step := 1.0 / steps.
	stepX := self morphWidth - 8.0 * step.
	h := self morphHeight - 6.0 / 2.0.
	t := 0.0.
	y := 1.0 - (self waveAt: t) * h + 3.0.
	x := 4.0.
	aCanvas strokeWidth: 1.5 color: color do:
		[aCanvas moveTo: x @ y.
		steps timesRepeat:
			[t := t + step.
			y := 1.0 - (self waveAt: t \\ 1.0) * h + 3.0.
			x := x + stepX.
			aCanvas lineTo: x @ y]]! !

!VariableWaveControlMorph methodsFor: 'drawing' stamp: 'len 16/Jan/2026 22:11:46'!
waveAt: aNumber
	^ wave value: aNumber value: currentShape! !

!VariableWaveControlMorph methodsFor: 'initialization' stamp: 'len 23/Sep/2025 00:20:00'!
defaultExtent
	^ `128@64`! !

!VariableWaveControlMorph methodsFor: 'initialization' stamp: 'len 16/Jan/2026 16:53:16'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	currentShape := 0.0! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 17/Jan/2026 00:19:57'!
defaultExtent
	^`192@128`! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 16/Jan/2026 16:53:46'!
initialize
	super initialize.
	waves := #().
	currentPosition := 0.0.
	color := PatchMorph waveformColor! !

!WavetableControlMorph methodsFor: 'initialization' stamp: 'len 3/Oct/2025 16:53:00'!
waves: anArray
	waves := anArray.
	self redrawNeeded! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 16/Jan/2026 16:53:46'!
drawFlatOn: aCanvas
	| n waveSize w h j stepX stepY y0 alphaColor waveIndex |
	(n := waves size) > 0 ifFalse: [^ self].
	waveSize := waves first size.
	waveIndex := (currentPosition * (n - 1) + 1) asInteger.
	j := n - 1 * waveSize + 1.
	w := self morphWidth.
	h := self morphHeight.
	stepX := w / waveSize.
	stepY := h / 2.0 / n.
	y0 := 0.0.
	alphaColor := color alpha: 0.06.
	n to: 1 by: -1 do: [:i| | x y waveColor |
		x := 0.0.
		y := 1.0 - ((waves at: i) at: 1) / 4.0 * h.
		waveColor := waveIndex = i ifTrue: [color] ifFalse: [alphaColor].
		2 to: waveSize do: [:k|
			| x2 y2 |
			y2 := 1.0 - ((waves at: i) at: k) / 4.0 * h.
			x2 := x + stepX.
			aCanvas line: x@(y+y0) to: x2@(y2+y0) width: 1 color: waveColor.
			x := x2.
			y := y2].
		j := j - waveSize.
		y0 := y0 + stepY]! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 17/Jan/2026 00:19:25'!
drawIsometricOn: aCanvas
	| n waveSize w h stepWaveX stepWaveY j stepX stepY x0 y0 alphaColor strokeWidth waveIndex |
	(n := waves size) > 0 ifFalse: [^ self].
	waveSize := waves first size.
	waveIndex := (currentPosition * (n - 1) + 1) asInteger.
	w := self morphWidth.
	h := self morphHeight.
	stepWaveX := w / 2.0 / waveSize.
	stepWaveY := h / 2.0 / waveSize.
	j := n - 1 * waveSize + 1.
	stepX := w / 2.0 / n.
	stepY := h / 2.0 / n.
	x0 := w / 2.0.
	y0 := 0.0.
	alphaColor := (color mixed: 0.5 with: Color white) alpha: 0.2.
	n to: 1 by: -1 do: [:i| | x y y1 waveColor |
		x := x0.
		y1 := y0.
		y := 1.0 - ((waves at: i) at: 1) / 4.0 * h + y1.
		i = waveIndex ifTrue: [waveColor := color. strokeWidth := 1.5] ifFalse: [waveColor := alphaColor. strokeWidth := 1].
		aCanvas strokeWidth: strokeWidth color: waveColor do:
			[aCanvas moveTo: x @ y.
			2 to: waveSize do: [:k|
				| x2 y2 |
				y1 := y1 + (stepWaveY/5.0).
				y2 := 1.0 - ((waves at: i) at: k) / 5.0 * h + y1.
				x2 := x + stepWaveX.
				aCanvas lineTo: x2@y2.
				x := x2.
				y := y2]].
		j := j - waveSize.
		x0 := x0 - stepX.
		y0 := y0 + stepY]! !

!WavetableControlMorph methodsFor: 'drawing' stamp: 'len 13/Jan/2026 18:34:06'!
drawOn: aCanvas
	self drawIsometricOn: aCanvas! !

!WavetableControlMorph methodsFor: 'dependency mechanism' stamp: 'len 16/Jan/2026 16:53:46'!
update: anObject
	super update: anObject.
	currentPosition := control value! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 16:38:50'!
attack: aControl
	attack removeDependent: self.
	attack := aControl.
	aControl addDependent: self! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 23/Jan/2026 22:14:59'!
defaultExtent
	^ 96 @ 64! !

!EGControlMorph methodsFor: 'initialization' stamp: 'len 18/Jan/2026 18:34:08'!
initialize
	super initialize.
	color := PatchMorph envelopeColor! !

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

!XYControlMorph methodsFor: 'halos and balloon help' stamp: 'len 27/Jan/2026 19:29:29'!
balloonText
	^ controlX printedBaseValueWithLabel, ', ', controlY printedBaseValueWithLabel! !

!XYControlMorph methodsFor: 'initialization' stamp: 'len 4/Dec/2025 16:42:29'!
defaultExtent
	^ `128@64`! !

!XYControlMorph methodsFor: 'private' stamp: 'len 27/Jan/2026 16:35:47'!
adjustXBy: aNumber
	controlX basePosition: controlX basePosition + aNumber.
	controlX apply.
	self redrawNeeded.
	self showBalloon: controlX printedBaseValueWithLabel! !

!XYControlMorph methodsFor: 'private' stamp: 'len 27/Jan/2026 16:35:52'!
adjustYBy: aNumber
	controlY basePosition: controlY basePosition + aNumber.
	controlY apply.
	self redrawNeeded.
	self showBalloon: controlY printedBaseValueWithLabel! !

!FilterControlMorph methodsFor: 'accessing' stamp: 'len 6/Dec/2025 14:26:58'!
frequency: aControl
	self controlX: aControl! !

!FilterControlMorph methodsFor: 'accessing' stamp: 'len 28/Jan/2026 16:55:14'!
mode: aSymbol
	mode := aSymbol! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 4/Feb/2026 00:37:58'!
drawBPOn: aCanvas frequency: freq bandwidth: bandwidth color: curveColor fill: aBoolean
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
	aBoolean ifTrue:
		[aCanvas fillColor: (Color white alpha: 0.15) do:
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

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 4/Feb/2026 00:38:38'!
drawBSOn: aCanvas frequency: freq bandwidth: bandwidth color: aColor fill: aBoolean
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
	aBoolean ifTrue:
		[aCanvas fillColor: (Color white alpha: 0.15) do:
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

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 30/Jan/2026 15:56:08'!
drawDecadesOn: aCanvas
	| h lineColor w x |
	w := self morphWidth.
	h := self morphHeight.
	lineColor := Color gray.
	#(100 1000 10000) do: [:f|
		x := w * (controlX positionFromValue: f).
		aCanvas line: x @ 0 to: x @ h width: 1.0 color: lineColor].
	lineColor := Color darkGray.
	#(50 200 500 2000 5000) do: [:f|
		x := w * (controlX positionFromValue: f).
		aCanvas line: x @ 0 to: x @ h width: 1.0 color: lineColor]! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 1/Feb/2026 01:32:13'!
drawHPOn: aCanvas frequency: freq Q: Q color: aColor fill: aBoolean
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
	aBoolean ifTrue:
		[aCanvas fillColor: self highpassColor do:
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

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 1/Feb/2026 01:32:03'!
drawLPOn: aCanvas frequency: freq Q: Q color: aColor fill: aBoolean
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
	aBoolean ifTrue:
		[aCanvas fillColor: self lowpassColor do:
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

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 4/Feb/2026 00:32:42'!
drawOn: aCanvas
	| prevClipRect |
	self drawDecadesOn: aCanvas.
	prevClipRect := aCanvas clipRect.
	aCanvas setClipRect: ((self externalizeBoundsToWorld: self localBounds) intersect: prevClipRect).
	"draw the base values first, unless it's not modulated:"
	(controlX modulation = 0.0 and: [controlY modulation = 0.0]) ifFalse:
		[self drawOn: aCanvas frequency: controlX basePosition Y: controlY basePosition color: baseColor fill: false].
	"then the modulated values:"
	self drawOn: aCanvas frequency: controlX modulatedPosition Y: controlY modulatedPosition color: color fill: true.
	aCanvas setClipRect: prevClipRect! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 4/Feb/2026 00:35:14'!
drawOn: aCanvas frequency: freq Y: yParameter color: aColor fill: aBoolean
	mode = #LP ifTrue: [^ self drawLPOn: aCanvas frequency: freq Q: yParameter color: aColor fill: aBoolean].
	mode = #HP ifTrue: [^ self drawHPOn: aCanvas frequency: freq Q: yParameter color: aColor fill: aBoolean].
	mode = #BP ifTrue: [^ self drawBPOn: aCanvas frequency: freq bandwidth: yParameter color: aColor fill: aBoolean].
	mode = #BS ifTrue: [^ self drawBSOn: aCanvas frequency: freq bandwidth: yParameter color: aColor fill: aBoolean].
	self drawHPOn: aCanvas frequency: freq Q: yParameter color: aColor fill: aBoolean.
	self drawLPOn: aCanvas frequency: freq Q: yParameter color: aColor fill: aBoolean! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 1/Feb/2026 01:38:28'!
highpassColor
	^ `(Color okl: 0.6 c: 0.25 h: 250.0) alpha: 0.15`! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 1/Feb/2026 01:39:13'!
lowpassColor
	^ `(Color okl: 0.6 c: 0.25 h: 20.0) alpha: 0.15`! !

!FilterControlMorph methodsFor: 'drawing' stamp: 'len 28/Jan/2026 16:14:59'!
notchWidth
	^ 80.0! !

!FilterControlMorph methodsFor: 'initialization' stamp: 'len 28/Jan/2026 17:09:41'!
defaultExtent
	^ `144@96`! !

!FilterControlMorph methodsFor: 'initialization' stamp: 'len 28/Jan/2026 15:34:38'!
initialize
	super initialize.
	color := Color white.
	baseColor := Color lightGray.
	lp := hp := bp := bs := false! !

!FilterControlMorph methodsFor: 'private' stamp: 'len 4/Feb/2026 00:40:14'!
adjustYBy: aNumber
	super adjustYBy: (mode = #BP ifTrue: [aNumber negated] ifFalse: [aNumber])! !

!LFOControlMorph methodsFor: 'accessing' stamp: 'len 19/Jan/2026 18:57:51'!
lfo: anLFO
	lfo removeDependent: self.
	lfo := anLFO.
	lfo addDependent: self.
	self controlY: (lfo controls at: #speed).
	self controlX: (lfo controls at: #offset)! !

!LFOControlMorph methodsFor: 'drawing' stamp: 'len 22/Jan/2026 16:16:27'!
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

!LFOControlMorph methodsFor: 'drawing' stamp: 'len 19/Jan/2026 18:56:05'!
waveAt: t
	| v |
	v := lfo shape.
	v == #sine ifTrue: [^ (t * Float twoPi) sin].
	v == #square ifTrue: [^ t < 0.5 ifTrue: [1.0] ifFalse: [-1.0]].
	v == #rise ifTrue: [^ (t - 0.5) * 2.0].
	v == #fall ifTrue: [^ (0.5 - t) * 2.0].
	self notYetImplemented! !

!LFOControlMorph methodsFor: 'initialization' stamp: 'len 21/Jan/2026 23:21:48'!
defaultExtent
	^ `144@64`! !

!LFOControlMorph methodsFor: 'initialization' stamp: 'len 28/Jan/2026 15:32:35'!
initialize
	super initialize.
	color := PatchMorph lfoColor.
	currentPhase := 0.0.
	self lfo: LFO new! !

!LFOControlMorph methodsFor: 'stepping' stamp: 'len 1/Dec/2025 18:05:00'!
step
	currentPhase := lfo phase.
	self redrawNeeded! !

!LFOControlMorph methodsFor: 'stepping' stamp: 'len 2/Dec/2025 16:48:00'!
stepTime
	^ 100! !

!LFOControlMorph methodsFor: 'stepping' stamp: 'len 25/Nov/2025 18:58:00'!
wantsSteps
	^ true! !

!LFOControlMorph methodsFor: 'private' stamp: 'len 6/Dec/2025 14:31:24'!
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

!PinMorph methodsFor: 'accessing' stamp: 'len 5/Feb/2026 16:06:16'!
model
	^ self patchableOwner model! !

!PinMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 22:02:00'!
patch
	^ self firstOwnerSuchThat: [:m| m isKindOf: PatchMorph]! !

!PinMorph methodsFor: 'accessing' stamp: 'len 5/Feb/2026 16:05:46'!
patchableOwner
	^ self firstOwnerSuchThat: [:m| m isKindOf: PatchableMorph]! !

!PinMorph methodsFor: 'accessing' stamp: 'len 18/Nov/2025 18:08:00'!
radius
	^ extent x / 5.0! !

!PinMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 15:51:00'!
selector
	^ selector! !

!PinMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 15:51:00'!
selector: aSymbol
	selector := aSymbol! !

!PinMorph methodsFor: 'accessing' stamp: 'len 26/Nov/2025 15:27:00'!
voltage
	^ voltage! !

!PinMorph methodsFor: 'accessing' stamp: 'len 26/Nov/2025 15:57:00'!
voltage: aNumber
	voltage := aNumber.
	self redrawNeeded! !

!PinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 16:26:00'!
connections
	^ connections! !

!PinMorph methodsFor: 'connections' stamp: 'len 17/Nov/2025 22:46:00'!
isConnected
	^ connections notEmpty! !

!PinMorph methodsFor: 'connections' stamp: 'len 27/Nov/2025 18:15:00'!
uninstallDisconnectedSignals
	^ self! !

!PinMorph methodsFor: 'drawing' stamp: 'len 25/Jan/2026 19:50:16'!
drawOn: aCanvas
	voltage > 0.01
		ifTrue:
			[| bc fc bw |
			voltage > 1.0 ifTrue: [fc := bc := Color roseCathode] ifFalse: [fc := color alpha: voltage sqrt. bc := color].
			bw := self borderWidth + ((voltage sqrt min: 1.0) * 2.0).
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

!PinMorph methodsFor: 'initialization' stamp: 'len 17/Nov/2025 22:17:00'!
defaultExtent
	^ 24 @ 24! !

!PinMorph methodsFor: 'initialization' stamp: 'len 26/Nov/2025 15:10:00'!
initialize
	super initialize.
	color := self defaultColor.
	connections := #().
	focused := false.
	voltage := 0.0! !

!PinMorph methodsFor: 'stepping' stamp: 'len 8/Dec/2025 22:51:28'!
step
	voltage > 0.01 ifTrue: [voltage := voltage * 0.5. self redrawNeeded]! !

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

!InputPinMorph methodsFor: 'drawing' stamp: 'len 26/Nov/2025 18:27:00'!
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

!AudioInputPinMorph methodsFor: 'accessing' stamp: 'len 31/Jan/2026 16:35:51'!
balloonText
	voltage > 0.0001 ifFalse: [^ self name].
	^ self name, ' (', voltage linearToDecibelsFSPrintString, ')'! !

!AudioInputPinMorph methodsFor: 'connections' stamp: 'len 31/Jan/2026 19:05:55'!
uninstallDisconnectedSignals
	self isConnected ifFalse: [self voltage:​ 0.0. self model perform: selector with: nil]! !

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

!ControlInputPinMorph methodsFor: 'drawing' stamp: 'len 21/Nov/2025 18:46:00'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 1.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: extent x @ y₀; lineTo: x₀ + r @ y₀; lineTo: x₀ + r @ (y₀ - r); lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ + r @ (y₀ + r); lineTo: x₀ + r @ y₀

"triangle:
	| r x₀ y₀ |
	r := self radius.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: extent x @ y₀; lineTo: x₀ + r @ y₀; lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ + r @ y₀"! !

!ControlInputPinMorph methodsFor: 'dropping/grabbing' stamp: 'len 19/Jan/2026 19:31:19'!
wantsDroppedMorph: aMorph event: evt
	^ (aMorph isKindOf: ConnectorMorph) and: [(aMorph source isKindOf: ControlOutputPinMorph) and: [aMorph source arity >= self arity]]! !

!OutputPinMorph methodsFor: 'accessing' stamp: 'len 26/Nov/2025 18:25:00'!
voltage: aNumber
	super voltage:​ aNumber.
	connections do: [:each| each voltage: aNumber].
"	wires do: [:each| each redrawNeeded]"! !

!OutputPinMorph methodsFor: 'connections' stamp: 'len 26/Nov/2025 18:25:00'!
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

!OutputPinMorph methodsFor: 'drawing' stamp: 'len 26/Nov/2025 18:27:00'!
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

!AudioOutputPinMorph methodsFor: 'accessing' stamp: 'len 31/Jan/2026 16:36:01'!
balloonText
	voltage > 0.0001 ifFalse: [^ self name].
	^ self name, ' (', voltage linearToDecibelsFSPrintString, ')'! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 26/Nov/2025 18:12:00'!
installConnectionTo: anInput
	self model perform: selector with: buffer. "perhaps it's already set, unless this is the first connection"
	anInput model perform: anInput selector with: buffer! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 3/Jan/2026 14:45:51'!
uninstallConnectionTo: anInput
	self patch ifNotNil: [:p| p scheduleRecompute]

"	anInput model perform: anInput selector with: nil.
	connections isEmpty ifTrue: [self model perform: selector with: nil]"! !

!AudioOutputPinMorph methodsFor: 'connections' stamp: 'len 31/Jan/2026 19:06:03'!
uninstallDisconnectedSignals
	self isConnected ifFalse: [self voltage:​ 0.0. self model perform: selector with: nil]! !

!AudioOutputPinMorph methodsFor: 'initialization' stamp: 'len 7/Dec/2025 00:22:35'!
initialize
	super initialize.
	buffer := Float32Array new: Module blockSize! !

!AudioOutputPinMorph methodsFor: 'stepping' stamp: 'len 31/Jan/2026 19:03:27'!
step
	self isConnected ifTrue: [self voltage:​ (buffer at: 1) abs].
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

!ControlOutputPinMorph methodsFor: 'drawing' stamp: 'len 21/Nov/2025 18:54:00'!
drawShapeOn: aCanvas
	| r x₀ y₀ |
	r := self radius - 1.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: 0 @ y₀; lineTo: x₀ - r @ y₀; lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ + r @ (y₀ - r); lineTo: x₀ + r @ (y₀ + r); lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ - r @ y₀

"triangle:
	| r x₀ y₀ |
	r := self radius.
	x₀ := extent x / 2.0.
	y₀ := extent y / 2.0.
	aCanvas moveTo: 0 @ y₀; lineTo: x₀ - r @ y₀; lineTo: x₀ - r @ (y₀ + r); lineTo: x₀ + r @ y₀; lineTo: x₀ - r @ (y₀ - r); lineTo: x₀ - r @ y₀"! !

!ControlOutputPinMorph methodsFor: 'stepping' stamp: 'len 25/Jan/2026 17:15:19'!
startStepping
	self model when: selector send: #voltage: to: self.
	super startStepping! !

!ScrollerMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 15:31:15'!
drawOn: aCanvas
"	aCanvas fillRectangle: self localBounds color: Color black"! !

!ScrollerMorph methodsFor: 'event handling testing' stamp: 'len 28/Dec/2025 22:33:15'!
handlesMouseScroll: aMouseScrollEvent
	^ true! !

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

!ZoomerMorph methodsFor: 'event handling testing' stamp: 'len 22/Nov/2025 11:43:00'!
allowsMorphDrop
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

!ZoomerMorph methodsFor: 'events' stamp: 'len 14/Jan/2026 12:30:09'!
mouseScroll: aMouseScrollEvent localPosition: localEventPosition
	aMouseScrollEvent commandAltKeyPressed ifTrue:
		[| factor |
		aMouseScrollEvent direction = #down ifTrue: [factor := 1.1] ifFalse: [aMouseScrollEvent direction = #up ifTrue: [factor := 0.9] ifFalse: [^ self]].
		self submorphsDo: [:each| each scaleBy: factor around: localEventPosition].
		^ self].
	(aMouseScrollEvent rawMacOptionKeyPressed or: [aMouseScrollEvent controlKeyPressed]) ifTrue:
		[| step |
		aMouseScrollEvent delta ifNotNil: [:aPoint| self submorphsDo: [:each| each translateBy: aPoint x negated / 2.0 @ (aPoint y / 2.0)]. ^ self].
		aMouseScrollEvent direction = #up ifTrue: [step := 0@1].
		aMouseScrollEvent direction = #down ifTrue: [step := 0@-1].
		aMouseScrollEvent direction = #left ifTrue: [step := 1@0].
		aMouseScrollEvent direction = #right ifTrue: [step := -1@0].
		self submorphsDo: [:each| each translateBy: step * 16]]! !

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

!PatchEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:24:19'!
clipboardCopy
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [clipboard := each model copy. ^ self]]! !

!PatchEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:23:50'!
clipboardCut
	(self activeHand keyboardFocus ifNil: [^ self])
		withAllOwnersDo: [:each| (each isKindOf: PatchableMorph) ifTrue: [clipboard := each model copy. each delete. ^ self]]! !

!PatchEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:26:19'!
clipboardPaste
	| patchMorph |
	clipboard ifNil: [^ self].
	patchMorph := submorphs detect: [:any| any isKindOf: PatchMorph] ifNone: [^ self].
	patchMorph addMorph: clipboard copy patchable position: ((patchMorph internalizeFromWorld: self activeHand morphPosition))! !

!PatchEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:11:36'!
renamePatch
	| patch |
	patch := tracker selectedPatch ifNil: [^ self].
	self request: 'Patch label' initialAnswer: patch label do: [:newName| patch label: newName. tracker triggerEvent: #patchesChanged]! !

!PatchEditorMorph methodsFor: 'events' stamp: 'len 21/Jan/2026 16:14:42'!
keyStroke: anEvent
	(anEvent rawMacOptionKeyPressed or: [anEvent controlKeyPressed]) ifTrue:
		[anEvent isArrowLeft ifTrue:
			[anEvent wasHandled: true.
			tracker moveCursorPatchLeft.
			^ self].
		anEvent isArrowRight ifTrue:
			[anEvent wasHandled: true.
			tracker moveCursorPatchRight.
			^ self]].
	anEvent commandAltKeyPressed ifTrue:
		[anEvent keyCharacter = $n ifTrue: [anEvent wasHandled: true. ^ tracker addPatch].
		anEvent keyCharacter = $N ifTrue: [anEvent wasHandled: true. ^ tracker deletePatch].
		anEvent keyCharacter = $r ifTrue: [anEvent wasHandled: true. self renamePatch. ^ self].
		anEvent keyCharacter = $c ifTrue: [anEvent wasHandled: true. ^ self clipboardCopy].
		anEvent keyCharacter = $x ifTrue: [anEvent wasHandled: true. ^ self clipboardCut].
		anEvent keyCharacter = $v ifTrue: [anEvent wasHandled: true. ^ self clipboardPaste]].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		tracker selectedPatch ifNotNil: [:aPatch| aPatch track ifNotNil: [:aTrack|
			anEvent commandAltKeyPressed ifTrue: [tracker toggleTrackSolo: (tracker tracks indexOf: aTrack)] ifFalse: [tracker toggleTrackMute: (tracker tracks indexOf: aTrack)]]].
		^ self].
	^ super keyStroke: anEvent! !

!PatchEditorMorph methodsFor: 'initialization' stamp: 'len 7/Jan/2026 13:54:06'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #patchesChanged send: #update to: self.
	self update! !

!PatchEditorMorph methodsFor: 'private' stamp: 'len 7/Jan/2026 13:57:16'!
update
	self removeAllMorphs.
	tracker selectedPatch ifNotNil: [:aPatch| self addMorph: aPatch patchMorph]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 24/Jan/2026 22:52:36'!
colorForMeterValue: aNumber
	"White up to -12 dB, yellow from -12 dB to -3 dB, red over -3 dB."
	^ aNumber > 0.7 ifTrue: [Color roseCathode] ifFalse: [aNumber > 0.25 ifTrue: [Color lemonPhosphor] ifFalse: [Color white]]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 24/Jan/2026 22:25:33'!
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
	y := extent y - (extent y * tracker level) max: 0.0.
	aCanvas strokeWidth: 1.0 color: Color white do: [aCanvas moveTo: x - 8 @ (y - 4); lineTo: x - 8 @ (y + 4); lineTo: x - 2 @ y; lineTo: x - 8 @ (y - 4)]! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 24/Jan/2026 14:11:16'!
requiresVectorCanvas
	^ true ! !

!MultitrackMeterMorph methodsFor: 'drawing' stamp: 'len 25/Jan/2026 19:46:18'!
yForMeterValue: aNumber
	"Answer the y coordinate for the given linear meter value (RMS or peak).
	We map it logarithmically to the height of the morph. We ignore values below -60 dB or over 0 dB."
	^ extent y - (extent y * (aNumber linearToDecibels + 60.0 max: 0.0) / 60.0) max: 0.0! !

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

!MultitrackMeterMorph methodsFor: 'initialization' stamp: 'len 24/Jan/2026 14:10:55'!
initialize
	| font charWidth |
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 16.
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

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:38:04'!
clipboardCopy
	clipboard := (tracker selectedTrigger ifNil: [^ self]) copy! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:43:23'!
clipboardCut
	self clipboardCopy.
	tracker deleteTrigger.
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 20/Jan/2026 16:43:01'!
clipboardPaste
	tracker selectedTriggerPut: (clipboard ifNil: [^ self]).
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

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 6/Feb/2026 15:43:34'!
renameTrack
	| track |
	track := tracker selectedTrack.
	self request: 'Track label' initialAnswer: (track label ifNil: ['']) do: [:newName| track label: (newName ifEmpty: []). self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'actions' stamp: 'len 4/Jan/2026 15:52:47'!
setPatternLength
	tracker isPlaying ifTrue: [^ self].
	self request: 'Pattern length' initialAnswer: tracker selectedPattern length printString verifying: [:s| (s allSatisfy: [:x| x isDigit]) and: [s asNumber between: 1 and: 255]] do: [:s| tracker setSelectedPatternLength: s asNumber. self redrawNeeded]! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 7/Feb/2026 19:18:55'!
drawCursorOn: aCanvas
	| lineSpacing charWidth cursorWidth x y cursorRect |
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	y := self morphHeight / 2.0.
	aCanvas fillRectangle: (0 @ y extent: self morphWidth @ lineSpacing) color: (Color white alpha: 0.1).
	cursorWidth := cursorPosition = 1 ifTrue: [3] ifFalse: [1].
	x := (self tracksWidthInCharacters + 0.5) * (tracker cursorTrack - 1) + 2.5 + cursorPosition - 1.
	cursorPosition > 1 ifTrue: [x := x + 2.5].
	cursorPosition > 3 ifTrue: [x := x + 0.5].
	cursorPosition > 5 ifTrue: [x := x + 0.5].
	cursorPosition > 8 ifTrue: [x := x + 0.5].
	cursorRect := x * charWidth @ y extent: cursorWidth * charWidth @ lineSpacing.
	self hasKeyboardFocus ifFalse: [aCanvas frameRectangle: cursorRect borderWidth: 1 color: Color redCathode. ^ self].
	aCanvas fillRectangle: cursorRect color: (showCursor ifTrue: [Color redCathode] ifFalse: [Color redCathode alpha: 0.7])! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 15:30:43'!
drawOn: aCanvas
"	aCanvas fillRectangle: (0@0 corner: extent) color: Color black."
	self drawTracksOn: aCanvas.
	self drawCursorOn: aCanvas.
	self drawPatternOn: aCanvas! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 7/Feb/2026 19:19:00'!
drawPatternOn: aCanvas
	| lineSpacing charWidth y unsetColor  noteColor velocityColor fxColor pattern endLine middle startLine darkColor lightColor xLeft xRight beatColor trackWidth |
	pattern := tracker selectedPattern.
	lineSpacing := font lineSpacing.
	charWidth := font widthOf: $X.
	trackWidth := charWidth * (self tracksWidthInCharacters + 0.5).
	unsetColor := Color lightGray.
	noteColor := Color white.
	velocityColor := Color lemonPhosphor.
	fxColor := Color cyanPhosphor.
	middle := self morphHeight / 2.0.
	startLine := tracker cursorLine - ((middle - self headerHeight) / lineSpacing) truncated max: 1.
	y := middle - (lineSpacing * (tracker cursorLine - startLine)).
	endLine := startLine + (self morphHeight - y / lineSpacing) truncated - 1 min: pattern length.
	xLeft := 1.
	xRight := self morphWidth - ((font widthOf: $X)*2) - xLeft.
	lightColor := Color veryLightGray.
	darkColor := Color lightGray.
	beatColor := Color white alpha: 0.1.
	(tracker isPlaying and: [tracker playheadPattern = tracker cursorPattern and: [tracker playheadLine between: startLine and: endLine]])
		ifTrue: [aCanvas fillRectangle: (0@(tracker playheadLine - startLine * lineSpacing + y) extent: extent x @ lineSpacing) color: beatColor].
	startLine to: endLine do: [:i|
		| s c x |
		"Draw line offsets at left and right, and highlight lines at beats:"
		i - 1 \\ tracker lpb = 0
			ifTrue: [i = tracker cursorLine ifFalse: [aCanvas fillRectangle: (0@y extent: extent x @ lineSpacing) color: beatColor]. c := lightColor]
			ifFalse: [c := darkColor].
		s := i - 1 printStringBase: 16 nDigits: 2.
		aCanvas drawString: s at: xLeft @ y font: font color: c.
		aCanvas drawString: s at: xRight @ y font: font color: c.
		"Draw triggers:"
		x := charWidth * 2.5.
		pattern
			line: i
			notesDo: [:note :instrument :velocity|
				note ifNil: [s := '···'. c := unsetColor] ifNotNil: [:v| s := self noteStringFrom: v. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 3.5 + x.
				instrument ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := noteColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x.
				velocity ifNil: [s := '··'. c := unsetColor] ifNotNil: [:v| s := v printStringBase: 16 nDigits: 2. c := velocityColor].
				aCanvas drawString: s at: x @ y font: font color: c.
				x := charWidth * 2.5 + x]
			effectsDo: [:fx|
				fx
					ifNil: [aCanvas drawString: '···' at: x @ y font: font color: unsetColor]
					ifNotNil: [:v| aCanvas drawString: (Character codePoint: (v bitShift: -8)) asString, ((v bitAnd: 16rFF) printStringBase: 16 nDigits: 2) at: x @ y font: font color: fxColor].
				x := charWidth * 3.5 + x]
			emptyTriggersDo:
				[aCanvas image: emptyTriggerImage at: x @ y.
				x := trackWidth + x].
		y := y + lineSpacing]! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 7/Feb/2026 19:19:07'!
drawTracksOn: aCanvas
	| color textColor charWidth trackWidth x mask headerLineWidth |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self tracksWidthInCharacters.
	headerLineWidth := charWidth / 2.0.
	x := charWidth * 2.5.
	mask := tracker selectedMask.
	tracker tracks withIndexDo: [:track :i| | trackColor trackLabel |
		trackColor := track color.
		aCanvas fillRectangle: (x@0 extent: trackWidth @ extent y) color: (trackColor alpha: (i = tracker cursorTrack ifTrue: [0.15] ifFalse: [0.1])).
		((mask at: i) and: [track enabled])
			ifTrue:
				[color := trackColor.
				textColor := Color white]
			ifFalse:
				[color := trackColor darker: 0.25.
				textColor := Color white darker: 0.25].
		aCanvas fillRectangle: (x @ 0 extent: trackWidth @ headerLineWidth) color: color.
		trackLabel := i printString.
		track label ifNotNil: [:aString| trackLabel := trackLabel, ' ', aString].
		aCanvas drawString: trackLabel at: x+(trackWidth - (labelFont widthOfString: trackLabel) / 2.0) @ 8 font: labelFont color: textColor.
		x := x + trackWidth.
		track muted ifTrue: [aCanvas drawString: 'M' at: (x - (font widthOf: $M)) @ 9 font: font color: textColor].
		track soloed ifTrue: [aCanvas drawString: 'S' at: (x - (font widthOfString: 'SM') - 4 @ 9) font: font color: textColor].
		x := x + (charWidth/2.0)].
	aCanvas fillRectangle: (x @ 0 corner: extent x @ headerLineWidth) color: Color darkGray! !

!PatternEditorMorph methodsFor: 'drawing' stamp: 'len 7/Feb/2026 19:18:41'!
tracksWidthInCharacters
	^ 15! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 20/Jan/2026 16:32:26'!
handleCommandHotkey: anEvent
	anEvent keyCharacter = $n ifTrue: [tracker insertPattern. ^ true].
	anEvent keyCharacter = $N ifTrue: [tracker deletePattern. ^ true].
	anEvent keyCharacter = $t ifTrue: [tracker addTrack. ^ true].
	anEvent keyCharacter = $T ifTrue: [tracker deleteTrack. ^ true].
	anEvent keyCharacter = $m ifTrue: [tracker toggleTrackMask. ^ true].
	anEvent keyCharacter = $r ifTrue: [self renameTrack. ^ true].
	anEvent keyCharacter = $l ifTrue: [self setPatternLength. ^ true].
	"Clipboard:"
	anEvent keyCharacter = $c ifTrue: [self clipboardCopy. ^ true].
	anEvent keyCharacter = $x ifTrue: [self clipboardCut. ^ true].
	anEvent keyCharacter = $v ifTrue: [self clipboardPaste. ^ true].
	"Octave up/down:"
	(anEvent keyCharacter = $] and: [centerKey < 108]) ifTrue: [centerKey := centerKey + 12. ^ true].
	(anEvent keyCharacter = $[ and: [centerKey > 12]) ifTrue: [centerKey := centerKey - 12. ^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Jan/2026 16:08:43'!
handleInputKey: anEvent
	| c i |
	anEvent isBackspace ifTrue:
		[tracker selectedTriggerAt: cursorPosition put: nil.
		self redrawNeeded.
		^ true].
	cursorPosition = 1 ifTrue:
		[c := anEvent keyCharacter.
		c = $a ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: -1.
			tracker moveCursorLineDown: editStep.
			^ true].
		(i := 'zsxdcvgbhnjmq2w3er5t6y7ui9o0p' indexOf: c) > 0 ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: i + centerKey - 1.
			tracker moveCursorLineDown: editStep.
			^ true].
		tracker selectedTrigger ifNotNil: [:trigger|
			trigger note ifNotNil: [:note|
				(c = $] and: [note < 108]) ifTrue: [trigger note: note + 12. self redrawNeeded. ^ true].
				(c = $[ and: [note > 12]) ifTrue: [trigger note: note - 12. self redrawNeeded. ^ true].
				(c = $} and: [note < 127]) ifTrue: [trigger note: note + 1. self redrawNeeded. ^ true].
				(c = ${ and: [note > 0]) ifTrue: [trigger note: note - 1. self redrawNeeded. ^ true]]].
		^ false].
	(cursorPosition = 6 or: [cursorPosition = 9]) ifTrue:
		[('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ<>' includes: (c := anEvent keyCharacter asUppercase)) ifTrue:
			[tracker selectedTriggerAt: cursorPosition put: c codePoint.
			self moveCursorRight.
			^ true].
		^ false].
	(i := '0123456789ABCDEF' indexOf: anEvent keyCharacter asUppercase) > 0 ifTrue:
		[tracker selectedTriggerAt: cursorPosition put: i - 1.
		(#(3 5) includes: cursorPosition) ifTrue:
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

!PatternEditorMorph methodsFor: 'events' stamp: 'len 22/Jan/2026 17:42:15'!
handleKeyStroke: anEvent
	((anEvent rawMacOptionKeyPressed or: [anEvent controlKeyPressed]) and: [self handleOptionHotkey: anEvent]) ifTrue: [^ true].
	(anEvent commandAltKeyPressed and: [self handleCommandHotkey: anEvent]) ifTrue: [^ true].
	anEvent isArrowUp ifTrue: [tracker moveCursorLineUp. ^ true].
	anEvent isArrowDown ifTrue: [tracker moveCursorLineDown. ^ true].
	anEvent isArrowLeft ifTrue: [self moveCursorLeft. ^ true].
	anEvent isArrowRight ifTrue: [self moveCursorRight. ^ true].
	anEvent isPageUp ifTrue: [tracker moveCursorBeatUp. ^ true].
	anEvent isPageDown ifTrue: [tracker moveCursorBeatDown. ^ true].
	anEvent isHome ifTrue: [tracker moveCursorLineTop. ^ true].
	anEvent isEnd ifTrue: [tracker moveCursorLineBottom. ^ true].
	anEvent keyCharacter = $\ ifTrue:
		[anEvent wasHandled: true.
		anEvent commandAltKeyPressed ifTrue: [tracker toggleTrackSolo] ifFalse: [tracker toggleTrackMute]. ^ self].
	(anEvent anyModifierKeyPressed not and: [self handleInputKey: anEvent]) ifTrue: [^ true].
	^ false! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 15/Jan/2026 16:09:19'!
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

!PatternEditorMorph methodsFor: 'events' stamp: 'len 21/Jan/2026 15:58:15'!
handlesMouseDown: anEvent
	^ true! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 10/Jan/2026 23:03:58'!
keyStroke: anEvent
	(self handleKeyStroke: anEvent) ifTrue: [anEvent wasHandled: true. ^ self].
	^ super keyStroke: anEvent! !

!PatternEditorMorph methodsFor: 'events' stamp: 'len 7/Feb/2026 19:19:21'!
mouseButton1Down: aMouseButtonEvent localPosition: localEventPosition
	| charWidth trackWidth x |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self tracksWidthInCharacters + (charWidth/2.0).
	x := localEventPosition x - (charWidth * 2.5).
	x < 0.0 ifTrue: [^ self].
	tracker setCursorTrack: (x / trackWidth) truncated + 1! !

!PatternEditorMorph methodsFor: 'focus handling' stamp: 'len 9/Jan/2026 15:20:32'!
keyboardFocusChange: aBoolean
	aBoolean ifTrue: [self startBlinking] ifFalse: [self stopBlinking].
	self redrawNeeded! !

!PatternEditorMorph methodsFor: 'geometry' stamp: 'len 7/Feb/2026 19:19:15'!
minimumExtent
	| n |
	n := tracker tracks size.
	^ (font widthOf: $X) * (n * (self tracksWidthInCharacters + 0.5) + 4.5) @ (font lineSpacing * 16)! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 9/Jan/2026 15:21:31'!
initialize
	super initialize.
"	font := FontFamily familyName: 'impulseBig' pointSize: 18."
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 16.
"	font := FontFamily familyName: 'Commodore 64 Angled' pointSize: 14."
	labelFont := FontFamily defaultFamilyPointSize: 17.
	self setTracker: Tracker new.
	centerKey := 60. "C4"
	editStep := 1.
	showCursor := true.
	pauseBlinking := false.
	self initializeEmptyTriggerImage! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 7/Feb/2026 19:19:11'!
initializeEmptyTriggerImage
	| charWidth trackWidth color |
	charWidth := font widthOf: $X.
	trackWidth := charWidth * self tracksWidthInCharacters.
	emptyTriggerImage := Form extent: trackWidth @ font lineSpacing depth: Display depth.
	color := Color lightGray.
	(VectorCanvas onForm: emptyTriggerImage)
		drawString: '···' at: 0 @ 0 font: font color: color;
		drawString: '··' at: charWidth * 3.5 @ 0 font: font color: color;
		drawString: '··' at: charWidth * 6 @ 0 font: font color: color;
		drawString: '···' at: charWidth * 8.5 @ 0 font: font color: color;
		drawString: '···' at: charWidth * 12 @ 0 font: font color: color! !

!PatternEditorMorph methodsFor: 'initialization' stamp: 'len 3/Jan/2026 02:49:38'!
setTracker: aTracker
	tracker := aTracker.
	cursorPosition := 1.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #cursorChanged send: #redrawNeeded to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	aTracker when: #lpbChanged send: #redrawNeeded to: self.
	self update! !

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

!PatternEditorMorph methodsFor: 'private' stamp: 'len 1/Jan/2026 17:03:37'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 27/Dec/2025 23:17:39'!
clipboardCopy
	^ self! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 28/Dec/2025 16:43:28'!
clipboardCut
	^ self! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 26/Dec/2025 04:46:36'!
clipboardPaste
	^ self! !

!SequencerMorph methodsFor: 'actions' stamp: 'len 28/Dec/2025 16:43:19'!
clipboardPasteNew
	^ self! !

!SequencerMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 15:32:35'!
drawOn: aCanvas
	| x y s charWidth blockHeight blockWidth space cursorTrack |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	blockWidth := charWidth / 2.0.
	space := charWidth/4.0.
"	aCanvas fillRectangle: (0@0 extent: extent) color: Color black."
	x := blockHeight + space.
	cursorTrack := tracker cursorTrack.
	tracker tracks withIndexDo: [:track :i|
		aCanvas fillRectangle: (x @ 0 extent: blockWidth @ extent y) color: (track color alpha: (i = cursorTrack ifTrue: [0.4] ifFalse: [0.25])).
		x := x + blockWidth + space].
	y := 0.
	1 to: tracker patterns size do: [:i|
		i = tracker cursorPattern ifTrue: [aCanvas fillRectangle: (0@y extent: blockHeight @ blockHeight) color: Color redCathode].
		s := (tracker patternNumbers at: i) printStringBase: 16 nDigits: 2.
		aCanvas drawString: s at: blockHeight - (charWidth*2.5) @ (y+(charWidth/2.0)) font: font color: Color white.
		y := y + blockHeight].
	y := 0.
	tracker patterns with: tracker masks do: [:pattern :mask|
		x := blockHeight + space.
		tracker tracks withIndexDo: [:track :i|
			(pattern isEmptyTrack: i) ifFalse: [aCanvas fillRectangle: (x @ y extent: blockWidth @ blockHeight) color: ((mask at: i) ifTrue: [track color] ifFalse: [track color darker: 0.25])].
			x := x + blockWidth + space].
		y := y + blockHeight].
	y := tracker cursorPattern - 1 * blockHeight + (tracker cursorLine * blockHeight / tracker selectedPattern length asFloat).
	aCanvas line: blockHeight + 1 @ y to: extent x @ y width: 2 color: Color redCathode.
	tracker isPlaying ifTrue:
		[y := tracker playheadPattern - 1 * blockHeight + (tracker playheadLine * blockHeight / tracker playingPattern length asFloat).
		aCanvas line: blockHeight + 1 @ y to: extent x @ y width: 2 color: Color white]! !

!SequencerMorph methodsFor: 'events' stamp: 'len 14/Jan/2026 12:44:59'!
keyStroke: anEvent
	anEvent isArrowUp ifTrue: [anEvent wasHandled: true. tracker moveCursorPatternUp. ^ self].
	anEvent isArrowDown ifTrue: [anEvent wasHandled: true. tracker moveCursorPatternDown. ^ self].
	anEvent commandAltKeyPressed ifTrue:
		[anEvent keyCharacter = $n ifTrue: [anEvent wasHandled: true. tracker insertPattern. ^ self].
		anEvent keyCharacter = $N ifTrue: [anEvent wasHandled: true. tracker deletePattern. ^ self].
		anEvent keyCharacter = $c ifTrue: [anEvent wasHandled: true. ^ self clipboardCopy].
		anEvent keyCharacter = $x ifTrue: [anEvent wasHandled: true. ^ self clipboardCut].
		anEvent keyCharacter = $v ifTrue: [anEvent wasHandled: true. ^ self clipboardPaste].
		anEvent keyCharacter = $V ifTrue: [anEvent wasHandled: true. ^ self clipboardPasteNew]].
	^ super keyStroke: anEvent! !

!SequencerMorph methodsFor: 'geometry' stamp: 'len 31/Dec/2025 23:16:20'!
minimumExtent
	| blockHeight blockWidth charWidth space |
	charWidth := font widthOf: $X.
	blockHeight := charWidth * 3.
	blockWidth := charWidth / 2.0.
	space := charWidth / 4.0.
	^ (blockWidth + space) * tracker tracks size + blockWidth + blockHeight @ (blockHeight * tracker patterns size)! !

!SequencerMorph methodsFor: 'initialization' stamp: 'len 31/Dec/2025 23:17:57'!
initialize
	super initialize.
	font := FontFamily familyName: 'JetBrains Mono NL' pointSize: 16.
	self setTracker: Tracker new! !

!SequencerMorph methodsFor: 'initialization' stamp: 'len 2/Jan/2026 19:33:30'!
setTracker: aTracker
	tracker := aTracker.
	aTracker when: #sequenceChanged send: #redrawNeeded to: self.
	aTracker when: #tracksChanged send: #update to: self.
	aTracker when: #cursorChanged send: #redrawNeeded to: self.
	aTracker when: #playheadChanged send: #redrawNeeded to: self.
	self update! !

!SequencerMorph methodsFor: 'private' stamp: 'len 31/Dec/2025 22:21:20'!
update
	self ensureMinimumExtent.
	self redrawNeeded! !

!TransportBarMorph methodsFor: 'drawing' stamp: 'len 10/Jan/2026 16:19:59'!
drawOn: aCanvas
	| patchLabel color |
	aCanvas fillRectangle: (0 @ 0 extent: extent) color: Color darkGray.
	aCanvas line: 0@(extent y-1) to: extent-(0@1) width: 1 color: Color gray.
	color := Color white.
	aCanvas
		drawString: (tracker isPlaying ifTrue: ['▶'] ifFalse: ['◼']) at: 4 @ 0 font: font color: color;
		drawString: (tracker bpm printStringFractionDigits: 1), ' / ', tracker lpb printString at: 32 @ 2 font: font color: color;
		drawString: '↧' at: 150 @ 3 font: font color: (tracker followPlayhead ifTrue: [color] ifFalse: [Color lightGray]).
	patchLabel := (tracker cursorPatch printStringBase: 16 nDigits: 2), ': ', (tracker selectedPatch ifNil: ['EMPTY'] ifNotNil: [:aPatch| aPatch label]).
	aCanvas drawString: patchLabel at: (extent x - 4 - (font widthOfString: patchLabel)) @ 2 font: font color: color! !

!TransportBarMorph methodsFor: 'geometry' stamp: 'len 7/Jan/2026 14:33:18'!
minimumExtent
	^ 200 @ font lineSpacing! !

!TransportBarMorph methodsFor: 'initialization' stamp: 'len 7/Jan/2026 16:03:45'!
initialize
	super initialize.
	font := FontFamily defaultFamilyPointSize: 16! !

!TransportBarMorph methodsFor: 'initialization' stamp: 'len 7/Jan/2026 16:06:18'!
setTracker: aTracker
	tracker := aTracker.
	tracker
		when: #playingStatusChanged send: #redrawNeeded to: self;
		when: #bpmChanged send: #redrawNeeded to: self;
		when: #lpbChanged send: #redrawNeeded to: self;
		when: #followPlayheadChanged send: #redrawNeeded to: self;
		when: #patchesChanged send: #redrawNeeded to: self! !

!OscilloscopeMorph methodsFor: 'drawing' stamp: 'len 4/Dec/2025 16:18:53'!
drawOn: aCanvas
	| step buf x y h |
	step := self morphWidth / samples size.
	buf := samples copy.
	h := self morphHeight / 2.0.
	x := 0.
	y := 1.0 - (buf at: 1) * h.
	aCanvas strokeWidth: 1 color: color do:
		[aCanvas moveTo: x@y.
		2 to: buf size do: [:i|
			x := x + step.
			y := 1.0 - (buf at: i) * h.
			aCanvas lineTo: x@y]]! !

!OscilloscopeMorph methodsFor: 'drawing' stamp: 'len 4/Dec/2025 16:16:37'!
requiresVectorCanvas
	^ true ! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 21/Sep/2025 15:07:00'!
color: aColor
	color := aColor.
	self redrawNeeded! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 3/Feb/2026 00:05:41'!
defaultExtent
	^`128@64`! !

!OscilloscopeMorph methodsFor: 'initialization' stamp: 'len 30/Nov/2025 01:45:00'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	samples := Float32Array new: 64.
"	1 to: samples size do: [:i| samples at: i put: (i-1 * Float pi * 3 / samples size) sin]."
	currentPosition := 0.
	remainder := 0! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 27/Sep/2025 16:52:00'!
addSample: aNumber
	currentPosition := currentPosition + 1.
	currentPosition > samples size ifTrue: [currentPosition := 1].
	samples at: currentPosition put: (aNumber min: 1.0 max: -1.0)! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 2/Feb/2026 15:44:49'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self.
	answer addAudioInput: #setInput:.
	^ answer! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 27/Sep/2025 22:20:00'!
reset
	remainder := 0! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 27/Nov/2025 22:20:00'!
setInput: aBuffer
	input := aBuffer.
	self reset! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 28/Nov/2025 01:43:00'!
tick
	| i |
	input ifNil: [^ self].
	i := remainder.
	[(i  := i + 8) <= input size] whileTrue: [self addSample: (input at: i)].
	remainder := input size - i + 1.
	self redrawNeeded! !

!OscilloscopeMorph methodsFor: 'module' stamp: 'len 2/Feb/2026 19:10:07'!
update
	^ self! !

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

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Jan/2026 15:08:35'!
defaultBufferSize
	^ 64! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Jan/2026 15:08:43'!
defaultExtent
	^ self defaultBufferSize @ 24! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 19/Jan/2026 01:56:38'!
drawOn: aCanvas
	| m color |
	m := extent y / 2.0.
	color := PatchMorph waveformColor.
	0 to: buffer size - 1 do: [:i| | h v |
		v := buffer at: i + position \\ buffer size + 1.
		v > 0.01 ifTrue:
			[h := (v min: 1.0) * m.
			aCanvas line: i @ (m-h) to: i @ (m+h-1) width: 1 color: color]]! !

!RollingMeterMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Jan/2026 15:08:59'!
initialize
	super initialize.
	buffer := Float32Array new: self defaultBufferSize.
	position := self defaultBufferSize! !

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

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 16:59:14'!
computeImage
	| h canvas x y step waveform alphaColor |
	image := Form extent: self defaultExtent depth: Display depth.
	image fillColor: Color black.
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

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 16:43:02'!
defaultExtent
	^ `512@128`! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 21/Jan/2026 22:41:59'!
drawOn: aCanvas
	| x |
	aCanvas image: image at: 0@0.
"	x := lastStartPosition / sample buffer size * self morphWidth.
	lastDirection = #backwards
		ifTrue: [aCanvas fillRectangle: (x @ 0 extent: (extent x - x) @ extent y) color: (Color black alpha: 0.6)]
		ifFalse: [aCanvas fillRectangle: (0@0 extent: x @ extent y) color: (Color black alpha: 0.6)]."
	x := lastPosition / sample buffer size * self morphWidth.
	aCanvas line: x @ 0 to: x @ extent y width: 2 color: Color white! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 16:54:53'!
initialize
	super initialize.
	color := PatchMorph waveformColor! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 21/Jan/2026 22:51:51'!
sample: aSample
	sample := aSample.
	lastPosition := sample position.
"	lastStartPosition := sample startPosition."
"	lastDirection := sample direction."
	self computeImage! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 21/Jan/2026 22:51:46'!
step
	| position |
	(position := sample position) = lastPosition ifTrue: [^ self].
	lastPosition := position.
"	lastStartPosition := sample startPosition."
"	lastDirection := sample direction."
	self redrawNeeded! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 17:03:09'!
stepTime
	^ 30! !

!SampleDisplayMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Jan/2026 16:39:33'!
wantsSteps
	^ true! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 27/Nov/2025 22:43:00'!
defaultExtent
	^ 256@128! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 19:10:35'!
drawNextLinearSpectrumFrame
	| w s spectrum |
	w := image width.
	s := fft size / 2.0 / w.
	spectrum := fft spectrumFrom: buffer.
	0 to: w - 1 do: [:i| | v c |
		v := spectrum at: (i * s) truncated + 1.
		c := colormap at: (v * (colormap size - 1)) truncated + 1.
		image pixelValueAt: i @ position put: c].
	position := position - 1 \\ image height! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 19:12:16'!
drawNextLogSpectrumFrame
	| w |
	w := image width.
	fft logSpectrumFrom: buffer into: logSpectrum.
	1 to: w do: [:i| | v c |
		v := logSpectrum at: i.
		c := colormap at: (v * (colormap size - 1)) truncated + 1.
		image pixelValueAt: i - 1 @ position put: c].
	position := position - 1 \\ image height! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 16:30:15'!
drawNextSpectrumFrame
	frequencyScale = #linear ifTrue: [self drawNextLinearSpectrumFrame] ifFalse: [self drawNextLogSpectrumFrame]! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 19:14:11'!
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

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 19:19:15'!
initialize
	super initialize.
	fft := FFT new: 512.
	hop := (fft size * 0.5) truncated.
	image := Form extent: self defaultExtent + (0 @ 2) depth: 32.
	image fillColor: Color transparent.
	position := 0.
	buffer := Float32Array new: fft size.
	bufferIndex := 1.
	colormap := WordArray new: Viridis size.
	1 to: Viridis size do: [:i| colormap at: i put: (image pixelValueFor: (Viridis at: i))].
	logSpectrum := Float32Array new: image width.
	frequencyScale := #linear! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 15:44:56'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self.
	answer addAudioInput: #setInput:.
	^ answer! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 23:32:00'!
reset
	image fillColor: Color transparent! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 27/Nov/2025 22:20:00'!
setInput: aBuffer
	input := aBuffer.
	self reset! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 16:25:04'!
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
	changed ifTrue: [self redrawNeeded]! !

!SpectrogramMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 19:10:16'!
update
	^ self! !

!SpectrogramMorph class methodsFor: 'as yet unclassified' stamp: 'len 18/Oct/2025 15:33:00'!
initialize
	super initialize.
	self initializeViridis; initializeInferno! !

!SpectrogramMorph class methodsFor: 'as yet unclassified' stamp: 'len 19/Oct/2025 18:54:00'!
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

!SpectrogramMorph class methodsFor: 'as yet unclassified' stamp: 'len 19/Oct/2025 18:55:00'!
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

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 17/Oct/2025 19:42:00'!
defaultExtent
	^`256@128`! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 14:43:00'!
drawBarsOn: aCanvas
	| step x h n |
	n := spectrum size asFloat.
	step := self morphWidth / n.
	h := self morphHeight.
	x := 0.
	1 to: spectrum size do: [:i|
		| v y |
		y := (1.0 - (v := spectrum at: i)) * h.
		v := v max: 0.1. "make it a bit more visible on black background"
		aCanvas line: x@y to: x@h width: step color: (Viridis at: (v * Viridis size + 1.0) truncated).
		x := x + step]! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 15:12:00'!
drawLogBarsOn: aCanvas
	| step x h  |
	step := self morphWidth / 20.0.
	h := self morphHeight.
	x := 0.
	1 to: spectrum size do: [:i|
		| v y |
		y := (1.0 - (v := spectrum at: i)) * h.
		v := v max: 0.1. "make it a bit more visible on black background"
		aCanvas fillRectangle: (x@y corner: x+step@h) color: (Viridis at: (v * Viridis size + 1.0) truncated).
		x := x + step.
		step := step * 0.95]! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 15:08:00'!
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

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 15:10:00'!
drawOn: aCanvas
	self drawLogBarsOn: aCanvas! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 14:40:00'!
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

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 20/Oct/2025 15:50:00'!
initialize
	super initialize.
	color := Color white.
	fft := FFT new: 256.
	spectrum := Float32Array new: fft size / 2.
	buffer := Float32Array new: fft size.
	bufferIndex := 1! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 15:45:01'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self.
	answer addAudioInput: #setInput:.
	^ answer! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 25/Oct/2025 14:49:00'!
reset
	spectrum atAllPut: 0.0! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 27/Nov/2025 22:20:00'!
setInput: aBuffer
	input := aBuffer.
	self reset! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 4/Feb/2026 15:45:43'!
tick
	| j remaining k changed |
	input ifNil: [^ self].
"	n := fft size asFloat."
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
			[spectrum *= 0.5.
			spectrum +=​ ((fft spectrumFrom: buffer) * 0.5).
			bufferIndex := 1.
			changed := true]].
	changed ifTrue: [self redrawNeeded]! !

!SpectrumAnalyzerMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 19:10:25'!
update
	^ self! !

!VectorscopeMorph methodsFor: 'drawing' stamp: 'len 3/Feb/2026 00:23:19'!
drawOn: aCanvas
	aCanvas image: image at: 0 @ 0! !

!VectorscopeMorph methodsFor: 'drawing' stamp: 'len 3/Feb/2026 00:06:32'!
requiresVectorCanvas
	^ true ! !

!VectorscopeMorph methodsFor: 'events' stamp: 'len 3/Feb/2026 17:41:37'!
handlesMouseScroll: anEvent
	^ anEvent anyModifierKeyPressed not! !

!VectorscopeMorph methodsFor: 'events' stamp: 'len 3/Feb/2026 17:43:36'!
mouseScroll: anEvent localPosition: localEventPosition
	anEvent direction = #right ifTrue: [scaleX := scaleX / 1.1 max: 1 / 128.0. ^ self].
	anEvent direction = #left ifTrue: [scaleX := scaleX * 1.1 min: 128.0. ^ self].
	anEvent direction = #up ifTrue: [scaleY := scaleY / 1.1 max: 1 / 128.0. ^ self].
	anEvent direction = #down ifTrue: [scaleY := scaleY * 1.1 min: 128.0]! !

!VectorscopeMorph methodsFor: 'initialization' stamp: 'len 3/Feb/2026 00:08:14'!
defaultExtent
	^`128@128`! !

!VectorscopeMorph methodsFor: 'initialization' stamp: 'len 3/Feb/2026 17:36:44'!
initialize
	super initialize.
	color := PatchMorph waveformColor.
	colorHigh := PatchMorph waveformColor2.
	image := Form extent: self defaultExtent depth: 32.
	image fillBlack.
	scaleX := scaleY := 1.0! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 00:09:11'!
patchable
	| answer |
	answer := PatchableMorph new model: self.
	answer body addMorph: self.
	answer addAudioInput: #setInputX: label: 'X'; addAudioInput: #setInputY: label: 'Y'.
	^ answer! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 00:22:32'!
reset
	^ self! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 00:09:21'!
setInputX: aBuffer
	inputX := aBuffer.
	self reset! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 00:09:25'!
setInputY: aBuffer
	inputY := aBuffer.
	self reset! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 17:42:52'!
tick
	| h i x0 y0 x y c cH |
	(inputX isNil or: [inputY isNil]) ifTrue: [^ self].
	h := image width - 2.0 / 2.0.
	i := 1.
	c := image pixelValueFor: color.
	cH := image pixelValueFor: colorHigh.
	[(i  := i + 8) <= inputX size] whileTrue:
		[x0 := inputX at: i.
		y0 := inputY at: i.
		x := (((x0 * scaleX) tanh + 1.0) * h) truncated.
		y := (((y0 * scaleY) tanh + 1.0) * h) truncated.
		image pixelValueAt: x @ y put: ((x0 abs > 1.0 or: [y0 abs > 1.0]) ifTrue: [cH] ifFalse: [c])]! !

!VectorscopeMorph methodsFor: 'module' stamp: 'len 3/Feb/2026 00:06:32'!
update
	^ self! !

!VectorscopeMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 02:32:24'!
step
	image fill: image boundingBox rule: Form blend fillColor: (Color black alpha: 0.1).
	self redrawNeeded! !

!VectorscopeMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 00:35:27'!
stepTime
	^ 100! !

!VectorscopeMorph methodsFor: 'stepping' stamp: 'len 3/Feb/2026 00:36:32'!
wantsSteps
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

!WaveformMorph methodsFor: 'as yet unclassified' stamp: 'len 2/Oct/2025 20:14:00'!
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

!WaveformScrollingMorph methodsFor: 'as yet unclassified' stamp: 'len 23/Oct/2025 15:10:00'!
reset
	^ self! !

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

!PatchMorph methodsFor: 'event handling testing' stamp: 'len 22/Nov/2025 11:43:00'!
allowsMorphDrop
	^ true! !

!PatchMorph methodsFor: 'event handling testing' stamp: 'len 11/Nov/2025 22:23:00'!
allowsSubmorphDrag
	^ true! !

!PatchMorph methodsFor: 'geometry services' stamp: 'len 18/Nov/2025 22:52:00'!
fullIncludesPixel: aPoint
	^ true! !

!PatchMorph methodsFor: 'layout' stamp: 'len 5/Jan/2026 22:27:47'!
someSubmorphPositionOrExtentChanged
	self submorphsDo: [:each| (each isMemberOf: WireMorph) ifTrue: [each update]].
	self scheduleRecompute! !

!PatchMorph methodsFor: 'menu' stamp: 'len 8/Jan/2026 15:28:00'!
addControlInput
	| index indices |
	indices := (self modules select: [:each| each isMemberOf: ControlIn]) collect: [:each| each index].
	index := (0 to: 9) detect: [:i| (indices includes: i) not] ifNone: [^ self].
	self addMorph: (ControlIn new index: index) patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 8/Jan/2026 15:28:00'!
addModuleCopying: aModule
	self addMorph: aModule copy patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 8/Jan/2026 15:28:00'!
addModuleInstantiating: aClass
	self addMorph: aClass new patchable position: (self valueOfProperty: #lastMenuOpeningPosition)! !

!PatchMorph methodsFor: 'menu' stamp: 'len 4/Feb/2026 14:10:38'!
getMenu
	| menu submenu |
	self setProperty: #lastMenuOpeningPosition toValue: (self internalizeFromWorld: self activeHand morphPosition).
	menu := MenuMorph new defaultTarget: self.
	#('Oscillators' 'Noise' 'Modulation' 'Envelopes' 'Levels' 'Filters' 'VA Filters' 'FX') do: [:subcategory|
		submenu := MenuMorph new defaultTarget: self.
		(SystemOrganization classesAt: 'Signals-', subcategory)
			do: [:each| each hasSubclasses ifFalse: [submenu add: each name camelSeparatedWords action: #addModuleInstantiating: argument: each]].
		menu add: subcategory subMenu: submenu].

	submenu := MenuMorph new defaultTarget: self.
	submenu
		add: 'Control In' action: #addControlInput;
"		add: 'Audio In' action: #addModuleInstantiating: argument: AudioIn;"
		add: 'Audio Out' action: #addModuleInstantiating: argument: AudioOut.
	menu add: 'I/O' subMenu: submenu.

	submenu := MenuMorph new defaultTarget: self.
	submenu
		add: 'Oscilloscope' action: #addModuleInstantiating: argument: OscilloscopeMorph;
		add: 'Spectrogram' action: #addModuleInstantiating: argument: SpectrogramMorph;
		add: 'Spectrum Analyzer' action: #addModuleInstantiating: argument: SpectrumAnalyzerMorph;
		add: 'Vectorscope' action: #addModuleInstantiating: argument: VectorscopeMorph;
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

	^ menu! !

!PatchMorph methodsFor: 'stepping' stamp: 'len 9/Nov/2025 22:13:00'!
wantsSteps
	^ true! !

!PatchMorph methodsFor: 'testing' stamp: 'len 9/Nov/2025 15:32:00'!
honorsLayerOrder
	^ true! !

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

!PatchMorph class methodsFor: 'colors' stamp: 'len 2/Dec/2025 01:38:00'!
envelopeColor
	^ Color emeraldScreen! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 3/Dec/2025 14:19:28'!
lfoColor
	^ Color lemonYellow
"		^ Color fromHexString: '#FF8C00'"
"	^ Color fromHexString: '#FFDF20'"

"	^ Color lemonPhosphor"! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 2/Dec/2025 17:09:00'!
waveformColor
	^ Color cyanPhosphor mixed: 0.4 with: Color white! !

!PatchMorph class methodsFor: 'colors' stamp: 'len 2/Dec/2025 17:10:00'!
waveformColor2
	^ Color magentaGlow mixed: 0.4 with: Color white! !

!PatchMorph class methodsFor: 'as yet unclassified' stamp: 'len 29/Dec/2025 19:04:00'!
open
	^ ZoomerMorph new addMorph: self new; openInWorld! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 17/Nov/2025 19:49:00'!
body
	^ body! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 6/Feb/2026 01:55:15'!
inputs
	^ inputsArea submorphs! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 20/Nov/2025 22:00:00'!
model
	^ model! !

!PatchableMorph methodsFor: 'accessing' stamp: 'len 27/Jan/2026 14:32:11'!
model: anObject
	model := anObject.
	(model isKindOf: Module) ifTrue: [self setTitle: model title]! !

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

!PatchableMorph methodsFor: 'events' stamp: 'len 24/Nov/2025 14:17:00'!
keyStroke: aKeyboardEvent
	aKeyboardEvent isBackspace
		ifTrue: [self delete. aKeyboardEvent wasHandled: true. ^ self].
	aKeyboardEvent commandAltKeyPressed ifTrue:
		[aKeyboardEvent keyCharacter = $b
			ifTrue: [Smalltalk browseFull: self model class. aKeyboardEvent wasHandled: true. ^ self].
		aKeyboardEvent keyCharacter = $i
			ifTrue: [self model inspect. aKeyboardEvent wasHandled: true. ^ self]].
	^ super keyStroke: aKeyboardEvent! !

!PatchableMorph methodsFor: 'events' stamp: 'len 22/Jan/2026 04:14:10'!
mouseEnter: anEvent
	body borderColor: Color veryVeryLightGray.
	title morphPosition: body morphPosition x @ title morphHeight negated.
	title visible: true! !

!PatchableMorph methodsFor: 'events' stamp: 'len 24/Jan/2026 14:38:31'!
mouseLeave: anEvent
	body borderColor: body defaultBorderColor.
	title visible: false! !

!PatchableMorph methodsFor: 'initialization' stamp: 'len 24/Jan/2026 14:37:45'!
initialize
	| container |
	super initialize.
	container := LinearLayoutMorph newRow gap: 1; color: Color transparent.
	inputsArea := LinearLayoutMorph newColumn padding: 0@0; gap: 0; color: Color transparent.
	outputsArea := LinearLayoutMorph newColumn padding: 0@0; gap: 0; color: Color transparent.
	body := PatchableBodyMorph newColumn.
	container addMorph: inputsArea; addMorph: body; addMorph: outputsArea.
	self addMorph: container.
	self addMorph: (title := LabelMorph contents: '' fontSize: 12 emphasis: 1) position: 0 @ -24.
	title visible: false! !

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

!WireMorph methodsFor: 'drawing' stamp: 'len 22/Nov/2025 01:49:00'!
update
	(source isInWorld and: [target isInWorld]) ifFalse: [source removeConnectionTo: target. ^ self delete].
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

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 16/Oct/2025 01:37:00'!
allNoteOff
	activeVoices do: [:each| each gateOff]! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 15/Oct/2025 17:35:00'!
doControl
	clock := clock + 1.
	"do first part of the control loop: clear modulations:"
	voice doControl1.
	activeVoices do: [:each| each doControl1].
	"process messages, possibly changing modulation sources or controls, or triggering note on/off:"
	[eventQueue notEmpty and: [eventQueue first key <= clock]] whileTrue: [self playEvent: eventQueue removeFirst value].
	"do second part of control loop: recompute modulations and update controls:"
	voice doControl2.
	activeVoices do: [:each| each doControl2].
	"remove voices that finished:"
	(activeVoices anySatisfy: [:any| any atEnd]) ifTrue: [activeVoices := activeVoices select: [:each| each atEnd not]]! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 29/Oct/2025 16:13:00'!
initialize
	super initialize.
	activeVoices := #().
	polyphony := 8.
	legato := false.
	level := 0.8.
	panning := 0.0.
	spread := 0.2 "stereo spread of the voices"! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 11/Oct/2025 16:13:00'!
isMono
	^ polyphony = 1! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 22/Oct/2025 00:48:00'!
keyboard
	^ PianoKeyboardMorph new instrument: self! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 10/Oct/2025 14:53:00'!
legato: aBoolean
	legato := aBoolean! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 13/Nov/2025 22:29:00'!
playEvent: anEvent
	| key activeVoice |
	key := anEvent key ifNil: [self assert: anEvent isTrigger not. activeVoices do: [:each| anEvent playOn: each]. ^ self].
	activeVoice := self isMono ifTrue: [activeVoices anyIfNone: []] ifFalse: [activeVoices detect: [:any| any key = key] ifNone: []].
	activeVoice isNil
		ifTrue: "create new voice"
			[activeVoice := voice copy reset.
			activeVoices := activeVoices copyWith: activeVoice]
		ifFalse: "handle legato if needed"
			[(anEvent isGateOn and: [legato not]) ifTrue: [activeVoice gateOff]].
	anEvent playOn: activeVoice! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 10/Oct/2025 14:20:00'!
playEvent: anEvent after: secs
	eventQueue add: clock + (secs * 100 "control rate") -> anEvent! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 12/Oct/2025 19:56:00'!
polyphony: anInteger
	polyphony := anInteger! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 10/Oct/2025 14:48:00'!
reset
	clock := 0.
	eventQueue := OrderedCollection new.
	activeVoices do: [:each| each reset]! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 11/Oct/2025 15:43:00'!
set: anAssociation
	voice set: anAssociation.
	activeVoices do: [:each| each set: anAssociation]! !

!Instrument2 methodsFor: 'as yet unclassified' stamp: 'len 11/Oct/2025 16:04:00'!
voice: aVoice
	voice := aVoice reset! !

!STFT methodsFor: 'as yet unclassified' stamp: 'len 19/Oct/2025 20:51:00'!
window: anArray
	window := anArray asFloat32Array.
	fft := FFT new: window size! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:59:00'!
hamming: n
	^ self hamming: n alpha: 0.54! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:58:00'!
hamming: n alpha: alpha
	"Set the windowing function to the generalized Hamming window. See F. Richard Moore, Elements of Computer Music, p. 100. An alpha of 0.54 gives the Hamming window, 0.5 gives the Hann window."
	| window v midPoint |
	window := Float32Array new: n.
	midPoint := (n + 1) / 2.0.
	1 to: n do: [:i|
		v := alpha + ((1.0 - alpha) * (2.0 * Float pi * ((i - midPoint) / n)) cos).
		window at: i put: v].
	^ self window: window! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:59:00'!
hann: n
	^ self hamming: n alpha: 0.5! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 21:00:00'!
new: anInteger
	^ self hamming: anInteger! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 21:01:00'!
triangular: n
	"Set the windowing function to the triangular, or Parzen, window. See F. Richard Moore, Elements of Computer Music, p. 100."
	| window v |
	window := Float32Array new: n.
	0 to: (n // 2) - 1 do: [:i |
		v := i / ((n // 2) - 1).
		window at: (i + 1) put: v.
		window at: (n - i) put: v].
	^ self window: window! !

!STFT class methodsFor: 'instance creation' stamp: 'len 19/Oct/2025 20:53:00'!
window: anArray
	^ self new window: anArray! !

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

!AudioPlayer class methodsFor: 'initialization' stamp: 'len 3/Jan/2026 20:53:15'!
initialize
	"AudioPlayer shutDown; initialize; startUp"
	SampleRate := 44100.
	BufferSize := 2048. "512." "10 msecs"
	self assert: BufferSize \\ Module blockSize = 0. "make sure it's a multiple of the block size"
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

!AudioPlayer class methodsFor: 'player process' stamp: 'len 7/Dec/2025 00:23:19'!
oldStylePlayLoop
	"This version of the play loop is used if the VM does not yet support sound primitives that signal a semaphore when a sound buffer becomes available."
	| bytesPerSlice blockSize count finishedSounds |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := Module blockSize.
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

!AudioPlayer class methodsFor: 'player process' stamp: 'len 3/Jan/2026 20:37:42'!
playLoop
	"The audio player process loop."

	| bytesPerSlice blockSize count finishedSounds |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := Module blockSize.
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

!AudioPlayer class methodsFor: 'player process' stamp: 'len 3/Jan/2026 20:41:15'!
playLoop2
	"The audio player process loop."

	| bytesPerSlice blockSize count finishedSounds random |
	bytesPerSlice := Stereo ifTrue: [4] ifFalse: [2].
	blockSize := Module blockSize.
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

!Biquad methodsFor: 'accessing' stamp: 'len 27/Jan/2026 22:22:41'!
peaking: frequency Q: Q gain: gain
	"Setup coefficients for a second order parametric/peaking filter with non-constant Q.
	See also >>#bp:Q:."
	| ω α b g |
	ω := Float twoPi * frequency.
	α := 4.0 / (1.0 + gain) * (ω / (2.0 * Q)) tan.
	b := 0.5 * (1.0 - α) / (1.0 + α).
	g := (0.5 + b) * ω cos.
	a0 := 0.5 - b.
	a1 := 0.0.
	a2 := b - 0.5.
	b1 := -2.0 * g.
	b2 := 2.0 * b.
	c0 := gain - 1.0.
	d0 := 1.0! !

!Biquad methodsFor: 'controlling' stamp: 'len 22/Sep/2025 19:52:00'!
reset
	x1 := y1 := x2 := y2 := 0.0! !

!Biquad methodsFor: 'initialization' stamp: 'len 25/Jan/2026 16:16:29'!
initialize
	c0 := 1.0.
	d0 := 0.0.
	self reset! !

!Biquad methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:54:58'!
modifiedWrite: inputBuffer read: outputBuffer
	"Direct Form 1."
	1 to: inputBuffer size do: [:i|
		| in out |
		in := inputBuffer at: i.
		out := d0 * in + ((a0 * in + (a1 * x1) + (a2 * x2) - (b1 * y1) - (b2 * y2)) * c0).
		x2 := x1.
		y2 := y1.
		x1 := in.
		outputBuffer at: i put: (y1 := out)].
	x1 abs < 1.0e-15 ifTrue: [x1 := 0.0].
	x2 abs < 1.0e-15 ifTrue: [x2 := 0.0].
	y1 abs < 1.0e-15 ifTrue: [y1 := 0.0].
	y2 abs < 1.0e-15 ifTrue: [y2 := 0.0]! !

!Biquad methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:32:24'!
value: in
	"Direct Form 1."
	| out |
	out := d0 * in + ((a0 * in + (a1 * x1) + (a2 * x2) - (b1 * y1) - (b2 * y2)) * c0).
	x2 := x1.
	y2 := y1.
	x1 := in.
	^ y1 := out! !

!Biquad methodsFor: 'processing' stamp: 'len 31/Jan/2026 18:55:13'!
write: inputBuffer read: outputBuffer
	"Direct Form 1."
	(c0 = 1.0 and: [d0 = 0.0]) ifFalse: [^ self modifiedWrite: inputBuffer read: outputBuffer].
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

!DelayLine methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:57:13'!
at: anInteger
	^ buffer at: anInteger! !

!DelayLine methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:53:09'!
length
	^ length! !

!DelayLine methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:56:55'!
position
	^ position! !

!DelayLine methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:53:09'!
setLength: anInteger
	length := anInteger "min: buffer size max: 1"! !

!DelayLine methodsFor: 'controlling' stamp: 'len 26/Jan/2026 14:54:03'!
reset
	buffer atAllPut: 0.0! !

!DelayLine methodsFor: 'initialization' stamp: 'len 26/Jan/2026 14:56:48'!
initialize: anInteger
	buffer := Float32Array new: anInteger + 1.
	length := anInteger + 1.
	position := 0! !

!DelayLine methodsFor: 'processing' stamp: 'len 26/Jan/2026 14:56:48'!
write: in
	position := position + 1.
	position > length ifTrue: [position := position - length].
	buffer at: position put: in! !

!DelayLine class methodsFor: 'instance creation' stamp: 'len 26/Jan/2026 14:53:09'!
new: anInteger
	^ self new initialize: anInteger! !

!DelayLineTap methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:55:50'!
delay
	^ delay! !

!DelayLineTap methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:55:50'!
setDelay: aNumber
	"Set a new delay time.."
	delay := aNumber.
	increment := 0.0! !

!DelayLineTap methodsFor: 'accessing' stamp: 'len 26/Jan/2026 14:55:50'!
setDelayIncrement: aNumber
	"Set a delay increment. This is added to the delay time on every read."
	increment := aNumber! !

!DelayLineTap methodsFor: 'controlling' stamp: 'len 26/Jan/2026 15:06:11'!
reset
	x1 := y1 := 0! !

!DelayLineTap methodsFor: 'initialization' stamp: 'len 26/Jan/2026 17:10:46'!
setDelayLine: aDelayLine
	delayLine := aDelayLine.
	delay := delayLine length.
	x1 := y1 := 0.
	increment := 0.0! !

!DelayLineTap methodsFor: 'processing' stamp: 'len 26/Jan/2026 17:42:09'!
read
	| n i f a x |
	delay := delay + increment.
	delay >= (n := delayLine length) ifTrue: [delay := delay - n].
	i := delayLine position - delay.
	i >= 1.0 ifFalse: [i := i + n].
	f := i - (i := i truncated). "fractional and integer parts"
	a := (1.0 - f) / (1.0 + f). "coefficient for the Thiran 1-pole filter"
	x := delayLine at: i.
	y1 := x * a + x1 - (y1 * a).
	x1 := x.
	^ y1! !

!DelayLineTap class methodsFor: 'instance creation' stamp: 'len 26/Jan/2026 17:11:08'!
on: aDelayLine
	^ self new setDelayLine: aDelayLine! !

!Downsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:12:33'!
downsample: subsample1 and: subsample2
	| o1 o2 |
	d3 := d2.
	d2 := d1.
	d1 := d0.
	d0 := subsample1.
	o1 := (d0 + d3) * -0.031 + ((d1 + d2) * 0.113) + (d1 * -0.251).
	o2 := subsample2 * 0.5.
	^ o1 + o2! !

!Downsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:09:48'!
initialize
	self reset! !

!Downsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:10:00'!
reset
	d0 := d1 := d2 := d3 := 0.0! !

!FFT methodsFor: 'initialization' stamp: 'jmv 10/Aug/2010 10:51:00'!
basicRealData: real
	"Avoids conversion to FloatArray.
	This disables the fast plugin, but allows for 64 bit Double precision:"
	self
		basicRealData: real
		imagData: (real collect: [:i | 0.0])  "imaginary component all zero"! !

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

!FFT methodsFor: 'initialization' stamp: 'len 4/Feb/2026 14:02:00'!
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
	imagData := Float32Array new: n.
	
	spectrum := Float32Array new: n // 2.
	aux := Float32Array new: n // 2.

	self initializeHammingWindow: 0.5.  "0.54 for Hamming, 0.5 for hanning"! !

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

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 14:40:00'!
data
	^ ComplexArray real: realData imaginary: imagData! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 20:50:00'!
imaginary
	^ imagData! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 14:28:00'!
order
	^ nu! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 20:49:00'!
real
	^ realData! !

!FFT methodsFor: 'accessing' stamp: 'len 19/Oct/2025 20:49:00'!
size
	^ n! !

!FFT methodsFor: 'testing' stamp: 'jmv 15/Aug/2012 15:35:00'!
plot: samples in: rect
	"Throw-away code just to check out a couple of examples"
	| min max x dx pen y |
	Display fillWhite: rect; border: (rect expandBy: 2) width: 2.
	min _ 1.0e30.  max _ -1.0e30.
	samples do: [ :v |
		min _ min min: v.
		max _ max max: v].
	pen _ Pen new.
	pen up.
	y _ (max/(max-min) * rect height + rect top).
	pen goto: rect left@ y.
	pen down.
	pen goto: rect right@ y.
	pen up.
	x _ rect left.
	dx _ rect width asFloat / (samples size-1).
	samples do: [ :v |
		y _ (max-v) / (max-min) * rect height asFloat.
		pen goto: x asInteger @ (rect top + y asInteger).
		pen down.
		x _ x + dx].
	max printString displayOn: Display at: (x+2) @ (rect top-9).
	min printString displayOn: Display at: (x+2) @ (rect bottom - 9)! !

!FFT methodsFor: 'testing' stamp: 'jmv 27/Aug/2014 15:07:00'!
plot: samples in: rect color: aColor min: min max: max
	"Throw-away code just to check out a couple of examples"
	| x dx pen y |
	pen _ Pen new.
	pen color: aColor.
	pen up.
	x _ rect left.
	dx _ rect width asFloat / (samples size-1).
	samples do: [ :v |
		y _ (max-v) / (max-min) * rect height asFloat.
		y _ y min: rect height.
		y _ y max: 0.
		pen goto: x asInteger @ (rect top + y asInteger).
		pen down.
		x _ x + dx].
	max printString displayOn: Display at: (x+2) @ (rect top-9).
	min printString displayOn: Display at: (x+2) @ (rect bottom - 9)! !

!FFT methodsFor: 'testing' stamp: 'len 19/Oct/2025 13:37:00'!
samplesPerCycleForIndex: i
	"Answer the number of samples per cycle corresponding to a power peak at the given index. Answer zero if i = 1, since an index of 1 corresponds to the D.C. component."
	(i < 1 or: [i > (n // 2)]) ifTrue: [^ self error: 'index is out of range'].
	i = 1 ifTrue: [^ 0].  "the D.C. component"
	^ n asFloat / (i - 1)! !

!FFT methodsFor: 'testing' stamp: 'di 17/Jun/1997 07:47:00'!
test  "Display restoreAfter: [(FFT new nu: 8) test].  --  Test on an array of 256 samples"
	"Initialize to pure (co)Sine Wave, plot, transform, plot, invert and plot again"
	self realData: ((1 to: n) collect: [:i | (Float pi * (i-1) / (n/8)) cos]).
	self plot: realData in: (100@20 extent: 256@60).
	self transformForward: true.
	self plot: realData in: (100@100 extent: 256@60).
	self plot: imagData in: (100@180 extent: 256@60).
	self transformForward: false.
	self plot: realData in: (100@260 extent: 256@60)! !

!FFT methodsFor: 'testing' stamp: 'jmv 13/Mar/2012 12:34:00'!
testFullPrecision
	 "
	Display restoreAfter: [(FFT new nu: 15) testFullPrecision].
	  --  Test on an array of 32768 samples"
	"Initialize to pure (co)Sine Wave, plot, transform, plot, invert and plot again.
	Allow for full 64bit Double precision, do not use the fast plugin."
	self basicRealData: ((1 to: n) collect: [:i | (Float pi * (i-1) / (n/8)) cos]).
	self plot: realData in: (100@20 extent: 256@60).
	Transcript newLine; print: (Time millisecondsToRun: [ self transformForward: true ]); endEntry.
	self plot: realData in: (100@100 extent: 256@60).
	self plot: imagData in: (100@180 extent: 256@60).
	Transcript newLine; print: (Time millisecondsToRun:[self transformForward: false]); endEntry.
	self plot: realData in: (100@260 extent: 256@60)! !

!FFT methodsFor: 'stft' stamp: 'jmv 3/Sep/2020 17:12:00'!
initializeHammingWindow: alpha
	"Initialize the windowing function to the generalized Hamming window. See F. Richard Moore, Elements of Computer Music, p. 100. An alpha of 0.54 gives the Hamming window, 0.5 gives the hanning window."

	| v midPoint |
	window _ Float32Array new: n.
	midPoint _ (n + 1) / 2.0.
	1 to: n do: [:i |
		v _ alpha + ((1.0 - alpha) * (2.0 * Float pi * ((i - midPoint) / n)) cos).
		window at: i put: v].

! !

!FFT methodsFor: 'stft' stamp: 'jmv 3/Sep/2020 17:12:00'!
initializeTriangularWindow
	"Initialize the windowing function to the triangular, or Parzen, window. See F. Richard Moore, Elements of Computer Music, p. 100."

	| v |
	window _ Float32Array new: n.
	0 to: (n // 2) - 1 do: [:i |
		v _ i / ((n // 2) - 1).
		window at: (i + 1) put: v.
		window at: (n - i) put: v].
! !

!FFT methodsFor: 'stft' stamp: 'len 4/Feb/2026 16:20:30'!
logSpectrumFrom: anArray into: logArray
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

!FFT methodsFor: 'stft' stamp: 'len 4/Feb/2026 15:45:17'!
spectrumFrom: anArray
	"Answer the power spectrum of anArray. The magnitudes are in normalized logarithmic scale (from 0 to 1). The frequency bins are linear."
	realData replaceFrom: 1 to: n with: anArray startingAt: 1.
	realData *= window.
	imagData atAllPut: 0.0.
	self transformForward: true.
	"Compute the magnitudes of the complex results."
	"Note: the results are in bottom half; the upper half is just its mirror image."
	spectrum replaceFrom: 1 to: spectrum size with: realData startingAt: 1.
	spectrum *= spectrum.
	aux replaceFrom: 1 to: aux size with:​ imagData startingAt: 1.
	aux *= aux.
	spectrum += aux.
	spectrum *= (4.0 / n) squared. "square here because we take sqrt next"
	1 to: spectrum size do: [:i| spectrum at: i put: (spectrum at: i) sqrt linearToNormalizedLog].
	^ spectrum! !

!FFT methodsFor: 'transforming' stamp: 'di 17/Jun/1997 07:47:00'!
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

!FFT methodsFor: 'transforming' stamp: 'di 17/Jun/1997 07:47:00'!
scaleData
	"Scale all elements by 1/n when doing inverse"
	| realN |
	realN _ n asFloat.
	1 to: n do:
		[:i |
		realData at: i put: (realData at: i) / realN.
		imagData at: i put: (imagData at: i) / realN]! !

!FFT methodsFor: 'transforming' stamp: 'jmv 3/Sep/2020 17:15:00'!
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

!FFT methodsFor: 'plugin-testing' stamp: 'len 2/Oct/2025 16:02:00'!
pluginTest  
	"
	(FFT new nu: 15) pluginTest
	"
	"Test on an array of 32768 samples"
	"Initialize to pure (co)Sine Wave, plot, transform, plot, invert and plot again"
	self realData: ((1 to: n) collect: [:i | (Float pi * (i-1) / (n/8)) cos]).
"	self plot: realData in: (100@20 extent: 256@60)."
	Transcript newLine; print: (Time millisecondsToRun:[self pluginTransformData: true]); endEntry.
"	self plot: realData in: (100@100 extent: 256@60).
	self plot: imagData in: (100@180 extent: 256@60)."
	Transcript newLine; print: (Time millisecondsToRun:[self pluginTransformData: false]); endEntry.
"	self plot: realData in: (100@260 extent: 256@60)"! !

!FFT methodsFor: 'plugin-testing' stamp: 'ar 13/Feb/2001 21:10:00'!
pluginTransformData: forward
	"Plugin testing -- if the primitive is not implemented 
	or cannot be found run the simulation. See also: FFTPlugin"
	<primitive: 'primitiveFFTTransformData' module: 'FFTPlugin'>
	^(Smalltalk at: #FFTPlugin ifAbsent:[^self primitiveFailed])
		doPrimitive: 'primitiveFFTTransformData'.! !

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

!FFT class methodsFor: 'instance creation' stamp: 'jm 25/Aug/1999 12:49:00'!
new: anIntegerPowerOfTwo
	"Answer a new FFT instance for transforming data packets of the given size."

	^ self new setSize: anIntegerPowerOfTwo
! !

!LagrangeOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 01:26:13'!
initialize
	self reset! !

!LagrangeOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 02:47:21'!
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

!LagrangeOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 2/Feb/2026 01:26:13'!
reset
	u0 := u1 := u2 := u3 := d0 := d1 := d2 := d3 := 0.0! !

!Polyphase13TapOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 03:43:37'!
initialize
	self reset! !

!Polyphase13TapOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 03:55:41'!
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

!Polyphase13TapOversampler2x methodsFor: 'as yet unclassified' stamp: 'len 3/Feb/2026 03:43:38'!
reset
	x0 := x1 := x2 := x3 := x4 := x5 := x6 := d0 := d1 := d2 := d3 := d4 := d5 := d6 := e0 := e1 := 0.0! !

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

!Upsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:09:20'!
initialize
	self reset! !

!Upsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:09:32'!
reset
	u0 := u1 := u2 := u3 :=​ 0.0! !

!Upsampler2x methodsFor: 'as yet unclassified' stamp: 'len 30/Jan/2026 15:11:02'!
upsampling: aNumber do: aBlock
	| s1 s2 |
	u3 := u2.
	u2 := u1.
	u1 := u0.
	u0 := aNumber.
	s1 := (u0 + u3) * -0.031 + ((u1 + u2) * 0.113) + (u1 * -0.251).
	s2 := u1 * 0.5.
	^ aBlock value: s1 value: s2! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 01:15:55'!
channels
	^ channels! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 14:33:14'!
convert8bitUnsignedToFloat: anArray
	"Convert the given array of samples--assumed to be 8-bit unsigned, linear data--into 32-bit float samples. Return an array containing the resulting samples. Typically used to read uncompressed WAVE sound data."
	| answer |
	answer := Float32Array new: anArray size.
	1 to: anArray do: [:i| answer at: i put: ((anArray at: i) - 128 / 128.0)].
	^ answer! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 14:36:05'!
convertBytesToFloat: aByteArray
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

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 01:16:11'!
leftSamples
	^ leftSamples! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 00:55:57'!
next16BitWord
	"Read a 16-bit positive integer from the input stream."
	"Assume: Stream has at least two bytes left."
	| n |
	n := stream next: 2.
	^ (n at: 2) * 256 + (n at: 1)! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 00:55:57'!
next32BitWord
	"Read a 32-bit positive integer from the input stream."
	"Assume: Stream has at least four bytes left."
	| n |
	n := stream next: 4.
	^ (n at: 4) * 256 + (n at: 3) * 256 + (n at: 2) * 256 + (n at: 1)! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 15:30:17'!
readFromFileEntry: fileEntry
	^ fileEntry readStreamDo: [:strm| self readFromStream: strm]! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 15:30:29'!
readFromFileNamed: fileName
	^ self readFromFileEntry: fileName asFileEntry! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 14:40:44'!
readFromStream: fileStream
	| header data type blockAlign |
	stream := fileStream.
	header := self readWaveChunk: 'fmt '.
	data := self readWaveChunk: 'data'.
	stream close.
	stream := ReadStream on: header.
	type := self next16BitWord.
	type = 1 ifFalse: [^ self error: 'Unexpected wave format'].
	channels := self next16BitWord.
	(channels < 1 or: [channels > 2])
		ifTrue: [^ self error: 'Unexpected number of wave channels'].
	samplingRate := self next32BitWord.
	stream skip: 4. "skip average bytes per second"
	blockAlign := self next16BitWord.
	bitsPerSample := self next16BitWord.
	(bitsPerSample = 8 or: [bitsPerSample = 16])
		ifFalse: [  "recompute bits per sample"
			bitsPerSample := (blockAlign // channels) * 8].

	bitsPerSample = 8
		ifTrue: [data := self convert8bitUnsignedToFloat: data]
		ifFalse: [data := self convertBytesToFloat: data].

	channels = 2
		ifTrue:
			[leftSamples := Float32Array new: data size // 2.
			rightSamples := Float32Array new: data size // 2.
			1 to: leftSamples size do: [:i|
				leftSamples at: i put: (data at: i*2 - 1).
				rightSamples at: i put: (data at: i*2)]]
		ifFalse:
			[leftSamples := rightSamples := data]! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 00:55:57'!
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
	 id = chunkType] whileFalse: [
		"skip this chunk, rounding length up to a word boundary"
		stream skip: (count + 1 bitAnd: 16rFFFFFFFE).
		stream atEnd ifTrue: [^ '']].

	^ stream next: count  "return raw chunk data"
! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 31/Dec/2025 01:16:17'!
rightSamples
	^ rightSamples! !

!WAVFileReader methodsFor: 'as yet unclassified' stamp: 'len 2/Jan/2026 01:36:42'!
sampleRate
	^ samplingRate! !

!Patch methodsFor: 'accessing' stamp: 'len 28/Dec/2025 15:47:17'!
label
	^ label! !

!Patch methodsFor: 'accessing' stamp: 'len 28/Dec/2025 15:47:23'!
label: aString
	label := aString! !

!Patch methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:14:01'!
meterLeftValue
	^ (audioOutput ifNil: [^ 0.0]) meterLeftValue! !

!Patch methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:14:10'!
meterRightValue
	^ (audioOutput ifNil: [^ 0.0]) meterRightValue! !

!Patch methodsFor: 'accessing' stamp: 'len 18/Jan/2026 02:25:34'!
meterValue
	^ (audioOutput ifNil: [^ 0.0]) meterValue! !

!Patch methodsFor: 'accessing' stamp: 'len 3/Jan/2026 14:43:27'!
patchMorph
	^ patchMorph! !

!Patch methodsFor: 'accessing' stamp: 'len 7/Jan/2026 13:58:16'!
setOwnerTrack: aTrack
	track ifNotNil: [track forgetPatch].
	track := aTrack! !

!Patch methodsFor: 'accessing' stamp: 'len 3/Jan/2026 15:40:08'!
track
	^ track! !

!Patch methodsFor: 'initialization' stamp: 'len 6/Jan/2026 15:08:36'!
initialize
	controlInputs := Array new: 10.
	patchMorph := PatchMorph new.
	patchMorph when: #recomputeNeeded send: #scheduleRecompute to: self.
! !

!Patch methodsFor: 'playing' stamp: 'len 23/Jan/2026 14:29:14'!
handleFX: anInteger
	| command |
	command := anInteger bitShift: -8.
	command = 67 "C" ifTrue: [self setVelocity: ((anInteger bitShift: -4) bitAnd: 16rF) / 15.0 after: (anInteger bitAnd: 16rF). ^ self].
	command = 77 "M" ifTrue: [self setLevel:​ (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	command = 80 "P" ifTrue: [self setPan:  (anInteger bitAnd: 16rFF) / 255.0 * 2.0 - 1.0. ^ self].
	"Sample commands:"
	command = 83 "S" ifTrue: [self setOffset: (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	command = 60 "<" ifTrue: [self setSpeed: (anInteger bitAnd: 16rFF) / -255.0. ^ self].
	command = 62 ">" ifTrue: [self setSpeed: (anInteger bitAnd: 16rFF) / 255.0. ^ self].
	"Control change commands:"
	(command between: 48 and: 57) "0 to 9" ifTrue:
		[(controlInputs at: command - 47) ifNotNil: [:input| input setValue: (anInteger bitAnd: 16rFF) / 255.0]]! !

!Patch methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:28:05'!
mixIntoLeft: leftBuffer right: rightBuffer
	(audioOutput ifNil: [^ self]) mixIntoLeft: leftBuffer right: rightBuffer! !

!Patch methodsFor: 'playing' stamp: 'len 21/Jan/2026 04:39:07'!
noteOff
	gateReceivers do: [:each| each gateOff]! !

!Patch methodsFor: 'playing' stamp: 'len 23/Jan/2026 14:29:48'!
noteOn: midiKey
	self setOffset: 0.0.
	self setSpeed: 1.0.
	noteReceivers do: [:each| each setNote: midiKey].
	gateReceivers do: [:each| each gateOn]! !

!Patch methodsFor: 'playing' stamp: 'len 6/Jan/2026 16:28:20'!
playTrigger
	trigger note ifNotNil: [:note| note >= 0 ifTrue: [self noteOn: note] ifFalse: [self noteOff]].
	trigger velocity ifNotNil: [:vel| self setVelocity: vel / 255.0].
	trigger fx1 ifNotNil: [:fx| self handleFX: fx].
	trigger fx2 ifNotNil: [:fx| self handleFX: fx].
	trigger := nil! !

!Patch methodsFor: 'playing' stamp: 'len 22/Jan/2026 16:26:29'!
recomputeModules
	| currentModules |
	currentModules := patchMorph modules.
	modules := currentModules.
	noteReceivers := currentModules select: [:each| each respondsTo: #setNote:].
	gateReceivers := currentModules select: [:each| each respondsTo: #gateOn].
	velocityReceivers := currentModules select: [:any| any respondsTo: #setVelocity:].
	tempoReceivers := currentModules select: [:any| any respondsTo: #setBPM:].
	samples := currentModules select: [:each| each isMemberOf: Sample].
	controlInputs atAllPut: nil.
	currentModules do: [:each| (each isMemberOf: ControlIn) ifTrue: [controlInputs at: each index + 1 put: each]].
	currentModules reverseDo: [:each| (each isMemberOf: AudioOut) ifTrue: [audioOutput := each. ^ currentModules]].
	^ currentModules! !

!Patch methodsFor: 'playing' stamp: 'len 6/Jan/2026 16:00:00'!
scheduleRecompute
	modules := nil! !

!Patch methodsFor: 'playing' stamp: 'len 5/Jan/2026 19:45:17'!
scheduleTrigger: aTrigger
	trigger := aTrigger! !

!Patch methodsFor: 'playing' stamp: 'len 22/Jan/2026 16:26:48'!
setBPM: aNumber
	tempoReceivers do: [:each| each setBPM: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:31:21'!
setLevel: aNumber
	audioOutput ifNotNil: [audioOutput setLevel: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 20/Jan/2026 14:27:42'!
setOffset: aNumber
	samples do: [:each| each setOffset: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:31:31'!
setPan: aNumber
	audioOutput ifNotNil: [audioOutput setPan: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 23/Jan/2026 14:30:33'!
setSpeed: aNumber
	samples do: [:each| each setSpeed: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 15/Jan/2026 17:46:05'!
setVelocity: aNumber
	velocityReceivers do: [:each| each setVelocity: aNumber]! !

!Patch methodsFor: 'playing' stamp: 'len 2/Feb/2026 16:12:08'!
tick
	| currentModules |
	currentModules := modules ifNil: [self recomputeModules].
	currentModules do: [:each| (each is: #Module) ifTrue: [each clear]].
	trigger ifNotNil: [self playTrigger].
	currentModules do: [:each| each update; tick]! !

!Patch methodsFor: 'serialization' stamp: 'len 6/Feb/2026 02:11:16'!
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
		OrderedDictionary new
			at: #source put: (patchables indexOf: each source patchableOwner);
			at: #output put: each source selector;
			at: #target put: (patchables indexOf: each target patchableOwner);
			at: #input put: each target selector;
			yourself].
	^ OrderedDictionary new
		at: #modules put: patchablesJson;
		at: #wires put: wiresJson;
		yourself! !

!Patch methodsFor: 'serialization' stamp: 'len 6/Feb/2026 02:15:37'!
readFrom: aStream
	| numberOfBuffers bufferList json patchables |
	numberOfBuffers := aStream nextInt32BigEndian: true.
	bufferList := (1 to: numberOfBuffers) collect: [:i| Float32Array newFromStream: aStream].
	json := Json readFrom: aStream.
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
		output addConnectionTo: input]! !

!Patch methodsFor: 'serialization' stamp: 'len 5/Feb/2026 17:57:19'!
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

!Pattern methodsFor: 'copying' stamp: 'len 27/Dec/2025 02:01:58'!
postCopy
	blocks := blocks collect: [:eachBlock| eachBlock ifNotNil: [eachBlock collect: [:each| each copy]]]! !

!Pattern methodsFor: 'initialization' stamp: 'len 2/Jan/2026 19:26:26'!
initialize: anInteger
	length := 64.
	blocks := Array new: anInteger.
"	self setRandomEntries"! !

!Pattern methodsFor: 'initialization' stamp: 'len 2/Jan/2026 19:26:36'!
setRandomEntries
	| trig |
	self flag: #deprecated.
	1 to: blocks size do: [:t|
		2 atRandom = 1 ifTrue:
			[1 to: length do: [:i|
				10 atRandom = 1 ifTrue:
					[trig := Trigger new.
					trig note: 127 atRandom.
					2 atRandom = 1 ifTrue: [trig instrument: 127 atRandom].
					2 atRandom = 1 ifTrue: [trig velocity: 127 atRandom].
					4 atRandom = 1 ifTrue: [trig fx1: (('01234567890ABCDEFEGHPQRXYZ' atRandom asciiValue bitShift: 8) bitOr: 256 atRandom - 1)].
					4 atRandom = 1 ifTrue: [trig fx2: (('01234567890ABCDEFEGHPQRXYZ' atRandom asciiValue bitShift: 8) bitOr: 256 atRandom - 1)].
					self track: t at: i put: trig]]]]! !

!Pattern methodsFor: 'serialization' stamp: 'len 6/Feb/2026 15:32:46'!
asJson
	| answer blocksJson |
	answer := OrderedDictionary new.
	answer at: #length put: length.
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

!Pattern methodsFor: 'serialization' stamp: 'len 6/Feb/2026 15:34:16'!
readFromJson: json
	| blocksJson |
	length := json at: #length.
	blocksJson := json at: #blocks.
	blocks := Array new: blocksJson size.
	blocksJson withIndexDo: [:eachBlockJson :t|
		eachBlockJson do: [:rowJson|
			self track: t at: (rowJson at: #line) put: (Trigger new readFromJson: (rowJson at: #trigger))]]! !

!Pattern methodsFor: 'testing' stamp: 'len 29/Dec/2025 16:38:32'!
hasReferenceToPatch: anInteger
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

!Pattern methodsFor: 'private' stamp: 'len 27/Dec/2025 01:56:45'!
line: anInteger notesDo: notesBlock effectsDo: effectsBlock emptyTriggersDo: emptyBlock
	blocks do: [:each|
		each
			ifNil: [emptyBlock value]
			ifNotNil:
				[(each at: anInteger)
					ifNil: [emptyBlock value]
					ifNotNil: [:trigger|
						notesBlock value: trigger note value: trigger instrument value: trigger velocity.
						effectsBlock value: trigger fx1; value: trigger fx2]]]! !

!Pattern class methodsFor: 'instance creation' stamp: 'len 27/Dec/2025 06:03:15'!
new: anInteger
	^ self new initialize: anInteger! !

!Track methodsFor: 'accessing' stamp: 'len 27/Dec/2025 23:23:03'!
color
	^ color! !

!Track methodsFor: 'accessing' stamp: 'len 27/Dec/2025 23:22:55'!
color: aColor
	color := aColor! !

!Track methodsFor: 'accessing' stamp: 'len 9/Jan/2026 15:09:05'!
enabled
	^ soloed or: [muted not and: [tracker anyTrackSoloed not]]! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:45:39'!
label
	^ label! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:45:31'!
label: aString
	label := aString! !

!Track methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:08:10'!
meterLeftValue
	^ (patch ifNil: [^ 0.0]) meterLeftValue! !

!Track methodsFor: 'accessing' stamp: 'len 18/Jan/2026 15:08:33'!
meterRightValue
	^ (patch ifNil: [^ 0.0]) meterRightValue! !

!Track methodsFor: 'accessing' stamp: 'len 18/Jan/2026 02:23:10'!
meterValue
	^ (patch ifNil: [^ 0.0]) meterValue! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:11:15'!
muted
	^ muted! !

!Track methodsFor: 'accessing' stamp: 'len 31/Dec/2025 22:30:46'!
muted: aBoolean
	muted := aBoolean! !

!Track methodsFor: 'accessing' stamp: 'len 7/Jan/2026 13:59:03'!
patch
	^ patch! !

!Track methodsFor: 'accessing' stamp: 'len 17/Dec/2025 16:44:47'!
soloed
	^ soloed! !

!Track methodsFor: 'accessing' stamp: 'len 22/Dec/2025 17:32:01'!
soloed: aBoolean
	soloed := aBoolean! !

!Track methodsFor: 'initialization' stamp: 'len 19/Jan/2026 01:42:41'!
initialize
	muted := false.
	soloed := false.
	delay := 0! !

!Track methodsFor: 'initialization' stamp: 'len 3/Jan/2026 15:47:12'!
setTracker: aTracker
	tracker := aTracker! !

!Track methodsFor: 'playing' stamp: 'len 7/Jan/2026 13:59:03'!
forgetPatch
	patch := nil! !

!Track methodsFor: 'playing' stamp: 'len 18/Jan/2026 02:30:49'!
handleFX: anInteger
	| command |
	command := anInteger bitShift: -8.
	"Global commands:"
	command = 70 "F" ifTrue: [tracker bpm: ((anInteger bitAnd: 16rFF) max: 1). ^ self].
	command = 76 "L" ifTrue: [tracker lpb: ((anInteger bitAnd: 16rFF) max: 1). ^ self]! !

!Track methodsFor: 'playing' stamp: 'len 19/Jan/2026 01:42:19'!
mixIntoLeft: leftBuffer right: rightBuffer
	(patch notNil and: [self enabled]) ifFalse: [^ self].
	patch mixIntoLeft: leftBuffer right: rightBuffer! !

!Track methodsFor: 'playing' stamp: 'len 7/Jan/2026 13:59:03'!
playTrigger
	trigger instrument ifNotNil: [:anInteger|
		patch ifNotNil: [patch setOwnerTrack: nil].
		patch := tracker patches at: anInteger ifAbsent: [].
		patch ifNotNil: [patch setOwnerTrack: self]].
	patch ifNotNil: [patch scheduleTrigger: trigger].
	trigger fx1 ifNotNil: [:fx| self handleFX: fx].
	trigger fx2 ifNotNil: [:fx| self handleFX: fx].
	trigger := nil! !

!Track methodsFor: 'playing' stamp: 'len 3/Jan/2026 18:26:29'!
scheduleTrigger: aTrigger
	trigger := aTrigger.
	ticksToTrigger := 0 "delay * Module sampleRate / Module blockSize ...."! !

!Track methodsFor: 'playing' stamp: 'len 7/Jan/2026 13:59:03'!
tick
	trigger ifNotNil: [ticksToTrigger > 0 ifTrue: [ticksToTrigger := ticksToTrigger - 1] ifFalse: [self playTrigger]].
	patch ifNotNil: [patch tick]! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025 17:27:25'!
bpm
	^ bpm! !

!Tracker methodsFor: 'accessing' stamp: 'len 3/Jan/2026 02:48:36'!
bpm: anInteger
	bpm := anInteger.
	self triggerEvent: #bpmChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 7/Jan/2026 16:00:57'!
followPlayhead
	^ followPlayhead! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 14:02:29'!
level
	^ level! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 14:20:55'!
level: aNumber
	level := aNumber min: 1.0 max: 0.0.
	self triggerEvent: #levelChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025 17:27:31'!
lpb
	^ lpb! !

!Tracker methodsFor: 'accessing' stamp: 'len 3/Jan/2026 02:48:48'!
lpb: anInteger
	lpb := anInteger.
	self triggerEvent: #lpbChanged! !

!Tracker methodsFor: 'accessing' stamp: 'len 26/Dec/2025 02:16:25'!
masks
	^ masks! !

!Tracker methodsFor: 'accessing' stamp: 'len 7/Jan/2026 13:56:05'!
patches
	^ patches! !

!Tracker methodsFor: 'accessing' stamp: 'len 26/Dec/2025 02:14:36'!
patternNumbers
	| uniquePatterns |
	uniquePatterns := OrderedCollection new.
	^ patterns collect: [:each| uniquePatterns indexOf: each ifAbsent: [uniquePatterns add: each. uniquePatterns size]]! !

!Tracker methodsFor: 'accessing' stamp: 'len 26/Dec/2025 02:16:21'!
patterns
	^ patterns! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:29:37'!
peakLeft
	^ peakLeft := peakLeft * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 24/Jan/2026 22:29:52'!
peakRight
	^ peakRight := peakRight * 0.95! !

!Tracker methodsFor: 'accessing' stamp: 'len 16/Dec/2025 21:18:23'!
tracks
	^ tracks! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 17:06:02'!
cursorLine
	^ cursorLine! !

!Tracker methodsFor: 'cursor' stamp: 'len 7/Jan/2026 14:39:31'!
cursorPatch
	^ cursorPatch! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 17:08:09'!
cursorPattern
	^ cursorPattern! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:37:16'!
cursorTrack
	^ cursorTrack! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:27:20'!
moveCursorBeatDown
	self moveCursorLineDown: lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:27:14'!
moveCursorBeatUp
	self moveCursorLineUp: lpb! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:41:01'!
moveCursorLineBottom
	cursorLine := self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:27:29'!
moveCursorLineDown
	self moveCursorLineDown: 1! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 16:56:50'!
moveCursorLineDown: anInteger
	| n |
	cursorLine := cursorLine + anInteger.
	n := self selectedPattern length.
	cursorLine > n ifTrue:
		[cursorPattern < patterns size
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

!Tracker methodsFor: 'cursor' stamp: 'len 7/Jan/2026 13:55:41'!
moveCursorPatchLeft
	cursorPatch > 1 ifFalse: [^ self].
	cursorPatch := cursorPatch - 1.
	self triggerEvent: #patchesChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 7/Jan/2026 13:55:41'!
moveCursorPatchRight
	cursorPatch < patches size ifFalse: [^ self].
	cursorPatch := cursorPatch + 1.
	self triggerEvent: #patchesChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:28:13'!
moveCursorPatternDown
	cursorPattern < patterns size ifFalse: [^ self].
	cursorPattern := cursorPattern + 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 10/Jan/2026 22:28:27'!
moveCursorPatternUp
	cursorPattern > 1 ifFalse: [^ self].
	cursorPattern := cursorPattern - 1.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 15:25:11'!
moveCursorTrackLeft
	cursorTrack > 1 ifFalse: [^ self].
	cursorTrack := cursorTrack - 1.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 1/Jan/2026 15:25:25'!
moveCursorTrackRight
	cursorTrack < tracks size ifFalse: [^ self].
	cursorTrack := cursorTrack + 1.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'cursor' stamp: 'len 21/Jan/2026 16:03:46'!
setCursorTrack: anInteger
	((anInteger between: 1 and: tracks size) and: [cursorTrack ~= anInteger]) ifFalse: [^ self].
	cursorTrack := anInteger.
	self triggerEvent: #cursorChanged! !

!Tracker methodsFor: 'initialization' stamp: 'len 24/Jan/2026 18:00:36'!
initialize
	tracks := #().
	patches := #().
	patterns := #().
	masks := #().
	bpm := 175.
	lpb := 4.
	swing := 0.
	level := 1.0.
	cursorPattern := 1.
	cursorLine := 1.
	cursorTrack := 1.
	cursorPatch := 1.
	playheadPattern := 1.
	playheadLine := 0.
	followPlayhead := false.
	anyTrackSoloed := false.
	leftBuffer := Float32Array new: Module blockSize.
	rightBuffer := Float32Array new: Module blockSize.
	peakLeft := 0.0.
	peakRight := 0.0.

	self addPatch.
	1 timesRepeat: [self insertTrack: tracks size + 1].
	1 timesRepeat: [self insertPattern: patterns size + 1]! !

!Tracker methodsFor: 'patches' stamp: 'len 7/Jan/2026 14:52:19'!
addPatch
	| answer |
	answer := Patch new.
	answer label: 'Patch ', (patches size + 1) printString.
	patches := patches copyWith: answer.
	cursorPatch := patches size.
	self triggerEvent: #patchesChanged.
	^ answer! !

!Tracker methodsFor: 'patches' stamp: 'len 7/Jan/2026 13:55:41'!
deletePatch
	patches at: cursorPatch put: nil.
	self triggerEvent: #patchesChanged! !

!Tracker methodsFor: 'patches' stamp: 'len 7/Jan/2026 13:55:29'!
deletePatch: anInteger
	patches at: anInteger put: nil.
	self triggerEvent: #patchesChanged! !

!Tracker methodsFor: 'patches' stamp: 'len 7/Jan/2026 13:55:41'!
selectedPatch
	^ patches at: cursorPatch! !

!Tracker methodsFor: 'patterns' stamp: 'len 14/Jan/2026 12:48:44'!
deletePattern
	patterns size > 1 ifFalse: [^ self]. "don't delete last pattern"
	self deletePattern: cursorPattern! !

!Tracker methodsFor: 'patterns' stamp: 'len 10/Jan/2026 22:54:48'!
deletePattern: anInteger
	patterns := (patterns copyFrom: 1 to: anInteger - 1), (patterns copyFrom: anInteger + 1 to: patterns size).
	masks := (masks copyFrom: 1 to: anInteger - 1), (masks copyFrom: anInteger + 1 to: masks size).
	cursorPattern := cursorPattern min: patterns size.
	cursorLine := cursorLine min: self selectedPattern length.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 17:00:10'!
deleteTrigger
	self selectedPattern track: cursorTrack at: cursorLine put: nil! !

!Tracker methodsFor: 'patterns' stamp: 'len 10/Jan/2026 22:55:11'!
insertPattern
	self insertPattern: (cursorPattern := cursorPattern + 1).
	cursorLine := cursorLine min: self selectedPattern length! !

!Tracker methodsFor: 'patterns' stamp: 'len 31/Dec/2025 22:17:47'!
insertPattern: anInteger
	| answer |
	answer := Pattern new: tracks size.
	patterns := (patterns copyFrom: 1 to: anInteger - 1), {answer}, (patterns copyFrom: anInteger to: patterns size).
	masks := (masks copyFrom: 1 to: anInteger - 1), {tracks collect: [:each| true]}, (masks copyFrom: anInteger to: masks size).
	self triggerEvent: #sequenceChanged.
	^ answer! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 15:21:27'!
moveSelectedPatternDown
	cursorPattern < patterns size ifFalse: [^ self].
	cursorPattern := cursorPattern + 1.
	self swapPattern: cursorPattern with: cursorPattern - 1! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 15:21:33'!
moveSelectedPatternUp
	cursorPattern > 1 ifFalse: [^ self].
	cursorPattern := cursorPattern - 1.
	self swapPattern: cursorPattern with: cursorPattern + 1! !

!Tracker methodsFor: 'patterns' stamp: 'len 1/Jan/2026 15:18:40'!
selectedPattern
	^ patterns at: cursorPattern! !

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

!Tracker methodsFor: 'patterns' stamp: 'len 31/Dec/2025 22:49:00'!
swapPattern: anInteger with: anotherInteger
	anInteger = anotherInteger ifTrue: [^ self].
	patterns swap: anInteger with: anotherInteger.
	masks swap: anInteger with: anotherInteger.
	self triggerEvent: #sequenceChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 2/Jan/2026 15:12:17'!
isPlaying
	^ AudioPlayer isPlaying: self! !

!Tracker methodsFor: 'playing' stamp: 'len 3/Jan/2026 18:34:51'!
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

!Tracker methodsFor: 'playing' stamp: 'len 22/Jan/2026 14:16:36'!
play
	self isPlaying ifTrue: [^ self].
	playheadPattern := cursorPattern.
	playheadLine := cursorLine - 1.
	ticksToLine := 0.
	AudioPlayer startPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 23/Jan/2026 00:55:48'!
playLine
	| pattern mask |
	"Advance playhead:"
	playheadLine := playheadLine + 1.
	playheadLine > (patterns at: playheadPattern) length ifTrue:
		[playheadPattern < patterns size
			ifTrue: [playheadLine := 1. playheadPattern := playheadPattern + 1]
			ifFalse: [playheadPattern := 1. playheadLine := 1]].
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
		(mask at: i) ifTrue: [(pattern track: i at: playheadLine) ifNotNil: [:aTrigger| track scheduleTrigger: aTrigger]]]! !

!Tracker methodsFor: 'playing' stamp: 'len 24/Jan/2026 18:11:47'!
playSampleCount: n into: anAudioBuffer startingAt: startIndex
	| blockSize ticksPerMinute i masterGain |
	blockSize := Module blockSize.
	ticksPerMinute := Module sampleRate / Module blockSize * 60.0.
	i := startIndex.
	self assert: n \\ blockSize = 0.
	masterGain := level * 0.25. "leave -12 dB of headroom"
	n // blockSize timesRepeat:
		[ticksToLine > 0 ifTrue: [ticksToLine := ticksToLine - 1] ifFalse: [self playLine. ticksToLine := ticksPerMinute / (bpm * lpb) + ticksToLine].
		leftBuffer atAllPut: 0.0.
		rightBuffer atAllPut: 0.0.
		tracks do: [:track| track tick; mixIntoLeft: leftBuffer right: rightBuffer].
		leftBuffer *= masterGain.
		rightBuffer *= masterGain.
		peakLeft := peakLeft max: leftBuffer peak.
		peakRight := peakRight max: rightBuffer peak.
		self mixInto: anAudioBuffer startingAt: i.
		i := i + blockSize].
	^ n! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026 17:14:07'!
playheadLine
	^ playheadLine! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026 17:13:55'!
playheadPattern
	^ playheadPattern! !

!Tracker methodsFor: 'playing' stamp: 'len 2/Jan/2026 15:23:24'!
playingMask
	^ masks at: playheadPattern! !

!Tracker methodsFor: 'playing' stamp: 'len 1/Jan/2026 19:22:48'!
playingPattern
	^ patterns at: playheadPattern! !

!Tracker methodsFor: 'playing' stamp: 'len 6/Jan/2026 18:45:15'!
stop
	self isPlaying ifFalse: [^ self].
	AudioPlayer stopPlaying: self.
	self triggerEvent: #playheadChanged.
	self triggerEvent: #playingStatusChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 7/Jan/2026 16:05:17'!
toggleFollowPlayhead
	followPlayhead := followPlayhead not.
	self triggerEvent: #followPlayheadChanged! !

!Tracker methodsFor: 'playing' stamp: 'len 3/Jan/2026 03:27:32'!
togglePlay
	self isPlaying ifTrue: [self stop] ifFalse: [self play]! !

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

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 16:49:41'!
deleteTrack: anInteger
	tracks := (tracks copyFrom: 1 to: anInteger - 1), (tracks copyFrom: anInteger + 1 to: tracks size).
	patterns do: [:each| each deleteTrack: anInteger].
	masks := masks collect: [:each| (each copyFrom: 1 to: anInteger - 1), (each copyFrom: anInteger + 1 to: each size)].
	cursorTrack := cursorTrack min: tracks size.
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 6/Feb/2026 15:49:39'!
insertTrack: anInteger
	| answer |
	answer := Track new setTracker: self.
	"answer label: 'Track ', (tracks size + 1) printString."
	answer color: (Color okl: 0.7 c: 0.4 h: (137.5 / 5) * (tracks size "+ 4") \\ 360.0).
	tracks := (tracks copyFrom: 1 to: anInteger - 1), {answer}, (tracks copyFrom: anInteger to: tracks size).
	patterns do: [:each| each insertTrack: anInteger].
	masks := masks collect: [:each| (each copyFrom: 1 to: anInteger - 1), {true}, (each copyFrom: anInteger to: each size)].
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

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:36:07'!
selectedMask
	^ masks at: cursorPattern! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:35:44'!
selectedTrack
	^ tracks at: cursorTrack! !

!Tracker methodsFor: 'tracks' stamp: 'len 6/Feb/2026 18:56:04'!
swapTrack: anInteger with: anotherInteger
	| color1 |
	anInteger = anotherInteger ifTrue: [^ self].
	tracks swap: anInteger with: anotherInteger.
	"swap track colors:"
	color1 := (tracks at: anInteger) color.
	(tracks at: anInteger) color: (tracks at: anotherInteger) color.
	(tracks at: anotherInteger) color: color1.
	"swap pattern blocks and masks:"
	patterns do: [:each| each swapTrack: anInteger with: anotherInteger].
	masks := masks collect: [:each| each swap: anInteger with: anotherInteger].
	self triggerEvent: #tracksChanged! !

!Tracker methodsFor: 'tracks' stamp: 'len 1/Jan/2026 15:33:12'!
toggleTrackMask
	self toggleTrackMask: cursorTrack at: cursorPattern! !

!Tracker methodsFor: 'tracks' stamp: 'len 31/Dec/2025 22:39:18'!
toggleTrackMask: trackIndex at: patternIndex
	| mask |
	mask := masks at: patternIndex.
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

!Trigger methodsFor: 'accessing' stamp: 'len 27/Dec/2025 20:28:30'!
at: position put: value
	position = 1 ifTrue: [^ note := value].
	position = 2 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)]].
	position = 3 ifTrue: [^ instrument := value ifNotNil: [((instrument ifNil: [0]) bitAnd: 16rF0) bitOr: value]].
	position = 4 ifTrue: [^ velocity := value ifNotNil: [((velocity ifNil: [0]) bitAnd: 16r0F) bitOr: (value bitShift: 4)]].
	position = 5 ifTrue: [^ velocity := value ifNotNil: [((velocity ifNil: [0]) bitAnd: 16rF0) bitOr: value]].
	position = 6 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 7 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 8 ifTrue: [^ fx1 := value ifNotNil: [((fx1 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	position = 9 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF) bitOr: (value bitShift: 8)]].
	position = 10 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFF0F) bitOr: (value bitShift: 4)]].
	position = 11 ifTrue: [^ fx2 := value ifNotNil: [((fx2 ifNil: [0]) bitAnd: 16rFFF0) bitOr: value]].
	^ self error: 'out of bounds'! !

!Trigger methodsFor: 'accessing' stamp: 'len 31/Dec/2025 19:55:44'!
delay
	"Answer the delay for this trigger (the parameter corresponding to fx command Q)."
	(fx1 bitShift: -8) = 81 ifTrue: [^ fx1 bitAnd: 16rFF].
	(fx2 bitShift: -8) = 81 ifTrue: [^ fx2 bitAnd: 16rFF].
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

!Trigger methodsFor: 'testing' stamp: 'len 31/Dec/2025 19:53:46'!
hasTrackVolumeChange
	"Answer true if it has fx commands M or P."
	(#(77 80) includes: (fx1 bitShift: -8)) ifTrue: [^ true].
	(#(77 80) includes: (fx2 bitShift: -8)) ifTrue: [^ true].
	^ false! !

!Trigger methodsFor: 'testing' stamp: 'len 27/Dec/2025 20:32:35'!
isEmpty
	^ note isNil and: [instrument isNil and: [velocity isNil and: [fx1 isNil and: [fx2 isNil]]]]! !

!Trigger methodsFor: 'testing' stamp: 'len 18/Dec/2025 15:40:48'!
isNoteOff
	^ note = -1! !

!SequenceableCollection methodsFor: '*signals' stamp: 'len 2/Oct/2025 21:40:00'!
plot
	^ PlotMorph new plot: self! !

!FloatArray methodsFor: '*signals' stamp: 'len 9/Dec/2025 15:20:44'!
atSmooth: floatIndex
	| i f |
	i := floatIndex truncated.
	(f := floatIndex - i) = 0.0 ifTrue: [^ self at: i].
	^ (1.0 - f) * (self at: i) + (f * (self at: i+1))! !

!FloatArray methodsFor: '*signals' stamp: 'len 9/Dec/2025 15:20:33'!
atWrapSmooth: floatIndex
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

!Number methodsFor: '*signals' stamp: 'len 4/Feb/2026 04:12:12'!
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

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:45'!
amberAlert
	^ `Color fromHexString: '#FFAA00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:49'!
amberAlertLight
	^ `Color fromHexString: '#FFD999'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:56'!
azureBeam
	^ `Color fromHexString: '#4488FF'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:49:01'!
azureBeamLight
	^ `Color fromHexString: '#AAC4FF'`! !

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

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:46:53'!
cyanPhosphorLight
	^ `Color fromHexString: '#99EEFF'`! !

!Color class methodsFor: '*signals' stamp: 'len 29/Nov/2025 18:29:00'!
divergingPalette
	"For data with negative and positive values. Blue represents negative/cold, orange represents positive/hot."
	^ #('#0088FF' '#4DB8FF' '#888888' '#FFAA44' '#FF7700') collect: [:each| self fromHexString: each]! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:04'!
emeraldScreen
	^ `Color fromHexString: '#00DD88'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:11'!
emeraldScreenLight
	^ `Color fromHexString: '#99FFCC'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:18'!
hotPinkGlow
	^ `Color fromHexString: '#FF44BB'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:26'!
hotPinkGlowLight
	^ `Color fromHexString: '#FFAADD'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:32'!
lemonPhosphor
	^ `Color fromHexString: '#DDFF00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:38'!
lemonPhosphorLight
	^ `Color fromHexString: '#EEFFAA'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:51'!
lemonYellow
	^ `Color fromHexString: '#EEDD00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:47:57'!
limeScreen
	^ `Color fromHexString: '#88FF00'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:05'!
magentaGlow
	^ `Color fromHexString: '#FF00CC'`! !

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

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:29'!
vermillionRayLight
	^ `Color fromHexString: '#FFAA99'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:33'!
violetBeam
	^ `Color fromHexString: '#8844FF'`! !

!Color class methodsFor: '*signals' stamp: 'len 24/Jan/2026 22:48:39'!
violetBeamLight
	^ `Color fromHexString: '#C4AAFF'`! !
Wavetable initialize!
Supersaw initialize!
SpectrogramMorph initialize!
AudioPlayer initialize!
