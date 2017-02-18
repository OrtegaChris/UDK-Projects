//DO NOT CHANGE THE NAME OF THE CLASSES.
// Project by Chris Ortega
class AwesomePlayerController extends UTPlayerController;

var vector PlayerViewOffset;
var Enemy en;

simulated function PostBeginPlay()
{
    super.PostBeginPlay();
    bNoCrosshair = true;
}

simulated event GetPlayerViewPoint(out vector out_Location, out Rotator out_Rotation)
{
    local int xPawn, yPawn, zPawn, xEnemy, yEnemy, zEnemy;
    super.GetPlayerViewPoint(out_Location, out_Rotation);

    if(Pawn != none)
    {
        Pawn.Mesh.SetOwnerNoSee(false);
        Pawn.Weapon.SetHidden(true);

        out_Location = Pawn.Location + PlayerViewOffset;
        out_Rotation = rotator(Pawn.Location - out_Location);
        xPawn = Pawn.Location.X; yPawn = Pawn.Location.Y; zPawn = Pawn.Location.Z;

        foreach AllActors( class 'Enemy', en)
        {
          xEnemy = en.Location.X; yEnemy = en.Location.Y; zEnemy = en.Location.Z;
          if(same(xPawn, xEnemy) && same(yPawn, yEnemy) && same(zPawn, zEnemy)) WorldInfo.Game.ScoreObjective(Pawn.PlayerReplicationInfo, 1);} //End game when Pawn and Enemy are close.
    }
}

function Rotator GetAdjustedAimFor( Weapon W, vector StartFireLoc )
{
    return Pawn.Rotation;
}

function bool same(int aPawn, int aEnemy)
{
  return aPawn - 100 <= aEnemy && aEnemy<= aPawn + 100;

}

reliable client function ClientSetHUD(class<HUD> newHUDType)
{
    if(myHUD != none)
        myHUD.Destroy();

    myHUD = spawn(class'AwesomeHUD', self);
}

defaultproperties
{
    PlayerViewOffset=(X=-64,Y=0,Z=512)//1024)
}
