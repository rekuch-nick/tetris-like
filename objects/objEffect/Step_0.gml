



x += xSpeed;
y += ySpeed;
ySpeed += grav;

image_alpha -= fade;
if(flicker){ image_alpha = random_range(.1, 1); }

timeCD --;
if(image_alpha < 0 || timeCD < 1){
	instance_destroy();
}