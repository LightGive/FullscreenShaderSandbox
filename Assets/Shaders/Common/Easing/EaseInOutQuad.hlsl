#ifndef EASING_INCLUDED
#define EASING_INCLUDED

void Ease_float(float t,out float result)
{
	result = t < 0.5 ? 
		2 * t * t : 
		1 - pow(-2 * t + 2, 2) / 2;
}

#endif