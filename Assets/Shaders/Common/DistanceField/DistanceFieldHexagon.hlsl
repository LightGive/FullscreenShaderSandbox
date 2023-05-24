#ifndef HEX_SHIELD_INCLUDED
#define HEX_SHIELD_INCLUDED

void DistanceFieldPolygon_float(
	float2 uv,
	float2 center,
	out float result) 
{
	const float Sector = 1.0471975512;
	float2 p = uv - center;
	float sector = floor((atan2(p.y, p.x)+PI)/Sector)/6.0*2.0*PI+(Sector*0.5);
	float2 v = float2(-sin(sector),cos(sector));
	result = length(p-v*dot(v,p));
}
#endif
