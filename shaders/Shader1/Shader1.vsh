struct VertexShaderInput {
  float4 vPosition : POSITION;
  float4 vColor	   : COLOR0;
  float2 vTexcoord : TEXCOORD0;
};

struct VertexShaderOutput {
  float4 vPosition      : SV_POSITION;
  float4 vColor	        : COLOR0;
  float2 vTexcoord      : TEXCOORD0;
};

VertexShaderOutput main(VertexShaderInput INPUT) {
  VertexShaderOutput OUTPUT;
  
  OUTPUT.vPosition = mul(gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION], INPUT.vPosition); 
  OUTPUT.vColor = INPUT.vColor;
  OUTPUT.vTexcoord = INPUT.vTexcoord;
  	
  return OUTPUT;
}