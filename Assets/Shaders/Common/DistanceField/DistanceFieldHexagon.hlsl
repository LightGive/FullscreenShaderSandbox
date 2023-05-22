#ifndef HEX_SHIELD_INCLUDED
#define HEX_SHIELD_INCLUDED

void DistanceFieldPolygon_float(
	float2 uv,
	float2 center,
	out float result) 
{
	const float2 baseVec = (0.5,0.86602540378);
	float2 p =uv-center;
	float angle = atan2(p.y, p.x) + PI;
    float normalizedAngle = frac(angle / (2.0 * PI));
    float sector = floor(normalizedAngle * 6.0 + 0.5) / 6.0;
    float2 rv = normalize(float2(baseVec.y * sin(sector * 2.0 * PI), -baseVec.x * cos(sector * 2.0 * PI)));
	result = length(p - rv * dot(rv, p));
}
#endif
