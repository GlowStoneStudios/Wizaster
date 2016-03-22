// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:36355,y:30476,varname:node_2553,prsc:2|normal-8688-OUT,emission-5415-OUT,custl-9107-OUT,alpha-9087-OUT;n:type:ShaderForge.SFN_DepthBlend,id:9087,x:36475,y:31042,varname:node_9087,prsc:2|DIST-2988-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2988,x:36230,y:31057,ptovrint:False,ptlb:Edge Blending,ptin:_EdgeBlending,varname:_EdgeBlending,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SceneColor,id:1206,x:34416,y:31480,varname:node_1206,prsc:2;n:type:ShaderForge.SFN_DepthBlend,id:2129,x:33932,y:31608,varname:node_2129,prsc:2|DIST-8405-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8405,x:33890,y:31404,ptovrint:False,ptlb:Water Depth,ptin:_WaterDepth,varname:_WaterDepth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5050,x:34457,y:31319,varname:node_5050,prsc:2|A-8899-OUT,B-1206-RGB;n:type:ShaderForge.SFN_Lerp,id:8899,x:34196,y:31372,varname:node_8899,prsc:2|A-6060-RGB,B-2849-RGB,T-2129-OUT;n:type:ShaderForge.SFN_Color,id:6060,x:34169,y:31112,ptovrint:False,ptlb:ShallowColor,ptin:_ShallowColor,varname:_ShallowColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:2849,x:33934,y:31005,ptovrint:False,ptlb:DepthColor,ptin:_DepthColor,varname:_DepthColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:7082,x:33587,y:29879,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:_Normal,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6341,x:34054,y:29966,varname:node_6341,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-783-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_Tex2d,id:1632,x:34054,y:29797,varname:node_1632,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-3076-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_TexCoord,id:8907,x:32772,y:30383,varname:node_8907,prsc:2,uv:0;n:type:ShaderForge.SFN_ObjectScale,id:4696,x:32541,y:30558,varname:node_4696,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:6805,x:32772,y:30586,varname:node_6805,prsc:2|A-4696-X,B-4696-Z;n:type:ShaderForge.SFN_ValueProperty,id:6425,x:33037,y:30711,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:_Scale,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4034,x:33023,y:30476,varname:node_4034,prsc:2|A-8907-UVOUT,B-6805-OUT,C-6425-OUT;n:type:ShaderForge.SFN_Multiply,id:2978,x:33395,y:30481,varname:node_2978,prsc:2|A-4034-OUT,B-7995-OUT;n:type:ShaderForge.SFN_Add,id:8069,x:33641,y:30515,varname:node_8069,prsc:2|A-2978-OUT,B-2316-OUT;n:type:ShaderForge.SFN_Vector2,id:2316,x:33272,y:30795,varname:node_2316,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Vector1,id:7995,x:33331,y:30601,varname:node_7995,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Panner,id:783,x:33761,y:30208,varname:node_783,prsc:2,spu:1,spv:1|UVIN-6833-UVOUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Panner,id:3076,x:33761,y:30048,varname:node_3076,prsc:2,spu:1,spv:1|UVIN-996-UVOUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Slider,id:2637,x:34016,y:30479,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:_WaveSpeed,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Time,id:9932,x:34016,y:30337,varname:node_9932,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2144,x:34230,y:30337,varname:node_2144,prsc:2|A-9932-TSL,B-2637-OUT;n:type:ShaderForge.SFN_Append,id:8423,x:34303,y:29797,varname:node_8423,prsc:2|A-1632-R,B-1632-G;n:type:ShaderForge.SFN_Append,id:3509,x:34303,y:29966,varname:node_3509,prsc:2|A-6341-R,B-6341-G;n:type:ShaderForge.SFN_Add,id:5811,x:34514,y:29901,varname:node_5811,prsc:2|A-8423-OUT,B-3509-OUT;n:type:ShaderForge.SFN_Append,id:3546,x:34751,y:29901,varname:node_3546,prsc:2|A-5811-OUT,B-5845-OUT;n:type:ShaderForge.SFN_Vector1,id:5845,x:34751,y:30034,varname:node_5845,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8688,x:35047,y:29987,varname:node_8688,prsc:2|A-4578-OUT,B-3546-OUT,T-6001-OUT;n:type:ShaderForge.SFN_Vector3,id:4578,x:35055,y:29881,varname:node_4578,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:6001,x:34909,y:30179,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:_NormalIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Color,id:7549,x:34738,y:31759,ptovrint:False,ptlb:ReflectionColor,ptin:_ReflectionColor,varname:_ReflectionColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5143815,c2:0.7514617,c3:0.9852941,c4:1;n:type:ShaderForge.SFN_Fresnel,id:940,x:34738,y:31901,varname:node_940,prsc:2|EXP-8512-OUT;n:type:ShaderForge.SFN_Blend,id:2785,x:34997,y:31471,varname:node_2785,prsc:2,blmd:6,clmp:True|SRC-5050-OUT,DST-6367-OUT;n:type:ShaderForge.SFN_Multiply,id:6367,x:35117,y:31750,varname:node_6367,prsc:2|A-7549-RGB,B-940-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8512,x:34414,y:32099,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:_Fresnel,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:4627,x:34712,y:30926,ptovrint:False,ptlb:Border Color,ptin:_BorderColor,varname:_BorderColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:4450,x:34734,y:31158,varname:node_4450,prsc:2|DIST-333-OUT;n:type:ShaderForge.SFN_ValueProperty,id:333,x:34522,y:31171,ptovrint:False,ptlb:Border Blend Color,ptin:_BorderBlendColor,varname:_BorderBlendColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_OneMinus,id:9031,x:34974,y:31158,varname:node_9031,prsc:2|IN-4450-OUT;n:type:ShaderForge.SFN_Multiply,id:8494,x:35042,y:30977,varname:node_8494,prsc:2|A-4627-RGB,B-9031-OUT,C-8517-OUT,D-6772-OUT;n:type:ShaderForge.SFN_Desaturate,id:8517,x:34873,y:30712,varname:node_8517,prsc:2|COL-5811-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6772,x:35095,y:30677,ptovrint:False,ptlb:Border Intensity,ptin:_BorderIntensity,varname:_BorderIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Add,id:9107,x:35628,y:31015,varname:node_9107,prsc:2|A-2785-OUT,B-5468-OUT;n:type:ShaderForge.SFN_Clamp01,id:5468,x:35249,y:30923,varname:node_5468,prsc:2|IN-8494-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4548,x:35388,y:30346,varname:node_4548,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8688-OUT;n:type:ShaderForge.SFN_Color,id:7064,x:35534,y:30580,ptovrint:False,ptlb:Glow color,ptin:_Glowcolor,varname:_Glowcolor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:9904,x:35774,y:30537,varname:node_9904,prsc:2|A-6576-OUT,B-7064-RGB,C-4231-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4231,x:35719,y:30707,ptovrint:False,ptlb:Glow intensity,ptin:_Glowintensity,varname:_Glowintensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:4643,x:35575,y:30265,varname:node_4643,prsc:2|A-3164-OUT,B-4548-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3164,x:35308,y:30033,varname:node_3164,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-8688-OUT;n:type:ShaderForge.SFN_RemapRange,id:4332,x:35840,y:30264,varname:node_4332,prsc:2,frmn:0,frmx:1,tomn:0.005,tomx:2|IN-4643-OUT;n:type:ShaderForge.SFN_Clamp01,id:6576,x:36107,y:30269,varname:node_6576,prsc:2|IN-4332-OUT;n:type:ShaderForge.SFN_Color,id:6734,x:35849,y:30828,ptovrint:False,ptlb:Overall Glow,ptin:_OverallGlow,varname:_OverallGlow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:5415,x:36018,y:30668,varname:node_5415,prsc:2|A-9904-OUT,B-6734-RGB;n:type:ShaderForge.SFN_Rotator,id:996,x:33422,y:30090,varname:node_996,prsc:2|UVIN-4034-OUT,ANG-1111-OUT;n:type:ShaderForge.SFN_Slider,id:4731,x:33346,y:29517,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:_Angle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tau,id:9183,x:33346,y:29646,varname:node_9183,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1111,x:33587,y:29630,varname:node_1111,prsc:2|A-4731-OUT,B-9183-OUT;n:type:ShaderForge.SFN_Rotator,id:6833,x:33422,y:30281,varname:node_6833,prsc:2|UVIN-8069-OUT,ANG-1111-OUT;proporder:2988-8405-6060-2849-7082-6425-2637-6001-7549-8512-4627-333-6772-7064-4231-6734-4731;pass:END;sub:END;*/

Shader "GlowStone Studios/Lava" {
    Properties {
        _EdgeBlending ("Edge Blending", Float ) = 1
        _WaterDepth ("Water Depth", Float ) = 5
        _ShallowColor ("ShallowColor", Color) = (0.5,0.5,0.5,1)
        _DepthColor ("DepthColor", Color) = (0.5,0.5,0.5,1)
        _Normal ("Normal", 2D) = "bump" {}
        _Scale ("Scale", Float ) = 1
        _WaveSpeed ("WaveSpeed", Range(0, 10)) = 0
        _NormalIntensity ("Normal Intensity", Range(0, 2)) = 1
        _ReflectionColor ("ReflectionColor", Color) = (0.5143815,0.7514617,0.9852941,1)
        _Fresnel ("Fresnel", Float ) = 1
        _BorderColor ("Border Color", Color) = (0.5,0.5,0.5,1)
        _BorderBlendColor ("Border Blend Color", Float ) = 2
        _BorderIntensity ("Border Intensity", Float ) = 2
        _Glowcolor ("Glow color", Color) = (0.5,0.5,0.5,1)
        _Glowintensity ("Glow intensity", Float ) = 3
        _OverallGlow ("Overall Glow", Color) = (0.5,0.5,0.5,1)
        _Angle ("Angle", Range(0, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float _EdgeBlending;
            uniform float _WaterDepth;
            uniform float4 _ShallowColor;
            uniform float4 _DepthColor;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Scale;
            uniform float _WaveSpeed;
            uniform float _NormalIntensity;
            uniform float4 _ReflectionColor;
            uniform float _Fresnel;
            uniform float4 _BorderColor;
            uniform float _BorderBlendColor;
            uniform float _BorderIntensity;
            uniform float4 _Glowcolor;
            uniform float _Glowintensity;
            uniform float4 _OverallGlow;
            uniform float _Angle;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 projPos : TEXCOORD6;
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_9932 = _Time + _TimeEditor;
                float node_2144 = (node_9932.r*_WaveSpeed);
                float node_1111 = (_Angle*6.28318530718);
                float node_996_ang = node_1111;
                float node_996_spd = 1.0;
                float node_996_cos = cos(node_996_spd*node_996_ang);
                float node_996_sin = sin(node_996_spd*node_996_ang);
                float2 node_996_piv = float2(0.5,0.5);
                float2 node_4034 = (i.uv0*float2(objScale.r,objScale.b)*_Scale);
                float2 node_996 = (mul(node_4034-node_996_piv,float2x2( node_996_cos, -node_996_sin, node_996_sin, node_996_cos))+node_996_piv);
                float2 node_3076 = (node_996+node_2144*float2(1,1));
                float3 node_1632 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3076, _Normal)));
                float node_6833_ang = node_1111;
                float node_6833_spd = 1.0;
                float node_6833_cos = cos(node_6833_spd*node_6833_ang);
                float node_6833_sin = sin(node_6833_spd*node_6833_ang);
                float2 node_6833_piv = float2(0.5,0.5);
                float2 node_6833 = (mul(((node_4034*0.5)+float2(0.5,0.5))-node_6833_piv,float2x2( node_6833_cos, -node_6833_sin, node_6833_sin, node_6833_cos))+node_6833_piv);
                float2 node_783 = (node_6833+node_2144*float2(1,1));
                float3 node_6341 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_783, _Normal)));
                float2 node_5811 = (float2(node_1632.r,node_1632.g)+float2(node_6341.r,node_6341.g));
                float3 node_8688 = lerp(float3(0,0,1),float3(node_5811,1.0),_NormalIntensity);
                float3 normalLocal = node_8688;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float3 emissive = ((saturate(((node_8688.g*node_8688.r)*1.995+0.005))*_Glowcolor.rgb*_Glowintensity)+_OverallGlow.rgb);
                float3 finalColor = emissive + (saturate((1.0-(1.0-(lerp(_ShallowColor.rgb,_DepthColor.rgb,saturate((sceneZ-partZ)/_WaterDepth))*sceneColor.rgb))*(1.0-(_ReflectionColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel)))))+saturate((_BorderColor.rgb*(1.0 - saturate((sceneZ-partZ)/_BorderBlendColor))*dot(node_5811,float3(0.3,0.59,0.11))*_BorderIntensity)));
                fixed4 finalRGBA = fixed4(finalColor,saturate((sceneZ-partZ)/_EdgeBlending));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
