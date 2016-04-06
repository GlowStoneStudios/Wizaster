// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:720,x:32719,y:32712,varname:node_720,prsc:2|custl-4788-OUT,alpha-1048-OUT;n:type:ShaderForge.SFN_DepthBlend,id:4549,x:32278,y:33194,varname:node_4549,prsc:2|DIST-2604-OUT;n:type:ShaderForge.SFN_ValueProperty,id:2604,x:31989,y:33242,ptovrint:False,ptlb:Softness,ptin:_Softness,varname:node_2604,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:49,x:31897,y:32979,ptovrint:False,ptlb:Tint,ptin:_Tint,varname:node_49,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_NormalVector,id:4895,x:31217,y:32503,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:1777,x:31414,y:32503,varname:node_1777,prsc:2,tffrom:0,tfto:3|IN-4895-OUT;n:type:ShaderForge.SFN_RemapRange,id:4669,x:31848,y:32503,varname:node_4669,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4673-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4673,x:31613,y:32503,varname:node_4673,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1777-XYZ;n:type:ShaderForge.SFN_Tex2d,id:6607,x:31848,y:32724,ptovrint:False,ptlb:MatCap,ptin:_MatCap,varname:node_6607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4669-OUT;n:type:ShaderForge.SFN_Multiply,id:1048,x:32364,y:32963,varname:node_1048,prsc:2|A-6607-A,B-4549-OUT;n:type:ShaderForge.SFN_Multiply,id:4788,x:32208,y:32712,varname:node_4788,prsc:2|A-6607-RGB,B-49-RGB,C-1048-OUT;proporder:2604-6607-49;pass:END;sub:END;*/

Shader "GlowStone Studios/Matcap Additive" {
    Properties {
        _Softness ("Softness", Float ) = 1
        _MatCap ("MatCap", 2D) = "white" {}
        _Tint ("Tint", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        LOD 200
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma target 2.0
            uniform sampler2D _CameraDepthTexture;
            uniform float _Softness;
            uniform float4 _Tint;
            uniform sampler2D _MatCap; uniform float4 _MatCap_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float3 normalDir : TEXCOORD0;
                float4 projPos : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float2 node_4669 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg*0.5+0.5);
                float4 _MatCap_var = tex2D(_MatCap,TRANSFORM_TEX(node_4669, _MatCap));
                float node_1048 = (_MatCap_var.a*saturate((sceneZ-partZ)/_Softness));
                float3 finalColor = (_MatCap_var.rgb*_Tint.rgb*node_1048);
                fixed4 finalRGBA = fixed4(finalColor,node_1048);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
