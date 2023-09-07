struct PixelShaderInput {
  float4 vPosition      : SV_POSITION;
  float4 vColor	        : COLOR0;
  float2 vTexcoord      : TEXCOORD0;
};

struct PixelShaderOutput {
  float4 Color0 : SV_TARGET0;
};

uniform int uniMipLevel;

PixelShaderOutput main(PixelShaderInput INPUT) {
  PixelShaderOutput OUTPUT;
  
  OUTPUT.Color0 = gm_BaseTextureObject.SampleLevel(gm_BaseTexture, INPUT.vTexcoord, INPUT.vTexcoord.y * 9.0); //sample level is from 0 to 10

  return OUTPUT;
}