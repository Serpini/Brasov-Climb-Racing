using Godot;
using System;

public partial class MainMenu : Control
{
	Control Pause;
	public override void _Ready()
	{
		Pause = GetNode<Control>("/root/Pause");
		Ui ui = GetNode<Ui>("/root/Ui");
		ui.Hide();
		Pause.Hide();
	}
	void OnJoacaPressed(){
		GetTree().ChangeSceneToFile("res://scenes/level_selector.tscn");
	}
}
