// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:39819,y:30122,varname:node_2553,prsc:2|normal-3081-OUT,emission-4266-OUT,custl-9850-OUT,refract-7531-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8590,x:36499,y:30300,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8590,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1963,x:36727,y:30300,varname:node_1963,prsc:2,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False|UVIN-7-OUT,TEX-8590-TEX;n:type:ShaderForge.SFN_Tex2d,id:6600,x:36014,y:30524,ptovrint:False,ptlb:Flowmap,ptin:_Flowmap,varname:node_6600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5e567094f7568c746bdd5a6b92c37c47,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:3723,x:36342,y:30526,varname:node_3723,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6600-RGB;n:type:ShaderForge.SFN_TexCoord,id:9321,x:36490,y:30797,varname:node_9321,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1141,x:36824,y:30830,varname:node_1141,prsc:2|A-9321-UVOUT,B-6466-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6466,x:36475,y:31193,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_6466,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7,x:37324,y:30830,varname:node_7,prsc:2|A-784-UVOUT,B-8676-OUT,C-6858-OUT;n:type:ShaderForge.SFN_RemapRange,id:2555,x:36562,y:30526,varname:node_2555,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-3723-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1867,x:36897,y:30553,ptovrint:False,ptlb:Flow Power,ptin:_FlowPower,varname:node_1867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8676,x:36907,y:30687,varname:node_8676,prsc:2|A-2555-OUT,B-1867-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7473,x:36475,y:31387,ptovrint:False,ptlb:FlowSpeed,ptin:_FlowSpeed,varname:node_7473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:9199,x:36464,y:31552,varname:node_9199,prsc:2;n:type:ShaderForge.SFN_Multiply,id:612,x:36774,y:31385,varname:node_612,prsc:2|A-7473-OUT,B-9199-TSL;n:type:ShaderForge.SFN_Panner,id:784,x:37229,y:31021,varname:node_784,prsc:2,spu:1,spv:1|UVIN-7028-UVOUT,DIST-612-OUT;n:type:ShaderForge.SFN_Rotator,id:7028,x:37178,y:31273,varname:node_7028,prsc:2|UVIN-1141-OUT,ANG-7495-OUT;n:type:ShaderForge.SFN_Tau,id:7863,x:37126,y:31631,varname:node_7863,prsc:2;n:type:ShaderForge.SFN_Slider,id:4429,x:37054,y:31541,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_4429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7495,x:37391,y:31571,varname:node_7495,prsc:2|A-4429-OUT,B-7863-OUT;n:type:ShaderForge.SFN_Lerp,id:6858,x:37184,y:30607,varname:node_6858,prsc:2|A-1635-OUT,B-8676-OUT,T-4965-OUT;n:type:ShaderForge.SFN_Vector2,id:1635,x:37128,y:30446,varname:node_1635,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Sin,id:4802,x:37699,y:30870,varname:node_4802,prsc:2|IN-634-OUT;n:type:ShaderForge.SFN_Slider,id:7489,x:37390,y:31109,ptovrint:False,ptlb:Flow Change Speed,ptin:_FlowChangeSpeed,varname:node_7489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:6;n:type:ShaderForge.SFN_Multiply,id:634,x:37858,y:31169,varname:node_634,prsc:2|A-7489-OUT,B-7863-OUT,C-9199-TSL;n:type:ShaderForge.SFN_RemapRange,id:4965,x:38021,y:30784,varname:node_4965,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4802-OUT;n:type:ShaderForge.SFN_SceneColor,id:2603,x:36873,y:30011,varname:node_2603,prsc:2;n:type:ShaderForge.SFN_Multiply,id:8493,x:37193,y:30030,varname:node_8493,prsc:2|A-2603-RGB,B-5388-OUT;n:type:ShaderForge.SFN_Slider,id:5388,x:36697,y:30166,ptovrint:False,ptlb:Scene Intensity,ptin:_SceneIntensity,varname:node_5388,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:1879,x:37610,y:30382,varname:node_1879,prsc:2|A-8493-OUT,B-3734-OUT;n:type:ShaderForge.SFN_Multiply,id:3734,x:37117,y:30309,varname:node_3734,prsc:2|A-5980-OUT,B-1525-OUT;n:type:ShaderForge.SFN_Slider,id:1525,x:36740,y:30464,ptovrint:False,ptlb:Texture Intensity,ptin:_TextureIntensity,varname:node_1525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:8540,x:37535,y:29992,ptovrint:False,ptlb:Emission Color,ptin:_EmissionColor,varname:node_8540,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:1995,x:37698,y:29980,ptovrint:False,ptlb:Emission Intensity,ptin:_EmissionIntensity,varname:node_1995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4266,x:37549,y:30203,varname:node_4266,prsc:2|A-6500-OUT,B-8540-RGB,C-1995-OUT;n:type:ShaderForge.SFN_Desaturate,id:6500,x:37153,y:30175,varname:node_6500,prsc:2|COL-5980-OUT;n:type:ShaderForge.SFN_Cubemap,id:5800,x:37914,y:30333,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_5800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:35080828b66cd0a4891b39d93488c011,pvfc:0|DIR-4090-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:4090,x:37899,y:30151,varname:node_4090,prsc:2;n:type:ShaderForge.SFN_Multiply,id:7683,x:37841,y:30568,varname:node_7683,prsc:2|A-5800-RGB,B-8319-OUT;n:type:ShaderForge.SFN_Slider,id:8319,x:37604,y:30762,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:node_8319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Blend,id:4106,x:38670,y:30409,varname:node_4106,prsc:2,blmd:6,clmp:True|SRC-1879-OUT,DST-7683-OUT;n:type:ShaderForge.SFN_Multiply,id:5980,x:36897,y:30253,varname:node_5980,prsc:2|A-1963-RGB,B-6651-RGB;n:type:ShaderForge.SFN_Color,id:6651,x:36576,y:30006,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_6651,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1503,x:38703,y:30620,varname:node_1503,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True|UVIN-5056-UVOUT,TEX-95-TEX;n:type:ShaderForge.SFN_Slider,id:6898,x:38829,y:31161,ptovrint:False,ptlb:Refraction intensity,ptin:_Refractionintensity,varname:node_6898,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_ComponentMask,id:7531,x:39271,y:30827,varname:node_7531,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3081-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:95,x:38398,y:30680,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_95,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Tex2d,id:7841,x:38692,y:30763,varname:node_7841,prsc:2,tex:b490466cfb07cde4297fe28d4dedf424,ntxv:0,isnm:False|UVIN-4622-UVOUT,TEX-95-TEX;n:type:ShaderForge.SFN_Add,id:6021,x:38916,y:30714,varname:node_6021,prsc:2|A-1503-RGB,B-7841-RGB;n:type:ShaderForge.SFN_Lerp,id:3081,x:38949,y:30944,varname:node_3081,prsc:2|A-9725-OUT,B-6021-OUT,T-6898-OUT;n:type:ShaderForge.SFN_Vector3,id:9725,x:38949,y:30843,varname:node_9725,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Panner,id:5056,x:38549,y:30914,varname:node_5056,prsc:2,spu:-1,spv:1|UVIN-6114-UVOUT,DIST-1906-OUT;n:type:ShaderForge.SFN_Panner,id:4622,x:38538,y:31091,varname:node_4622,prsc:2,spu:1,spv:-1|UVIN-6114-UVOUT,DIST-1906-OUT;n:type:ShaderForge.SFN_Time,id:4426,x:38363,y:31365,varname:node_4426,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7283,x:38363,y:31307,ptovrint:False,ptlb:Refraction Speed,ptin:_RefractionSpeed,varname:node_7283,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:1906,x:38668,y:31359,varname:node_1906,prsc:2|A-7283-OUT,B-4426-TSL;n:type:ShaderForge.SFN_TexCoord,id:6114,x:38251,y:30929,varname:node_6114,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:7327,x:38635,y:29975,ptovrint:False,ptlb:KillerZ,ptin:_KillerZ,varname:node_7327,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_FragmentPosition,id:3996,x:38635,y:29822,varname:node_3996,prsc:2;n:type:ShaderForge.SFN_If,id:9850,x:39510,y:30067,varname:node_9850,prsc:2|A-3996-Z,B-7327-OUT,GT-4106-OUT,EQ-5811-OUT,LT-5811-OUT;n:type:ShaderForge.SFN_Color,id:7494,x:39203,y:30206,ptovrint:False,ptlb:Dead Color,ptin:_DeadColor,varname:node_7494,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.375,c2:0.2927738,c3:0.2481618,c4:1;n:type:ShaderForge.SFN_Desaturate,id:3159,x:39038,y:30171,varname:node_3159,prsc:2|COL-4106-OUT,DES-8856-OUT;n:type:ShaderForge.SFN_Vector1,id:8856,x:39022,y:30334,varname:node_8856,prsc:2,v1:0.666;n:type:ShaderForge.SFN_Multiply,id:5811,x:39266,y:30030,varname:node_5811,prsc:2|A-3159-OUT,B-7494-RGB;proporder:8590-6600-6466-1867-7473-4429-7489-5388-1525-8540-1995-5800-8319-6651-6898-95-7283-7494;pass:END;sub:END;*/

Shader "GlowStone Studios/Lava2" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Flowmap ("Flowmap", 2D) = "white" {}
        _Scale ("Scale", Float ) = 1
        _FlowPower ("Flow Power", Float ) = 1
        _FlowSpeed ("FlowSpeed", Float ) = 1
        _Angle ("Angle", Range(0, 1)) = 0
        _FlowChangeSpeed ("Flow Change Speed", Range(0, 6)) = 0
        _SceneIntensity ("Scene Intensity", Range(0, 1)) = 0
        _TextureIntensity ("Texture Intensity", Range(0, 1)) = 0
        _EmissionColor ("Emission Color", Color) = (0.5,0.5,0.5,1)
        _EmissionIntensity ("Emission Intensity", Float ) = 0
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionIntensity ("Reflection Intensity", Range(0, 1)) = 0
        _Tint ("Tint", Color) = (1,1,1,1)
        _Refractionintensity ("Refraction intensity", Range(0, 1)) = 0
        _Normal ("Normal", 2D) = "bump" {}
        _RefractionSpeed ("Refraction Speed", Float ) = 1
        _DeadColor ("Dead Color", Color) = (0.375,0.2927738,0.2481618,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
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
            #pragma target 2.0
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _Scale;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform float _Angle;
            uniform float _FlowChangeSpeed;
            uniform float _SceneIntensity;
            uniform float _TextureIntensity;
            uniform float4 _EmissionColor;
            uniform float _EmissionIntensity;
            uniform samplerCUBE _Reflection;
            uniform float _ReflectionIntensity;
            uniform float4 _Tint;
            uniform float _Refractionintensity;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _RefractionSpeed;
            uniform float _KillerZ;
            uniform float4 _DeadColor;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
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
                float4 node_4426 = _Time + _TimeEditor;
                float node_1906 = (_RefractionSpeed*node_4426.r);
                float2 node_5056 = (i.uv0+node_1906*float2(-1,1));
                float3 node_1503 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_5056, _Normal)));
                float2 node_4622 = (i.uv0+node_1906*float2(1,-1));
                float3 node_7841 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_4622, _Normal)));
                float3 node_3081 = lerp(float3(0,0,1),(node_1503.rgb+node_7841.rgb),_Refractionintensity);
                float3 normalLocal = node_3081;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + node_3081.rg;
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
////// Emissive:
                float4 node_9199 = _Time + _TimeEditor;
                float node_7863 = 6.28318530718;
                float node_7028_ang = (_Angle*node_7863);
                float node_7028_spd = 1.0;
                float node_7028_cos = cos(node_7028_spd*node_7028_ang);
                float node_7028_sin = sin(node_7028_spd*node_7028_ang);
                float2 node_7028_piv = float2(0.5,0.5);
                float2 node_7028 = (mul((i.uv0*_Scale)-node_7028_piv,float2x2( node_7028_cos, -node_7028_sin, node_7028_sin, node_7028_cos))+node_7028_piv);
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_8676 = ((_Flowmap_var.rgb.rg*1.0+-0.5)*_FlowPower);
                float2 node_7 = ((node_7028+(_FlowSpeed*node_9199.r)*float2(1,1))+node_8676+lerp(float2(0,0),node_8676,(sin((_FlowChangeSpeed*node_7863*node_9199.r))*0.5+0.5)));
                float4 node_1963 = tex2D(_Diffuse,TRANSFORM_TEX(node_7, _Diffuse));
                float3 node_5980 = (node_1963.rgb*_Tint.rgb);
                float3 emissive = (dot(node_5980,float3(0.3,0.59,0.11))*_EmissionColor.rgb*_EmissionIntensity);
                float node_9850_if_leA = step(i.posWorld.b,_KillerZ);
                float node_9850_if_leB = step(_KillerZ,i.posWorld.b);
                float3 node_4106 = saturate((1.0-(1.0-((sceneColor.rgb*_SceneIntensity)+(node_5980*_TextureIntensity)))*(1.0-(texCUBE(_Reflection,viewReflectDirection).rgb*_ReflectionIntensity))));
                float3 node_5811 = (lerp(node_4106,dot(node_4106,float3(0.3,0.59,0.11)),0.666)*_DeadColor.rgb);
                float3 finalColor = emissive + lerp((node_9850_if_leA*node_5811)+(node_9850_if_leB*node_4106),node_5811,node_9850_if_leA*node_9850_if_leB);
                return fixed4(lerp(sceneColor.rgb, finalColor,1),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
