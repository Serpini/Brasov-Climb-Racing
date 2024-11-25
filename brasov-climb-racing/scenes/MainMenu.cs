using Godot;
using System;

public partial class MainMenu : Control
{
    public override void _Ready()
    {
        Ui ui = GetNode<Ui>("/root/UI");
        ui.Hide();
    }
    void OnJoacaPressed(){
        GetTree().ChangeSceneToFile("res://Nivele/level.tscn");
    }
}
