// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:36584,y:29679,varname:node_2553,prsc:2|emission-904-OUT,alpha-7740-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7082,x:32623,y:29059,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6341,x:33090,y:29146,varname:node_6341,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-783-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_Tex2d,id:1632,x:33090,y:28977,varname:node_1632,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-3076-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_TexCoord,id:8907,x:31808,y:29563,varname:node_8907,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:4696,x:31577,y:29738,varname:node_4696,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:6805,x:31808,y:29766,varname:node_6805,prsc:2|A-4696-X,B-4696-Z;n:type:ShaderForge.SFN_ValueProperty,id:6425,x:32073,y:29891,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:_Scale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4034,x:32059,y:29656,varname:node_4034,prsc:2|A-8907-UVOUT,B-6805-OUT,C-6425-OUT;n:type:ShaderForge.SFN_Multiply,id:2978,x:32431,y:29661,varname:node_2978,prsc:2|A-4034-OUT,B-7995-OUT;n:type:ShaderForge.SFN_Add,id:8069,x:32639,y:29661,varname:node_8069,prsc:2|A-2978-OUT,B-2316-OUT;n:type:ShaderForge.SFN_Vector2,id:2316,x:32308,y:29975,varname:node_2316,prsc:2,v1:0.33,v2:0.33;n:type:ShaderForge.SFN_Vector1,id:7995,x:32367,y:29781,varname:node_7995,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Panner,id:783,x:32797,y:29388,varname:node_783,prsc:2,spu:-1,spv:1|UVIN-8069-OUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Panner,id:3076,x:32797,y:29228,varname:node_3076,prsc:2,spu:1,spv:-1|UVIN-4034-OUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Slider,id:2637,x:33052,y:29659,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:_WaveSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Time,id:9932,x:33052,y:29517,varname:node_9932,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2144,x:33266,y:29517,varname:node_2144,prsc:2|A-9932-TSL,B-2637-OUT;n:type:ShaderForge.SFN_Append,id:8423,x:33339,y:28977,varname:node_8423,prsc:2|A-1632-R,B-1632-G;n:type:ShaderForge.SFN_Append,id:3509,x:33339,y:29146,varname:node_3509,prsc:2|A-6341-R,B-6341-G;n:type:ShaderForge.SFN_Add,id:5811,x:33550,y:29081,varname:node_5811,prsc:2|A-8423-OUT,B-3509-OUT;n:type:ShaderForge.SFN_Append,id:3546,x:33787,y:29081,varname:node_3546,prsc:2|A-5811-OUT,B-5845-OUT;n:type:ShaderForge.SFN_Vector1,id:5845,x:33787,y:29214,varname:node_5845,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8688,x:34137,y:29184,varname:node_8688,prsc:2|A-4578-OUT,B-3546-OUT,T-6001-OUT;n:type:ShaderForge.SFN_Vector3,id:4578,x:34091,y:29061,varname:node_4578,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:6001,x:33945,y:29359,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:_NormalIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_ComponentMask,id:7166,x:34786,y:29596,varname:node_7166,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-8688-OUT;n:type:ShaderForge.SFN_Color,id:5957,x:34786,y:29792,ptovrint:False,ptlb:Color A,ptin:_ColorA,varname:_ColorA,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8482759,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:4415,x:35056,y:29582,varname:node_4415,prsc:2|A-7166-R,B-6427-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6427,x:35038,y:29741,ptovrint:False,ptlb:A Intensity,ptin:_AIntensity,varname:_AIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Clamp01,id:7423,x:35738,y:29742,varname:node_7423,prsc:2|IN-6878-OUT;n:type:ShaderForge.SFN_Lerp,id:6878,x:35270,y:29889,varname:node_6878,prsc:2|A-5957-RGB,B-1849-RGB,T-6211-OUT;n:type:ShaderForge.SFN_Color,id:1849,x:34786,y:29978,ptovrint:False,ptlb:Color B,ptin:_ColorB,varname:_ColorB,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5450981,c2:0.682353,c3:0.6156863,c4:1;n:type:ShaderForge.SFN_Clamp01,id:6211,x:35231,y:29707,varname:node_6211,prsc:2|IN-4415-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7740,x:36298,y:30396,varname:node_7740,prsc:2|DIST-610-OUT;n:type:ShaderForge.SFN_Vector1,id:610,x:36100,y:30533,varname:node_610,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2dAsset,id:8878,x:32584,y:30311,ptovrint:False,ptlb:Normal 2,ptin:_Normal2,varname:_Normal2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:61,x:33051,y:30398,varname:node_6341aa,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-7544-UVOUT,TEX-8878-TEX;n:type:ShaderForge.SFN_Tex2d,id:9826,x:33051,y:30229,varname:node_1632aa,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-1142-UVOUT,TEX-8878-TEX;n:type:ShaderForge.SFN_TexCoord,id:5438,x:31769,y:30815,varname:node_5438,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:5331,x:31538,y:30990,varname:node_5331,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:6769,x:31769,y:31018,varname:node_6769,prsc:2|A-5331-X,B-5331-Z;n:type:ShaderForge.SFN_ValueProperty,id:7071,x:32034,y:31143,ptovrint:False,ptlb:Scale_copy,ptin:_Scale_copy,varname:_Scale_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:6261,x:32020,y:30908,varname:node_6261a,prsc:2|A-5438-UVOUT,B-6769-OUT,C-7071-OUT;n:type:ShaderForge.SFN_Multiply,id:2623,x:32392,y:30913,varname:node_2623,prsc:2|A-6261-OUT,B-1979-OUT;n:type:ShaderForge.SFN_Add,id:2397,x:32600,y:30913,varname:node_2397,prsc:2|A-2623-OUT,B-428-OUT;n:type:ShaderForge.SFN_Vector2,id:428,x:32269,y:31227,varname:node_428,prsc:2,v1:0.33,v2:0.33;n:type:ShaderForge.SFN_Vector1,id:1979,x:32328,y:31033,varname:node_1979,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Panner,id:7544,x:32758,y:30701,varname:node_7544s,prsc:2,spu:-1,spv:1|UVIN-2397-OUT,DIST-7543-OUT;n:type:ShaderForge.SFN_Panner,id:1142,x:32758,y:30480,varname:node_1142s,prsc:2,spu:1,spv:-1|UVIN-6261-OUT,DIST-7543-OUT;n:type:ShaderForge.SFN_Slider,id:4158,x:32996,y:31064,ptovrint:False,ptlb:WaveSpeed_copy,ptin:_WaveSpeed_copy,varname:_WaveSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Time,id:1858,x:33013,y:30769,varname:node_1858s,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7543,x:33227,y:30769,varname:node_7543s,prsc:2|A-1858-TSL,B-4158-OUT;n:type:ShaderForge.SFN_Append,id:1085,x:33300,y:30229,varname:node_1085,prsc:2|A-9826-R,B-9826-G;n:type:ShaderForge.SFN_Append,id:4436,x:33300,y:30398,varname:node_4436,prsc:2|A-61-R,B-61-G;n:type:ShaderForge.SFN_Add,id:8247,x:33511,y:30333,varname:node_8247,prsc:2|A-1085-OUT,B-4436-OUT;n:type:ShaderForge.SFN_Append,id:8118,x:33748,y:30333,varname:node_8118,prsc:2|A-8247-OUT,B-5185-OUT;n:type:ShaderForge.SFN_Vector1,id:5185,x:33748,y:30466,varname:node_5185,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:3357,x:34579,y:30465,varname:node_3357ss,prsc:2|A-4352-OUT,B-8118-OUT,T-7138-OUT;n:type:ShaderForge.SFN_Vector3,id:4352,x:34052,y:30313,varname:node_4352,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:7138,x:33906,y:30611,ptovrint:False,ptlb:Normal Intensity_copy,ptin:_NormalIntensity_copy,varname:_NormalIntensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_ComponentMask,id:9215,x:34936,y:30246,varname:node_9215,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3357-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7736,x:34936,y:30440,varname:node_7736,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-3357-OUT;n:type:ShaderForge.SFN_Multiply,id:3995,x:35165,y:30385,varname:node_3995,prsc:2|A-9215-OUT,B-7736-OUT,C-3638-OUT;n:type:ShaderForge.SFN_Vector1,id:3638,x:35165,y:30558,varname:node_3638,prsc:2,v1:5;n:type:ShaderForge.SFN_Clamp01,id:7207,x:35385,y:30372,varname:node_7207,prsc:2|IN-3995-OUT;n:type:ShaderForge.SFN_Lerp,id:5063,x:35385,y:30180,varname:node_5063,prsc:2|A-10-RGB,B-2582-RGB,T-7207-OUT;n:type:ShaderForge.SFN_Color,id:10,x:35119,y:30033,ptovrint:False,ptlb:Color C,ptin:_ColorC,varname:_ColorC,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:2582,x:35119,y:30194,ptovrint:False,ptlb:Color D,ptin:_ColorD,varname:_ColorD,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Blend,id:1223,x:36070,y:29866,varname:node_1223,prsc:2,blmd:10,clmp:True|SRC-7423-OUT,DST-4395-OUT;n:type:ShaderForge.SFN_Clamp01,id:4395,x:35722,y:30045,varname:node_4395,prsc:2|IN-5063-OUT;n:type:ShaderForge.SFN_OneMinus,id:2632,x:35838,y:29460,varname:node_2632,prsc:2|IN-6211-OUT;n:type:ShaderForge.SFN_Multiply,id:904,x:36299,y:29560,varname:node_904,prsc:2|A-69-OUT,B-1223-OUT;n:type:ShaderForge.SFN_Color,id:7908,x:35758,y:29144,ptovrint:False,ptlb:Color asd,ptin:_Colorasd,varname:_Colorasd,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:8165,x:36044,y:29266,varname:node_8165,prsc:2|A-2632-OUT,B-7908-RGB;n:type:ShaderForge.SFN_Clamp01,id:69,x:36241,y:29299,varname:node_69,prsc:2|IN-8165-OUT;proporder:7082-6425-2637-6001-5957-1849-6427-8878-7071-4158-7138-10-2582-7908;pass:END;sub:END;*/

Shader "GlowStone Studios/Lava2" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _Scale ("Scale", Float ) = 1
        _WaveSpeed ("WaveSpeed", Range(0, 10)) = 0
        _NormalIntensity ("Normal Intensity", Range(0, 2)) = 1
        _ColorA ("Color A", Color) = (1,0.8482759,0,1)
        _ColorB ("Color B", Color) = (0.5450981,0.682353,0.6156863,1)
        _AIntensity ("A Intensity", Float ) = 5
        _Normal2 ("Normal 2", 2D) = "bump" {}
        _Scale_copy ("Scale_copy", Float ) = 1
        _WaveSpeed_copy ("WaveSpeed_copy", Range(0, 10)) = 0
        _NormalIntensity_copy ("Normal Intensity_copy", Range(0, 2)) = 1
        _ColorC ("Color C", Color) = (0.5,0.5,0.5,1)
        _ColorD ("Color D", Color) = (0.5,0.5,0.5,1)
        _Colorasd ("Color asd", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Scale;
            uniform float _WaveSpeed;
            uniform float _NormalIntensity;
            uniform float4 _ColorA;
            uniform float _AIntensity;
            uniform float4 _ColorB;
            uniform sampler2D _Normal2; uniform float4 _Normal2_ST;
            uniform float _Scale_copy;
            uniform float _WaveSpeed_copy;
            uniform float _NormalIntensity_copy;
            uniform float4 _ColorC;
            uniform float4 _ColorD;
            uniform float4 _Colorasd;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_9932 = _Time + _TimeEditor;
                float node_2144 = (node_9932.r*_WaveSpeed);
                float2 node_4034 = (i.uv0*float2(objScale.r,objScale.b)*_Scale);
                float2 node_3076 = (node_4034+node_2144*float2(1,-1));
                float3 node_1632 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3076, _Normal)));
                float2 node_783 = (((node_4034*0.66)+float2(0.33,0.33))+node_2144*float2(-1,1));
                float3 node_6341 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_783, _Normal)));
                float2 node_5811 = (float2(node_1632.r,node_1632.g)+float2(node_6341.r,node_6341.g));
                float3 node_8688 = lerp(float3(0,0,1),float3(node_5811,1.0),_NormalIntensity);
                float node_6211 = saturate((node_8688.rgb.r*_AIntensity));
                float4 node_1858s = _Time + _TimeEditor;
                float node_7543s = (node_1858s.r*_WaveSpeed_copy);
                float2 node_6261a = (i.uv0*float2(objScale.r,objScale.b)*_Scale_copy);
                float2 node_1142s = (node_6261a+node_7543s*float2(1,-1));
                float3 node_1632aa = UnpackNormal(tex2D(_Normal2,TRANSFORM_TEX(node_1142s, _Normal2)));
                float2 node_7544s = (((node_6261a*0.66)+float2(0.33,0.33))+node_7543s*float2(-1,1));
                float3 node_6341aa = UnpackNormal(tex2D(_Normal2,TRANSFORM_TEX(node_7544s, _Normal2)));
                float3 node_3357ss = lerp(float3(0,0,1),float3((float2(node_1632aa.r,node_1632aa.g)+float2(node_6341aa.r,node_6341aa.g)),1.0),_NormalIntensity_copy);
                float node_7207 = saturate((node_3357ss.r*node_3357ss.g*5.0));
                float3 emissive = (saturate(((1.0 - node_6211)+_Colorasd.rgb))*saturate(( saturate(lerp(_ColorC.rgb,_ColorD.rgb,node_7207)) > 0.5 ? (1.0-(1.0-2.0*(saturate(lerp(_ColorC.rgb,_ColorD.rgb,node_7207))-0.5))*(1.0-saturate(lerp(_ColorA.rgb,_ColorB.rgb,node_6211)))) : (2.0*saturate(lerp(_ColorC.rgb,_ColorD.rgb,node_7207))*saturate(lerp(_ColorA.rgb,_ColorB.rgb,node_6211))) )));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,saturate((sceneZ-partZ)/1.0));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
