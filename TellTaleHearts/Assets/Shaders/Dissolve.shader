Shader "Dissolve/Diffuse" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB)", 2D) = "white" {}
	_DissolveTex ("Dissolve (R)", 2D) = "white" {}
	_SecondColor ("Second Color", Color) = (1,1,1,1)
	_SecondTex ("Second Tex (RGB)", 2D) = "white" {}
	_Darken ("Darken", Range(0,1)) = 0
	_Alpha ("Alpha", Range(0,1)) = 0
}

SubShader {
	Tags {"IgnoreProjector"="True" "RenderType"="TransparentCutout"}
	LOD 300

CGPROGRAM
#pragma surface surf Lambert alphatest:Zero
sampler2D _MainTex;
sampler2D _DissolveTex;
sampler2D _SecondTex;
float4 _Color;
float4 _SecondColor;
float _Alpha;
float _Darken;

struct Input {
	float2 uv_MainTex;
	float2 uv_DissolveTex;
	float2 uv_SecondTex;
};

void surf (Input IN, inout SurfaceOutput o) {
	half4 tex = tex2D(_MainTex, IN.uv_MainTex);
	half4 texd = tex2D(_DissolveTex, IN.uv_DissolveTex);
	half4 texs = tex2D(_SecondTex, IN.uv_SecondTex);
	//o.Albedo = tex.rgb * _Color.rgb;
	//if(texs.a > 0.01 && _Color.a < 0.9f)
	
	texs *= _Alpha * _SecondColor;
	texs -= half4(_Darken,_Darken,_Darken,0);
	
	o.Albedo = half4((tex.rgb*tex.a+texs.rgb*texs.a),tex.a+texs.a);
	o.Alpha = tex.a + texs.a;
	//else
	//	o.Albedo = tex.rgb;
	//o.Alpha = texs.a
	
	//if(_Color.a < 0.99 && o.Alpha < 0.2)
	//{
	//	o.Albedo = texs.rgb;// * _Color.rgb;
	//	o.Albedo = _SecondColor;
	//}
}
ENDCG
}

Fallback "Transparent/Cutout/VertexLit"
}