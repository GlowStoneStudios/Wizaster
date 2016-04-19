// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:38303,y:30648,varname:node_2553,prsc:2|normal-8688-OUT,custl-2073-OUT,refract-8604-OUT;n:type:ShaderForge.SFN_SceneColor,id:1206,x:34881,y:31162,varname:node_1206,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5050,x:35073,y:30994,varname:node_5050,prsc:2|A-6060-RGB,B-1206-RGB;n:type:ShaderForge.SFN_Color,id:6060,x:34785,y:30787,ptovrint:False,ptlb:Water Color,ptin:_WaterColor,varname:node_6060,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:7082,x:33587,y:29879,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_7082,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:6341,x:34054,y:29966,varname:node_6341,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-783-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_Tex2d,id:1632,x:34054,y:29797,varname:node_1632,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-3076-UVOUT,TEX-7082-TEX;n:type:ShaderForge.SFN_TexCoord,id:8907,x:32772,y:30383,varname:node_8907,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:6425,x:33037,y:30711,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_6425,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4034,x:33023,y:30476,varname:node_4034,prsc:2|A-8907-UVOUT,B-6425-OUT;n:type:ShaderForge.SFN_Multiply,id:2978,x:33395,y:30481,varname:node_2978,prsc:2|A-4034-OUT,B-7995-OUT;n:type:ShaderForge.SFN_Add,id:8069,x:33603,y:30481,varname:node_8069,prsc:2|A-2978-OUT,B-2316-OUT;n:type:ShaderForge.SFN_Vector2,id:2316,x:33272,y:30795,varname:node_2316,prsc:2,v1:0.33,v2:0.33;n:type:ShaderForge.SFN_Vector1,id:7995,x:33331,y:30601,varname:node_7995,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Panner,id:783,x:33761,y:30208,varname:node_783,prsc:2,spu:-1,spv:1|UVIN-8069-OUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Panner,id:3076,x:33761,y:30048,varname:node_3076,prsc:2,spu:1,spv:-1|UVIN-4034-OUT,DIST-2144-OUT;n:type:ShaderForge.SFN_Slider,id:2637,x:34016,y:30479,ptovrint:False,ptlb:WaveSpeed,ptin:_WaveSpeed,varname:node_2637,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;n:type:ShaderForge.SFN_Time,id:9932,x:34016,y:30337,varname:node_9932,prsc:2;n:type:ShaderForge.SFN_Multiply,id:2144,x:34230,y:30337,varname:node_2144,prsc:2|A-9932-TSL,B-2637-OUT;n:type:ShaderForge.SFN_Append,id:8423,x:34303,y:29797,varname:node_8423,prsc:2|A-1632-R,B-1632-G;n:type:ShaderForge.SFN_Append,id:3509,x:34303,y:29966,varname:node_3509,prsc:2|A-6341-R,B-6341-G;n:type:ShaderForge.SFN_Add,id:5811,x:34514,y:29901,varname:node_5811,prsc:2|A-8423-OUT,B-3509-OUT;n:type:ShaderForge.SFN_Append,id:3546,x:34751,y:29901,varname:node_3546,prsc:2|A-5811-OUT,B-5845-OUT;n:type:ShaderForge.SFN_Vector1,id:5845,x:34751,y:30034,varname:node_5845,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8688,x:35047,y:29987,varname:node_8688,prsc:2|A-4578-OUT,B-3546-OUT,T-6001-OUT;n:type:ShaderForge.SFN_Vector3,id:4578,x:35055,y:29881,varname:node_4578,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:6001,x:34909,y:30179,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_6001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:2;n:type:ShaderForge.SFN_Dot,id:7722,x:35792,y:31974,varname:node_7722,prsc:2,dt:1|A-7607-OUT,B-5452-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:7607,x:35461,y:31901,varname:node_7607,prsc:2;n:type:ShaderForge.SFN_Color,id:7549,x:35354,y:31434,ptovrint:False,ptlb:ReflectionColor,ptin:_ReflectionColor,varname:node_7549,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5143815,c2:0.7514617,c3:0.9852941,c4:1;n:type:ShaderForge.SFN_Power,id:3014,x:36383,y:32337,varname:node_3014,prsc:2|VAL-7722-OUT,EXP-480-OUT;n:type:ShaderForge.SFN_Slider,id:9470,x:36147,y:32577,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_9470,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:1233,x:36477,y:32577,varname:node_1233,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-9470-OUT;n:type:ShaderForge.SFN_Exp,id:480,x:36637,y:32476,varname:node_480,prsc:2,et:0|IN-1233-OUT;n:type:ShaderForge.SFN_Multiply,id:5479,x:36629,y:32188,varname:node_5479,prsc:2|A-3014-OUT,B-2829-RGB,C-3699-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3699,x:36599,y:32360,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_3699,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Add,id:3685,x:35297,y:31143,varname:node_3685,prsc:2|A-5050-OUT,B-5479-OUT;n:type:ShaderForge.SFN_Fresnel,id:940,x:35354,y:31576,varname:node_940,prsc:2|EXP-4301-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4301,x:35786,y:31912,ptovrint:False,ptlb:Reflection Fresnel,ptin:_ReflectionFresnel,varname:node_4301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Blend,id:2785,x:36338,y:31345,varname:node_2785,prsc:2,blmd:6,clmp:True|SRC-3685-OUT,DST-2878-OUT;n:type:ShaderForge.SFN_Color,id:3989,x:36964,y:31328,ptovrint:False,ptlb:Foam Color,ptin:_FoamColor,varname:node_3989,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:5917,x:37132,y:31658,varname:node_5917,prsc:2|DIST-3512-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3512,x:36896,y:31677,ptovrint:False,ptlb:Foam Blend,ptin:_FoamBlend,varname:node_3512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_OneMinus,id:9598,x:37165,y:31511,varname:node_9598,prsc:2|IN-5917-OUT;n:type:ShaderForge.SFN_Multiply,id:2265,x:37255,y:31323,varname:node_2265,prsc:2|A-3989-RGB,B-9598-OUT,C-8055-OUT;n:type:ShaderForge.SFN_Blend,id:4327,x:36553,y:31092,varname:node_4327,prsc:2,blmd:6,clmp:True|SRC-2785-OUT,DST-2265-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6883,x:36513,y:31265,varname:node_6883,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8688-OUT;n:type:ShaderForge.SFN_Desaturate,id:5488,x:36713,y:31275,varname:node_5488,prsc:2|COL-6883-OUT;n:type:ShaderForge.SFN_Multiply,id:3992,x:36555,y:31482,varname:node_3992,prsc:2|A-5488-OUT,B-6660-OUT;n:type:ShaderForge.SFN_Vector1,id:6660,x:36386,y:31727,varname:node_6660,prsc:2,v1:33;n:type:ShaderForge.SFN_Clamp01,id:4512,x:36748,y:31482,varname:node_4512,prsc:2|IN-3992-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:8055,x:36925,y:31525,varname:node_8055,prsc:2|IN-4512-OUT,IMIN-6995-OUT,IMAX-9304-OUT,OMIN-1478-OUT,OMAX-9304-OUT;n:type:ShaderForge.SFN_Vector1,id:6995,x:36570,y:31862,varname:node_6995,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9304,x:36563,y:31971,varname:node_9304,prsc:2,v1:1;n:type:ShaderForge.SFN_Slider,id:1478,x:36839,y:31980,ptovrint:False,ptlb:Border Contrast,ptin:_BorderContrast,varname:node_1478,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8113,x:37454,y:31134,varname:node_8113,prsc:2|A-3169-OUT,B-3989-RGB,C-5073-OUT;n:type:ShaderForge.SFN_Vector1,id:3169,x:37454,y:31049,varname:node_3169,prsc:2,v1:1.33;n:type:ShaderForge.SFN_Vector1,id:9571,x:37532,y:31713,varname:node_9571,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Multiply,id:77,x:37519,y:31569,varname:node_77,prsc:2|A-3512-OUT,B-9571-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7621,x:37519,y:31427,varname:node_7621,prsc:2|DIST-77-OUT;n:type:ShaderForge.SFN_OneMinus,id:5073,x:37519,y:31293,varname:node_5073,prsc:2|IN-7621-OUT;n:type:ShaderForge.SFN_Add,id:2073,x:37212,y:30993,varname:node_2073,prsc:2|A-4327-OUT,B-8113-OUT;n:type:ShaderForge.SFN_Slider,id:6776,x:36692,y:30795,ptovrint:False,ptlb:Refraction,ptin:_Refraction,varname:node_6776,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.33;n:type:ShaderForge.SFN_Multiply,id:8604,x:37024,y:30838,varname:node_8604,prsc:2|A-6776-OUT,B-6883-OUT;n:type:ShaderForge.SFN_Cubemap,id:6402,x:35514,y:30995,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_6402,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:9a9686487f02b6f4480e1522c4a7d98f,pvfc:0|DIR-9178-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:9178,x:35309,y:30777,varname:node_9178,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9123,x:35994,y:31147,varname:node_9123,prsc:2|A-6402-RGB,B-8452-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8452,x:35773,y:31168,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:node_8452,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:2878,x:36126,y:31485,ptovrint:False,ptlb:UseCubemap,ptin:_UseCubemap,varname:node_2878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-6367-OUT,B-7172-OUT;n:type:ShaderForge.SFN_Multiply,id:6367,x:35733,y:31425,varname:node_6367,prsc:2|A-7549-RGB,B-940-OUT;n:type:ShaderForge.SFN_Blend,id:7172,x:35744,y:31581,varname:node_7172,prsc:2,blmd:6,clmp:True|SRC-6367-OUT,DST-9123-OUT;n:type:ShaderForge.SFN_Color,id:2829,x:35906,y:32488,ptovrint:False,ptlb:Light Tint,ptin:_LightTint,varname:node_2829,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Vector4Property,id:4562,x:35523,y:32383,ptovrint:False,ptlb:Light Direction,ptin:_LightDirection,varname:node_4562,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Normalize,id:5452,x:35771,y:32256,varname:node_5452,prsc:2|IN-4562-XYZ;n:type:ShaderForge.SFN_Vector3,id:7630,x:35523,y:32271,cmnt:LIGHT DIRECTION,varname:node_7630,prsc:2,v1:-0.59,v2:0.5,v3:0.78;proporder:6060-7082-6425-2637-6001-9470-3699-7549-4301-3989-3512-1478-6776-6402-8452-2878-2829-4562;pass:END;sub:END;*/

Shader "GlowStone Studios/Water" {
    Properties {
        _WaterColor ("Water Color", Color) = (0.5,0.5,0.5,1)
        _Normal ("Normal", 2D) = "bump" {}
        _Scale ("Scale", Float ) = 1
        _WaveSpeed ("WaveSpeed", Range(0, 10)) = 0
        _NormalIntensity ("Normal Intensity", Range(0, 2)) = 1
        _Gloss ("Gloss", Range(0, 1)) = 0
        _Specular ("Specular", Float ) = 5
        _ReflectionColor ("ReflectionColor", Color) = (0.5143815,0.7514617,0.9852941,1)
        _ReflectionFresnel ("Reflection Fresnel", Float ) = 1
        _FoamColor ("Foam Color", Color) = (1,1,1,1)
        _FoamBlend ("Foam Blend", Float ) = 2
        _BorderContrast ("Border Contrast", Range(0, 1)) = 0
        _Refraction ("Refraction", Range(0, 0.33)) = 0
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionIntensity ("Reflection Intensity", Float ) = 1
        [MaterialToggle] _UseCubemap ("UseCubemap", Float ) = 0
        _LightTint ("Light Tint", Color) = (0.5,0.5,0.5,1)
        _LightDirection ("Light Direction", Vector) = (0,0,0,0)
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform float4 _WaterColor;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Scale;
            uniform float _WaveSpeed;
            uniform float _NormalIntensity;
            uniform float4 _ReflectionColor;
            uniform float _Gloss;
            uniform float _Specular;
            uniform float _ReflectionFresnel;
            uniform float4 _FoamColor;
            uniform float _FoamBlend;
            uniform float _BorderContrast;
            uniform float _Refraction;
            uniform samplerCUBE _Reflection;
            uniform float _ReflectionIntensity;
            uniform fixed _UseCubemap;
            uniform float4 _LightTint;
            uniform float4 _LightDirection;
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
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                o.screenPos = o.pos;
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
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
                float2 node_4034 = (i.uv0*_Scale);
                float2 node_3076 = (node_4034+node_2144*float2(1,-1));
                float3 node_1632 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_3076, _Normal)));
                float2 node_783 = (((node_4034*0.66)+float2(0.33,0.33))+node_2144*float2(-1,1));
                float3 node_6341 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_783, _Normal)));
                float3 node_8688 = lerp(float3(0,0,1),float3((float2(node_1632.r,node_1632.g)+float2(node_6341.r,node_6341.g)),1.0),_NormalIntensity);
                float3 normalLocal = node_8688;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float2 node_6883 = node_8688.rg;
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (_Refraction*node_6883);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 node_6367 = (_ReflectionColor.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_ReflectionFresnel));
                float node_6995 = 0.0;
                float node_9304 = 1.0;
                float3 finalColor = (saturate((1.0-(1.0-saturate((1.0-(1.0-((_WaterColor.rgb*sceneColor.rgb)+(pow(max(0,dot(viewReflectDirection,normalize(_LightDirection.rgb))),exp((_Gloss*9.0+1.0)))*_LightTint.rgb*_Specular)))*(1.0-lerp( node_6367, saturate((1.0-(1.0-node_6367)*(1.0-(texCUBE(_Reflection,viewReflectDirection).rgb*_ReflectionIntensity)))), _UseCubemap )))))*(1.0-(_FoamColor.rgb*(1.0 - saturate((sceneZ-partZ)/_FoamBlend))*(_BorderContrast + ( (saturate((dot(node_6883,float3(0.3,0.59,0.11))*33.0)) - node_6995) * (node_9304 - _BorderContrast) ) / (node_9304 - node_6995))))))+(1.33*_FoamColor.rgb*(1.0 - saturate((sceneZ-partZ)/(_FoamBlend*0.2)))));
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,1),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
