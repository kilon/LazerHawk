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
rslider    bounds(0, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG1 Env Amp A"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG1 Env Amp D"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG1 Env Amp S"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG1 Env Amp R"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(310, 5, 90, 20), text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(300, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG1 Low Pass Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG1 Low Pass Reasonance"), range(0.01, 2, 0, 1, 0.001), textcolour(0,0,0)

label      bounds(210, 5, 90, 20), text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG1 High Pass Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG1 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(200, 100, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG1 Env Filters A"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG1 Env Filters D"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(300, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG1 Env Filters S"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG1 Env Filters R"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)


} 
image bounds(0, 298, 800, 197) colour(108, 63, 91, 255){

label      bounds(0, 5, 200, 20), text("Sound Generator 2"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(0, 25, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG2 Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(100, 25, 50, 50), trackerinsideradius(0.6), text("PWM"), channel("SG2 PWM"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50), trackerinsideradius(0.6), text("Phase"), channel("SG2 Phase"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(0, 100, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG2 Env Amp A"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG2 Env Amp D"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG2 Env Amp S"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG2 Env Amp R"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(310, 5, 90, 20), text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(300, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG2 Low Pass Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG2 Low Pass Reasonance"), range(0.01, 2, 0, 1, 0.001), textcolour(0,0,0)

label      bounds(210, 5, 90, 20), text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 25, 50, 50), trackerinsideradius(0.6), text("Freq"), channel("SG2 High Pass Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 25, 50, 50), trackerinsideradius(0.6), text("Reas"), channel("SG2 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(200, 100, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 125, 50, 50), trackerinsideradius(0.6), text("A"), channel("SG2 Env Filters A"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 125, 50, 50), trackerinsideradius(0.6), text("D"), channel("SG2 Env Filters D"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(300, 125, 50, 50), trackerinsideradius(0.6), text("S"), channel("SG2 Env Filters S"), range(0.01, 12, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 125, 50, 50), trackerinsideradius(0.6), text("R"), channel("SG2 Env Filters R"), range(0.01, 12, .01, 1, 0.001), textcolour(0,0,0)


} 
image bounds(0, 500, 800, 200) colour(120, 69, 69, 255){
label      bounds(0, 0, 190, 20), text("General"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50), trackerinsideradius(0.6), text("SG1"), channel("SG1 Amp"), range(0.0, 1, 1, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, 1, 1, 1, 0.001), textcolour(0,0,0)
}
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M0 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables. 
ksmps = 32
nchnls = 2
0dbfs = 1


;instrument will be triggered by keyboard widget
instr 1
; SOUND GENERATOR 1
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
  iSG1PWM chnget "SG1 PWM"
  ; Phase
  iSG1Phase chnget "SG1 Phase"
  ; Amp Envelope
  iSG1EnvAmpAttack chnget "SG1 Env Amp A"
  iSG1EnvAmpDecay chnget "SG1 Env Amp D"
  iSG1EnvAmpSustain chnget "SG1 Env Amp S"
  iSG1EnvAmpRelease chnget "SG1 Env Amp R"
  ; Low Pass
  iSG1FilterLpF chnget "SG1 Low Pass Frequency"
  iSG1FilterLpR chnget "SG1 Low Pass Reasonance"
  ; High Pass
  iSG1FilterHpF chnget "SG1 High Pass Frequency"
  iSG1FilterHpR chnget "SG1 High Pass Reasonance"
  ; Filter Envelope
  iSG1EnvFilterAttack chnget "SG1 Env Filters A"
  iSG1EnvFilterDecay chnget "SG1 Env Filters D"
  iSG1EnvFilterSustain chnget "SG1 Env Filters S"
  iSG1EnvFilterRelease chnget "SG1 Env Filters R"
  
  
  kSG1AmpEnv madsr iSG1EnvAmpAttack, iSG1EnvAmpDecay, iSG1EnvAmpSustain, iSG1EnvAmpRelease
  kSG1FilterEnv madsr iSG1EnvFilterAttack, iSG1EnvFilterDecay, iSG1EnvFilterSustain, iSG1EnvFilterRelease
  aSG1 vco2 p5*kSG1AmpEnv, p4, iSG1wav, iSG1PWM, iSG1Phase
  aSG1FLp moogladder aSG1,iSG1FilterLpF * kSG1FilterEnv,iSG1FilterLpR
  aSG1FHp bqrez aSG1FLp, iSG1FilterHpF * kSG1FilterEnv, iSG1FilterHpR, 1

; SOUND GENERATOR 2
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
  iSG2PWM chnget "SG2 PWM"
  ; Phase
  iSG2Phase chnget "SG2 Phase"
  ; Amp Envelope
  iSG2EnvAmpAttack chnget "SG2 Env Amp A"
  iSG2EnvAmpDecay chnget "SG2 Env Amp D"
  iSG2EnvAmpSustain chnget "SG2 Env Amp S"
  iSG2EnvAmpRelease chnget "SG2 Env Amp R"
  ; Low Pass
  iSG2FilterLpF chnget "SG2 Low Pass Frequency"
  iSG2FilterLpR chnget "SG2 Low Pass Reasonance"
  ; High Pass
  iSG2FilterHpF chnget "SG2 High Pass Frequency"
  iSG2FilterHpR chnget "SG2 High Pass Reasonance"
  ; Filter Envelope
  iSG2EnvFilterAttack chnget "SG2 Env Filters A"
  iSG2EnvFilterDecay chnget "SG2 Env Filters D"
  iSG2EnvFilterSustain chnget "SG2 Env Filters S"
  iSG2EnvFilterRelease chnget "SG2 Env Filters R"
  
  
  kSG2AmpEnv madsr iSG2EnvAmpAttack, iSG2EnvAmpDecay, iSG2EnvAmpSustain, iSG2EnvAmpRelease
  kSG2FilterEnv madsr iSG2EnvFilterAttack, iSG2EnvFilterDecay, iSG2EnvFilterSustain, iSG2EnvFilterRelease
  aSG2 vco2 p5*kSG2AmpEnv, p4, iSG2wav, iSG2PWM, iSG2Phase
  aSG2FLp moogladder aSG2,iSG2FilterLpF * kSG2FilterEnv,iSG2FilterLpR
  aSG2FHp bqrez aSG2FLp, iSG2FilterHpF * kSG2FilterEnv, iSG2FilterHpR, 1

; General
  iSG1Amp chnget "SG1 Amp"
  iSG2Amp chnget "SG2 Amp" 

  outs (aSG1FHp * iSG1Amp) + (aSG2FHp * iSG2Amp) ,(aSG1FHp * iSG1Amp) + (aSG2FHp * iSG2Amp)
endin

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z
</CsScore>
</CsoundSynthesizer>
