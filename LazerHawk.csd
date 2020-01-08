<Cabbage>
#define LAYER1_COLOR colour(61, 106, 73, 255)
form caption("Lazer Hawk v0.1") size(800, 800), colour(100, 100, 182), pluginid("def1")
keyboard bounds(0, 700, 800, 100)
image bounds(2, 0, 800, 60), colour(153, 153, 255, 255) outlinecolour(192, 18, 18, 255),plant("Header"){
label      bounds(0, 5, 200, 20), text("LazerHawk v0.01"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
combobox bounds(0, 30, 100, 25), channel("combobox"), populate("*.snaps")
filebutton bounds(116, 30, 60, 25), channel("but1"), text("Save"), mode("snapshot")
}
image bounds(2, 60, 800, 40), colour(100, 100, 255, 255) outlinecolour(192, 18, 18, 255),plant("Timbres"){
button bounds(0, 10, 60, 30), value(1), colour:1(0, 155, 0, 255), colour:0(155,0,0,255), channel("Timbre1"),identchannel("ID_Timbre1"), text("timbre 1")
}


image bounds(0, 100, 800, 200), $LAYER1_COLOR ,channel("Layer1"), identchannel("ID_Layer1"), plant("layer1plant"){

groupbox bounds(0,0,200,200), $LAYER1_COLOR, text("Sound Generator 1"), fontcolour("black"){
;label      bounds(0, 5, 200, 20),   text("Sound Generator 1"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

combobox   bounds(2, 25, 100, 25),  items("sine" , "saw", "square", "triangle"), channel("SG1 Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(100, 25, 50, 50), text("PWM"),channel("SG1 PWM"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50), text("Phase"), channel("SG1 Phase"), range(0.01, 0.99, .01, 1, 0.001), identchannel("ID_SG1_Phase")textcolour(0,0,0)
rslider    bounds(150, 70, 50, 50), text("Noise"), channel("SG1 Noise Volume"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)

groupbox bounds(0,120,200,80), $LAYER1_COLOR, text("Amp Envelop"), fontcolour("black"){
;label      bounds(0, 120, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50),  text("A"), channel("SG1 Env Amp A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 25, 50, 50), text("D"), channel("SG1 Env Amp D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 25, 50, 50),text("S"), channel("SG1 Env Amp S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50),text("R"), channel("SG1 Env Amp R"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)
}
}
groupbox bounds(200,0,200,200), $LAYER1_COLOR, text("RM"), fontcolour("black"){
;label      bounds(210, 5, 190, 20), text("AM"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1 RM Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
rslider    bounds(50, 25, 50, 50), text("Vol"), channel("SG1 RM Volume"), range(0.001, 1, 0.01, 1, 0.001), textcolour(0,0,0)
combobox   bounds(0, 75, 100, 25),items("ring" , "am", "chaos", "frozen"), channel("SG1 AM Type"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
label      bounds(0, 105, 50, 11),text("AM Type"), colour(61, 106, 73, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(100, 75, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG1 AM Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
label      bounds(100, 105, 50, 11),text("AM Wav"), colour(61, 106, 73, 122), fontcolour(0, 0, 0, 255)

;label      bounds(0, 120, 190, 20), text("Ring Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
groupbox bounds(200,145,200,200), $LAYER1_COLOR, text("RM"), fontcolour("black"){
rslider    bounds(0, 0, 50, 50),  text("A"), channel("SG1 Env RM A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 0, 50, 50),  text("D"), channel("SG1 Env RM D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 0, 50, 50),  text("S"), channel("SG1 Env RM S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 0, 50, 50),  text("R"), channel("SG1 Env RM R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
}}


label      bounds(410, 5, 90, 20),  text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 25, 50, 50), text("Freq"), channel("SG1 High Pass Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
rslider    bounds(450, 25, 50, 50), text("Reas"), channel("SG1 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(510, 5, 90, 20),  text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(500, 25, 50, 50), text("Freq"), channel("SG1 Low Pass Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
rslider    bounds(550, 25, 50, 50), text("Reas"), channel("SG1 Low Pass Reasonance"), range(0.01, 1, 0, 1, 0.001), textcolour(0,0,0)


label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 145, 50, 50),  text("A"), channel("SG1 Env Filters A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(450, 145, 50, 50),  text("D"), channel("SG1 Env Filters D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(500, 145, 50, 50),  text("S"), channel("SG1 Env Filters S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(550, 145, 50, 50),  text("R"), channel("SG1 Env Filters R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)


} 
image bounds(0, 301, 800, 199) colour(108, 63, 91, 255), plant("layer2"){

label      bounds(0, 5, 200, 20), text("Sound Generator 2"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(0, 25, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG2 Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(100, 25, 50, 50),  text("PWM"), channel("SG2 PWM"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 25, 50, 50),  text("Phase"), channel("SG2 Phase"), range(0.01, 0.99, .01, 1, 0.001), textcolour(0,0,0)

label      bounds(0, 120, 190, 20),  text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 145, 50, 50),   text("A"), channel("SG2 Env Amp A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(50, 145, 50, 50),  text("D"), channel("SG2 Env Amp D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(100, 145, 50, 50), text("S"), channel("SG2 Env Amp S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(150, 145, 50, 50), text("R"), channel("SG2 Env Amp R"), range(0.1, 3, .1, 1, 0.001), textcolour(0,0,0)

label      bounds(210, 5, 190, 20), text("Ring Modulator"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 25, 50, 50), text("Freq"), channel("SG2 RM Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
rslider    bounds(250, 25, 50, 50), text("Vol"), channel("SG2 RM Volume"), range(0.001, 1, 0.001, 1, 0.001), textcolour(0,0,0)
combobox   bounds(200, 75, 100, 25),items("ring" , "am", "chaos", "frozen"), channel("SG2 AM Type"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
label      bounds(200, 105, 50, 11), text("AM Type"), colour(108, 63, 91, 122), fontcolour(0, 0, 0, 255)
combobox   bounds(300, 75, 100, 25),items("sine" , "saw", "square", "triangle"), channel("SG2 AM Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
label      bounds(300, 105, 50, 11), text("AM Wav"), colour(108, 63, 91, 122), fontcolour(0, 0, 0, 255)

label      bounds(200, 120, 190, 20), text("Ring Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(200, 145, 50, 50),  text("A"), channel("SG2 Env RM A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(250, 145, 50, 50),  text("D"), channel("SG2 Env RM D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(300, 145, 50, 50),  text("S"), channel("SG2 Env RM S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(350, 145, 50, 50),  text("R"), channel("SG2 Env RM R"), range(0.1, 3, 12, 1, 0.001), textcolour(0,0,0)



label      bounds(410, 5, 90, 20), text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 25, 50, 50), text("Freq"), channel("SG2 High Pass Frequency"), range(100, 16000, 100, 1, 1), textcolour(0,0,0)
rslider    bounds(450, 25, 50, 50), text("Reas"), channel("SG2 High Pass Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)

label      bounds(510, 5, 90, 20),  text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(500, 25, 50, 50), text("Freq"), channel("SG2 Low Pass Frequency"), range(100, 16000, 16000, 1, 1), textcolour(0,0,0)
rslider    bounds(550, 25, 50, 50), text("Reas"), channel("SG2 Low Pass Reasonance"), range(1, 200, 0, 1, 1), textcolour(0,0,0)


label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 145, 50, 50),  text("A"), channel("SG2 Env Filters A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
rslider    bounds(450, 145, 50, 50),  text("D"), channel("SG2 Env Filters D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
rslider    bounds(500, 145, 50, 50),  text("S"), channel("SG2 Env Filters S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
rslider    bounds(550, 145, 50, 50),  text("R"), channel("SG2 Env Filters R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)

} 
image bounds(0, 500, 800, 100) colour(120, 69, 69, 255),plant("Master"){
label      bounds(0, 0, 190, 20), text("General"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50),  text("Mix"), channel("SGMix"), range(0.0, 1, .5, 1, .01), textcolour(0,0,0)
;rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, .5, 0, 1, 0.001), textcolour(0,0,0)

label      bounds(200, 0, 190, 20), text("Chorus"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
;rslider    bounds(0, 25, 50, 50), trackerinsideradius(0.6), text("Mix"), channel("SGMix"), range(0.0, 1, .5, 1, .01), textcolour(0,0,0)
;rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, .5, 0, 1, 0.001), textcolour(0,0,0)


label      bounds(400, 0, 190, 20), text("Reverb"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(400, 25, 50, 50),  text("Size"), channel("Master Reverb Size"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(450, 25, 50, 50),  text("Damp"), channel("Master Reverb Damp"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(500, 25, 50, 50),  text("Mix"), channel("Master Reverb Mix"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(550, 25, 50, 50),  text("Level"), channel("Master Reverb Level"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)


}

button bounds(20, 104, 150, 14), value(1), colour:1(0, 155, 0, 255), colour:0(155,0,0,255), channel("SG1 on/off"),identchannel("ID_SG1_on_off"), text("Sound Generator 1"), fontcolour:0("black"), fontcolour:1("black")
;label      bounds(15, 160, 70, 12),   text("Sound Generator 1"), $LAYER1_COLOR, fontcolour(0, 0, 0, 255)
</Cabbage>
<CsoundSynthesizer>
<CsOptions>
-n -d -+rtmidi=NULL -M1 -m0d --midi-key-cps=4 --midi-velocity-amp=5
</CsOptions>
<CsInstruments>
; Initialize the global variables.
ksmps = 48
nchnls = 2
0dbfs = 1

seed 0
; =======================
; ||     OPCODES       ||
; =======================



; =======================
; || SOUND GENERATOR 1 ||
; =======================

;cpuprc 1,99
maxalloc 1,128
instr 1

; -----------------------
; | variable definition |
; -----------------------

  ; Waveform
  iSG1wavStr chnget "SG1 Wav"
  if iSG1wavStr == 1 then      ;sine
    chnset "active(0)", "ID_PWM"
    iSG1wav = 0
  elseif iSG1wavStr == 2 then  ;saw
    chnset "active(0)", "ID_PWM"
    iSG1wav = 0
  elseif iSG1wavStr == 3 then  ;square
    chnset "active(1)", "ID_PWM"
    iSG1wav = 2
  elseif iSG1wavStr == 4 then  ;triangle
    chnset "active(0)", "ID_PWM"
    iSG1wav = 4
  endif
  
  ; PWM
  kSG1PWM chnget "SG1 PWM"
  
  ; Phase
  kSG1Phase chnget "SG1 Phase"
  
  ; noise generator
  kSG1NoiseVolume chnget "SG1 Noise Volume"
  
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

; ---------------------------
; | end variable definition |
; ---------------------------
      
  ; generate ring modulator sine
  aSG1RMsine poscil kSG1RMVolume, kSG1RMFrequency, -1
  iSG1EnvRMRelease limit iSG1EnvRMRelease , 0.001, iSG1EnvAmpRelease ; release cannot be longer than amp env release
  kSG1EnvRM madsr iSG1EnvRMAttack, iSG1EnvRMDecay, iSG1EnvRMSustain, iSG1EnvRMRelease
  aSG1RM = aSG1RMsine * kSG1EnvRM
 
  ; generate SG1 sound with envelope
  kSG1EnvAmp madsr iSG1EnvAmpAttack, iSG1EnvAmpDecay, iSG1EnvAmpSustain, iSG1EnvAmpRelease
  aSG1 vco2 p5*kSG1EnvAmp, p4, iSG1wav, kSG1PWM, kSG1Phase
  
  ; generate SG1 noise
  aSG1Noise noise kSG1NoiseVolume, 0
  aSG1Noise = aSG1Noise * kSG1EnvAmp
  aSG1 = aSG1 + aSG1Noise
  
  ; apply ring modulation to SG1 sound
  aSG1RMsound = (aSG1RM * aSG1)
  aSG1 = (aSG1*(1-kSG1RMVolume))+aSG1RMsound
  
  ; apply LP  and HP filter 
  iSG1EnvFilterRelease limit iSG1EnvFilterRelease , 0.001, iSG1EnvAmpRelease ; release cannot be longer than amp env release
  kSG1EnvFilter madsr iSG1EnvFilterAttack, iSG1EnvFilterDecay, iSG1EnvFilterSustain, iSG1EnvFilterRelease
  aSG1FLp moogladder aSG1,kSG1FilterLpF * kSG1EnvFilter,kSG1FilterLpR
  aSG1FHp bqrez aSG1FLp, kSG1FilterHpF * kSG1EnvFilter, kSG1FilterHpR, 1
  aSG1Output balance aSG1FHp, aSG1
  
  
; =======================
; || SOUND GENERATOR 2 ||
; =======================



; -----------------------
; | variable definition |
; -----------------------
  ;print p5
  ; Waveform
  iSG2Wav chnget "SG2 Wav"
 
  ; PWM 
  kSG2PWM chnget "SG2 PWM"
  
  ; Phase
  kSG2Phase chnget "SG2 Phase"
  
  ; Amp Envelope
  iSG2EnvAmpAttack chnget "SG2 Env Amp A"
  iSG2EnvAmpDecay chnget "SG2 Env Amp D"
  iSG2EnvAmpSustain chnget "SG2 Env Amp S"
  iSG2EnvAmpRelease chnget "SG2 Env Amp R"
  
  ; Ring Modulator
  kSG2RMFrequency chnget "SG2 RM Frequency"
  kSG2RMVolume chnget "SG2 RM Volume"
  
  ; Ring Modulator Envelope
  iSG2EnvRMAttack chnget "SG2 Env RM A"
  iSG2EnvRMDecay chnget "SG2 Env RM D"
  iSG2EnvRMSustain chnget "SG2 Env RM S"
  iSG2EnvRMRelease chnget "SG2 Env RM R"
  
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
  
; ---------------------------
; | end variable definition |
; ---------------------------

  ; generate ring modulator sine
  aSG2RMsine poscil kSG2RMVolume, kSG2RMFrequency, -1
  iSG2EnvRMRelease limit iSG2EnvRMRelease , 0.001, iSG2EnvAmpRelease ; release cannot be longer than amp env release
  kSG2EnvRM madsr iSG2EnvRMAttack, iSG2EnvRMDecay, iSG2EnvRMSustain, iSG2EnvRMRelease
  aSG2RM = aSG2RMsine * kSG2EnvRM
  
  ; generate main oscilator
  aSG2Sine init 0
  kSG2EnvAmp madsr iSG2EnvAmpAttack, iSG2EnvAmpDecay, iSG2EnvAmpSustain, iSG2EnvAmpRelease
  if iSG2Wav == 1 then ; sine
    aSG2Sine poscil p5*kSG2EnvAmp, p4, -1
  elseif iSG2Wav == 2 then ; saw
    aSG2sine vco2 p5*kSG2EnvAmp, p4, 0 , kSG2PWM, kSG2Phase
  elseif iSG2Wav == 3 then ; square
    aSG2Sine vco2 p5*kSG2EnvAmp, p4, 2, kSG2PWM, kSG2Phase
  elseif iSG2Wav == 4 then ; triangle
    aSG2Sine vco2 p5*kSG2EnvAmp, p4, 4, kSG2PWM, kSG2Phase
  endif
  
  ; apply ring modulation
  if kSG2RMVolume > 0.001 then
    aSG2RMsound = (aSG2RM * aSG2sine)
    aSG2 = (aSG2Sine*(1-kSG2RMVolume))+aSG2RMsound
  else
    aSG2 = aSG2Sine 
  endif
  
  ;HP Filter
  iSG2EnvFilterRelease limit iSG2EnvFilterRelease , 0.001, iSG2EnvAmpRelease ; release cannot be longer than amp env release
  kSG2EnvFilter madsr iSG2EnvFilterAttack, iSG2EnvFilterDecay, iSG2EnvFilterSustain, iSG2EnvFilterRelease
  denorm aSG2
  aSG2FHp bqrez aSG2, kSG2FilterHpF * kSG2EnvFilter, kSG2FilterHpR, 1
 
  ;LP Filter
  denorm aSG2FHp
  aSG2FLp bqrez aSG2FHp,kSG2FilterLpF * kSG2EnvFilter,kSG2FilterLpR, 0
  aSG2Output = aSG2FHp
    


; =====================
; ||  Master Section ||  
; =====================


; -----------------------
; | variable definition |
; -----------------------
  
  ; general
  kSG1Amp chnget "SG1 Amp"
  kMix chnget "SGMix"
  
  ; reverb
  kMasterReverbSize chnget "Master Reverb Size"
  kMasterReverbDamp chnget "Master Reverb Damp" 
  kMasterReverbMix chnget "Master Reverb Mix"
  kMasterReverbLevel chnget "Master Reverb Level"
 
  
  ; mix knob left : only generator 1 sounds at 100% volume
  ; mix knob right : only generator 2 sounds at 100% volume
  ; mix knob middle: both generators sound at 50% volume each
 
  aoutL = (aSG1Output * (1.0 - kMix)) + (aSG2Output * kMix)
  aoutR = (aSG1Output * (1.0 - kMix)) + (aSG2Output * kMix)
  
  ; master output
  aMoutL = aoutL
  aMOutR = aoutL
  
; ---------------------------
; | end variable definition |
; ---------------------------
  
  ; enable Reverb only if room size is bellow 0
  kShoudlReverd = 0 
  if (kMasterReverbSize == 0) then
    aMOutL = aoutL
    aMOutR = aoutL
    outs aMOutL, aMOutR
  else
    denorm aMOutL
    denorm aMOutR
    aMOutL, aMOutR freeverb aoutL, aoutR, kMasterReverbSize, kMasterReverbDamp, 48000
    aMOutL = aMOutL + aoutL
    aMOutR = aMOutR + aoutR
    ; master output
    outs aMOutL, aMOutR
  endif
 
endin

instr 2
  if metro(4) == 1 then
    event "i", "updateGUI", 0, 1
  endif
endin

instr updateGUI

iSG1wavStr chnget "SG1 Wav"
iSG1onoff chnget "SG1 on/off"
if iSG1onoff == 0 then
  chnset "active(0)", "ID_Layer1"
  chnset "active(1)", "ID_SG1_on_off"
else
  chnset "active(1)", "ID_Layer1"
endif
  if iSG1wavStr == 1 then      ;sine
    chnset "active(0)", "ID_SG1_PWM"
    chnset "active(0)", "ID_SG1_Phase"
  elseif iSG1wavStr == 2 then  ;saw
    chnset "active(0)", "ID_SG1_PWM"
    chnset "active(0)", "ID_SG1_Phase"
  elseif iSG1wavStr == 3 then  ;square
    chnset "active(1)", "ID_SG1_PWM"
    chnset "active(1)", "ID_SG1_Phase"
  elseif iSG1wavStr == 4 then  ;triangle
    chnset "active(0)", "ID_SG1_PWM"
    chnset "active(0)", "ID_SG1_Phase"    
  endif
endin
</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
f0 z

i2 0 z
</CsScore>
</CsoundSynthesizer>
