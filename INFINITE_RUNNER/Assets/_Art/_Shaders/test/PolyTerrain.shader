// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:583,x:33482,y:32187,varname:node_583,prsc:2|custl-9109-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1614,x:31616,y:32318,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1614,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:9652,x:31549,y:32789,ptovrint:False,ptlb:Control,ptin:_Control,varname:node_9652,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8613af1d3ee8b2f4b9bc39ad5c2f14b4,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:7458,x:31592,y:33004,ptovrint:False,ptlb:Splat0,ptin:_Splat0,varname:node_7458,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:4651,x:31603,y:33175,ptovrint:False,ptlb:Splat1,ptin:_Splat1,varname:node_4651,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:6810,x:31617,y:33362,ptovrint:False,ptlb:Splat2,ptin:_Splat2,varname:node_6810,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:8930,x:31617,y:33539,ptovrint:False,ptlb:Splat3,ptin:_Splat3,varname:node_8930,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6015,x:31772,y:32832,varname:node_6015,prsc:2,tex:8613af1d3ee8b2f4b9bc39ad5c2f14b4,ntxv:0,isnm:False|TEX-9652-TEX;n:type:ShaderForge.SFN_Tex2d,id:9599,x:31816,y:33002,varname:node_9599,prsc:2,ntxv:0,isnm:False|TEX-7458-TEX;n:type:ShaderForge.SFN_Tex2d,id:9181,x:31821,y:33173,varname:node_9181,prsc:2,ntxv:0,isnm:False|TEX-4651-TEX;n:type:ShaderForge.SFN_Tex2d,id:6002,x:31803,y:33341,varname:node_6002,prsc:2,ntxv:0,isnm:False|TEX-6810-TEX;n:type:ShaderForge.SFN_Tex2d,id:5582,x:31801,y:33552,varname:node_5582,prsc:2,ntxv:0,isnm:False|TEX-8930-TEX;n:type:ShaderForge.SFN_Tex2d,id:7769,x:31862,y:32283,varname:node_7769,prsc:2,ntxv:0,isnm:False|TEX-1614-TEX;n:type:ShaderForge.SFN_Append,id:1412,x:31984,y:32763,varname:node_1412,prsc:2|A-6015-RGB,B-6015-A;n:type:ShaderForge.SFN_ChannelBlend,id:2326,x:32309,y:32777,varname:node_2326,prsc:2,chbt:0|M-1412-OUT,R-9599-RGB,G-9181-RGB,B-6002-RGB,A-5582-RGB;n:type:ShaderForge.SFN_Color,id:5418,x:31821,y:32513,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_5418,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector1,id:9026,x:32087,y:32604,varname:node_9026,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:1577,x:32121,y:32385,varname:node_1577,prsc:2|A-7769-RGB,B-5418-RGB,T-9026-OUT;n:type:ShaderForge.SFN_Lerp,id:4767,x:32399,y:32618,varname:node_4767,prsc:2|A-2326-OUT,B-1577-OUT,T-9026-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:2106,x:32149,y:33146,varname:node_2106,prsc:2;n:type:ShaderForge.SFN_DDX,id:8522,x:32355,y:33052,varname:node_8522,prsc:2|IN-2106-XYZ;n:type:ShaderForge.SFN_Normalize,id:7542,x:32548,y:32981,varname:node_7542,prsc:2|IN-8522-OUT;n:type:ShaderForge.SFN_Normalize,id:7439,x:32586,y:33188,varname:node_7439,prsc:2|IN-9898-OUT;n:type:ShaderForge.SFN_DDY,id:9898,x:32355,y:33208,varname:node_9898,prsc:2|IN-2106-XYZ;n:type:ShaderForge.SFN_Cross,id:7115,x:32787,y:33013,varname:node_7115,prsc:2|A-7542-OUT,B-7439-OUT;n:type:ShaderForge.SFN_Multiply,id:3374,x:32824,y:32624,varname:node_3374,prsc:2|A-4767-OUT,B-35-OUT;n:type:ShaderForge.SFN_LightVector,id:3648,x:32563,y:32845,varname:node_3648,prsc:2;n:type:ShaderForge.SFN_Dot,id:35,x:32864,y:32796,varname:node_35,prsc:2,dt:0|A-7115-OUT,B-3648-OUT;n:type:ShaderForge.SFN_LightColor,id:2882,x:32748,y:32187,varname:node_2882,prsc:2;n:type:ShaderForge.SFN_LightAttenuation,id:9275,x:32748,y:32358,varname:node_9275,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5625,x:33152,y:32398,varname:node_5625,prsc:2|A-3374-OUT,B-3181-OUT;n:type:ShaderForge.SFN_AmbientLight,id:3735,x:33050,y:32013,varname:node_3735,prsc:2;n:type:ShaderForge.SFN_Add,id:9109,x:33304,y:32324,varname:node_9109,prsc:2|A-5625-OUT,B-8441-OUT,C-2888-OUT;n:type:ShaderForge.SFN_Multiply,id:8441,x:33237,y:32112,varname:node_8441,prsc:2|A-3735-RGB,B-530-OUT,C-7190-OUT;n:type:ShaderForge.SFN_Vector1,id:530,x:33063,y:32209,varname:node_530,prsc:2,v1:0.15;n:type:ShaderForge.SFN_LightAttenuation,id:7190,x:33266,y:31954,varname:node_7190,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3181,x:32951,y:32305,varname:node_3181,prsc:2|A-2882-RGB,B-9275-OUT;n:type:ShaderForge.SFN_Multiply,id:2888,x:33227,y:32567,varname:node_2888,prsc:2|A-3181-OUT,B-9965-OUT;n:type:ShaderForge.SFN_Vector1,id:9965,x:33190,y:32699,varname:node_9965,prsc:2,v1:0.0314;proporder:1614-9652-7458-4651-6810-8930-5418;pass:END;sub:END;*/

Shader "GlowStone Studios/Polygon Terrain" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Control ("Control", 2D) = "white" {}
        _Splat0 ("Splat0", 2D) = "white" {}
        _Splat1 ("Splat1", 2D) = "white" {}
        _Splat2 ("Splat2", 2D) = "white" {}
        _Splat3 ("Splat3", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_6015 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_1412 = float4(node_6015.rgb,node_6015.a);
                float4 node_9599 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 node_9181 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_6002 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_5582 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_7769 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_9026 = 0.0;
                float3 node_3181 = (_LightColor0.rgb*attenuation);
                float3 finalColor = (((lerp((node_1412.r*node_9599.rgb + node_1412.g*node_9181.rgb + node_1412.b*node_6002.rgb + node_1412.a*node_5582.rgb),lerp(node_7769.rgb,_Color.rgb,node_9026),node_9026)*dot(cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb))),lightDirection))*node_3181)+(UNITY_LIGHTMODEL_AMBIENT.rgb*0.15*attenuation)+(node_3181*0.0314));
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _Control; uniform float4 _Control_ST;
            uniform sampler2D _Splat0; uniform float4 _Splat0_ST;
            uniform sampler2D _Splat1; uniform float4 _Splat1_ST;
            uniform sampler2D _Splat2; uniform float4 _Splat2_ST;
            uniform sampler2D _Splat3; uniform float4 _Splat3_ST;
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                LIGHTING_COORDS(2,3)
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(_Object2World, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float4 node_6015 = tex2D(_Control,TRANSFORM_TEX(i.uv0, _Control));
                float4 node_1412 = float4(node_6015.rgb,node_6015.a);
                float4 node_9599 = tex2D(_Splat0,TRANSFORM_TEX(i.uv0, _Splat0));
                float4 node_9181 = tex2D(_Splat1,TRANSFORM_TEX(i.uv0, _Splat1));
                float4 node_6002 = tex2D(_Splat2,TRANSFORM_TEX(i.uv0, _Splat2));
                float4 node_5582 = tex2D(_Splat3,TRANSFORM_TEX(i.uv0, _Splat3));
                float4 node_7769 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_9026 = 0.0;
                float3 node_3181 = (_LightColor0.rgb*attenuation);
                float3 finalColor = (((lerp((node_1412.r*node_9599.rgb + node_1412.g*node_9181.rgb + node_1412.b*node_6002.rgb + node_1412.a*node_5582.rgb),lerp(node_7769.rgb,_Color.rgb,node_9026),node_9026)*dot(cross(normalize(ddx(i.posWorld.rgb)),normalize(ddy(i.posWorld.rgb))),lightDirection))*node_3181)+(UNITY_LIGHTMODEL_AMBIENT.rgb*0.15*attenuation)+(node_3181*0.0314));
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
