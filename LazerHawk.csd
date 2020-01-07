<Cabbage>
form caption("Lazer Hawk v0.1") size(800, 800), colour(100, 100, 182), pluginid("def1")
keyboard bounds(0, 700, 800, 100)
image bounds(2, 0, 800, 100), colour(153, 153, 255, 255) outlinecolour(192, 18, 18, 255){
label      bounds(0, 5, 200, 20), text("LazerHawk v0.01"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
}
image bounds(2, 106, 800, 185) colour(61, 106, 73, 255) , plant("layer1"){

label      bounds(0, 5, 200, 20), text("Sound Generator 1"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(0, 25, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG1 Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(100, 25, 50, 50), trackerinsideradius(0.6), text("PWM"), channel("SG1 PWM"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50), trackerinsideradius(0.6), text("Phase"), channel("SG1 Phase"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(0, 100, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG1 Env Amp A"), range(0.001, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG1 Env Amp D"), range(0.02, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG1 Env Amp S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG1 Env Amp R"), range(0.02, 12, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(210, 5, 190, 20), text("Ring Modulator"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG1 RM Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
rslider    bounds(250, 25, 50, 50), trackerinsideradius(0.6), text("Vol"), channel("SG1 RM Volume"), range(0.001, 1, 0.01, 1, 0.001), textcolour(0,0,0)

label      bounds(200, 100, 190, 20), text("Ring Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG1 Env RM A"), range(0.001, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG1 Env RM D"), range(0.02, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(300, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG1 Env RM S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG1 Env RM R"), range(0.02, 12, 12, 1, 0.001), textcolour(0,0,0)



label      bounds(410, 5, 90, 20), text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG1 High Pass Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
rslider    bounds(450, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG1 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(510, 5, 90, 20), text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(500, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG1 Low Pass Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
rslider    bounds(550, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG1 Low Pass Reasonance"), range(0.01, 1, 0, 1, 0.001), textcolour(0,0,0)


label      bounds(400, 100, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG1 Env Filters A"), range(0.001, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(450, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG1 Env Filters D"), range(0.02, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(500, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG1 Env Filters S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(550, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG1 Env Filters R"), range(0.02, 12, 12, 1, 0.001), textcolour(0,0,0)


} 
image bounds(0, 298, 800, 197) colour(108, 63, 91, 255){

label      bounds(0, 5, 200, 20), text("Sound Generator 2"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(0, 25, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG2 Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(100, 25, 50, 50), trackerinsideradius(0.6), text("PWM"), channel("SG2 PWM"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50), trackerinsideradius(0.6), text("Phase"), channel("SG2 Phase"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(0, 100, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG2 Env Amp A"), range(0.001, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG2 Env Amp D"), range(0.02, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG2 Env Amp S"), range(0.02, .99, 0, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG2 Env Amp R"), range(0.02, 12, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(310, 5, 90, 20), text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(300, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG2 Low Pass Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG2 Low Pass Reasonance"), range(0.1, 2, 0, 1, 0.001), textcolour(0,0,0)

label      bounds(210, 5, 90, 20), text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG2 High Pass Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG2 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(200, 100, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG2 Env Filters A"), range(0.001, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG2 Env Filters D"), range(0.02, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(300, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG2 Env Filters S"), range(0.02, .99, 0, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG2 Env Filters R"), range(0.02, 12, .01, 1, 0.001), textcolour(0,0,0)


} 
image bounds(0, 500, 800, 200) colour(120, 69, 69, 255){
label      bounds(0, 0, 190, 20), text("General"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50), trackerinsideradius(0.6), text("SG1"), channel("SG1 Amp"), range(0.0, .5, .3, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, .5, 0, 1, 0.001), textcolour(0,0,0)
}
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M1 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables.
ksmps = 32
nchnls = 2
0dbfs = 1


;massign 0,2
;instrument will be triggered by keyboard widgethk
; SOUND GENERATOR 1
instr 1

  ; Waveform
  iSG1wavStr chnget "SG1 Wav"
  if iSG1wavStr == 1 then      ;sine
    iSG1wav = 0
  elseif iSG1wavStr == 2 then  ;saw
    iSG1wav = 0
  elseif iSG1wavStr == 3 then  ;square
    iSG1wav = 2
  elseif iSG1wavStr == 4 then  ;triangle
    iSG1wav = 4
  endif
  ; PWM
  kSG1PWM chnget "SG1 PWM"
  ; Phase
  kSG1Phase chnget "SG1 Phase"
  ; Amp Envelope
  iSG1EnvAmpAttack chnget "SG1 Env Amp A"
  iSG1EnvAmpDecay chnget "SG1 Env Amp D"
  iSG1EnvAmpSustain chnget "SG1 Env Amp S"
  iSG1EnvAmpRelease chnget "SG1 Env Amp R"
  ; Ring Modulator
  kSG1RMFrequency chnget "SG1 RM Frequency"
  kSG1RMVolume chnget "SG1 RM Volume"
  ; Ring Modulator Envelope
  iSG1EnvRMAttack chnget "SG1 Env RM A"
  iSG1EnvRMDecay chnget "SG1 Env RM D"
  iSG1EnvRMSustain chnget "SG1 Env RM S"
  iSG1EnvRMRelease chnget "SG1 Env RM R"
  ; Low Pass
  kSG1FilterLpF chnget "SG1 Low Pass Frequency"
  kSG1FilterLpR chnget "SG1 Low Pass Reasonance"
  ; High Pass
  kSG1FilterHpF chnget "SG1 High Pass Frequency"
  kSG1FilterHpR chnget "SG1 High Pass Reasonance"
  ; Filter Envelope
  iSG1EnvFilterAttack chnget "SG1 Env Filters A"
  iSG1EnvFilterDecay chnget "SG1 Env Filters D"
  iSG1EnvFilterSustain chnget "SG1 Env Filters S"
  iSG1EnvFilterRelease chnget "SG1 Env Filters R"
  
  ; generate ring modulator sine
  
  aSG1RMsine poscil kSG1RMVolume, kSG1RMFrequency, -1
  kSG1EnvRM madsr iSG1EnvRMAttack, iSG1EnvRMDecay, iSG1EnvRMSustain, iSG1EnvRMRelease
  aSG1RM = aSG1RMsine * kSG1EnvRM
  
  kSG1EnvAmp madsr iSG1EnvAmpAttack, iSG1EnvAmpDecay, iSG1EnvAmpSustain, iSG1EnvAmpRelease
  kSG1EnvFilter madsr iSG1EnvFilterAttack, iSG1EnvFilterDecay, iSG1EnvFilterSustain, iSG1EnvFilterRelease
  aSG1 vco2 p5*kSG1EnvAmp, p4, iSG1wav, kSG1PWM, kSG1Phase
  
  ; apply ring modulation
  aSG1RMsound = (aSG1RM * aSG1)
  aSG1 = (aSG1*(1-kSG1RMVolume))+aSG1RMsound
  aSG1FLp moogladder aSG1,kSG1FilterLpF * kSG1EnvFilter,kSG1FilterLpR
  aSG1FHp bqrez aSG1FLp, kSG1FilterHpF * kSG1EnvFilter, kSG1FilterHpR, 1
  ;outs aSG1Output * 0.1, aSG1Output * 0.1
  aSG1Output = aSG1FHp
  ;aSG1Output = gaSG1Output
  outs aSG1Output , aSG1Output 
  chnset aSG1Output, "SG1Output"
  ;event_i "i",2,0,p3,p4,p5
  ;event_i "i",3,0,p2,p4,p5
  ;event_i "i",3,0,0,p4,p5
endin

; SOUND GENERATOR 2
instr 2
  
  ; Waveform
  iSG2wavStr chnget "SG2 Wav"
  if iSG2wavStr == 1 then      ;sine
    iSG2wav = 0
  elseif iSG2wavStr == 2 then  ;saw
    iSG2wav = 0
  elseif iSG2wavStr == 3 then  ;square
    iSG2wav = 2
  elseif iSG2wavStr == 4 then  ;triangle
    iSG2wav = 4
  endif
  ; PWM
  kSG2PWM chnget "SG2 PWM"
  ; Phase
  kSG2Phase chnget "SG2 Phase"
  ; Amp Envelope
  iSG2EnvAmpAttack chnget "SG2 Env Amp A"
  iSG2EnvAmpDecay chnget "SG2 Env Amp D"
  iSG2EnvAmpSustain chnget "SG2 Env Amp S"
  iSG2EnvAmpRelease chnget "SG2 Env Amp R"
  ; Low Pass
  kSG2FilterLpF chnget "SG2 Low Pass Frequency"
  kSG2FilterLpR chnget "SG2 Low Pass Reasonance"
  ; High Pass
  kSG2FilterHpF chnget "SG2 High Pass Frequency"
  kSG2FilterHpR chnget "SG2 High Pass Reasonance"
  ; Filter Envelope
  iSG2EnvFilterAttack chnget "SG2 Env Filters A"
  iSG2EnvFilterDecay chnget "SG2 Env Filters D"
  iSG2EnvFilterSustain chnget "SG2 Env Filters S"
  iSG2EnvFilterRelease chnget "SG2 Env Filters R"
  
  
  kSG2EnvAmp madsr iSG2EnvAmpAttack, iSG2EnvAmpDecay, iSG2EnvAmpSustain, iSG2EnvAmpRelease
  kSG2EnvFilter madsr iSG2EnvFilterAttack, iSG2EnvFilterDecay, iSG2EnvFilterSustain, iSG2EnvFilterRelease
  aSG2 vco2 p5*kSG2EnvAmp, p4, iSG2wav, kSG2PWM, kSG2Phase
  aSG2FLp moogladder aSG2,kSG2FilterLpF * kSG2EnvFilter,kSG2FilterLpR
  aSG2FHp bqrez aSG2FLp, kSG2FilterHpF * kSG2EnvFilter, kSG2FilterHpR, 1
  aSG2Out = aSG2FHp
  outs aSG2Out , aSG2Out 
  
endin
massign 1,3
instr 3
  ; General
  kSG1Amp chnget "SG1 Amp"
  kSG2Amp chnget "SG2 Amp" 

  ; Get input from Layer 1 and 2 
  aSG1Out subinstr 1,p4,p5
  aSG2Out subinstr 2,p4,p5
  
  ; display kSG1Amp, .1, 3
  outs (aSG1Out * kSG1Amp) + (aSG2Out * kSG2Amp) ,(aSG1Out * kSG1Amp) + (aSG2Out * kSG2Amp)
  
 
 
endin



</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z

</CsScore>
</CsoundSynthesizer>
