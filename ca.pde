

import controlP5.*;    // import controlP5 library
ControlP5 controlP5;

ControlP5 cp5;

int sliderValue = 100;
int sliderTicks1 = 100;
int sliderTicks2 = 30;
Slider abc;


Slider2D s;




Knob KnobA;
Knob KnobB;
Knob KnobC;
Star[] stars = new Star[500];

void setup()
{
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  
cp5 = new ControlP5(this);
size(800, 600);
smooth();


KnobA = cp5.addKnob("Speed")
        .setRange(0, 225)
        .setValue(50)
        .setRadius(50)
        .setDragDirection(Knob.VERTICAL)
        .setPosition(-80, 50)
        .setSize(175, 175)
        ;
        
        
KnobB = cp5.addKnob("MPH")
         .setRange(0, 225)
        .setValue(50)
        .setRadius(50)
        .setDragDirection(Knob.VERTICAL)
        .setPosition(-320, 120)
        .setSize(150, 150)
        ;
        
KnobC = cp5.addKnob("KM/H")
         .setRange(0, 225)
        .setValue(50)
        .setRadius(50)
        .setDragDirection(Knob.VERTICAL)
        .setPosition(170, 120)
        .setSize(150, 150)
        ;
        
         // horizontal sliders
        // to variable 'sliderValue' 
     cp5.addSlider("Engine")
     .setPosition(-320,-250)
     .setRange(0,255)
     .setSize(250, 30)
     ;
     
  
      cp5.addSlider("")
     .setPosition(-320,-200)
     .setSize(20,100)
     .setRange(0,255)
     .setNumberOfTickMarks(5)
     .setSize(40, 250)
     ;
     
      s = cp5.addSlider2D("Destination")
         .setPosition(-70,-190)
         .setSize(100,100)
         .setMinMax(20,10,100,100)
         .setValue(50,50)
         .setSize(400, 200)
         ;
         
     

        
     
         
         smooth();
        
        
        
        
        
        
}

void draw() {
  background(0);
  translate(width/2, height/2);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show(); 
  }
}
  
  
  