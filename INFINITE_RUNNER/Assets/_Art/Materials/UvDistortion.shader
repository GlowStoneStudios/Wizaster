// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4759,x:33474,y:32838,varname:node_4759,prsc:2|normal-9656-OUT,alpha-1376-OUT,refract-8541-OUT;n:type:ShaderForge.SFN_Tex2d,id:5609,x:31963,y:32681,varname:node_5609,prsc:2,tex:bb1299c156b26cf4c978de0162f4b44a,ntxv:0,isnm:False|UVIN-564-UVOUT,TEX-7908-TEX;n:type:ShaderForge.SFN_TexCoord,id:8659,x:30390,y:32614,varname:node_8659,prsc:2,uv:0;n:type:ShaderForge.SFN_ValueProperty,id:9182,x:30213,y:32752,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_9182,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8661,x:30471,y:32862,varname:node_8661,prsc:2|A-8659-UVOUT,B-9182-OUT;n:type:ShaderForge.SFN_Multiply,id:7795,x:30414,y:33100,varname:node_7795,prsc:2|A-8661-OUT,B-2011-OUT;n:type:ShaderForge.SFN_Vector1,id:2011,x:30414,y:33249,varname:node_2011,prsc:2,v1:0.666;n:type:ShaderForge.SFN_Add,id:379,x:30646,y:33105,varname:node_379,prsc:2|A-7795-OUT,B-8812-OUT;n:type:ShaderForge.SFN_Vector2,id:8812,x:30598,y:33249,varname:node_8812,prsc:2,v1:0.666,v2:0.666;n:type:ShaderForge.SFN_Tex2dAsset,id:7908,x:31963,y:32503,ptovrint:False,ptlb:Normal,ptin:_Normal,varname:node_7908,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bb1299c156b26cf4c978de0162f4b44a,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Time,id:8043,x:30924,y:33279,varname:node_8043,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3644,x:31238,y:33286,varname:node_3644,prsc:2|A-8043-TSL,B-1838-OUT;n:type:ShaderForge.SFN_Slider,id:1838,x:30743,y:33503,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_1838,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Tex2d,id:2495,x:31963,y:32837,varname:node_2495,prsc:2,tex:bb1299c156b26cf4c978de0162f4b44a,ntxv:0,isnm:False|UVIN-6478-UVOUT,TEX-7908-TEX;n:type:ShaderForge.SFN_Add,id:7159,x:32194,y:32694,varname:node_7159,prsc:2|A-5609-R,B-2495-R;n:type:ShaderForge.SFN_Add,id:2660,x:32194,y:32837,varname:node_2660,prsc:2|A-5609-G,B-2495-G;n:type:ShaderForge.SFN_Tex2d,id:5463,x:32362,y:32530,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_5463,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5eb1bdb97a6423148b098b900976d450,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:1275,x:32589,y:32530,varname:node_1275,prsc:2|IN-5463-R;n:type:ShaderForge.SFN_Append,id:3250,x:32891,y:32656,varname:node_3250,prsc:2|A-391-OUT,B-7796-OUT,C-1275-OUT;n:type:ShaderForge.SFN_Multiply,id:391,x:32587,y:32668,varname:node_391,prsc:2|A-5463-R,B-7159-OUT;n:type:ShaderForge.SFN_Multiply,id:7796,x:32587,y:32808,varname:node_7796,prsc:2|A-5463-R,B-2660-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3744,x:32967,y:32906,varname:node_3744,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-9656-OUT;n:type:ShaderForge.SFN_Rotator,id:564,x:31126,y:32741,varname:node_564,prsc:2|UVIN-8661-OUT,ANG-8092-OUT,SPD-3644-OUT;n:type:ShaderForge.SFN_Rotator,id:6478,x:31311,y:33067,varname:node_6478,prsc:2|UVIN-379-OUT,ANG-4445-OUT,SPD-3644-OUT;n:type:ShaderForge.SFN_Vector1,id:99,x:31099,y:33006,varname:node_99,prsc:2,v1:-1;n:type:ShaderForge.SFN_Tau,id:8092,x:30985,y:32875,varname:node_8092,prsc:2;n:type:ShaderForge.SFN_Multiply,id:4445,x:31284,y:32898,varname:node_4445,prsc:2|A-8092-OUT,B-99-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3850,x:33132,y:32725,ptovrint:False,ptlb:Distortion power,ptin:_Distortionpower,varname:node_3850,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Lerp,id:9656,x:33402,y:32600,varname:node_9656,prsc:2|A-5954-OUT,B-3250-OUT,T-3850-OUT;n:type:ShaderForge.SFN_Vector3,id:5954,x:32957,y:32460,varname:node_5954,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Vector1,id:1376,x:33519,y:33316,varname:node_1376,prsc:2,v1:0;n:type:ShaderForge.SFN_Max,id:8541,x:33237,y:32939,varname:node_8541,prsc:2|A-3744-OUT,B-6976-OUT;n:type:ShaderForge.SFN_Vector1,id:6976,x:33083,y:33145,varname:node_6976,prsc:2,v1:0;proporder:7908-9182-1838-5463-3850;pass:END;sub:END;*/

Shader "GSS/Distortion" {
    Properties {
        _Normal ("Normal", 2D) = "bump" {}
        _Scale ("Scale", Float ) = 1
        _Speed ("Speed", Range(0, 1)) = 0
        _Mask ("Mask", 2D) = "white" {}
        _Distortionpower ("Distortion power", Float ) = 2
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
            uniform float4 _TimeEditor;
            uniform float _Scale;
            uniform sampler2D _Normal; uniform float4 _Normal_ST;
            uniform float _Speed;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform float _Distortionpower;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float3 tangentDir : TEXCOORD2;
                float3 bitangentDir : TEXCOORD3;
                float4 screenPos : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( _Object2World, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
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
                float3 node_5954 = float3(0,0,1);
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_8092 = 6.28318530718;
                float4 node_8043 = _Time + _TimeEditor;
                float node_3644 = (node_8043.r*_Speed);
                float node_564_ang = node_8092;
                float node_564_spd = node_3644;
                float node_564_cos = cos(node_564_spd*node_564_ang);
                float node_564_sin = sin(node_564_spd*node_564_ang);
                float2 node_564_piv = float2(0.5,0.5);
                float2 node_8661 = (i.uv0*_Scale);
                float2 node_564 = (mul(node_8661-node_564_piv,float2x2( node_564_cos, -node_564_sin, node_564_sin, node_564_cos))+node_564_piv);
                float3 node_5609 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_564, _Normal)));
                float node_6478_ang = (node_8092*(-1.0));
                float node_6478_spd = node_3644;
                float node_6478_cos = cos(node_6478_spd*node_6478_ang);
                float node_6478_sin = sin(node_6478_spd*node_6478_ang);
                float2 node_6478_piv = float2(0.5,0.5);
                float2 node_6478 = (mul(((node_8661*0.666)+float2(0.666,0.666))-node_6478_piv,float2x2( node_6478_cos, -node_6478_sin, node_6478_sin, node_6478_cos))+node_6478_piv);
                float3 node_2495 = UnpackNormal(tex2D(_Normal,TRANSFORM_TEX(node_6478, _Normal)));
                float node_1275 = (1.0 - _Mask_var.r);
                float3 node_9656 = lerp(node_5954,float3((_Mask_var.r*(node_5609.r+node_2495.r)),(_Mask_var.r*(node_5609.g+node_2495.g)),node_1275),_Distortionpower);
                float3 normalLocal = node_9656;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + max(node_9656.rg,0.0);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
////// Lighting:
                float3 finalColor = 0;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,0.0),1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
