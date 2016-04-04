// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1938,x:34112,y:33312,varname:node_1938,prsc:2|custl-2317-OUT;n:type:ShaderForge.SFN_Tex2d,id:9969,x:32932,y:32973,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:5982,x:32808,y:33186,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:5098,x:33098,y:33187,varname:node_5098,prsc:2,dt:1|A-5982-OUT,B-246-OUT;n:type:ShaderForge.SFN_Vector3,id:865,x:32449,y:33384,cmnt:Light Direction,varname:node_865,prsc:2,v1:-0.8,v2:1,v3:-0.5;n:type:ShaderForge.SFN_ConstantClamp,id:8522,x:33322,y:33231,varname:node_8522,prsc:2,min:0.3,max:3|IN-5098-OUT;n:type:ShaderForge.SFN_Vector3,id:9198,x:32449,y:33486,varname:node_9198,prsc:2,v1:0.7,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Normalize,id:246,x:32687,y:33384,varname:node_246,prsc:2|IN-9198-OUT;n:type:ShaderForge.SFN_Dot,id:2400,x:33016,y:33413,varname:node_2400,prsc:2,dt:1|A-246-OUT,B-1657-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:1657,x:32687,y:33558,varname:node_1657,prsc:2;n:type:ShaderForge.SFN_Vector3,id:7322,x:33568,y:32646,cmnt:Global additive,varname:node_7322,prsc:2,v1:0.2300498,v2:0.2598907,v3:0.2720588;n:type:ShaderForge.SFN_Multiply,id:1246,x:33666,y:32763,varname:node_1246,prsc:2|A-7322-OUT,B-6850-OUT,C-9969-RGB;n:type:ShaderForge.SFN_Vector1,id:6850,x:33437,y:32752,varname:node_6850,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Power,id:8768,x:33338,y:33503,varname:node_8768,prsc:2|VAL-2400-OUT,EXP-300-OUT;n:type:ShaderForge.SFN_Slider,id:1381,x:32910,y:33909,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_1381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:2476,x:33329,y:33911,varname:node_2476,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-1381-OUT;n:type:ShaderForge.SFN_Exp,id:300,x:33329,y:33752,varname:node_300,prsc:2,et:0|IN-2476-OUT;n:type:ShaderForge.SFN_Multiply,id:4774,x:33612,y:33192,varname:node_4774,prsc:2|A-9969-RGB,B-8522-OUT;n:type:ShaderForge.SFN_Add,id:2317,x:33825,y:33378,varname:node_2317,prsc:2|A-4774-OUT,B-7162-OUT,C-1246-OUT;n:type:ShaderForge.SFN_Multiply,id:7162,x:33723,y:33580,varname:node_7162,prsc:2|A-8768-OUT,B-5164-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5164,x:33617,y:33933,ptovrint:False,ptlb:Specular Intensity,ptin:_SpecularIntensity,varname:node_5164,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:9969-5164-1381;pass:END;sub:END;*/

Shader "GlowStone Studios/Opaque Surfaces V2" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _SpecularIntensity ("Specular Intensity", Float ) = 1
        _Gloss ("Gloss", Range(0, 1)) = 1
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
            #pragma target 2.0
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float _Gloss;
            uniform float _SpecularIntensity;
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
                float3 finalColor = ((_Diffuse_var.rgb*clamp(max(0,dot(normalDirection,node_246)),0.3,3))+(pow(max(0,dot(node_246,viewReflectDirection)),exp((_Gloss*9.0+1.0)))*_SpecularIntensity)+(float3(0.2300498,0.2598907,0.2720588)*0.66*_Diffuse_var.rgb));
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
