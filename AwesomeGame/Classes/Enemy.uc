class Enemy extends Actor
    hidecategories(Attachment,Physics,Debug,Object)
    placeable;
//CHris Ortega
var vector v;
var int stepCounter;

function PreBeginPlay() {
    SetTimer(0.05, true);
    stepCounter = 0;
}

function resetCounter(){
 stepCounter = 0;
}

event TakeDamage(int DamageAmount, Controller EventInstigator, vector HitLocation, vector Momentum, class<DamageType> DamageType, optional TraceHitInfo HitInfo, optional Actor DamageCauser)
{
   WorldInfo.Game.Broadcast(self, "Chris Ortega");

}

function sideOne(){
  v.X = 0;
  v.Y = -2;
  v.Z = 0;
  //`log("=====Timer - run===== " @stepCounter);
  stepCounter = stepCounter + 2;
  SetLocation(Location + v);
}

function sideTwo(){
  v.X = 0;
  v.Y =0;
  v.Z = 2;
  //`log("=====Timer - run===== " @stepCounter);
  stepCounter = stepCounter + 2;
  SetLocation(Location + v);
}

function sideThree(){
	 v.X = 0;
	 v.Y = 2;
	 v.Z = 0;
	 `log("=====Timer - run===== " @stepCounter);
	 stepCounter = stepCounter + 2;
	 SetLocation(Location + v);
}

function sideFour(){
     v.X = 0;
     v.Y = 0;
     v.Z = -2;
     //`log("=====Timer - run===== " @stepCounter);
     stepCounter = stepCounter + 2;
     SetLocation(Location + v);
}

function Timer() {
if(stepCounter > 1024){
    resetCounter();
}
else{
	if(stepCounter <= 256){ sideOne();}
	if(stepCounter >= 256 && stepCounter <= 512){sideTwo();}
	if((stepCounter >= 512)&& (stepCounter <= 768)) {sideThree();}
	if((stepCounter >= 768)&& (stepCounter <= 1024)) { sideFour();}
}
}
defaultproperties
{
    bBlockActors=True
    bCollideActors=True
    Begin Object Class=StaticMeshComponent Name=PickupMesh
        StaticMesh=StaticMesh'UN_SimpleMeshes.TexPropCube_Dup'
        Materials(0)=Material'EditorMaterials.WidgetMaterial_X'
        Scale3D=(X=0.25,Y=0.25,Z=0.5)
    End Object
    Components.Add(PickupMesh)
}
