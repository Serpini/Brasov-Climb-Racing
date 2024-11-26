using Godot;
using System;

public partial class BenzinaBar : TextureProgressBar
{
    float rate = 0.08f;
    public override void _Ready()
    {
        Hide();
    }
    public override void _Process(double delta)
    {
        if(Visible){
            Value -= rate;
        }
    }
    void BenzinaAdded(){
        Value+=20;
    }
}
