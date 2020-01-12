<Cabbage>
#define LAYER1_COLOR colour(61, 106, 73, 255)
#define LAYER1_COLOR2 colour(60, 80, 50, 255)
#define LAYER1_COLOR3 colour(80, 80, 50, 255)

#define LAYER2_COLOR colour(100, 50, 50, 255)
form caption("LazerHawk") size(800, 800), colour(100, 100, 182), pluginid("LHSYSUB")
keyboard bounds(0, 700, 800, 100)
image bounds(2, 0, 800, 50), colour(153, 153, 800, 300) outlinecolour(192, 18, 18, 255),plant("Header"){
texteditor bounds(2,2,198,20), colour(153,153,153)
button bounds(202,2, 55, 20), text("Clone")
combobox bounds(2, 25, 198, 20), populate("*.snaps")
filebutton bounds(202, 25, 55, 20), text("Save"), populate("*.snaps"), mode("snapshot")

button bounds(270,2, 55, 20), text("Find")
button bounds(270,25, 55, 20), text("Edit")

button bounds(340,2, 55, 20), text("Pad")
button bounds(400,2, 55, 20), text("Synth")
button bounds(460,2, 55, 20), text("Bass")
button bounds(520,2, 55, 20), text("Brass")
button bounds(580,2, 55, 20), text("Drum")
button bounds(640,2, 55, 20), text("String")
button bounds(700,2, 55, 20), text("Piano")


button bounds(340,25, 55, 20), text("Rythmic")
button bounds(400,25, 55, 20), text("Texture")
button bounds(460,25, 55, 20), text("Soft")
button bounds(520,25, 55, 20), text("Metalic")
button bounds(580,25, 55, 20), text("Melodic")
button bounds(640,25, 55, 20), text("Accoustic")
button bounds(700,25, 55, 20), text("Analog")

}
image bounds(0, 50, 800, 200), $LAYER1_COLOR ,channel("Layer1"), identchannel("ID_Layer1"), plant("layer1plant"){

  groupbox bounds(0,0,300,200), $LAYER1_COLOR, text("Sound Generator 1"), fontcolour("black"), identchannel("ID_Sound_Generator_1"){
    ;label      bounds(0, 5, 200, 20),   text("Sound Generator 1"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

    combobox   bounds(2, 2, 90, 20),  items("none" , "saw", "square", "triangle"), channel("SG1_Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
   
    rslider    bounds(2, 20, 50, 50), text("Noise"), channel("SG1_Noise_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50), text("Triangle"), channel("SG1_Triangle_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50), text("SF2"), channel("SG1_SF2_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 70, 50, 50), text("Sub"), channel("SG1_Suboscilator_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(2, 70, 50, 50),text("Octave"), channel("SG1_Octave"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 70, 50, 50),text("Fine"), channel("SG1_Fine"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)
    
    image bounds(150,22,148,50), $LAYER1_COLOR2 {
      rslider    bounds(0, 0, 50, 50), text("Square"),channel("SG1_Square_Volume"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(50, 0, 50, 50), text("Phase"), channel("SG1_Square_Phase"), range(0.01, 0.99, .01, 1, 0.001), identchannel("ID_SG1_Phase")textcolour(0,0,0)
      rslider    bounds(100, 0, 50, 50), text("PWM"),channel("SG1_Square_PWM"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
    }
    image bounds(150,72,148,50), $LAYER1_COLOR3 {
      rslider    bounds(0, 0, 50, 50), text("Saw"),channel("SG1_Saw_Volume"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(50, 0, 50, 50), text("Super"),channel("SG1_Saw_Super"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(100, 0, 50, 50), text("Detune"),channel("SG1_Saw_Detune"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
    }
    
    
    groupbox bounds(2,120,194,74), $LAYER1_COLOR, text("Amp Envelope (ENV1)"), fontcolour("black"){
    ;label      bounds(0, 120, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
      rslider    bounds(0, 25, 50, 50),  text("A"), channel("SG1_Env_Amp_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(50, 25, 50, 50), text("D"), channel("SG1_Env_Amp_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(100, 25, 50, 50),text("S"), channel("SG1_Env_Amp_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(150, 25, 50, 50),text("R"), channel("SG1_Env_Amp_R"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
    }
      rslider    bounds(200, 120, 50, 50),text("LFO1 Rate"), channel("SG1_LFO1_Rate"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
      combobox   bounds(198, 170, 50, 20),  items("Noise" , "Vol", "SF2", "Square", "Phase","PWM","Octave","Fine","Sub","Saw","Super","Detune"), channel("SG1_LFO1_Destination"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
      rslider    bounds(250, 120, 50, 50),text("LFO2 Rate"), channel("SG1_LFO2_Rate"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
      combobox   bounds(248, 170, 50, 20),  items("Noise" , "Vol", "SF2", "Square", "Phase","PWM","Octave","Fine","Sub","Saw","Super","Detune"), channel("SG1_LFO2_Destination"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

  }

  groupbox bounds(300,0,200,200), $LAYER1_COLOR, text("RM + FM"), fontcolour("black"){
    ;label      bounds(210, 5, 190, 20), text("AM"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_RM_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Vol"), channel("SG1_RM_Volume"), range(0.001, 1, 0.01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(4, 70, 50, 20),items("ring" , "am", "chaos", "frozen"), channel("SG1_AM_Type"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    label      bounds(4, 90, 50, 11),text("AM Type"), $LAYER1_COLOR, fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 70, 50, 20),items("sine" , "saw", "square", "triangle"), channel("SG1_AM_Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    label      bounds(50, 90, 50, 11),text("AM Wav"), $LAYER1_COLOR, fontcolour(0, 0, 0, 255)
    combobox   bounds(4, 100, 100, 20),items("OP1->OP2->SF2", "OP1->OP2->Square","OP1->OP2->Saw", "OP1->OP2->Sub", "OP1->OP2->All except Sub","OP1->OP2->All"), channel("SG1_FM_Algorithm"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

    rslider    bounds(100, 25, 50, 50), text("OP1"), channel("SG1_FM_OP1_Volume"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(100, 75, 50, 50), text("OP1 Freq"), channel("SG1_FM_OP1_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(150, 25, 50, 50), text("OP2"), channel("SG1_FM_OP2_volume"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(150, 75, 50, 50), text("OP2 Freq"), channel("SG1_FM_OP2_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    
    ;label      bounds(0, 120, 190, 20), text("Ring Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    groupbox bounds(2,130,195,70), $LAYER1_COLOR, text("RM Envelope (ENV2)"), fontcolour("black"){
      rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_RM_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_RM_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_RM_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_RM_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
    }
  }

  groupbox bounds(500,0,100,75s), $LAYER1_COLOR, text("Filter HP"), fontcolour("black"){
    ;label      bounds(410, 5, 90, 20),  text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_High_Pass_Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Reas"), channel("SG1_High_Pass_Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(600,0,100,75), $LAYER1_COLOR, text("Filter LP"), fontcolour("black"){
    ;label      bounds(0, 5, 90, 20),  text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_Low_Pass_Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Reas"), channel("SG1_Low_Pass_Reasonance"), range(0.01, 1, 0, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(500,75,200,70), $LAYER1_COLOR, text("Filters Envelope (ENV3)"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_Filters_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_Filters_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_Filters_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_Filters_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(500,145,200,55), $LAYER1_COLOR, text("FM Envelope (ENV4)"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_Filters_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_Filters_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_Filters_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_Filters_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
  }
  image bounds(700,0,100,200), $LAYER1_COLOR, text("Keyboard Split"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(0, 0, 50, 20),channel("SG1_Keyboard_Split_HP_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 0, 50, 20),channel("SG1_Keyboard_Split_HP_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(0, 50, 50, 20),channel("SG1_Keyboard_Split_LP_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 50, 50, 20),channel("SG1_Keyboard_Split_LP_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(0, 100, 50, 20),channel("SG1_Keyboard_Split_RM_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 100, 50, 20),channel("SG1_Keyboard_Split_RM_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    
    combobox   bounds(0, 150, 50, 20),channel("SG1_Keyboard_Split_FM_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 150, 50, 20),channel("SG1_Keyboard_Split_FM_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 170, 30, 30),  text(""), channel("SG1_Keyboard_FM_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 170, 30, 30),  text(""), channel("SG1_Keyboard_Split_FM_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)  
    rslider    bounds(60, 170, 30, 30),  text(""), channel("SG1_Keyboard_Split_FM_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

  }
  
} 

image bounds(0, 250, 800, 200), $LAYER1_COLOR ,channel("Layer2"), identchannel("ID_Layer2"), plant("layer2plant"){

  groupbox bounds(0,0,300,200), $LAYER1_COLOR, text("Sound Generator 1"), fontcolour("black"), identchannel("ID_Sound_Generator_1"){
    ;label      bounds(0, 5, 200, 20),   text("Sound Generator 1"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

    combobox   bounds(2, 2, 90, 20),  items("none" , "saw", "square", "triangle"), channel("SG1_Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
   
    rslider    bounds(2, 20, 50, 50), text("Noise"), channel("SG1_Noise_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50), text("Triangle"), channel("SG1_Triangle_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50), text("SF2"), channel("SG1_SF2_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 70, 50, 50), text("Sub"), channel("SG1_Suboscilator_Volume"), range(0.001, 0.99, .001, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(2, 70, 50, 50),text("Octave"), channel("SG1_Octave"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 70, 50, 50),text("Fine"), channel("SG1_Fine"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)
    
    image bounds(150,22,148,50), $LAYER1_COLOR2 {
      rslider    bounds(0, 0, 50, 50), text("Square"),channel("SG1_Square_Volume"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(50, 0, 50, 50), text("Phase"), channel("SG1_Square_Phase"), range(0.01, 0.99, .01, 1, 0.001), identchannel("ID_SG1_Phase")textcolour(0,0,0)
      rslider    bounds(100, 0, 50, 50), text("PWM"),channel("SG1_Square_PWM"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
    }
    image bounds(150,72,148,50), $LAYER1_COLOR3 {
      rslider    bounds(0, 0, 50, 50), text("Saw"),channel("SG1_Saw_Volume"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(50, 0, 50, 50), text("Super"),channel("SG1_Saw_Super"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
      rslider    bounds(100, 0, 50, 50), text("Detune"),channel("SG1_Saw_Detune"), range(0.01, 0.99, .01, 1, 0.001),identchannel("ID_SG1_PWM"), textcolour(0,0,0)
    }
    
    
    groupbox bounds(2,120,194,74), $LAYER1_COLOR, text("Amp Envelope (ENV5)"), fontcolour("black"){
    ;label      bounds(0, 120, 190, 20), text("Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
      rslider    bounds(0, 25, 50, 50),  text("A"), channel("SG1_Env_Amp_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(50, 25, 50, 50), text("D"), channel("SG1_Env_Amp_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(100, 25, 50, 50),text("S"), channel("SG1_Env_Amp_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(150, 25, 50, 50),text("R"), channel("SG1_Env_Amp_R"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
    }
      rslider    bounds(200, 120, 50, 50),text("LFO1 Rate"), channel("SG1_LFO1_Rate"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
      combobox   bounds(198, 170, 50, 20),  items("Noise" , "Vol", "SF2", "Square", "Phase","PWM","Octave","Fine","Sub","Saw","Super","Detune"), channel("SG1_LFO1_Destination"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
      rslider    bounds(250, 120, 50, 50),text("LFO2 Rate"), channel("SG1_LFO2_Rate"), range(0.1, 3, .01, 1, 0.001), textcolour(0,0,0)     
      combobox   bounds(248, 170, 50, 20),  items("Noise" , "Vol", "SF2", "Square", "Phase","PWM","Octave","Fine","Sub","Saw","Super","Detune"), channel("SG1_LFO2_Destination"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

  }

  groupbox bounds(300,0,200,200), $LAYER1_COLOR, text("RM + FM"), fontcolour("black"){
    ;label      bounds(210, 5, 190, 20), text("AM"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_RM_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Vol"), channel("SG1_RM_Volume"), range(0.001, 1, 0.01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(4, 70, 50, 20),items("ring" , "am", "chaos", "frozen"), channel("SG1_AM_Type"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    label      bounds(4, 90, 50, 11),text("AM Type"), $LAYER1_COLOR, fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 70, 50, 20),items("sine" , "saw", "square", "triangle"), channel("SG1_AM_Wav"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    label      bounds(50, 90, 50, 11),text("AM Wav"), $LAYER1_COLOR, fontcolour(0, 0, 0, 255)
    combobox   bounds(4, 100, 100, 20),items("OP1->OP2->SF2", "OP1->OP2->Square","OP1->OP2->Saw", "OP1->OP2->Sub", "OP1->OP2->All except Sub","OP1->OP2->All"), channel("SG1_FM_Algorithm"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)

    rslider    bounds(100, 25, 50, 50), text("OP1"), channel("SG1_FM_OP1_Volume"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(100, 75, 50, 50), text("OP1 Freq"), channel("SG1_FM_OP1_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(150, 25, 50, 50), text("OP2"), channel("SG1_FM_OP2_volume"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    rslider    bounds(150, 75, 50, 50), text("OP2 Freq"), channel("SG1_FM_OP2_Frequency"), range(1, 8000, 1, .5, 1), textcolour(0,0,0)
    
    ;label      bounds(0, 120, 190, 20), text("Ring Amp Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    groupbox bounds(2,130,195,70), $LAYER1_COLOR, text("RM Envelope (ENV6)"), fontcolour("black"){
      rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_RM_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_RM_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_RM_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
      rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_RM_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
    }
  }

  groupbox bounds(500,0,100,75s), $LAYER1_COLOR, text("Filter HP"), fontcolour("black"){
    ;label      bounds(410, 5, 90, 20),  text("Filter HP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_High_Pass_Frequency"), range(100, 16000, 100, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Reas"), channel("SG1_High_Pass_Reasonance"), range(1, 200, 1, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(600,0,100,75), $LAYER1_COLOR, text("Filter LP"), fontcolour("black"){
    ;label      bounds(0, 5, 90, 20),  text("Filter LP"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 25, 50, 50), text("Freq"), channel("SG1_Low_Pass_Frequency"), range(100, 16000, 16000, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 25, 50, 50), text("Reas"), channel("SG1_Low_Pass_Reasonance"), range(0.01, 1, 0, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(500,75,200,70), $LAYER1_COLOR, text("Filters Envelope (ENV7)"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_Filters_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_Filters_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_Filters_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_Filters_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
  }
  groupbox bounds(500,145,200,55), $LAYER1_COLOR, text("FM Envelope (ENV8)"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 50, 50),  text("A"), channel("SG1_Env_Filters_A"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(50, 20, 50, 50),  text("D"), channel("SG1_Env_Filters_D"), range(0.02, 3, 2, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(100, 20, 50, 50),  text("S"), channel("SG1_Env_Filters_S"), range(0.02, .99, .99, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(150, 20, 50, 50),  text("R"), channel("SG1_Env_Filters_R"), range(0.02, 3, 12, 1, 0.001), textcolour(0,0,0)
  }
  image bounds(700,0,100,200), $LAYER1_COLOR, text("Keyboard Split"), fontcolour("black"){
    ;label      bounds(400, 120, 190, 20), text("Filter Envelope"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(0, 0, 50, 20),channel("SG1_Keyboard_Split_HP_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 0, 50, 20),channel("SG1_Keyboard_Split_HP_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 20, 30, 30),  text(""), channel("SG1_Keyboard_Split_HP_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(0, 50, 50, 20),channel("SG1_Keyboard_Split_LP_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 50, 50, 20),channel("SG1_Keyboard_Split_LP_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 70, 30, 30),  text(""), channel("SG1_Keyboard_Split_LP_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    combobox   bounds(0, 100, 50, 20),channel("SG1_Keyboard_Split_RM_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 100, 50, 20),channel("SG1_Keyboard_Split_RM_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(60, 120, 30, 30),  text(""), channel("SG1_Keyboard_Split_RM_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

    
    combobox   bounds(0, 150, 50, 20),channel("SG1_Keyboard_Split_FM_Note_Low"), items("none", "C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    combobox   bounds(50, 150, 50, 20),channel("SG1_Keyboard_Split_FM_Note_High")items("none","C0","D0","E0","F0","G0","A0","A0","C1","D1","E1","F1","G1","A1","B1","C2","D2","E2","F2","G2","A2","B2","C3","D3","E3","F3","G3","A3","B3","C4","D4","E4","F4","G4","A4","B4","C5","D5","E5","F5","G5","A5","B5","C6","D6","E6","F6","G6","A6","B6"),colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
    rslider    bounds(0, 170, 30, 30),  text(""), channel("SG1_Keyboard_FM_Velocity_Low"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)
    rslider    bounds(30, 170, 30, 30),  text(""), channel("SG1_Keyboard_Split_FM_Velocity_High"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)  
    rslider    bounds(60, 170, 30, 30),  text(""), channel("SG1_Keyboard_Split_FM_Scale"), range(0.001, 3, .01, 1, 0.001), textcolour(0,0,0)

  }
  
} 

image bounds(0, 450, 800, 250) colour(120, 69, 69, 255),plant("Master"){
label      bounds(0, 0, 90, 20), text("General"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(0, 25, 50, 50),  text("Mix"), channel("SGMix"), range(0.0, 1, .5, 1, .01), textcolour(0,0,0)
;rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, .5, 0, 1, 0.001), textcolour(0,0,0)

label      bounds(100, 0, 150, 20), text("Chorus"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
;rslider    bounds(0, 25, 50, 50), trackerinsideradius(0.6), text("Mix"), channel("SGMix"), range(0.0, 1, .5, 1, .01), textcolour(0,0,0)
;rslider    bounds(50, 25, 50, 50), trackerinsideradius(0.6), text("SG2"), channel("SG2 Amp"), range(0.0, .5, 0, 1, 0.001), textcolour(0,0,0)


label      bounds(252, 0, 190, 20), text("Reverb"), colour(60, 60, 120, 122), fontcolour(0, 0, 0, 255)
rslider    bounds(250, 25, 50, 50),  text("Size"), channel("Master_Reverb_Size"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(300, 25, 50, 50),  text("Damp"), channel("Master_Reverb_Damp"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(350, 25, 50, 50),  text("Mix"), channel("Master_Reverb_Mix"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)
rslider    bounds(400, 25, 50, 50),  text("Level"), channel("Master_Reverb_Level"), range(0.0, 1, 0, .5, .01), textcolour(0,0,0)


signaldisplay bounds(0,97,500,150), backgroundcolour("black")
groupbox bounds(500,0,300,250), text("Mod Matrix") 

}

;gentable bounds(600, 100, 200, 200), tablenumber(1), identchannel("table"), active(1), samplerange(0,4096);, amprange(-0.5,1,-1,0.1) 



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

seed 0

;giWave ftgen 1, 0, 4096, -2,2, 0, 2, 0
;giSampleTime = 4096
;giFt   ftgen 1, 0, giSampleTime, 2, 0
giWave ftgen 1, 0, 4096, 10, 1, 1, 1, 1 

; =======================
; ||     OPCODES       ||
; =======================



; =======================
; || SOUND GENERATOR 1 ||
; =======================

;cpuprc 1,90
maxalloc 1,32
instr 1
  
; -----------------------
; | variable definition |
; -----------------------

  ; Waveform
  iSG1wavStr chnget "SG1_Wav"
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
  kSG1PWM chnget "SG1_PWM"
  
  ; Phase
  kSG1Phase chnget "SG1_Phase"
  
  ; noise generator
  kSG1NoiseVolume chnget "SG1_Noise_Volume"
  
  ; Amp Envelope
  iSG1EnvAmpAttack chnget "SG1_Env_Amp_A"
  iSG1EnvAmpDecay chnget "SG1_Env_Amp_D"
  iSG1EnvAmpSustain chnget "SG1_Env_Amp_S"
  iSG1EnvAmpRelease chnget "SG1_Env_Amp_R"
  
  ; Ring Modulator
  kSG1RMFrequency chnget "SG1_RM_Frequency"
  kSG1RMVolume chnget "SG1_RM_Volume"
  
  ; Ring Modulator Envelope
  iSG1EnvRMAttack chnget "SG1_Env_RM_A"
  iSG1EnvRMDecay chnget "SG1_Env_RM_D"
  iSG1EnvRMSustain chnget "SG1_Env_RM_S"
  iSG1EnvRMRelease chnget "SG1_Env_RM_R"
  
  ; Low Pass
  kSG1FilterLpF chnget "SG1_Low_Pass_Frequency"
  kSG1FilterLpR chnget "SG1_Low_Pass_Reasonance"
  
  ; High Pass
  kSG1FilterHpF chnget "SG1_High_Pass_Frequency"
  kSG1FilterHpR chnget "SG1_High_Pass_Reasonance"
  
  ; Filter Envelope
  iSG1EnvFilterAttack chnget "SG1_Env_Filters_A"
  iSG1EnvFilterDecay chnget "SG1_Env_Filters_D"
  iSG1EnvFilterSustain chnget "SG1_Env_Filters_S"
  iSG1EnvFilterRelease chnget "SG1_Env_Filters_R"

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
  aSG1Output = aSG1Output * 0.5
  
  
; =======================
; || SOUND GENERATOR 2 ||
; =======================



; -----------------------
; | variable definition |
; -----------------------
  ;print p5
  ; Waveform
  iSG2Wav chnget "SG2_Wav"
 
  ; PWM 
  kSG2PWM chnget "SG2_PWM"
  
  ; Phase
  kSG2Phase chnget "SG2_Phase"
  
  ; Amp Envelope
  iSG2EnvAmpAttack chnget "SG2_Env_Amp_A"
  iSG2EnvAmpDecay chnget "SG2_Env_Amp_D"
  iSG2EnvAmpSustain chnget "SG2_Env_Amp_S"
  iSG2EnvAmpRelease chnget "SG2_Env_Amp_R"
  
  ; Ring Modulator
  kSG2RMFrequency chnget "SG2_RM_Frequency"
  kSG2RMVolume chnget "SG2_RM_Volume"
  
  ; Ring Modulator Envelope
  iSG2EnvRMAttack chnget "SG2_Env_RM_A"
  iSG2EnvRMDecay chnget "SG2_Env_RM_D"
  iSG2EnvRMSustain chnget "SG2_Env_RM_S"
  iSG2EnvRMRelease chnget "SG2_Env_RM_R"
  
  ; Low Pass
  kSG2FilterLpF chnget "SG2_Low_Pass_Frequency"
  kSG2FilterLpR chnget "SG2_Low_Pass_Reasonance"
  
  ; High Pass
  kSG2FilterHpF chnget "SG2_High_Pass_Frequency"
  kSG2FilterHpR chnget "SG2_High_Pass_Reasonance"
  
  ; Filter Envelope
  iSG2EnvFilterAttack chnget "SG2_Env_Filters_A"
  iSG2EnvFilterDecay chnget "SG2_Env_Filters_D"
  iSG2EnvFilterSustain chnget "SG2_Env_Filters_S"
  iSG2EnvFilterRelease chnget "SG2_Env_Filters_R"
  
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
    aSG2RMsound = (aSG2RM * aSG2Sine)
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
  kSG1Amp chnget "SG1_Amp"
  kMix chnget "SGMix"
  
  ; reverb
  kMasterReverbSize chnget "Master_Reverb_Size"
  kMasterReverbDamp chnget "Master_Reverb_Damp" 
  kMasterReverbMix chnget "Master_Reverb_Mix"
  kMasterReverbLevel chnget "Master_Reverb_Level"
 
  
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
    ;denorm aMOutL
    ;denorm aMOutR
    aMOutL, aMOutR freeverb aoutL, aoutR, kMasterReverbSize, kMasterReverbDamp, 48000
    aMOutL = aMOutL + aoutL
    aMOutR = aMOutR + aoutR
    ; master output
    outs aMOutL, aMOutR
  endif
  
endin 

  

</CsInstruments>
<CsScore>
;causes Csound to run for about 7000 years...
;f0 z
</CsScore>
</CsoundSynthesizer>
