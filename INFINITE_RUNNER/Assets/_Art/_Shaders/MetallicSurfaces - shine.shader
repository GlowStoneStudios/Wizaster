// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1938,x:34666,y:33180,varname:node_1938,prsc:2|custl-9498-OUT;n:type:ShaderForge.SFN_Tex2d,id:9969,x:33646,y:32974,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ea509859e7e3aed4a9efb69aca3f053d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:5982,x:32808,y:33186,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:5098,x:33098,y:33187,varname:node_5098,prsc:2,dt:1|A-5982-OUT,B-246-OUT;n:type:ShaderForge.SFN_Multiply,id:7318,x:33098,y:32970,varname:node_7318,prsc:2|A-9969-RGB,B-8522-OUT;n:type:ShaderForge.SFN_Vector3,id:865,x:32449,y:33384,cmnt:Light Direction,varname:node_865,prsc:2,v1:-0.8,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Clamp01,id:668,x:33407,y:32974,varname:node_668,prsc:2|IN-7318-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:8522,x:33342,y:33187,varname:node_8522,prsc:2,min:0.3,max:1.1|IN-5098-OUT;n:type:ShaderForge.SFN_Vector3,id:9198,x:32449,y:33486,varname:node_9198,prsc:2,v1:0.7,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Normalize,id:246,x:32687,y:33384,varname:node_246,prsc:2|IN-9198-OUT;n:type:ShaderForge.SFN_Dot,id:2400,x:33016,y:33413,varname:node_2400,prsc:2,dt:1|A-246-OUT,B-1657-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:1657,x:32817,y:33481,varname:node_1657,prsc:2;n:type:ShaderForge.SFN_Add,id:8070,x:33701,y:33276,varname:node_8070,prsc:2|A-668-OUT,B-5020-OUT,C-1246-OUT;n:type:ShaderForge.SFN_Multiply,id:5020,x:33400,y:33446,varname:node_5020,prsc:2|A-8768-OUT,B-305-OUT,C-9969-RGB;n:type:ShaderForge.SFN_Vector1,id:305,x:33400,y:33614,varname:node_305,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Vector3,id:7322,x:33568,y:32646,cmnt:Global additive,varname:node_7322,prsc:2,v1:0.2300498,v2:0.2598907,v3:0.2720588;n:type:ShaderForge.SFN_Multiply,id:1246,x:33646,y:32752,varname:node_1246,prsc:2|A-7322-OUT,B-6850-OUT,C-9969-RGB;n:type:ShaderForge.SFN_Vector1,id:6850,x:33477,y:32807,varname:node_6850,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Power,id:8768,x:33110,y:33568,varname:node_8768,prsc:2|VAL-2400-OUT,EXP-1921-OUT;n:type:ShaderForge.SFN_Vector1,id:1921,x:33110,y:33730,varname:node_1921,prsc:2,v1:3;n:type:ShaderForge.SFN_Cubemap,id:5309,x:34037,y:32851,ptovrint:False,ptlb:Reflection,ptin:_Reflection,varname:node_5309,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:35080828b66cd0a4891b39d93488c011,pvfc:0|DIR-2931-OUT,MIP-4721-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:2931,x:34041,y:32542,varname:node_2931,prsc:2;n:type:ShaderForge.SFN_Blend,id:2993,x:34075,y:33444,varname:node_2993,prsc:2,blmd:6,clmp:True|SRC-5573-OUT,DST-8281-OUT;n:type:ShaderForge.SFN_Slider,id:7124,x:33935,y:33172,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:node_7124,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:8281,x:34333,y:32970,varname:node_8281,prsc:2|A-1895-OUT,B-7124-OUT,C-9969-A;n:type:ShaderForge.SFN_ValueProperty,id:4721,x:34037,y:33041,ptovrint:False,ptlb:Reflection Blur,ptin:_ReflectionBlur,varname:node_4721,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Multiply,id:5573,x:33797,y:33558,varname:node_5573,prsc:2|A-8070-OUT,B-1043-OUT;n:type:ShaderForge.SFN_Slider,id:1043,x:33677,y:33750,ptovrint:False,ptlb:Color Intensity,ptin:_ColorIntensity,varname:node_1043,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Desaturate,id:1895,x:34505,y:32639,varname:node_1895,prsc:2|COL-5309-RGB,DES-4235-OUT;n:type:ShaderForge.SFN_Slider,id:4235,x:34426,y:32553,ptovrint:False,ptlb:Reflection Desaturate,ptin:_ReflectionDesaturate,varname:node_4235,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Add,id:3869,x:34314,y:33711,varname:node_3869,prsc:2|A-2993-OUT,B-6447-OUT;n:type:ShaderForge.SFN_Color,id:5727,x:34227,y:34097,ptovrint:False,ptlb:ColorToAdd,ptin:_ColorToAdd,varname:node_5727,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3150609,c3:0.4191176,c4:1;n:type:ShaderForge.SFN_Slider,id:9755,x:34049,y:34382,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_9755,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:4;n:type:ShaderForge.SFN_Multiply,id:4474,x:34541,y:34390,varname:node_4474,prsc:2|A-9755-OUT,B-173-T;n:type:ShaderForge.SFN_Multiply,id:6447,x:34529,y:34157,varname:node_6447,prsc:2|A-5727-RGB,B-3507-OUT;n:type:ShaderForge.SFN_Time,id:173,x:34049,y:34464,varname:node_173,prsc:2;n:type:ShaderForge.SFN_Sin,id:3309,x:34778,y:34411,varname:node_3309,prsc:2|IN-4474-OUT;n:type:ShaderForge.SFN_RemapRange,id:3507,x:34778,y:34240,varname:node_3507,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-3309-OUT;n:type:ShaderForge.SFN_Multiply,id:9498,x:34626,y:33776,varname:node_9498,prsc:2|A-3869-OUT,B-4194-RGB;n:type:ShaderForge.SFN_AmbientLight,id:4194,x:34314,y:33847,varname:node_4194,prsc:2;proporder:9969-5309-7124-4721-1043-4235-5727-9755;pass:END;sub:END;*/

Shader "GlowStone Studios/Metallic Surfaces - shine" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Reflection ("Reflection", Cube) = "_Skybox" {}
        _ReflectionIntensity ("Reflection Intensity", Range(0, 1)) = 0
        _ReflectionBlur ("Reflection Blur", Float ) = 5
        _ColorIntensity ("Color Intensity", Range(0, 1)) = 1
        _ReflectionDesaturate ("Reflection Desaturate", Range(0, 1)) = 0
        _ColorToAdd ("ColorToAdd", Color) = (0,0.3150609,0.4191176,1)
        _Speed ("Speed", Range(0, 4)) = 3
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
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 2.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform samplerCUBE _Reflection;
            uniform float _ReflectionIntensity;
            uniform float _ReflectionBlur;
            uniform float _ColorIntensity;
            uniform float _ReflectionDesaturate;
            uniform float4 _ColorToAdd;
            uniform float _Speed;
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
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float3 node_246 = normalize(float3(0.7,1,-0.5));
                float4 node_173 = _Time + _TimeEditor;
                float3 finalColor = ((saturate((1.0-(1.0-((saturate((_Diffuse_var.rgb*clamp(max(0,dot(normalDirection,node_246)),0.3,1.1)))+(pow(max(0,dot(node_246,viewReflectDirection)),3.0)*0.66*_Diffuse_var.rgb)+(float3(0.2300498,0.2598907,0.2720588)*0.66*_Diffuse_var.rgb))*_ColorIntensity))*(1.0-(lerp(texCUBElod(_Reflection,float4(viewReflectDirection,_ReflectionBlur)).rgb,dot(texCUBElod(_Reflection,float4(viewReflectDirection,_ReflectionBlur)).rgb,float3(0.3,0.59,0.11)),_ReflectionDesaturate)*_ReflectionIntensity*_Diffuse_var.a))))+(_ColorToAdd.rgb*(sin((_Speed*node_173.g))*0.5+0.5)))*UNITY_LIGHTMODEL_AMBIENT.rgb);
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
