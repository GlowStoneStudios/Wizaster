// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1938,x:35178,y:33382,varname:node_1938,prsc:2|custl-3494-OUT,voffset-595-OUT;n:type:ShaderForge.SFN_Tex2d,id:9969,x:32307,y:32865,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:5982,x:32808,y:33186,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:5098,x:33098,y:33187,varname:node_5098,prsc:2,dt:1|A-5982-OUT,B-246-OUT;n:type:ShaderForge.SFN_Multiply,id:7318,x:33098,y:32970,varname:node_7318,prsc:2|A-7782-OUT,B-8522-OUT;n:type:ShaderForge.SFN_Vector3,id:865,x:32449,y:33384,cmnt:Light Direction,varname:node_865,prsc:2,v1:0.7,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Clamp01,id:668,x:33359,y:32984,varname:node_668,prsc:2|IN-7318-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:8522,x:33342,y:33187,varname:node_8522,prsc:2,min:0.3,max:3|IN-5098-OUT;n:type:ShaderForge.SFN_Normalize,id:246,x:32687,y:33384,varname:node_246,prsc:2|IN-9647-OUT;n:type:ShaderForge.SFN_Dot,id:2400,x:33016,y:33413,varname:node_2400,prsc:2,dt:1|A-246-OUT,B-1657-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:1657,x:32706,y:33549,varname:node_1657,prsc:2;n:type:ShaderForge.SFN_Add,id:8070,x:33701,y:33276,varname:node_8070,prsc:2|A-668-OUT,B-5020-OUT,C-1246-OUT;n:type:ShaderForge.SFN_Multiply,id:5020,x:33400,y:33451,varname:node_5020,prsc:2|A-4953-OUT,B-305-OUT,C-7782-OUT,D-7785-OUT;n:type:ShaderForge.SFN_Vector1,id:305,x:33400,y:33614,varname:node_305,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Vector3,id:7322,x:33568,y:32646,cmnt:Global additive,varname:node_7322,prsc:2,v1:0.2300498,v2:0.2598907,v3:0.2720588;n:type:ShaderForge.SFN_Multiply,id:1246,x:33646,y:32752,varname:node_1246,prsc:2|A-7322-OUT,B-6850-OUT,C-7782-OUT;n:type:ShaderForge.SFN_Vector1,id:6850,x:33622,y:32918,varname:node_6850,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Power,id:8768,x:33110,y:33568,varname:node_8768,prsc:2|VAL-2400-OUT,EXP-1921-OUT;n:type:ShaderForge.SFN_Vector1,id:1921,x:33110,y:33730,varname:node_1921,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:7782,x:32852,y:32707,varname:node_7782,prsc:2|A-8231-RGB,B-5058-OUT;n:type:ShaderForge.SFN_Color,id:8231,x:32561,y:32491,ptovrint:False,ptlb:Diffuse Tint,ptin:_DiffuseTint,varname:node_8231,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7486,x:33761,y:33445,varname:node_7486,prsc:2|A-8070-OUT,B-3260-RGB;n:type:ShaderForge.SFN_AmbientLight,id:3260,x:33761,y:33600,varname:node_3260,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4953,x:33387,y:33758,varname:node_4953,prsc:2|A-8768-OUT,B-6032-OUT;n:type:ShaderForge.SFN_Slider,id:6032,x:33095,y:33912,ptovrint:False,ptlb:Specular Power,ptin:_SpecularPower,varname:node_6032,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:5.846154,max:6;n:type:ShaderForge.SFN_Vector4Property,id:928,x:32442,y:33667,ptovrint:False,ptlb:LightDir,ptin:_LightDir,varname:node_928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.7,v2:1,v3:-0.5,v4:0;n:type:ShaderForge.SFN_Vector3,id:9647,x:32442,y:33510,varname:node_9647,prsc:2,v1:0,v2:0.1,v3:-0.1;n:type:ShaderForge.SFN_HalfVector,id:2909,x:32672,y:33746,varname:node_2909,prsc:2;n:type:ShaderForge.SFN_Vector1,id:7785,x:32643,y:33312,varname:node_7785,prsc:2,v1:0;n:type:ShaderForge.SFN_Cubemap,id:2001,x:33095,y:32361,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_2001,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:45047e4c0b4c3944d840282da159e871,pvfc:0|DIR-8599-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:8599,x:33095,y:32189,varname:node_8599,prsc:2;n:type:ShaderForge.SFN_Multiply,id:63,x:33328,y:32361,varname:node_63,prsc:2|A-2001-RGB,B-5364-OUT;n:type:ShaderForge.SFN_Slider,id:5364,x:33146,y:32570,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:node_5364,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Blend,id:1568,x:34300,y:33410,varname:node_1568,prsc:2,blmd:6,clmp:True|SRC-7486-OUT,DST-63-OUT;n:type:ShaderForge.SFN_Time,id:3514,x:33755,y:34430,varname:node_3514,prsc:2;n:type:ShaderForge.SFN_Color,id:3965,x:33812,y:34203,ptovrint:False,ptlb:Interaction Color,ptin:_InteractionColor,varname:node_3965,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4632353,c2:0.8445233,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:3294,x:34338,y:33935,varname:node_3294,prsc:2|A-1568-OUT,B-5047-OUT;n:type:ShaderForge.SFN_Multiply,id:4637,x:34038,y:34563,varname:node_4637,prsc:2|A-3514-T,B-7232-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7232,x:33791,y:34612,ptovrint:False,ptlb:Interaction Speed Add,ptin:_InteractionSpeedAdd,varname:node_7232,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Sin,id:6937,x:34038,y:34410,varname:node_6937,prsc:2|IN-4637-OUT;n:type:ShaderForge.SFN_RemapRange,id:6822,x:34234,y:34410,varname:node_6822,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-6937-OUT;n:type:ShaderForge.SFN_Multiply,id:5047,x:34086,y:34205,varname:node_5047,prsc:2|A-3965-RGB,B-6822-OUT,C-2815-OUT;n:type:ShaderForge.SFN_Multiply,id:5294,x:34845,y:34232,varname:node_5294,prsc:2|A-1347-OUT,B-8850-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9920,x:34495,y:33812,ptovrint:False,ptlb:KillerZ,ptin:_KillerZ,varname:node_9920,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_If,id:3494,x:34680,y:33984,varname:node_3494,prsc:2|A-4818-Z,B-9920-OUT,GT-3294-OUT,EQ-5294-OUT,LT-5294-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:4818,x:34676,y:33663,varname:node_4818,prsc:2;n:type:ShaderForge.SFN_Desaturate,id:1347,x:34578,y:34269,varname:node_1347,prsc:2|COL-3294-OUT,DES-6037-OUT;n:type:ShaderForge.SFN_Multiply,id:8348,x:34706,y:34551,varname:node_8348,prsc:2|A-2385-RGB,B-1501-OUT;n:type:ShaderForge.SFN_Vector1,id:1501,x:34706,y:34714,varname:node_1501,prsc:2,v1:0.9;n:type:ShaderForge.SFN_Time,id:2219,x:34928,y:34637,varname:node_2219,prsc:2;n:type:ShaderForge.SFN_Sin,id:16,x:35119,y:34654,varname:node_16,prsc:2|IN-2219-T;n:type:ShaderForge.SFN_Lerp,id:8850,x:35228,y:34501,varname:node_8850,prsc:2|A-2385-RGB,B-8348-OUT,T-7635-OUT;n:type:ShaderForge.SFN_RemapRange,id:7635,x:35299,y:34654,varname:node_7635,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-16-OUT;n:type:ShaderForge.SFN_Color,id:2385,x:34513,y:34434,ptovrint:False,ptlb:Dead Color,ptin:_DeadColor,varname:node_2385,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5955882,c2:0.4642085,c3:0.4642085,c4:1;n:type:ShaderForge.SFN_Vector1,id:6037,x:34368,y:34252,varname:node_6037,prsc:2,v1:0.88;n:type:ShaderForge.SFN_Slider,id:2815,x:33926,y:34041,ptovrint:False,ptlb:Interactive Intensity,ptin:_InteractiveIntensity,varname:node_2815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Noise,id:94,x:35265,y:33940,varname:node_94,prsc:2|XY-4784-OUT;n:type:ShaderForge.SFN_Append,id:4784,x:35029,y:33810,varname:node_4784,prsc:2|A-4818-X,B-4818-Y;n:type:ShaderForge.SFN_Multiply,id:595,x:35573,y:34056,varname:node_595,prsc:2|A-94-OUT,B-1094-OUT,C-6709-OUT;n:type:ShaderForge.SFN_NormalVector,id:1094,x:35232,y:34234,prsc:2,pt:False;n:type:ShaderForge.SFN_Subtract,id:4369,x:35068,y:34136,varname:node_4369,prsc:2|A-9920-OUT,B-4818-Z;n:type:ShaderForge.SFN_RemapRange,id:319,x:35764,y:34168,varname:node_319,prsc:2,frmn:0,frmx:6,tomn:0,tomx:3|IN-6122-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:6122,x:35527,y:34264,varname:node_6122,prsc:2,min:0,max:6|IN-4369-OUT;n:type:ShaderForge.SFN_Time,id:5883,x:35605,y:34513,varname:node_5883,prsc:2;n:type:ShaderForge.SFN_Sin,id:927,x:36091,y:34532,varname:node_927,prsc:2|IN-5795-OUT;n:type:ShaderForge.SFN_RemapRange,id:8527,x:36091,y:34333,varname:node_8527,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-927-OUT;n:type:ShaderForge.SFN_Lerp,id:6709,x:36161,y:34140,varname:node_6709,prsc:2|A-319-OUT,B-1317-OUT,T-8527-OUT;n:type:ShaderForge.SFN_RemapRange,id:1317,x:35774,y:34339,varname:node_1317,prsc:2,frmn:0,frmx:6,tomn:0,tomx:2|IN-6122-OUT;n:type:ShaderForge.SFN_Multiply,id:5795,x:35842,y:34537,varname:node_5795,prsc:2|A-5883-TSL,B-9370-OUT;n:type:ShaderForge.SFN_Vector1,id:9370,x:35806,y:34725,varname:node_9370,prsc:2,v1:6;n:type:ShaderForge.SFN_Desaturate,id:5058,x:32822,y:32921,varname:node_5058,prsc:2|COL-9969-RGB,DES-9501-OUT;n:type:ShaderForge.SFN_Slider,id:9501,x:32290,y:33109,ptovrint:False,ptlb:Texture Desaturation,ptin:_TextureDesaturation,varname:node_9501,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:9969-9501-8231-6032-928-2001-5364-2815-3965-7232-2385;pass:END;sub:END;*/

Shader "GlowStone Studios/Master Shader" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _TextureDesaturation ("Texture Desaturation", Range(0, 1)) = 0
        _DiffuseTint ("Diffuse Tint", Color) = (1,1,1,1)
        _SpecularPower ("Specular Power", Range(0, 6)) = 5.846154
        _LightDir ("LightDir", Vector) = (0.7,1,-0.5,0)
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionIntensity ("Reflection Intensity", Range(0, 1)) = 1
        _InteractiveIntensity ("Interactive Intensity", Range(0, 1)) = 0
        _InteractionColor ("Interaction Color", Color) = (0.4632353,0.8445233,1,1)
        _InteractionSpeedAdd ("Interaction Speed Add", Float ) = 1
        _DeadColor ("Dead Color", Color) = (0.5955882,0.4642085,0.4642085,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseTint;
            uniform float _SpecularPower;
            uniform samplerCUBE _Reflection;
            uniform float _ReflectionIntensity;
            uniform float4 _InteractionColor;
            uniform float _InteractionSpeedAdd;
            uniform float _KillerZ;
            uniform float4 _DeadColor;
            uniform float _InteractiveIntensity;
            uniform float _TextureDesaturation;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_4784 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g);
                float2 node_94_skew = node_4784 + 0.2127+node_4784.x*0.3713*node_4784.y;
                float2 node_94_rnd = 4.789*sin(489.123*(node_94_skew));
                float node_94 = frac(node_94_rnd.x*node_94_rnd.y*(1+node_94_skew.x));
                float node_6122 = clamp((_KillerZ-mul(_Object2World, v.vertex).b),0,6);
                float4 node_5883 = _Time + _TimeEditor;
                v.vertex.xyz += (node_94*v.normal*lerp((node_6122*0.5+0.0),(node_6122*0.3333333+0.0),(sin((node_5883.r*6.0))*0.5+0.5)));
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
                float node_3494_if_leA = step(i.posWorld.b,_KillerZ);
                float node_3494_if_leB = step(_KillerZ,i.posWorld.b);
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_7782 = (_DiffuseTint.rgb*lerp(_Diffuse_var.rgb,dot(_Diffuse_var.rgb,float3(0.3,0.59,0.11)),_TextureDesaturation));
                float3 node_246 = normalize(float3(0,0.1,-0.1));
                float4 node_3514 = _Time + _TimeEditor;
                float3 node_3294 = (saturate((1.0-(1.0-((saturate((node_7782*clamp(max(0,dot(normalDirection,node_246)),0.3,3)))+((pow(max(0,dot(node_246,viewReflectDirection)),3.0)*_SpecularPower)*0.66*node_7782*0.0)+(float3(0.2300498,0.2598907,0.2720588)*0.66*node_7782))*UNITY_LIGHTMODEL_AMBIENT.rgb))*(1.0-(texCUBE(_Reflection,viewReflectDirection).rgb*_ReflectionIntensity))))+(_InteractionColor.rgb*(sin((node_3514.g*_InteractionSpeedAdd))*0.5+0.5)*_InteractiveIntensity));
                float4 node_2219 = _Time + _TimeEditor;
                float3 node_5294 = (lerp(node_3294,dot(node_3294,float3(0.3,0.59,0.11)),0.88)*lerp(_DeadColor.rgb,(_DeadColor.rgb*0.9),(sin(node_2219.g)*0.5+0.5)));
                float3 finalColor = lerp((node_3494_if_leA*node_5294)+(node_3494_if_leB*node_3294),node_5294,node_3494_if_leA*node_3494_if_leB);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _KillerZ;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float2 node_4784 = float2(mul(_Object2World, v.vertex).r,mul(_Object2World, v.vertex).g);
                float2 node_94_skew = node_4784 + 0.2127+node_4784.x*0.3713*node_4784.y;
                float2 node_94_rnd = 4.789*sin(489.123*(node_94_skew));
                float node_94 = frac(node_94_rnd.x*node_94_rnd.y*(1+node_94_skew.x));
                float node_6122 = clamp((_KillerZ-mul(_Object2World, v.vertex).b),0,6);
                float4 node_5883 = _Time + _TimeEditor;
                v.vertex.xyz += (node_94*v.normal*lerp((node_6122*0.5+0.0),(node_6122*0.3333333+0.0),(sin((node_5883.r*6.0))*0.5+0.5)));
                o.posWorld = mul(_Object2World, v.vertex);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
