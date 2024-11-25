using Godot;
using System;

public partial class Level : Node2D
{
    public override void _Ready()
    {
        Ui ui = GetNode<Ui>("/root/UI");
        ui.Show();
    }
}
