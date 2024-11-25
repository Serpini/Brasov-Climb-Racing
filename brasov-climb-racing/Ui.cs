using Godot;
using System;

public partial class Ui : CanvasLayer
{
    public void ChangeCoinLabel(){
        GetNode<HBoxContainer>("HBoxContainer").GetNode<Label>("CoinScore").Text = Global.LevelCoins.ToString();
    }
}
