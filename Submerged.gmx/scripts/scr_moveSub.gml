///moveSub(left, right, up, down, speed)

if(argument0){
    hSpeed = -1 * argument4;
}else if(argument1){
    hSpeed = 1 * argument4;
} else {
    hSpeed = 0 * argument4;
}
if(argument2){
    vSpeed = -1 * argument4;
}else if(argument3){
    vSpeed = 1 * argument4;
} else {
    vSpeed = 0 * argument4;
}

//Horizontal Collision
if (place_meeting(x+hSpeed,y,obj_solidParent))
{
    while(!place_meeting(x+sign(hSpeed),y,obj_solidParent))
    {
        x += sign(hSpeed);
    }
    hSpeed = 0;
}
x += hSpeed;
 
//Vertical Collision
if (place_meeting(x,y+vSpeed,obj_solidParent))
{
    while(!place_meeting(x,y+sign(vSpeed),obj_solidParent))
    {
        y += sign(vSpeed);
    }
    vSpeed = 0;
}
y += vSpeed;


