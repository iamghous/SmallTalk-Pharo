"creating a Bordered morph not a simple class"
BorderedMorph subclass: #MainWindow
 "Initializing all the variable"
	instanceVariableNames: 'initialize pLabel1 cInput pLabel2 pButton string1 string2 string3 int1 int2 pLabel3 pLabel4'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'NomanPortofolio'!

!MainWindow methodsFor: 'accessing' stamp: 'NomanGhous 10/17/2017 21:29'!
initialize
"this will call initialize class"
super initialize.
"Creating a gui with 200x200"
self bounds: (0@0 corner:200@200).
"Giving it a khaki kind of background Colour"
self color: (Color r: 0.9500000000000001 g: 0.8240000000000001 b: 0.605 alpha: 1.0).

"creating a label using Stringmorph and setting the text"
pLabel1 := StringMorph contents: 'Convert Fahrenheit to Celsius'.
"adjusting the position of label inside the gui"
pLabel1 position: 17@40.
"giving it a dark green colour"
pLabel1 color: (Color r: 0.298 g: 0.459 b: 0.423 alpha: 1.0).
"adding the morph to gui"
self addMorph: pLabel1.




"creating a lable using string morph and setting the text"
pLabel3 := StringMorph contents: 'F:'.
"adjusting the label position inside the gui"
pLabel3 position: 30@80.
"giving it a darkish green colour"
pLabel3 color: (Color r: 0.298 g: 0.459 b: 0.423 alpha: 1.0).
"adding the morph to the gui"
self addMorph: pLabel3.


"creating and input field using textmorph"
cInput := TextMorph new.
"setting the size of input field"
cInput bounds: (0@0 corner:100@0).
"adjusting its position in the gui"
cInput position: 50@80.
"giving it a green colour"
cInput backgroundColor:(Color r: 0.137 g: 0.436 b: 0.203 alpha: 1.0).
"adding the morph to gui"
self addMorph: cInput.


"creating a label using stringmorph and setting its content"
pLabel4 := StringMorph contents: 'Output:'.
"adjusting its position inside the gui"
pLabel4 position: 70@110.
"giving it a darkish blue colour" 
pLabel4 color: (Color r: 0.304 g: 0.389 b: 0.621 alpha: 1.0).
"adding the label to gui"
self addMorph: pLabel4.


"creating another label for output"
pLabel2 := StringMorph contents: ''.
"adjusting its position in gui"
pLabel2 position: 40@130.
"giving it a darkish green colour"
pLabel2 color: (Color r: 0.304 g: 0.389 b: 0.621 alpha: 1.0).
"adding the label to gui"
self addMorph: pLabel2.


"creating the button using simple button morph"
pButton := SimpleButtonMorph new.
"setting button position isnide the gui"
pButton position: 70@160.
"Dark Green Color"
pButton color: (Color r: 0.298 g: 0.459 b: 0.423 alpha: 1.0).
"labeling the button"
pButton label:  'Convert'.
"its target would be in the same gui"
pButton target: self.
"giving it a method that it can call on a hit"
pButton actionSelector:#converterMethod.
"adding the button to morph"
self addMorph: pButton.! !


!MainWindow methodsFor: 'action-button-actions' stamp: 'NomanGhous 10/17/2017 19:35'!
converterMethod
 

"putting the input content into a string as a string because when you use contents, it adds the data in array"
	string1 := cInput contents asString.
    "now the same string will be converted to integer"
   int1:= string1 asNumber.
   "now we will use Farhenhite to Celsius method and assign it as float beucase otherwise it wont dispaly it in float"
   int2:= (int1-32)*5/9 asFloat.
   "put the result of calculation in the lable as a string not integer"
	pLabel2 contents:  int2 asString.! !
