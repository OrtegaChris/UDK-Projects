class DiscoBall extends KActor placeable;


simulated function PostBeginPlay()
{

  local DiscoBall MyDiscoBall;
  local int i;
   i = Rand(4)+1;
   //i=1;
    foreach AllActors(class'DiscoBall',MyDiscoBall)
    {
               if(i >= 1)
               {
                 MyDiscoBall.setHidden(true);
                 `log("========= " @ i@ "hidden");
                  i--;

               }
          `log("ball");
   }
 }
//defaultproperties
//{
//  bStatic=false;
//}


