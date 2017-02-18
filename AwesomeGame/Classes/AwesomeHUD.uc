class AwesomeHUD extends UTGFxHUDWrapper placeable;
  //Chris Ortega
event DrawHUD()
{
    super.DrawHUD();

    Canvas.DrawColor = WhiteColor;
    Canvas.Font = class'Engine'.Static.GetLargeFont();
    //Canvas.DrawText("Chris Ortega is Online");
    Canvas.SetPos(Canvas.ClipX * 0.1, Canvas.ClipY * 0.9);

}
defaultproperties
{
}
