class Project9 extends PointLight  placeable;
// Make sure Project9 instance is in the map
// Chrsitopher Ortega UnderGraduate
var PointLight x;
var float brightness;

function PreBeginPlay() {
    SetTimer(0.1, true);
    brightness = 20.0;
}
function Timer() {
brightness = brightness - 0.1;
foreach AllActors(class'PointLight',x)   //foreach
  {
         // x.SetLightProperties(brightness);
        // x.UpdateColorAndBrightness();
         `log("===========Light============ ");
  }


}
simulated function PostBeginPlay() {
   local int counter;
    // To generate a random number.
    //counter = Rand(5);



}

defaultproperties
{
    //Begin Object Class=SpriteComponent Name=Sprite
    Sprite=Texture2D'EditorResources.S_NavP'
    HiddenGame=FALSE
    End Object
    Components.Add(Sprite)

    bCollideActors=false
}
