using Godot;
using System;

public partial class Coin : Area2D
{
	Ui ui;
	public override void _Ready()
	{
		ui = (Ui)GetNode("/root/Ui");
	}
	public void OnCoinEntered(Node body){
		QueueFree();
		Global.LevelCoins++;
		ui.ChangeCoinLabel();
		GetNode<AudioStreamPlayer2D>("CoinSound").Play();
	}

}
