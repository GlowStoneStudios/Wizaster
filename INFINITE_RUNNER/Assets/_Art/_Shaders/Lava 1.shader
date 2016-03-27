// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:True,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5441177,fgcg:0.4627208,fgcb:0.4440961,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2553,x:37572,y:30049,varname:node_2553,prsc:2|custl-1963-RGB,alpha-7899-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:8590,x:36499,y:30300,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8590,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1963,x:36873,y:30262,varname:node_1963,prsc:2,tex:43a01833daadce541b59cbeedccf8314,ntxv:0,isnm:False|UVIN-7-OUT,TEX-8590-TEX;n:type:ShaderForge.SFN_Tex2d,id:6600,x:36014,y:30524,ptovrint:False,ptlb:Flowmap,ptin:_Flowmap,varname:node_6600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:5e567094f7568c746bdd5a6b92c37c47,ntxv:0,isnm:False;n:type:ShaderForge.SFN_ComponentMask,id:3723,x:36342,y:30526,varname:node_3723,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6600-RGB;n:type:ShaderForge.SFN_TexCoord,id:9321,x:36490,y:30797,varname:node_9321,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:1141,x:36824,y:30830,varname:node_1141,prsc:2|A-9321-UVOUT,B-4861-OUT,C-6466-OUT;n:type:ShaderForge.SFN_ObjectScale,id:2680,x:36475,y:31001,varname:node_2680,prsc:2,rcp:False;n:type:ShaderForge.SFN_Append,id:4861,x:36824,y:31021,varname:node_4861,prsc:2|A-2680-X,B-2680-Z;n:type:ShaderForge.SFN_ValueProperty,id:6466,x:36475,y:31193,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_6466,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:7,x:37444,y:30759,varname:node_7,prsc:2|A-784-UVOUT,B-8676-OUT,C-6858-OUT;n:type:ShaderForge.SFN_RemapRange,id:2555,x:36562,y:30526,varname:node_2555,prsc:2,frmn:0,frmx:1,tomn:-0.5,tomx:0.5|IN-3723-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1867,x:36897,y:30553,ptovrint:False,ptlb:Flow Power,ptin:_FlowPower,varname:node_1867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:8676,x:36907,y:30687,varname:node_8676,prsc:2|A-2555-OUT,B-1867-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7473,x:36475,y:31387,ptovrint:False,ptlb:FlowSpeed,ptin:_FlowSpeed,varname:node_7473,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:9199,x:36464,y:31552,varname:node_9199,prsc:2;n:type:ShaderForge.SFN_Multiply,id:612,x:36774,y:31385,varname:node_612,prsc:2|A-7473-OUT,B-9199-TSL;n:type:ShaderForge.SFN_Panner,id:784,x:37229,y:31021,varname:node_784,prsc:2,spu:1,spv:1|UVIN-7028-UVOUT,DIST-612-OUT;n:type:ShaderForge.SFN_Rotator,id:7028,x:37178,y:31273,varname:node_7028,prsc:2|UVIN-1141-OUT,ANG-7495-OUT;n:type:ShaderForge.SFN_Tau,id:7863,x:37126,y:31631,varname:node_7863,prsc:2;n:type:ShaderForge.SFN_Slider,id:4429,x:37054,y:31541,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_4429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:7495,x:37391,y:31571,varname:node_7495,prsc:2|A-4429-OUT,B-7863-OUT;n:type:ShaderForge.SFN_DepthBlend,id:7899,x:37351,y:30380,varname:node_7899,prsc:2|DIST-4176-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4176,x:37128,y:30240,ptovrint:False,ptlb:Border Blend,ptin:_BorderBlend,varname:node_4176,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:6858,x:37199,y:30579,varname:node_6858,prsc:2|A-1635-OUT,B-8676-OUT,T-4965-OUT;n:type:ShaderForge.SFN_Vector2,id:1635,x:37128,y:30446,varname:node_1635,prsc:2,v1:0,v2:0;n:type:ShaderForge.SFN_Sin,id:4802,x:37699,y:30870,varname:node_4802,prsc:2|IN-634-OUT;n:type:ShaderForge.SFN_Slider,id:7489,x:37390,y:31109,ptovrint:False,ptlb:Flow Change Speed,ptin:_FlowChangeSpeed,varname:node_7489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:6;n:type:ShaderForge.SFN_Multiply,id:634,x:37858,y:31169,varname:node_634,prsc:2|A-7489-OUT,B-7863-OUT,C-9199-TSL;n:type:ShaderForge.SFN_RemapRange,id:4965,x:38021,y:30784,varname:node_4965,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-4802-OUT;proporder:8590-6600-6466-1867-7473-4429-4176-7489;pass:END;sub:END;*/

Shader "GlowStone Studios/Lava2" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Flowmap ("Flowmap", 2D) = "white" {}
        _Scale ("Scale", Float ) = 1
        _FlowPower ("Flow Power", Float ) = 1
        _FlowSpeed ("FlowSpeed", Float ) = 1
        _Angle ("Angle", Range(0, 1)) = 0
        _BorderBlend ("Border Blend", Float ) = 1
        _FlowChangeSpeed ("Flow Change Speed", Range(0, 6)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            Blend SrcAlpha OneMinusSrcAlpha
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma exclude_renderers gles3 metal d3d11_9x xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _TimeEditor;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform sampler2D _Flowmap; uniform float4 _Flowmap_ST;
            uniform float _Scale;
            uniform float _FlowPower;
            uniform float _FlowSpeed;
            uniform float _Angle;
            uniform float _BorderBlend;
            uniform float _FlowChangeSpeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 projPos : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                o.pos = mul(UNITY_MATRIX_MVP, v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float3 recipObjScale = float3( length(_World2Object[0].xyz), length(_World2Object[1].xyz), length(_World2Object[2].xyz) );
                float3 objScale = 1.0/recipObjScale;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float4 node_9199 = _Time + _TimeEditor;
                float node_7863 = 6.28318530718;
                float node_7028_ang = (_Angle*node_7863);
                float node_7028_spd = 1.0;
                float node_7028_cos = cos(node_7028_spd*node_7028_ang);
                float node_7028_sin = sin(node_7028_spd*node_7028_ang);
                float2 node_7028_piv = float2(0.5,0.5);
                float2 node_7028 = (mul((i.uv0*float2(objScale.r,objScale.b)*_Scale)-node_7028_piv,float2x2( node_7028_cos, -node_7028_sin, node_7028_sin, node_7028_cos))+node_7028_piv);
                float4 _Flowmap_var = tex2D(_Flowmap,TRANSFORM_TEX(i.uv0, _Flowmap));
                float2 node_8676 = ((_Flowmap_var.rgb.rg*1.0+-0.5)*_FlowPower);
                float2 node_7 = ((node_7028+(_FlowSpeed*node_9199.r)*float2(1,1))+node_8676+lerp(float2(0,0),node_8676,(sin((_FlowChangeSpeed*node_7863*node_9199.r))*0.5+0.5)));
                float4 node_1963 = tex2D(_Diffuse,TRANSFORM_TEX(node_7, _Diffuse));
                float3 finalColor = node_1963.rgb;
                return fixed4(finalColor,saturate((sceneZ-partZ)/_BorderBlend));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
