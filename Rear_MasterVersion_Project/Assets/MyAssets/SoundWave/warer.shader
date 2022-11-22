Shader "Custom/water" {
	Properties{
		_MainTex("Water Texture", 2D) = "white" {}
	}
		SubShader{
			Tags { "RenderType" = "Opaque" }
			LOD 200

			CGPROGRAM
			#pragma surface surf Standard fullforwardshadows
			#pragma target 3.0

			sampler2D _MainTex;

			struct Input {
				float2 uv_MainTex;
			};

			void surf(Input IN, inout SurfaceOutputStandard o) {
				fixed2 uv = IN.uv_MainTex;
				uv.x += -2 * _Time;
				uv.y += -5 * _Time;
				o.Albedo = tex2D(_MainTex, uv);
			}
			ENDCG
	}
		FallBack "Diffuse"
}