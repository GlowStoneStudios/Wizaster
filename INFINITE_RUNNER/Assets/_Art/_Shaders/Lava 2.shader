// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:37572,y:30049,varname:node_2553,prsc:2|custl-818-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8590,x:36021,y:30091,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8590,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1963,x:36909,y:30092,varname:node_1963,prsc:2,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False|UVIN-1099-OUT,TEX-8590-TEX;n:type:ShaderForge.SFN_Tex2d,id:6600,x:35640,y:30600,ptovrint:False,ptlb:Flowmap,ptin:_Flowmap,varname:node_6600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5d58dab261dd88346a69bf766289f8eb,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:3723,x:35968,y:30602,varname:node_3723,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6600-RGB;n:type:ShaderForge.SFN_RemapRange,id:2555,x:36188,y:30602,varname:node_2555,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-3723-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6068,x:36037,y:30840,ptovrint:False,ptlb:Flow power,ptin:_Flowpower,varname:node_6068,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Vector1,id:6385,x:36022,y:30960,varname:node_6385,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:7514,x:36178,y:30868,varname:node_7514,prsc:2|A-6068-OUT,B-6385-OUT;n:type:ShaderForge.SFN_Multiply,id:7458,x:36404,y:30745,varname:node_7458,prsc:2|A-2555-OUT,B-7514-OUT;n:type:ShaderForge.SFN_Tex2d,id:6640,x:36909,y:30273,varname:node_6640,prsc:2,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False|UVIN-6341-OUT,TEX-8590-TEX;n:type:ShaderForge.SFN_Multiply,id:6955,x:36698,y:30743,varname:node_6955,prsc:2|A-7458-OUT,B-8373-OUT;n:type:ShaderForge.SFN_Add,id:1099,x:36956,y:30522,varname:node_1099,prsc:2|A-3645-OUT,B-6955-OUT;n:type:ShaderForge.SFN_TexCoord,id:2073,x:36469,y:30540,varname:node_2073,prsc:2,uv:0;n:type:ShaderForge.SFN_Add,id:6341,x:36952,y:30687,varname:node_6341,prsc:2|A-3645-OUT,B-8772-OUT;n:type:ShaderForge.SFN_Multiply,id:8772,x:36741,y:30907,varname:node_8772,prsc:2|A-7458-OUT,B-5474-OUT;n:type:ShaderForge.SFN_Time,id:3082,x:35918,y:31443,varname:node_3082,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:9570,x:35918,y:31616,ptovrint:False,ptlb:FlowSpeed,ptin:_FlowSpeed,varname:node_9570,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3449,x:36158,y:31484,varname:node_3449,prsc:2|A-3082-TSL,B-9570-OUT;n:type:ShaderForge.SFN_Add,id:3202,x:36360,y:31690,varname:node_3202,prsc:2|A-3449-OUT,B-9522-OUT;n:type:ShaderForge.SFN_Vector1,id:9522,x:36156,y:31812,varname:node_9522,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Frac,id:5474,x:36630,y:31570,varname:node_5474,prsc:2|IN-3202-OUT;n:type:ShaderForge.SFN_Frac,id:8373,x:36375,y:31272,varname:node_8373,prsc:2|IN-3449-OUT;n:type:ShaderForge.SFN_Subtract,id:6126,x:36958,y:31526,varname:node_6126,prsc:2|A-9701-OUT,B-8373-OUT;n:type:ShaderForge.SFN_Vector1,id:9701,x:36923,y:31711,varname:node_9701,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Divide,id:1782,x:37196,y:31526,varname:node_1782,prsc:2|A-6126-OUT,B-9701-OUT;n:type:ShaderForge.SFN_Abs,id:7902,x:37196,y:31357,varname:node_7902,prsc:2|IN-1782-OUT;n:type:ShaderForge.SFN_Lerp,id:818,x:37336,y:30284,varname:node_818,prsc:2|A-1963-RGB,B-6640-RGB,T-7902-OUT;n:type:ShaderForge.SFN_Multiply,id:3645,x:36551,y:30366,varname:node_3645,prsc:2|A-1983-OUT,B-2073-UVOUT,C-4414-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4414,x:36220,y:30183,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_4414,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ObjectScale,id:48,x:36100,y:30344,varname:node_48,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:1983,x:36297,y:30366,varname:node_1983,prsc:2|A-48-X,B-48-Z;proporder:8590-6600-6068-9570-4414;pass:END;sub:END;*/

Shader "GlowStone Studios/Lava3" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Flowmap ("Flowmap", 2D) = "white" {}
        _Flowpower ("Flow power", Float ) = 1
        _FlowSpeed ("FlowSpeed", Float ) = 0.5
        _Scale ("Scale", Float ) = 1
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
            #pragma target 2.0
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _Flowpower;
            uniform float _FlowSpeed;
            uniform float _Scale;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
////// Lighting:
                float2 node_3645 = (float2(objScale.r,objScale.b)*i.uv0*_Scale);
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_7458 = ((_Flowmap_var.rgb.rg*1.0+-0.5)*(_Flowpower*(-1.0)));
                float4 node_3082 = _Time + _TimeEditor;
                float node_3449 = (node_3082.r*_FlowSpeed);
                float node_8373 = frac(node_3449);
                float2 node_1099 = (node_3645+(node_7458*node_8373));
                float4 node_1963 = tex2D(_Diffuse,TRANSFORM_TEX(node_1099, _Diffuse));
                float2 node_6341 = (node_3645+(node_7458*frac((node_3449+0.5))));
                float4 node_6640 = tex2D(_Diffuse,TRANSFORM_TEX(node_6341, _Diffuse));
                float node_9701 = 0.5;
                float3 finalColor = lerp(node_1963.rgb,node_6640.rgb,abs(((node_9701-node_8373)/node_9701)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
