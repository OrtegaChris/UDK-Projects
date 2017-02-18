class Project10A extends Actor placeable;

var vector v;
var int stepCounter;
var int timerCount;
var bool hiddenBall;
var int num;
var string grade;

function PreBeginPlay() {
    SetTimer(0.1, true);
    stepCounter = 0;
    timerCount = 0;
    hiddenball = false;
    num = Rand(100);

}
function hideBall(){
  local Project10A ball;
 if(!hiddenball){
    foreach AllActors(class'Project10A',ball){ ball.setHidden(true);}
    hiddenball=true;
  //  `log("====hidden===");
    }
     else{
    foreach AllActors(class'Project10A',ball){ ball.setHidden(false);}
    hiddenball=false;
    //`log("====unhidden===");
    }
  }

function resetCounter(){
 stepCounter = 0;
}

function sideOne(){
  v.X =  3;
  v.Y = 0;
  v.Z = 2;
  stepCounter = stepCounter + 3;
  SetLocation(Location + v);
}

function sideTwo(){
  v.X = -3;
  v.Y =0;
  v.Z = 2;
   stepCounter = stepCounter + 3;
  SetLocation(Location + v);
}
 function sideThree(){
	 v.X = -3;
	 v.Y = 0;
	 v.Z = -2;
	 stepCounter = stepCounter + 3;
	 SetLocation(Location + v);
}

function sideFour(){
     v.X = 3;
     v.Y = 0;
     v.Z = -2;
     stepCounter = stepCounter + 3;
     SetLocation(Location + v);
}
function Timer() {  //defaultMovement: Moves +2 units along the Y- axis
 /*if(stepCounter > 1024){
    resetCounter();
}
else{
	if(stepCounter <= 256){ sideOne();}
	if(stepCounter >= 256 && stepCounter <= 512){sideTwo();}
    if((stepCounter >= 512)&& (stepCounter <= 768)) {sideThree();}
	if((stepCounter >= 768)&& (stepCounter <= 1024)) { sideFour();}
}
if(timerCount > 4){
 //hideBall();
 timerCount = 0;
}
timerCount = timerCount +1 ;
  
 if(num >= 90 && num <=100) {
  grade = "A";

 }


  if(num >= 80 &&num <=90) {
  grade = "B";

 }

  if(num >= 70 &&num <=80) {
  grade = "C";

 }
  if(num > 60&&num <=70) {
  grade = "D";

 }
  else (num <= 60) {
  grade = "F";
  }*/
 }

// `log(num @" is a " @ grade);





defaultproperties
{
    Begin Object Class=StaticMeshComponent Name=PickupMesh
        StaticMesh= StaticMesh'GDC_Materials.Meshes.S_SimpleSphere_01'
    End Object
    Components.Add(PickupMesh)
}

