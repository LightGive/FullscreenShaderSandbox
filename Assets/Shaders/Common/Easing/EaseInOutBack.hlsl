#ifndef EASING_INCLUDED
#define EASING_INCLUDED

void Ease_float(float t,out float result)
{
	float c1 = 1.70158;
	float c2 = c1 * 1.525;
	result = t < 0.5
  		? (pow(2 * t, 2) * ((c2 + 1) * 2 * t - c2)) / 2
  		: (pow(2 * t - 2, 2) * ((c2 + 1) * (t * 2 - 2) + c2) + 2) / 2;
}

#endif