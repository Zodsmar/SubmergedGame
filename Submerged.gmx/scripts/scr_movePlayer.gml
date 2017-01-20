///movePlayer(left, right, jump)

if(argument0){
    hSpeed = -1 * moveSpeed;
}else if(argument1){
    hSpeed = 1 * moveSpeed;
} else {
    hSpeed = 0 * moveSpeed;
}


if (vSpeed < 10) vSpeed += grav;


if (place_meeting(x,y+1,obj_solidParent))
{
    vSpeed = (argument2) * -jumpSpeed;
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
