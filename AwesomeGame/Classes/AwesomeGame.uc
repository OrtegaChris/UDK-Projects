class AwesomeGame extends UTDeathmatch placeable;
    //chrisOrtega
simulated function PostBeginPlay()
{
    local Enemy x;

    super.PostBeginPlay();
    GoalScore = 0;

    foreach DynamicActors(class'Enemy', x)
        GoalScore++;
}

defaultproperties
{
    bScoreDeaths=false
    PlayerControllerClass=class'AwesomeGame.AwesomePlayerController'
}

