
#include "../Globals/GlobalsPS.hlsli"


Texture2D txDiffuse : register(t0);


struct PS_INPUT
{
    float4 Position : SV_POSITION;
    float2 TexCoord : TEX;
};


float4 main(PS_INPUT IN) : SV_TARGET
{
    float4 texColor = txDiffuse.Sample(linear_wrap_sampler, IN.TexCoord) * float4(diffuse, 1.0) * albedo_factor;
    return texColor;
}
