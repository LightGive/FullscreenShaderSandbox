#ifndef SAMPLE_OUTLINE_INCLUDED
#define SAMPLE_OUTLINE_INCLUDED

float GetGaussianWeight(float distance,float dispersion)
{
	return exp((- distance * distance) / (2 * dispersion * dispersion)) / dispersion;
}

void RadialGaussianBlur_float(
	UnityTexture2D tex,
	UnitySamplerState ss,
	float sampleCount,
	float dispersion,
	float2 scaleOffsetInterval,
	float2 scaleCenter,
	float2 uv,
	out float4 result) 
{
	float3 fc = 0.0;
	for(int i =0; i<int(sampleCount); i++)
	{
		float w = GetGaussianWeight(i,dispersion);
		float2 offset = (uv - scaleCenter)*scaleOffsetInterval*i;
		fc += SAMPLE_TEXTURE2D(tex,ss, uv + offset) * w;
	}
	result = float4(fc,1.0);
}
#endif
