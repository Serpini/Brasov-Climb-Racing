using Godot;
using System;

public partial class Ui : CanvasLayer
{
    Ui ui;
    public override void _Ready()
    {
        ui = GetNode<Ui>("/root/Ui");
        ui.Show();
    }
    public void ChangeCoinLabel(){
        GetNode<HBoxContainer>("HBoxContainer").GetNode<Label>("CoinScore").Text = Global.LevelCoins.ToString();
    }
}
