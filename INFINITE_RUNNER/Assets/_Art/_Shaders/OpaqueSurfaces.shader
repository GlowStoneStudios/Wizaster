// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:1938,x:34098,y:32949,varname:node_1938,prsc:2|custl-7486-OUT;n:type:ShaderForge.SFN_Tex2d,id:9969,x:32596,y:32863,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_9969,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_NormalVector,id:5982,x:32808,y:33186,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:5098,x:33098,y:33187,varname:node_5098,prsc:2,dt:1|A-5982-OUT,B-246-OUT;n:type:ShaderForge.SFN_Multiply,id:7318,x:33098,y:32970,varname:node_7318,prsc:2|A-7782-OUT,B-8522-OUT;n:type:ShaderForge.SFN_Vector3,id:865,x:32449,y:33384,cmnt:Light Direction,varname:node_865,prsc:2,v1:-0.8,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Clamp01,id:668,x:33407,y:32974,varname:node_668,prsc:2|IN-7318-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:8522,x:33342,y:33187,varname:node_8522,prsc:2,min:0.3,max:3|IN-5098-OUT;n:type:ShaderForge.SFN_Vector3,id:9198,x:32449,y:33486,varname:node_9198,prsc:2,v1:0.7,v2:1,v3:-0.5;n:type:ShaderForge.SFN_Normalize,id:246,x:32687,y:33384,varname:node_246,prsc:2|IN-9198-OUT;n:type:ShaderForge.SFN_Dot,id:2400,x:33016,y:33413,varname:node_2400,prsc:2,dt:1|A-246-OUT,B-1657-OUT;n:type:ShaderForge.SFN_ViewReflectionVector,id:1657,x:32817,y:33481,varname:node_1657,prsc:2;n:type:ShaderForge.SFN_Add,id:8070,x:33701,y:33276,varname:node_8070,prsc:2|A-668-OUT,B-5020-OUT,C-1246-OUT;n:type:ShaderForge.SFN_Multiply,id:5020,x:33400,y:33446,varname:node_5020,prsc:2|A-8768-OUT,B-305-OUT,C-7782-OUT;n:type:ShaderForge.SFN_Vector1,id:305,x:33400,y:33614,varname:node_305,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Vector3,id:7322,x:33568,y:32646,cmnt:Global additive,varname:node_7322,prsc:2,v1:0.2300498,v2:0.2598907,v3:0.2720588;n:type:ShaderForge.SFN_Multiply,id:1246,x:33646,y:32752,varname:node_1246,prsc:2|A-7322-OUT,B-6850-OUT,C-7782-OUT;n:type:ShaderForge.SFN_Vector1,id:6850,x:33622,y:32918,varname:node_6850,prsc:2,v1:0.66;n:type:ShaderForge.SFN_Power,id:8768,x:33110,y:33568,varname:node_8768,prsc:2|VAL-2400-OUT,EXP-1921-OUT;n:type:ShaderForge.SFN_Vector1,id:1921,x:33110,y:33730,varname:node_1921,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:7782,x:32852,y:32707,varname:node_7782,prsc:2|A-8231-RGB,B-9969-RGB;n:type:ShaderForge.SFN_Color,id:8231,x:32561,y:32491,ptovrint:False,ptlb:Diffuse Tint,ptin:_DiffuseTint,varname:node_8231,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:7486,x:33761,y:33445,varname:node_7486,prsc:2|A-8070-OUT,B-3260-RGB;n:type:ShaderForge.SFN_AmbientLight,id:3260,x:33761,y:33600,varname:node_3260,prsc:2;proporder:9969-8231;pass:END;sub:END;*/

Shader "GlowStone Studios/Opaque Surfaces" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _DiffuseTint ("Diffuse Tint", Color) = (1,1,1,1)
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
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _DiffuseTint;
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
                float3 node_7782 = (_DiffuseTint.rgb*_Diffuse_var.rgb);
                float3 node_246 = normalize(float3(0.7,1,-0.5));
                float3 finalColor = ((saturate((node_7782*clamp(max(0,dot(normalDirection,node_246)),0.3,3)))+(pow(max(0,dot(node_246,viewReflectDirection)),3.0)*0.66*node_7782)+(float3(0.2300498,0.2598907,0.2720588)*0.66*node_7782))*UNITY_LIGHTMODEL_AMBIENT.rgb);
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
