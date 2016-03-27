Shader "Custom/WaterFlow" {
Properties {
 _MainTex ("Base (RGB)", 2D) = "white" {}
 _Noise ("Noise", 2D) = "white" {}
 _FlowSpeed ("Flow Speed", Float) = 1
 _Tiling ("Tiling", Float) = 1
 _PanX ("Panning X", Float) = 0
 _PanY ("Panning Y", Float) = 0
}
SubShader { 
 LOD 200
 Tags { "RenderType"="Opaque" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "RenderType"="Opaque" }
Program "vp" {
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [unity_Scale]
Vector 10 [unity_SHAr]
Vector 11 [unity_SHAg]
Vector 12 [unity_SHAb]
Vector 13 [unity_SHBr]
Vector 14 [unity_SHBg]
Vector 15 [unity_SHBb]
Vector 16 [unity_SHC]
Vector 17 [_MainTex_ST]
"!!ARBvp1.0
# 28 ALU
PARAM c[18] = { { 1 },
		state.matrix.mvp,
		program.local[5..17] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MUL R1.xyz, vertex.normal, c[9].w;
DP3 R3.w, R1, c[6];
DP3 R2.w, R1, c[7];
DP3 R0.x, R1, c[5];
MOV R0.y, R3.w;
MOV R0.z, R2.w;
MUL R1, R0.xyzz, R0.yzzx;
MOV R0.w, c[0].x;
DP4 R2.z, R0, c[12];
DP4 R2.y, R0, c[11];
DP4 R2.x, R0, c[10];
MUL R0.y, R3.w, R3.w;
DP4 R3.z, R1, c[15];
DP4 R3.y, R1, c[14];
DP4 R3.x, R1, c[13];
MAD R0.y, R0.x, R0.x, -R0;
MUL R1.xyz, R0.y, c[16];
ADD R2.xyz, R2, R3;
ADD result.texcoord[2].xyz, R2, R1;
MOV result.color, vertex.color;
MOV result.texcoord[1].z, R2.w;
MOV result.texcoord[1].y, R3.w;
MOV result.texcoord[1].x, R0;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[17], c[17].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 28 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [unity_Scale]
Vector 9 [unity_SHAr]
Vector 10 [unity_SHAg]
Vector 11 [unity_SHAb]
Vector 12 [unity_SHBr]
Vector 13 [unity_SHBg]
Vector 14 [unity_SHBb]
Vector 15 [unity_SHC]
Vector 16 [_MainTex_ST]
"vs_2_0
; 28 ALU
def c17, 1.00000000, 0, 0, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c8.w
dp3 r3.w, r1, c5
dp3 r2.w, r1, c6
dp3 r0.x, r1, c4
mov r0.y, r3.w
mov r0.z, r2.w
mul r1, r0.xyzz, r0.yzzx
mov r0.w, c17.x
dp4 r2.z, r0, c11
dp4 r2.y, r0, c10
dp4 r2.x, r0, c9
mul r0.y, r3.w, r3.w
dp4 r3.z, r1, c14
dp4 r3.y, r1, c13
dp4 r3.x, r1, c12
mad r0.y, r0.x, r0.x, -r0
mul r1.xyz, r0.y, c15
add r2.xyz, r2, r3
add oT2.xyz, r2, r1
mov oD0, v3
mov oT1.z, r2.w
mov oT1.y, r3.w
mov oT1.x, r0
mad oT0.xy, v2, c16, c16.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 9 [unity_LightmapST]
Vector 10 [_MainTex_ST]
"!!ARBvp1.0
# 7 ALU
PARAM c[11] = { program.local[0],
		state.matrix.mvp,
		program.local[5..10] };
MOV result.color, vertex.color;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[10], c[10].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[9], c[9].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 7 instructions, 0 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 8 [unity_LightmapST]
Vector 9 [_MainTex_ST]
"vs_2_0
; 7 ALU
dcl_position0 v0
dcl_texcoord0 v2
dcl_texcoord1 v3
dcl_color0 v4
mov oD0, v4
mad oT0.xy, v2, c9, c9.zwzw
mad oT1.xy, v3, c8, c8.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 9 [unity_LightmapST]
Vector 10 [_MainTex_ST]
"!!ARBvp1.0
# 7 ALU
PARAM c[11] = { program.local[0],
		state.matrix.mvp,
		program.local[5..10] };
MOV result.color, vertex.color;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[10], c[10].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[9], c[9].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 7 instructions, 0 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 8 [unity_LightmapST]
Vector 9 [_MainTex_ST]
"vs_2_0
; 7 ALU
dcl_position0 v0
dcl_texcoord0 v2
dcl_texcoord1 v3
dcl_color0 v4
mov oD0, v4
mad oT0.xy, v2, c9, c9.zwzw
mad oT1.xy, v3, c8, c8.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"!!ARBvp1.0
# 33 ALU
PARAM c[19] = { { 1, 0.5 },
		state.matrix.mvp,
		program.local[5..18] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MUL R0.xyz, vertex.normal, c[10].w;
DP3 R3.w, R0, c[6];
DP3 R2.w, R0, c[7];
DP3 R1.w, R0, c[5];
MOV R1.x, R3.w;
MOV R1.y, R2.w;
MOV R1.z, c[0].x;
MUL R0, R1.wxyy, R1.xyyw;
DP4 R2.z, R1.wxyz, c[13];
DP4 R2.y, R1.wxyz, c[12];
DP4 R2.x, R1.wxyz, c[11];
DP4 R1.z, R0, c[16];
DP4 R1.y, R0, c[15];
DP4 R1.x, R0, c[14];
MUL R3.x, R3.w, R3.w;
MAD R0.x, R1.w, R1.w, -R3;
ADD R3.xyz, R2, R1;
MUL R2.xyz, R0.x, c[17];
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].y;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[2].xyz, R3, R2;
ADD result.texcoord[3].xy, R1, R1.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[3].zw, R0;
MOV result.texcoord[1].z, R2.w;
MOV result.texcoord[1].y, R3.w;
MOV result.texcoord[1].x, R1.w;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[18], c[18].zwzw;
END
# 33 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"vs_2_0
; 33 ALU
def c19, 1.00000000, 0.50000000, 0, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r0.xyz, v1, c10.w
dp3 r3.w, r0, c5
dp3 r2.w, r0, c6
dp3 r1.w, r0, c4
mov r1.x, r3.w
mov r1.y, r2.w
mov r1.z, c19.x
mul r0, r1.wxyy, r1.xyyw
dp4 r2.z, r1.wxyz, c13
dp4 r2.y, r1.wxyz, c12
dp4 r2.x, r1.wxyz, c11
dp4 r1.z, r0, c16
dp4 r1.y, r0, c15
dp4 r1.x, r0, c14
mul r3.x, r3.w, r3.w
mad r0.x, r1.w, r1.w, -r3
add r3.xyz, r2, r1
mul r2.xyz, r0.x, c17
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c19.y
mul r1.y, r1, c8.x
add oT2.xyz, r3, r2
mad oT3.xy, r1.z, c9.zwzw, r1
mov oPos, r0
mov oD0, v3
mov oT3.zw, r0
mov oT1.z, r2.w
mov oT1.y, r3.w
mov oT1.x, r1.w
mad oT0.xy, v2, c18, c18.zwzw
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 9 [_ProjectionParams]
Vector 10 [unity_LightmapST]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
# 12 ALU
PARAM c[12] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[2].xy, R1, R1.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[2].zw, R0;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[10], c[10].zwzw;
END
# 12 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_LightmapST]
Vector 11 [_MainTex_ST]
"vs_2_0
; 12 ALU
def c12, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v2
dcl_texcoord1 v3
dcl_color0 v4
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c12.x
mul r1.y, r1, c8.x
mad oT2.xy, r1.z, c9.zwzw, r1
mov oPos, r0
mov oD0, v4
mov oT2.zw, r0
mad oT0.xy, v2, c11, c11.zwzw
mad oT1.xy, v3, c10, c10.zwzw
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 9 [_ProjectionParams]
Vector 10 [unity_LightmapST]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
# 12 ALU
PARAM c[12] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[9].x;
ADD result.texcoord[2].xy, R1, R1.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[2].zw, R0;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
MAD result.texcoord[1].xy, vertex.texcoord[1], c[10], c[10].zwzw;
END
# 12 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_LightmapST]
Vector 11 [_MainTex_ST]
"vs_2_0
; 12 ALU
def c12, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v2
dcl_texcoord1 v3
dcl_color0 v4
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c12.x
mul r1.y, r1, c8.x
mad oT2.xy, r1.z, c9.zwzw, r1
mov oPos, r0
mov oD0, v4
mov oT2.zw, r0
mad oT0.xy, v2, c11, c11.zwzw
mad oT1.xy, v3, c10, c10.zwzw
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [unity_Scale]
Vector 10 [unity_4LightPosX0]
Vector 11 [unity_4LightPosY0]
Vector 12 [unity_4LightPosZ0]
Vector 13 [unity_4LightAtten0]
Vector 14 [unity_LightColor0]
Vector 15 [unity_LightColor1]
Vector 16 [unity_LightColor2]
Vector 17 [unity_LightColor3]
Vector 18 [unity_SHAr]
Vector 19 [unity_SHAg]
Vector 20 [unity_SHAb]
Vector 21 [unity_SHBr]
Vector 22 [unity_SHBg]
Vector 23 [unity_SHBb]
Vector 24 [unity_SHC]
Vector 25 [_MainTex_ST]
"!!ARBvp1.0
# 58 ALU
PARAM c[26] = { { 1, 0 },
		state.matrix.mvp,
		program.local[5..25] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
MUL R3.xyz, vertex.normal, c[9].w;
DP3 R4.x, R3, c[5];
DP3 R3.w, R3, c[6];
DP3 R3.x, R3, c[7];
DP4 R0.x, vertex.position, c[6];
ADD R1, -R0.x, c[11];
MUL R2, R3.w, R1;
DP4 R0.x, vertex.position, c[5];
ADD R0, -R0.x, c[10];
MUL R1, R1, R1;
MOV R4.z, R3.x;
MOV R4.w, c[0].x;
MAD R2, R4.x, R0, R2;
DP4 R4.y, vertex.position, c[7];
MAD R1, R0, R0, R1;
ADD R0, -R4.y, c[12];
MAD R1, R0, R0, R1;
MAD R0, R3.x, R0, R2;
MUL R2, R1, c[13];
MOV R4.y, R3.w;
RSQ R1.x, R1.x;
RSQ R1.y, R1.y;
RSQ R1.w, R1.w;
RSQ R1.z, R1.z;
MUL R0, R0, R1;
ADD R1, R2, c[0].x;
DP4 R2.z, R4, c[20];
DP4 R2.y, R4, c[19];
DP4 R2.x, R4, c[18];
RCP R1.x, R1.x;
RCP R1.y, R1.y;
RCP R1.w, R1.w;
RCP R1.z, R1.z;
MAX R0, R0, c[0].y;
MUL R0, R0, R1;
MUL R1.xyz, R0.y, c[15];
MAD R1.xyz, R0.x, c[14], R1;
MAD R0.xyz, R0.z, c[16], R1;
MAD R1.xyz, R0.w, c[17], R0;
MUL R0, R4.xyzz, R4.yzzx;
MUL R1.w, R3, R3;
DP4 R4.w, R0, c[23];
DP4 R4.z, R0, c[22];
DP4 R4.y, R0, c[21];
MAD R1.w, R4.x, R4.x, -R1;
MUL R0.xyz, R1.w, c[24];
ADD R2.xyz, R2, R4.yzww;
ADD R0.xyz, R2, R0;
ADD result.texcoord[2].xyz, R0, R1;
MOV result.color, vertex.color;
MOV result.texcoord[1].z, R3.x;
MOV result.texcoord[1].y, R3.w;
MOV result.texcoord[1].x, R4;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[25], c[25].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 58 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [unity_Scale]
Vector 9 [unity_4LightPosX0]
Vector 10 [unity_4LightPosY0]
Vector 11 [unity_4LightPosZ0]
Vector 12 [unity_4LightAtten0]
Vector 13 [unity_LightColor0]
Vector 14 [unity_LightColor1]
Vector 15 [unity_LightColor2]
Vector 16 [unity_LightColor3]
Vector 17 [unity_SHAr]
Vector 18 [unity_SHAg]
Vector 19 [unity_SHAb]
Vector 20 [unity_SHBr]
Vector 21 [unity_SHBg]
Vector 22 [unity_SHBb]
Vector 23 [unity_SHC]
Vector 24 [_MainTex_ST]
"vs_2_0
; 58 ALU
def c25, 1.00000000, 0.00000000, 0, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r3.xyz, v1, c8.w
dp3 r4.x, r3, c4
dp3 r3.w, r3, c5
dp3 r3.x, r3, c6
dp4 r0.x, v0, c5
add r1, -r0.x, c10
mul r2, r3.w, r1
dp4 r0.x, v0, c4
add r0, -r0.x, c9
mul r1, r1, r1
mov r4.z, r3.x
mov r4.w, c25.x
mad r2, r4.x, r0, r2
dp4 r4.y, v0, c6
mad r1, r0, r0, r1
add r0, -r4.y, c11
mad r1, r0, r0, r1
mad r0, r3.x, r0, r2
mul r2, r1, c12
mov r4.y, r3.w
rsq r1.x, r1.x
rsq r1.y, r1.y
rsq r1.w, r1.w
rsq r1.z, r1.z
mul r0, r0, r1
add r1, r2, c25.x
dp4 r2.z, r4, c19
dp4 r2.y, r4, c18
dp4 r2.x, r4, c17
rcp r1.x, r1.x
rcp r1.y, r1.y
rcp r1.w, r1.w
rcp r1.z, r1.z
max r0, r0, c25.y
mul r0, r0, r1
mul r1.xyz, r0.y, c14
mad r1.xyz, r0.x, c13, r1
mad r0.xyz, r0.z, c15, r1
mad r1.xyz, r0.w, c16, r0
mul r0, r4.xyzz, r4.yzzx
mul r1.w, r3, r3
dp4 r4.w, r0, c22
dp4 r4.z, r0, c21
dp4 r4.y, r0, c20
mad r1.w, r4.x, r4.x, -r1
mul r0.xyz, r1.w, c23
add r2.xyz, r2, r4.yzww
add r0.xyz, r2, r0
add oT2.xyz, r0, r1
mov oD0, v3
mov oT1.z, r3.x
mov oT1.y, r3.w
mov oT1.x, r4
mad oT0.xy, v2, c24, c24.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [unity_Scale]
Vector 11 [unity_4LightPosX0]
Vector 12 [unity_4LightPosY0]
Vector 13 [unity_4LightPosZ0]
Vector 14 [unity_4LightAtten0]
Vector 15 [unity_LightColor0]
Vector 16 [unity_LightColor1]
Vector 17 [unity_LightColor2]
Vector 18 [unity_LightColor3]
Vector 19 [unity_SHAr]
Vector 20 [unity_SHAg]
Vector 21 [unity_SHAb]
Vector 22 [unity_SHBr]
Vector 23 [unity_SHBg]
Vector 24 [unity_SHBb]
Vector 25 [unity_SHC]
Vector 26 [_MainTex_ST]
"!!ARBvp1.0
# 64 ALU
PARAM c[27] = { { 1, 0, 0.5 },
		state.matrix.mvp,
		program.local[5..26] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
MUL R3.xyz, vertex.normal, c[10].w;
DP3 R4.x, R3, c[5];
DP3 R3.w, R3, c[6];
DP3 R3.x, R3, c[7];
DP4 R0.x, vertex.position, c[6];
ADD R1, -R0.x, c[12];
MUL R2, R3.w, R1;
DP4 R0.x, vertex.position, c[5];
ADD R0, -R0.x, c[11];
MUL R1, R1, R1;
MOV R4.z, R3.x;
MOV R4.w, c[0].x;
MAD R2, R4.x, R0, R2;
DP4 R4.y, vertex.position, c[7];
MAD R1, R0, R0, R1;
ADD R0, -R4.y, c[13];
MAD R1, R0, R0, R1;
MAD R0, R3.x, R0, R2;
MUL R2, R1, c[14];
MOV R4.y, R3.w;
RSQ R1.x, R1.x;
RSQ R1.y, R1.y;
RSQ R1.w, R1.w;
RSQ R1.z, R1.z;
MUL R0, R0, R1;
ADD R1, R2, c[0].x;
DP4 R2.z, R4, c[21];
DP4 R2.y, R4, c[20];
DP4 R2.x, R4, c[19];
RCP R1.x, R1.x;
RCP R1.y, R1.y;
RCP R1.w, R1.w;
RCP R1.z, R1.z;
MAX R0, R0, c[0].y;
MUL R0, R0, R1;
MUL R1.xyz, R0.y, c[16];
MAD R1.xyz, R0.x, c[15], R1;
MAD R0.xyz, R0.z, c[17], R1;
MAD R1.xyz, R0.w, c[18], R0;
MUL R0, R4.xyzz, R4.yzzx;
MUL R1.w, R3, R3;
DP4 R4.w, R0, c[24];
DP4 R4.z, R0, c[23];
DP4 R4.y, R0, c[22];
MAD R1.w, R4.x, R4.x, -R1;
MUL R0.xyz, R1.w, c[25];
ADD R2.xyz, R2, R4.yzww;
ADD R4.yzw, R2.xxyz, R0.xxyz;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R2.xyz, R0.xyww, c[0].z;
ADD result.texcoord[2].xyz, R4.yzww, R1;
MOV R1.x, R2;
MUL R1.y, R2, c[9].x;
ADD result.texcoord[3].xy, R1, R2.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[3].zw, R0;
MOV result.texcoord[1].z, R3.x;
MOV result.texcoord[1].y, R3.w;
MOV result.texcoord[1].x, R4;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[26], c[26].zwzw;
END
# 64 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_Scale]
Vector 11 [unity_4LightPosX0]
Vector 12 [unity_4LightPosY0]
Vector 13 [unity_4LightPosZ0]
Vector 14 [unity_4LightAtten0]
Vector 15 [unity_LightColor0]
Vector 16 [unity_LightColor1]
Vector 17 [unity_LightColor2]
Vector 18 [unity_LightColor3]
Vector 19 [unity_SHAr]
Vector 20 [unity_SHAg]
Vector 21 [unity_SHAb]
Vector 22 [unity_SHBr]
Vector 23 [unity_SHBg]
Vector 24 [unity_SHBb]
Vector 25 [unity_SHC]
Vector 26 [_MainTex_ST]
"vs_2_0
; 64 ALU
def c27, 1.00000000, 0.00000000, 0.50000000, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r3.xyz, v1, c10.w
dp3 r4.x, r3, c4
dp3 r3.w, r3, c5
dp3 r3.x, r3, c6
dp4 r0.x, v0, c5
add r1, -r0.x, c12
mul r2, r3.w, r1
dp4 r0.x, v0, c4
add r0, -r0.x, c11
mul r1, r1, r1
mov r4.z, r3.x
mov r4.w, c27.x
mad r2, r4.x, r0, r2
dp4 r4.y, v0, c6
mad r1, r0, r0, r1
add r0, -r4.y, c13
mad r1, r0, r0, r1
mad r0, r3.x, r0, r2
mul r2, r1, c14
mov r4.y, r3.w
rsq r1.x, r1.x
rsq r1.y, r1.y
rsq r1.w, r1.w
rsq r1.z, r1.z
mul r0, r0, r1
add r1, r2, c27.x
dp4 r2.z, r4, c21
dp4 r2.y, r4, c20
dp4 r2.x, r4, c19
rcp r1.x, r1.x
rcp r1.y, r1.y
rcp r1.w, r1.w
rcp r1.z, r1.z
max r0, r0, c27.y
mul r0, r0, r1
mul r1.xyz, r0.y, c16
mad r1.xyz, r0.x, c15, r1
mad r0.xyz, r0.z, c17, r1
mad r1.xyz, r0.w, c18, r0
mul r0, r4.xyzz, r4.yzzx
mul r1.w, r3, r3
dp4 r4.w, r0, c24
dp4 r4.z, r0, c23
dp4 r4.y, r0, c22
mad r1.w, r4.x, r4.x, -r1
mul r0.xyz, r1.w, c25
add r2.xyz, r2, r4.yzww
add r4.yzw, r2.xxyz, r0.xxyz
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r2.xyz, r0.xyww, c27.z
add oT2.xyz, r4.yzww, r1
mov r1.x, r2
mul r1.y, r2, c8.x
mad oT3.xy, r2.z, c9.zwzw, r1
mov oPos, r0
mov oD0, v3
mov oT3.zw, r0
mov oT1.z, r3.x
mov oT1.y, r3.w
mov oT1.x, r4
mad oT0.xy, v2, c26, c26.zwzw
"
}
}
Program "fp" {
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Vector 1 [_WorldSpaceLightPos0]
Vector 2 [_LightColor0]
Float 3 [_FlowSpeed]
Float 4 [_Tiling]
Float 5 [_PanX]
Float 6 [_PanY]
SetTexture 0 [_MainTex] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 32 ALU, 2 TEX
PARAM c[8] = { program.local[0..6],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R0.x, c[3];
MUL R1.z, R0.x, c[0].x;
ADD R0.z, R1, c[7].y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R2.x, R1.z, -R0, R0;
ABS R0.w, R0.z;
MAD R0.xy, fragment.color.primary, c[7].z, -c[7].w;
MUL R1.xy, R2.x, R0;
FRC R0.w, R0;
CMP R1.w, R0.z, -R0, R0;
ADD R2.x, -R2, c[7].y;
MUL R0.xy, R0, R1.w;
MOV R0.w, c[6].x;
MOV R0.z, c[5].x;
MUL R0.zw, R1.z, R0;
MAD R0.zw, fragment.texcoord[0].xyxy, c[4].x, R0;
ADD R1.xy, R0.zwzw, R1;
ADD R0.xy, R0.zwzw, R0;
ABS R2.x, R2;
TEX R1, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R2.x, R0;
MAD R0, R0, c[7].z, R1;
MUL R1.xyz, R0, fragment.texcoord[2];
DP3 R1.w, fragment.texcoord[1], c[1];
MUL R0.xyz, R0, c[2];
MAX R1.w, R1, c[7].x;
MUL R0.xyz, R1.w, R0;
MAD result.color.xyz, R0, c[7].z, R1;
MOV result.color.w, R0;
END
# 32 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Vector 1 [_WorldSpaceLightPos0]
Vector 2 [_LightColor0]
Float 3 [_FlowSpeed]
Float 4 [_Tiling]
Float 5 [_PanX]
Float 6 [_PanY]
SetTexture 0 [_MainTex] 2D
"ps_2_0
; 31 ALU, 2 TEX
dcl_2d s0
def c7, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
mov r0.x, c0
mul r1.x, c3, r0
add_pp r2.x, r1, c7.y
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c7.z, c7.w
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c7.y
mov_pp r3.y, c6.x
mov_pp r3.x, c5
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c4.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r2, r2, s0
texld r1, r1, s0
add_pp r2, r2, -r1
mul_pp r0, r0.x, r2
mad_pp r1, r0, c7.z, r1
mul_pp r2.xyz, r1, t2
dp3_pp r0.x, t1, c1
mov_pp r0.w, r1
mul_pp r1.xyz, r1, c2
max_pp r0.x, r0, c7
mul_pp r0.xyz, r0.x, r1
mad_pp r0.xyz, r0, c7.z, r2
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 30 ALU, 3 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEX R2, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R1.x, R1.z, c[5];
ABS R0.z, R1.x;
FRC R1.y, R0.z;
CMP R1.w, R1.x, -R1.y, R1.y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R3.x, R1.z, -R0, R0;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R0.zw, R3.x, R0.xyxy;
ADD R3.x, -R3, c[5];
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0.xyxy, R1.w;
MAD R0.xy, fragment.texcoord[0], c[2].x, R1;
ADD R1.xy, R0, R1.zwzw;
ADD R1.zw, R0.xyxy, R0;
ABS R3.x, R3;
MUL R2.xyz, R2.w, R2;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R3.x, R0;
MAD R0, R0, c[5].y, R1;
MUL R0.xyz, R0, R2;
MOV result.color.w, R0;
MUL result.color.xyz, R0, c[5].w;
END
# 30 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [unity_Lightmap] 2D
"ps_2_0
; 27 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xy
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c5
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c2.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r3, r2, s0
texld r2, r1, s0
texld r1, t1, s1
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mad_pp r0, r0, c5.y, r2
mul_pp r1.xyz, r1.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0, c5.w
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 30 ALU, 3 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEX R2, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R1.x, R1.z, c[5];
ABS R0.z, R1.x;
FRC R1.y, R0.z;
CMP R1.w, R1.x, -R1.y, R1.y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R3.x, R1.z, -R0, R0;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R0.zw, R3.x, R0.xyxy;
ADD R3.x, -R3, c[5];
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0.xyxy, R1.w;
MAD R0.xy, fragment.texcoord[0], c[2].x, R1;
ADD R1.xy, R0, R1.zwzw;
ADD R1.zw, R0.xyxy, R0;
ABS R3.x, R3;
MUL R2.xyz, R2.w, R2;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R3.x, R0;
MAD R0, R0, c[5].y, R1;
MUL R0.xyz, R0, R2;
MOV result.color.w, R0;
MUL result.color.xyz, R0, c[5].w;
END
# 30 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_OFF" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [unity_Lightmap] 2D
"ps_2_0
; 27 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xy
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c5
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c2.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r3, r2, s0
texld r2, r1, s0
texld r1, t1, s1
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mad_pp r0, r0, c5.y, r2
mul_pp r1.xyz, r1.w, r1
mul_pp r0.xyz, r0, r1
mul_pp r0.xyz, r0, c5.w
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Vector 1 [_WorldSpaceLightPos0]
Vector 2 [_LightColor0]
Float 3 [_FlowSpeed]
Float 4 [_Tiling]
Float 5 [_PanX]
Float 6 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 34 ALU, 3 TEX
PARAM c[8] = { program.local[0..6],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
TXP R2.x, fragment.texcoord[3], texture[1], 2D;
MOV R0.x, c[3];
MUL R1.z, R0.x, c[0].x;
ADD R0.z, R1, c[7].y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R2.y, R1.z, -R0.x, R0.x;
ABS R0.w, R0.z;
MAD R0.xy, fragment.color.primary, c[7].z, -c[7].w;
MUL R1.xy, R2.y, R0;
FRC R0.w, R0;
CMP R1.w, R0.z, -R0, R0;
ADD R2.y, -R2, c[7];
MUL R0.xy, R0, R1.w;
MOV R0.w, c[6].x;
MOV R0.z, c[5].x;
MUL R0.zw, R1.z, R0;
MAD R0.zw, fragment.texcoord[0].xyxy, c[4].x, R0;
ADD R1.xy, R0.zwzw, R1;
ADD R0.xy, R0.zwzw, R0;
ABS R2.y, R2;
TEX R1, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R2.y, R0;
MAD R0, R0, c[7].z, R1;
MUL R1.xyz, R0, fragment.texcoord[2];
DP3 R1.w, fragment.texcoord[1], c[1];
MAX R1.w, R1, c[7].x;
MUL R0.xyz, R0, c[2];
MUL R1.w, R1, R2.x;
MUL R0.xyz, R1.w, R0;
MAD result.color.xyz, R0, c[7].z, R1;
MOV result.color.w, R0;
END
# 34 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Vector 1 [_WorldSpaceLightPos0]
Vector 2 [_LightColor0]
Float 3 [_FlowSpeed]
Float 4 [_Tiling]
Float 5 [_PanX]
Float 6 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
"ps_2_0
; 31 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c7, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
dcl t3
mov r0.x, c0
mul r1.x, c3, r0
add_pp r2.x, r1, c7.y
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c7.z, c7.w
abs_pp r0.x, r1
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c6.x
mov_pp r3.x, c5
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c4.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r3.xy, r1, r3
add_pp r0.x, -r0, c7.y
abs_pp r0.x, r0
texld r1, r3, s0
texld r2, r2, s0
texldp r3, t3, s1
add_pp r2, r2, -r1
mul_pp r0, r0.x, r2
mad_pp r0, r0, c7.z, r1
mul_pp r2.xyz, r0, t2
mul_pp r1.xyz, r0, c2
dp3_pp r0.x, t1, c1
max_pp r0.x, r0, c7
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, r1
mad_pp r0.xyz, r0, c7.z, r2
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
SetTexture 2 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 36 ALU, 4 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
TXP R4.x, fragment.texcoord[2], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
ADD R1.x, R1.z, c[5];
CMP R3.x, R1.z, -R0, R0;
ABS R0.x, R1;
FRC R1.y, R0.x;
CMP R1.w, R1.x, -R1.y, R1.y;
MAD R0.zw, fragment.color.primary.xyxy, c[5].y, -c[5].z;
MUL R0.xy, R3.x, R0.zwzw;
ADD R3.x, -R3, c[5];
ABS R3.x, R3;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0, R1.w;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R1.xyxy;
ADD R1.xy, R0.zwzw, R1.zwzw;
ADD R0.xy, R0.zwzw, R0;
TEX R2, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[2], 2D;
ADD R2, R2, -R0;
MUL R2, R3.x, R2;
MUL R3.xyz, R1.w, R1;
MUL R1.xyz, R1, R4.x;
MUL R3.xyz, R3, c[5].w;
MAD R0, R2, c[5].y, R0;
MUL R1.xyz, R1, c[5].y;
MUL R4.xyz, R3, R4.x;
MIN R1.xyz, R3, R1;
MAX R1.xyz, R1, R4;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 36 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
SetTexture 2 [unity_Lightmap] 2D
"ps_2_0
; 32 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xy
dcl t2
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
abs_pp r0.x, r1
frc_pp r0.x, r0
mul_pp r2.xy, r4, r2.x
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c2.x, r1
add r3.xy, r1, r3
add r1.xy, r1, r2
add_pp r0.x, -r0, c5
abs_pp r0.x, r0
texld r2, r3, s0
texld r3, r1, s0
texldp r4, t2, s1
texld r1, t1, s2
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mul_pp r3.xyz, r1.w, r1
mul_pp r1.xyz, r1, r4.x
mul_pp r3.xyz, r3, c5.w
mul_pp r1.xyz, r1, c5.y
mad_pp r0, r0, c5.y, r2
mul_pp r4.xyz, r3, r4.x
min_pp r1.xyz, r3, r1
max_pp r1.xyz, r1, r4
mul_pp r0.xyz, r0, r1
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
SetTexture 2 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 36 ALU, 4 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
TXP R4.x, fragment.texcoord[2], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
ADD R1.x, R1.z, c[5];
CMP R3.x, R1.z, -R0, R0;
ABS R0.x, R1;
FRC R1.y, R0.x;
CMP R1.w, R1.x, -R1.y, R1.y;
MAD R0.zw, fragment.color.primary.xyxy, c[5].y, -c[5].z;
MUL R0.xy, R3.x, R0.zwzw;
ADD R3.x, -R3, c[5];
ABS R3.x, R3;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0, R1.w;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R1.xyxy;
ADD R1.xy, R0.zwzw, R1.zwzw;
ADD R0.xy, R0.zwzw, R0;
TEX R2, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
TEX R1, fragment.texcoord[1], texture[2], 2D;
ADD R2, R2, -R0;
MUL R2, R3.x, R2;
MUL R3.xyz, R1.w, R1;
MUL R1.xyz, R1, R4.x;
MUL R3.xyz, R3, c[5].w;
MAD R0, R2, c[5].y, R0;
MUL R1.xyz, R1, c[5].y;
MUL R4.xyz, R3, R4.x;
MIN R1.xyz, R3, R1;
MAX R1.xyz, R1, R4;
MUL result.color.xyz, R0, R1;
MOV result.color.w, R0;
END
# 36 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "SHADOWS_SCREEN" "LIGHTMAP_ON" "DIRLIGHTMAP_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_ShadowMapTexture] 2D
SetTexture 2 [unity_Lightmap] 2D
"ps_2_0
; 32 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xy
dcl t2
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
abs_pp r0.x, r1
frc_pp r0.x, r0
mul_pp r2.xy, r4, r2.x
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c2.x, r1
add r3.xy, r1, r3
add r1.xy, r1, r2
add_pp r0.x, -r0, c5
abs_pp r0.x, r0
texld r2, r3, s0
texld r3, r1, s0
texldp r4, t2, s1
texld r1, t1, s2
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mul_pp r3.xyz, r1.w, r1
mul_pp r1.xyz, r1, r4.x
mul_pp r3.xyz, r3, c5.w
mul_pp r1.xyz, r1, c5.y
mad_pp r0, r0, c5.y, r2
mul_pp r4.xyz, r3, r4.x
min_pp r1.xyz, r3, r1
max_pp r1.xyz, r1, r4
mul_pp r0.xyz, r0, r1
mov_pp oC0, r0
"
}
}
 }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardAdd" "RenderType"="Opaque" }
  ZWrite Off
  Fog {
   Color (0,0,0,0)
  }
  Blend One One
Program "vp" {
SubProgram "opengl " {
Keywords { "POINT" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Matrix 9 [_LightMatrix0]
Vector 13 [unity_Scale]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [_MainTex_ST]
"!!ARBvp1.0
# 18 ALU
PARAM c[16] = { program.local[0],
		state.matrix.mvp,
		program.local[5..15] };
TEMP R0;
TEMP R1;
MUL R1.xyz, vertex.normal, c[13].w;
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
DP4 R0.w, vertex.position, c[8];
MOV result.color, vertex.color;
DP4 result.texcoord[3].z, R0, c[11];
DP4 result.texcoord[3].y, R0, c[10];
DP4 result.texcoord[3].x, R0, c[9];
DP3 result.texcoord[1].z, R1, c[7];
DP3 result.texcoord[1].y, R1, c[6];
DP3 result.texcoord[1].x, R1, c[5];
ADD result.texcoord[2].xyz, -R0, c[14];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[15], c[15].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 18 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "POINT" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_LightMatrix0]
Vector 12 [unity_Scale]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [_MainTex_ST]
"vs_2_0
; 18 ALU
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c12.w
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
dp4 r0.w, v0, c7
mov oD0, v3
dp4 oT3.z, r0, c10
dp4 oT3.y, r0, c9
dp4 oT3.x, r0, c8
dp3 oT1.z, r1, c6
dp3 oT1.y, r1, c5
dp3 oT1.x, r1, c4
add oT2.xyz, -r0, c13
mad oT0.xy, v2, c14, c14.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [unity_Scale]
Vector 10 [_WorldSpaceLightPos0]
Vector 11 [_MainTex_ST]
"!!ARBvp1.0
# 11 ALU
PARAM c[12] = { program.local[0],
		state.matrix.mvp,
		program.local[5..11] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[9].w;
MOV result.color, vertex.color;
DP3 result.texcoord[1].z, R0, c[7];
DP3 result.texcoord[1].y, R0, c[6];
DP3 result.texcoord[1].x, R0, c[5];
MOV result.texcoord[2].xyz, c[10];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[11], c[11].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 11 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [unity_Scale]
Vector 9 [_WorldSpaceLightPos0]
Vector 10 [_MainTex_ST]
"vs_2_0
; 11 ALU
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r0.xyz, v1, c8.w
mov oD0, v3
dp3 oT1.z, r0, c6
dp3 oT1.y, r0, c5
dp3 oT1.x, r0, c4
mov oT2.xyz, c9
mad oT0.xy, v2, c10, c10.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "SPOT" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Matrix 9 [_LightMatrix0]
Vector 13 [unity_Scale]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [_MainTex_ST]
"!!ARBvp1.0
# 19 ALU
PARAM c[16] = { program.local[0],
		state.matrix.mvp,
		program.local[5..15] };
TEMP R0;
TEMP R1;
MUL R1.xyz, vertex.normal, c[13].w;
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
DP4 R0.w, vertex.position, c[8];
MOV result.color, vertex.color;
DP4 result.texcoord[3].w, R0, c[12];
DP4 result.texcoord[3].z, R0, c[11];
DP4 result.texcoord[3].y, R0, c[10];
DP4 result.texcoord[3].x, R0, c[9];
DP3 result.texcoord[1].z, R1, c[7];
DP3 result.texcoord[1].y, R1, c[6];
DP3 result.texcoord[1].x, R1, c[5];
ADD result.texcoord[2].xyz, -R0, c[14];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[15], c[15].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 19 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_LightMatrix0]
Vector 12 [unity_Scale]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [_MainTex_ST]
"vs_2_0
; 19 ALU
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c12.w
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
dp4 r0.w, v0, c7
mov oD0, v3
dp4 oT3.w, r0, c11
dp4 oT3.z, r0, c10
dp4 oT3.y, r0, c9
dp4 oT3.x, r0, c8
dp3 oT1.z, r1, c6
dp3 oT1.y, r1, c5
dp3 oT1.x, r1, c4
add oT2.xyz, -r0, c13
mad oT0.xy, v2, c14, c14.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "POINT_COOKIE" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Matrix 9 [_LightMatrix0]
Vector 13 [unity_Scale]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [_MainTex_ST]
"!!ARBvp1.0
# 18 ALU
PARAM c[16] = { program.local[0],
		state.matrix.mvp,
		program.local[5..15] };
TEMP R0;
TEMP R1;
MUL R1.xyz, vertex.normal, c[13].w;
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
DP4 R0.w, vertex.position, c[8];
MOV result.color, vertex.color;
DP4 result.texcoord[3].z, R0, c[11];
DP4 result.texcoord[3].y, R0, c[10];
DP4 result.texcoord[3].x, R0, c[9];
DP3 result.texcoord[1].z, R1, c[7];
DP3 result.texcoord[1].y, R1, c[6];
DP3 result.texcoord[1].x, R1, c[5];
ADD result.texcoord[2].xyz, -R0, c[14];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[15], c[15].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 18 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_LightMatrix0]
Vector 12 [unity_Scale]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [_MainTex_ST]
"vs_2_0
; 18 ALU
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c12.w
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
dp4 r0.w, v0, c7
mov oD0, v3
dp4 oT3.z, r0, c10
dp4 oT3.y, r0, c9
dp4 oT3.x, r0, c8
dp3 oT1.z, r1, c6
dp3 oT1.y, r1, c5
dp3 oT1.x, r1, c4
add oT2.xyz, -r0, c13
mad oT0.xy, v2, c14, c14.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL_COOKIE" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Matrix 9 [_LightMatrix0]
Vector 13 [unity_Scale]
Vector 14 [_WorldSpaceLightPos0]
Vector 15 [_MainTex_ST]
"!!ARBvp1.0
# 17 ALU
PARAM c[16] = { program.local[0],
		state.matrix.mvp,
		program.local[5..15] };
TEMP R0;
TEMP R1;
MUL R1.xyz, vertex.normal, c[13].w;
DP4 R0.w, vertex.position, c[8];
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
MOV result.color, vertex.color;
DP4 result.texcoord[3].y, R0, c[10];
DP4 result.texcoord[3].x, R0, c[9];
DP3 result.texcoord[1].z, R1, c[7];
DP3 result.texcoord[1].y, R1, c[6];
DP3 result.texcoord[1].x, R1, c[5];
MOV result.texcoord[2].xyz, c[14];
MAD result.texcoord[0].xy, vertex.texcoord[0], c[15], c[15].zwzw;
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 17 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Matrix 8 [_LightMatrix0]
Vector 12 [unity_Scale]
Vector 13 [_WorldSpaceLightPos0]
Vector 14 [_MainTex_ST]
"vs_2_0
; 17 ALU
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c12.w
dp4 r0.w, v0, c7
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
mov oD0, v3
dp4 oT3.y, r0, c9
dp4 oT3.x, r0, c8
dp3 oT1.z, r1, c6
dp3 oT1.y, r1, c5
dp3 oT1.x, r1, c4
mov oT2.xyz, c13
mad oT0.xy, v2, c14, c14.zwzw
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
}
Program "fp" {
SubProgram "opengl " {
Keywords { "POINT" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 37 ALU, 3 TEX
PARAM c[7] = { program.local[0..5],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R0.x, c[2];
MUL R1.z, R0.x, c[0].x;
ADD R0.w, R1.z, c[6].y;
ABS R0.z, R0.w;
FRC R1.x, R0.z;
ABS R0.z, R1;
FRC R0.z, R0;
CMP R1.w, R1.z, -R0.z, R0.z;
ADD R2.x, -R1.w, c[6].y;
CMP R0.w, R0, -R1.x, R1.x;
MAD R0.xy, fragment.color.primary, c[6].z, -c[6].w;
MUL R1.xy, R0, R0.w;
MUL R0.xy, R1.w, R0;
DP3 R1.w, fragment.texcoord[2], fragment.texcoord[2];
MOV R0.w, c[5].x;
MOV R0.z, c[4].x;
MUL R0.zw, R1.z, R0;
MAD R0.zw, fragment.texcoord[0].xyxy, c[3].x, R0;
ADD R1.xy, R0.zwzw, R1;
ADD R0.xy, R0.zwzw, R0;
DP3 R0.w, fragment.texcoord[3], fragment.texcoord[3];
ABS R2.x, R2;
RSQ R1.w, R1.w;
MOV result.color.w, c[6].x;
TEX R0.xyz, R0, texture[0], 2D;
TEX R1.xyz, R1, texture[0], 2D;
TEX R0.w, R0.w, texture[1], 2D;
ADD R1.xyz, R1, -R0;
MUL R2.xyz, R2.x, R1;
MUL R1.xyz, R1.w, fragment.texcoord[2];
MAD R0.xyz, R2, c[6].z, R0;
DP3 R1.x, fragment.texcoord[1], R1;
MAX R1.x, R1, c[6];
MUL R0.xyz, R0, c[1];
MUL R0.w, R1.x, R0;
MUL R0.xyz, R0.w, R0;
MUL result.color.xyz, R0, c[6].z;
END
# 37 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "POINT" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
"ps_2_0
; 36 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c6, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
dcl t3.xyz
mov r0.x, c0
mul r0.x, c2, r0
mov_pp r1.y, c5.x
mov_pp r1.x, c4
mul_pp r2.xy, r0.x, r1
add_pp r1.x, r0, c6.y
mad r4.xy, t0, c3.x, r2
abs_pp r2.x, r1
frc_pp r3.x, r2
abs_pp r2.x, r0
cmp_pp r3.x, r1, r3, -r3
frc_pp r1.x, r2
cmp_pp r0.x, r0, r1, -r1
mad r5.xy, v0, c6.z, c6.w
mul_pp r2.xy, r5, r3.x
mul_pp r3.xy, r0.x, r5
add r2.xy, r4, r2
add r4.xy, r4, r3
dp3 r1.x, t3, t3
mov r3.xy, r1.x
add_pp r0.x, -r0, c6.y
mov_pp r0.w, c6.x
texld r1, r4, s0
texld r2, r2, s0
texld r3, r3, s1
add_pp r4.xyz, r2, -r1
abs_pp r2.x, r0
dp3_pp r0.x, t2, t2
mul_pp r2.xyz, r2.x, r4
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t2
dp3_pp r0.x, t1, r0
mad_pp r1.xyz, r2, c6.z, r1
mul_pp r1.xyz, r1, c1
max_pp r0.x, r0, c6
mul_pp r0.x, r0, r3
mul_pp r0.xyz, r0.x, r1
mul_pp r0.xyz, r0, c6.z
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 32 ALU, 2 TEX
PARAM c[7] = { program.local[0..5],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R0.x, c[2];
MUL R0.z, R0.x, c[0].x;
ABS R0.x, R0.z;
FRC R0.x, R0;
ADD R0.y, R0.z, c[6];
CMP R0.w, R0.z, -R0.x, R0.x;
ABS R0.x, R0.y;
MAD R1.xy, fragment.color.primary, c[6].z, -c[6].w;
MUL R1.zw, R0.w, R1.xyxy;
FRC R0.x, R0;
CMP R2.x, R0.y, -R0, R0;
ADD R0.w, -R0, c[6].y;
MUL R1.xy, R1, R2.x;
ABS R0.w, R0;
MOV R0.y, c[5].x;
MOV R0.x, c[4];
MUL R0.xy, R0.z, R0;
MAD R0.xy, fragment.texcoord[0], c[3].x, R0;
ADD R1.xy, R0, R1;
ADD R0.xy, R0, R1.zwzw;
MOV result.color.w, c[6].x;
TEX R0.xyz, R0, texture[0], 2D;
TEX R1.xyz, R1, texture[0], 2D;
ADD R1.xyz, R1, -R0;
MUL R2.xyz, R0.w, R1;
MOV R1.xyz, fragment.texcoord[2];
MAD R0.xyz, R2, c[6].z, R0;
DP3 R0.w, fragment.texcoord[1], R1;
MUL R1.xyz, R0, c[1];
MAX R0.x, R0.w, c[6];
MUL R0.xyz, R0.x, R1;
MUL result.color.xyz, R0, c[6].z;
END
# 32 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
"ps_2_0
; 31 ALU, 2 TEX
dcl_2d s0
def c6, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
mov r0.x, c0
mul r1.x, c2, r0
add_pp r2.x, r1, c6.y
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c6.z, c6.w
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c6.y
abs_pp r0.x, r0
mov_pp r3.y, c5.x
mov_pp r3.x, c4
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c3.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
mov_pp r0.w, c6.x
texld r2, r2, s0
texld r1, r1, s0
add_pp r2.xyz, r2, -r1
mul_pp r2.xyz, r0.x, r2
mov_pp r0.xyz, t2
dp3_pp r0.x, t1, r0
mad_pp r1.xyz, r2, c6.z, r1
mul_pp r1.xyz, r1, c1
max_pp r0.x, r0, c6
mul_pp r0.xyz, r0.x, r1
mul_pp r0.xyz, r0, c6.z
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "SPOT" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
SetTexture 2 [_LightTextureB0] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 43 ALU, 4 TEX
PARAM c[7] = { program.local[0..5],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R0.x, c[2];
MUL R0.z, R0.x, c[0].x;
ADD R1.z, R0, c[6].y;
ABS R1.x, R1.z;
FRC R1.w, R1.x;
CMP R1.z, R1, -R1.w, R1.w;
ABS R0.w, R0.z;
FRC R0.w, R0;
DP3 R1.w, fragment.texcoord[3], fragment.texcoord[3];
CMP R2.z, R0, -R0.w, R0.w;
MOV R0.y, c[5].x;
MOV R0.x, c[4];
MUL R0.xy, R0.z, R0;
MAD R0.zw, fragment.color.primary.xyxy, c[6].z, -c[6].w;
MUL R1.xy, R2.z, R0.zwzw;
MUL R0.zw, R0, R1.z;
MAD R0.xy, fragment.texcoord[0], c[3].x, R0;
ADD R1.xy, R0, R1;
ADD R0.xy, R0, R0.zwzw;
RCP R1.z, fragment.texcoord[3].w;
MAD R2.xy, fragment.texcoord[3], R1.z, c[6].y;
MOV result.color.w, c[6].x;
TEX R0.w, R2, texture[1], 2D;
TEX R1.xyz, R1, texture[0], 2D;
TEX R0.xyz, R0, texture[0], 2D;
TEX R1.w, R1.w, texture[2], 2D;
ADD R2.x, -R2.z, c[6].y;
ABS R2.y, R2.x;
ADD R0.xyz, R0, -R1;
MUL R0.xyz, R2.y, R0;
MAD R1.xyz, R0, c[6].z, R1;
DP3 R2.x, fragment.texcoord[2], fragment.texcoord[2];
RSQ R2.x, R2.x;
MUL R0.xyz, R2.x, fragment.texcoord[2];
DP3 R0.x, fragment.texcoord[1], R0;
SLT R0.y, c[6].x, fragment.texcoord[3].z;
MUL R0.y, R0, R0.w;
MUL R0.y, R0, R1.w;
MAX R0.x, R0, c[6];
MUL R1.xyz, R1, c[1];
MUL R0.x, R0, R0.y;
MUL R0.xyz, R0.x, R1;
MUL result.color.xyz, R0, c[6].z;
END
# 43 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
SetTexture 2 [_LightTextureB0] 2D
"ps_2_0
; 41 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
def c6, 0.00000000, 1.00000000, 0.50000000, 2.00000000
def c7, 2.00000000, -1.00000000, 0, 0
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
dcl t3
mov r0.x, c0
mul r1.x, c2, r0
add_pp r2.x, r1, c6.z
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r5.xy, v0, c7.x, c7.y
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r4.xy, r0.x, r5
add_pp r0.x, -r0, c6.z
mov_pp r3.y, c5.x
mov_pp r3.x, c4
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c3.x, r1
mul_pp r2.xy, r5, r2.x
add r2.xy, r1, r2
add r5.xy, r1, r4
rcp r3.x, t3.w
mad r4.xy, t3, r3.x, c6.z
dp3 r1.x, t3, t3
mov r3.xy, r1.x
abs_pp r0.x, r0
mov_pp r0.w, c6.x
texld r1, r5, s0
texld r2, r2, s0
texld r3, r3, s2
texld r4, r4, s1
add_pp r2.xyz, r2, -r1
mul_pp r0.xyz, r0.x, r2
mad_pp r0.xyz, r0, c6.w, r1
mul_pp r2.xyz, r0, c1
dp3_pp r0.x, t2, t2
rsq_pp r1.x, r0.x
mul_pp r1.xyz, r1.x, t2
dp3_pp r1.x, t1, r1
cmp r0.x, -t3.z, c6, c6.y
mul_pp r0.x, r0, r4.w
mul_pp r0.x, r0, r3
max_pp r1.x, r1, c6
mul_pp r0.x, r1, r0
mul_pp r0.xyz, r0.x, r2
mul_pp r0.xyz, r0, c6.w
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "POINT_COOKIE" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTextureB0] 2D
SetTexture 2 [_LightTexture0] CUBE
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 39 ALU, 4 TEX
PARAM c[7] = { program.local[0..5],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEX R1.w, fragment.texcoord[3], texture[2], CUBE;
MOV R0.x, c[2];
MUL R1.z, R0.x, c[0].x;
ADD R0.y, R1.z, c[6];
ABS R0.x, R0.y;
FRC R0.z, R0.x;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R2.x, R1.z, -R0, R0;
CMP R0.y, R0, -R0.z, R0.z;
MAD R1.xy, fragment.color.primary, c[6].z, -c[6].w;
MUL R0.zw, R1.xyxy, R0.y;
MUL R1.xy, R2.x, R1;
ADD R2.x, -R2, c[6].y;
ABS R2.y, R2.x;
DP3 R2.x, fragment.texcoord[2], fragment.texcoord[2];
MOV R0.y, c[5].x;
MOV R0.x, c[4];
MUL R0.xy, R1.z, R0;
MAD R0.xy, fragment.texcoord[0], c[3].x, R0;
ADD R1.xy, R0, R1;
ADD R0.xy, R0, R0.zwzw;
DP3 R0.w, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.x, R2.x;
MOV result.color.w, c[6].x;
TEX R1.xyz, R1, texture[0], 2D;
TEX R0.xyz, R0, texture[0], 2D;
TEX R0.w, R0.w, texture[1], 2D;
ADD R0.xyz, R0, -R1;
MUL R0.xyz, R2.y, R0;
MAD R1.xyz, R0, c[6].z, R1;
MUL R0.xyz, R2.x, fragment.texcoord[2];
DP3 R0.x, fragment.texcoord[1], R0;
MUL R0.y, R0.w, R1.w;
MAX R0.x, R0, c[6];
MUL R1.xyz, R1, c[1];
MUL R0.x, R0, R0.y;
MUL R0.xyz, R0.x, R1;
MUL result.color.xyz, R0, c[6].z;
END
# 39 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTextureB0] 2D
SetTexture 2 [_LightTexture0] CUBE
"ps_2_0
; 37 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_cube s2
def c6, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
dcl t3.xyz
mov r0.x, c0
mul r0.x, c2, r0
mov_pp r1.y, c5.x
mov_pp r1.x, c4
mul_pp r2.xy, r0.x, r1
mad r4.xy, t0, c3.x, r2
add_pp r1.x, r0, c6.y
abs_pp r2.x, r1
frc_pp r3.x, r2
abs_pp r2.x, r0
cmp_pp r3.x, r1, r3, -r3
frc_pp r1.x, r2
cmp_pp r0.x, r0, r1, -r1
mad r5.xy, v0, c6.z, c6.w
mul_pp r2.xy, r5, r3.x
mul_pp r3.xy, r0.x, r5
add r2.xy, r4, r2
add_pp r0.x, -r0, c6.y
add r3.xy, r4, r3
dp3 r1.x, t3, t3
mov r4.xy, r1.x
abs_pp r0.x, r0
mov_pp r0.w, c6.x
texld r1, r3, s0
texld r2, r2, s0
texld r3, t3, s2
texld r4, r4, s1
add_pp r2.xyz, r2, -r1
mul_pp r0.xyz, r0.x, r2
mad_pp r1.xyz, r0, c6.z, r1
dp3_pp r0.x, t2, t2
rsq_pp r0.x, r0.x
mul_pp r0.xyz, r0.x, t2
dp3_pp r0.x, t1, r0
mul_pp r1.xyz, r1, c1
mul r2.x, r4, r3.w
max_pp r0.x, r0, c6
mul_pp r0.x, r0, r2
mul_pp r0.xyz, r0.x, r1
mul_pp r0.xyz, r0, c6.z
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "DIRECTIONAL_COOKIE" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 34 ALU, 3 TEX
PARAM c[7] = { program.local[0..5],
		{ 0, 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
MOV R0.x, c[2];
MUL R1.z, R0.x, c[0].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
ADD R0.y, R1.z, c[6];
CMP R1.w, R1.z, -R0.x, R0.x;
ABS R0.x, R0.y;
MAD R0.zw, fragment.color.primary.xyxy, c[6].z, -c[6].w;
MUL R1.xy, R1.w, R0.zwzw;
FRC R0.x, R0;
CMP R2.x, R0.y, -R0, R0;
ADD R1.w, -R1, c[6].y;
MUL R0.zw, R0, R2.x;
MOV R0.y, c[5].x;
MOV R0.x, c[4];
MUL R0.xy, R1.z, R0;
MAD R0.xy, fragment.texcoord[0], c[3].x, R0;
ADD R0.zw, R0.xyxy, R0;
ADD R0.xy, R0, R1;
ABS R1.w, R1;
MOV result.color.w, c[6].x;
TEX R1.xyz, R0.zwzw, texture[0], 2D;
TEX R0.xyz, R0, texture[0], 2D;
TEX R0.w, fragment.texcoord[3], texture[1], 2D;
ADD R1.xyz, R1, -R0;
MUL R2.xyz, R1.w, R1;
MOV R1.xyz, fragment.texcoord[2];
MAD R0.xyz, R2, c[6].z, R0;
DP3 R1.x, fragment.texcoord[1], R1;
MAX R1.x, R1, c[6];
MUL R0.xyz, R0, c[1];
MUL R0.w, R1.x, R0;
MUL R0.xyz, R0.w, R0;
MUL result.color.xyz, R0, c[6].z;
END
# 34 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
Vector 0 [_Time]
Vector 1 [_LightColor0]
Float 2 [_FlowSpeed]
Float 3 [_Tiling]
Float 4 [_PanX]
Float 5 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightTexture0] 2D
"ps_2_0
; 32 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c6, 0.00000000, 0.50000000, 2.00000000, -1.00000000
dcl t0.xy
dcl v0.xy
dcl t1.xyz
dcl t2.xyz
dcl t3.xy
mov r0.x, c0
mul r1.x, c2, r0
add_pp r2.x, r1, c6.y
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c6.z, c6.w
abs_pp r0.x, r1
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c5.x
mov_pp r3.x, c4
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c3.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r3.xy, r1, r3
add_pp r0.x, -r0, c6.y
abs_pp r0.x, r0
mov_pp r0.w, c6.x
texld r1, r3, s0
texld r2, r2, s0
texld r3, t3, s1
add_pp r2.xyz, r2, -r1
mul_pp r0.xyz, r0.x, r2
mad_pp r1.xyz, r0, c6.z, r1
mov_pp r0.xyz, t2
dp3_pp r0.x, t1, r0
mul_pp r1.xyz, r1, c1
max_pp r0.x, r0, c6
mul_pp r0.x, r0, r3.w
mul_pp r0.xyz, r0.x, r1
mul_pp r0.xyz, r0, c6.z
mov_pp oC0, r0
"
}
}
 }
 Pass {
  Name "PREPASS"
  Tags { "LIGHTMODE"="PrePassBase" "RenderType"="Opaque" }
  Fog { Mode Off }
Program "vp" {
SubProgram "opengl " {
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 5 [_Object2World]
Vector 9 [unity_Scale]
"!!ARBvp1.0
# 8 ALU
PARAM c[10] = { program.local[0],
		state.matrix.mvp,
		program.local[5..9] };
TEMP R0;
MUL R0.xyz, vertex.normal, c[9].w;
DP3 result.texcoord[0].z, R0, c[7];
DP3 result.texcoord[0].y, R0, c[6];
DP3 result.texcoord[0].x, R0, c[5];
DP4 result.position.w, vertex.position, c[4];
DP4 result.position.z, vertex.position, c[3];
DP4 result.position.y, vertex.position, c[2];
DP4 result.position.x, vertex.position, c[1];
END
# 8 instructions, 1 R-regs
"
}
SubProgram "d3d9 " {
Bind "vertex" Vertex
Bind "normal" Normal
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [unity_Scale]
"vs_2_0
; 8 ALU
dcl_position0 v0
dcl_normal0 v1
mul r0.xyz, v1, c8.w
dp3 oT0.z, r0, c6
dp3 oT0.y, r0, c5
dp3 oT0.x, r0, c4
dp4 oPos.w, v0, c3
dp4 oPos.z, v0, c2
dp4 oPos.y, v0, c1
dp4 oPos.x, v0, c0
"
}
}
Program "fp" {
SubProgram "opengl " {
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 2 ALU, 0 TEX
PARAM c[1] = { { 0, 0.5 } };
MAD result.color.xyz, fragment.texcoord[0], c[0].y, c[0].y;
MOV result.color.w, c[0].x;
END
# 2 instructions, 0 R-regs
"
}
SubProgram "d3d9 " {
"ps_2_0
; 3 ALU
def c0, 0.50000000, 0.00000000, 0, 0
dcl t0.xyz
mad_pp r0.xyz, t0, c0.x, c0.x
mov_pp r0.w, c0.y
mov_pp oC0, r0
"
}
}
 }
 Pass {
  Name "PREPASS"
  Tags { "LIGHTMODE"="PrePassFinal" "RenderType"="Opaque" }
  ZWrite Off
Program "vp" {
SubProgram "opengl " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"!!ARBvp1.0
# 29 ALU
PARAM c[19] = { { 0.5, 1 },
		state.matrix.mvp,
		program.local[5..18] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MUL R1.xyz, vertex.normal, c[10].w;
DP3 R2.w, R1, c[6];
DP3 R0.x, R1, c[5];
DP3 R0.z, R1, c[7];
MOV R0.y, R2.w;
MUL R1, R0.xyzz, R0.yzzx;
MOV R0.w, c[0].y;
DP4 R2.z, R0, c[13];
DP4 R2.y, R0, c[12];
DP4 R2.x, R0, c[11];
MUL R0.y, R2.w, R2.w;
DP4 R3.z, R1, c[16];
DP4 R3.y, R1, c[15];
DP4 R3.x, R1, c[14];
DP4 R1.w, vertex.position, c[4];
DP4 R1.z, vertex.position, c[3];
MAD R0.x, R0, R0, -R0.y;
ADD R3.xyz, R2, R3;
MUL R2.xyz, R0.x, c[17];
DP4 R1.x, vertex.position, c[1];
DP4 R1.y, vertex.position, c[2];
MUL R0.xyz, R1.xyww, c[0].x;
MUL R0.y, R0, c[9].x;
ADD result.texcoord[2].xyz, R3, R2;
ADD result.texcoord[1].xy, R0, R0.z;
MOV result.position, R1;
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R1;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[18], c[18].zwzw;
END
# 29 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"vs_2_0
; 29 ALU
def c19, 0.50000000, 1.00000000, 0, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c10.w
dp3 r2.w, r1, c5
dp3 r0.x, r1, c4
dp3 r0.z, r1, c6
mov r0.y, r2.w
mul r1, r0.xyzz, r0.yzzx
mov r0.w, c19.y
dp4 r2.z, r0, c13
dp4 r2.y, r0, c12
dp4 r2.x, r0, c11
mul r0.y, r2.w, r2.w
dp4 r3.z, r1, c16
dp4 r3.y, r1, c15
dp4 r3.x, r1, c14
dp4 r1.w, v0, c3
dp4 r1.z, v0, c2
mad r0.x, r0, r0, -r0.y
add r3.xyz, r2, r3
mul r2.xyz, r0.x, c17
dp4 r1.x, v0, c0
dp4 r1.y, v0, c1
mul r0.xyz, r1.xyww, c19.x
mul r0.y, r0, c8.x
add oT2.xyz, r3, r2
mad oT1.xy, r0.z, c9.zwzw, r0
mov oPos, r1
mov oD0, v3
mov oT1.zw, r1
mad oT0.xy, v2, c18, c18.zwzw
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 9 [_Object2World]
Vector 13 [_ProjectionParams]
Vector 14 [unity_LightmapST]
Vector 15 [unity_ShadowFadeCenterAndType]
Vector 16 [_MainTex_ST]
"!!ARBvp1.0
# 21 ALU
PARAM c[17] = { { 0.5, 1 },
		state.matrix.modelview[0],
		state.matrix.mvp,
		program.local[9..16] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[8];
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[13].x;
ADD result.texcoord[1].xy, R1, R1.z;
MOV result.position, R0;
MOV R0.x, c[0].y;
ADD R0.y, R0.x, -c[15].w;
DP4 R0.x, vertex.position, c[3];
DP4 R1.z, vertex.position, c[11];
DP4 R1.x, vertex.position, c[9];
DP4 R1.y, vertex.position, c[10];
ADD R1.xyz, R1, -c[15];
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R0;
MUL result.texcoord[3].xyz, R1, c[15].w;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[16], c[16].zwzw;
MAD result.texcoord[2].xy, vertex.texcoord[1], c[14], c[14].zwzw;
MUL result.texcoord[3].w, -R0.x, R0.y;
END
# 21 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_modelview0]
Matrix 4 [glstate_matrix_mvp]
Matrix 8 [_Object2World]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [unity_LightmapST]
Vector 15 [unity_ShadowFadeCenterAndType]
Vector 16 [_MainTex_ST]
"vs_2_0
; 21 ALU
def c17, 0.50000000, 1.00000000, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_color0 v3
dp4 r0.w, v0, c7
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
mul r1.xyz, r0.xyww, c17.x
mul r1.y, r1, c12.x
mad oT1.xy, r1.z, c13.zwzw, r1
mov oPos, r0
mov r0.x, c15.w
add r0.y, c17, -r0.x
dp4 r0.x, v0, c2
dp4 r1.z, v0, c10
dp4 r1.x, v0, c8
dp4 r1.y, v0, c9
add r1.xyz, r1, -c15
mov oD0, v3
mov oT1.zw, r0
mul oT3.xyz, r1, c15.w
mad oT0.xy, v1, c16, c16.zwzw
mad oT2.xy, v2, c14, c14.zwzw
mul oT3.w, -r0.x, r0.y
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 5 [_ProjectionParams]
Vector 6 [unity_LightmapST]
Vector 7 [_MainTex_ST]
"!!ARBvp1.0
# 12 ALU
PARAM c[8] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..7] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[5].x;
ADD result.texcoord[1].xy, R1, R1.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R0;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[7], c[7].zwzw;
MAD result.texcoord[2].xy, vertex.texcoord[1], c[6], c[6].zwzw;
END
# 12 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_OFF" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 4 [_ProjectionParams]
Vector 5 [_ScreenParams]
Vector 6 [unity_LightmapST]
Vector 7 [_MainTex_ST]
"vs_2_0
; 12 ALU
def c8, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_color0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c8.x
mul r1.y, r1, c4.x
mad oT1.xy, r1.z, c5.zwzw, r1
mov oPos, r0
mov oD0, v3
mov oT1.zw, r0
mad oT0.xy, v1, c7, c7.zwzw
mad oT2.xy, v2, c6, c6.zwzw
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 5 [_Object2World]
Vector 9 [_ProjectionParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"!!ARBvp1.0
# 29 ALU
PARAM c[19] = { { 0.5, 1 },
		state.matrix.mvp,
		program.local[5..18] };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
MUL R1.xyz, vertex.normal, c[10].w;
DP3 R2.w, R1, c[6];
DP3 R0.x, R1, c[5];
DP3 R0.z, R1, c[7];
MOV R0.y, R2.w;
MUL R1, R0.xyzz, R0.yzzx;
MOV R0.w, c[0].y;
DP4 R2.z, R0, c[13];
DP4 R2.y, R0, c[12];
DP4 R2.x, R0, c[11];
MUL R0.y, R2.w, R2.w;
DP4 R3.z, R1, c[16];
DP4 R3.y, R1, c[15];
DP4 R3.x, R1, c[14];
DP4 R1.w, vertex.position, c[4];
DP4 R1.z, vertex.position, c[3];
MAD R0.x, R0, R0, -R0.y;
ADD R3.xyz, R2, R3;
MUL R2.xyz, R0.x, c[17];
DP4 R1.x, vertex.position, c[1];
DP4 R1.y, vertex.position, c[2];
MUL R0.xyz, R1.xyww, c[0].x;
MUL R0.y, R0, c[9].x;
ADD result.texcoord[2].xyz, R3, R2;
ADD result.texcoord[1].xy, R0, R0.z;
MOV result.position, R1;
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R1;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[18], c[18].zwzw;
END
# 29 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 0 [glstate_matrix_mvp]
Matrix 4 [_Object2World]
Vector 8 [_ProjectionParams]
Vector 9 [_ScreenParams]
Vector 10 [unity_Scale]
Vector 11 [unity_SHAr]
Vector 12 [unity_SHAg]
Vector 13 [unity_SHAb]
Vector 14 [unity_SHBr]
Vector 15 [unity_SHBg]
Vector 16 [unity_SHBb]
Vector 17 [unity_SHC]
Vector 18 [_MainTex_ST]
"vs_2_0
; 29 ALU
def c19, 0.50000000, 1.00000000, 0, 0
dcl_position0 v0
dcl_normal0 v1
dcl_texcoord0 v2
dcl_color0 v3
mul r1.xyz, v1, c10.w
dp3 r2.w, r1, c5
dp3 r0.x, r1, c4
dp3 r0.z, r1, c6
mov r0.y, r2.w
mul r1, r0.xyzz, r0.yzzx
mov r0.w, c19.y
dp4 r2.z, r0, c13
dp4 r2.y, r0, c12
dp4 r2.x, r0, c11
mul r0.y, r2.w, r2.w
dp4 r3.z, r1, c16
dp4 r3.y, r1, c15
dp4 r3.x, r1, c14
dp4 r1.w, v0, c3
dp4 r1.z, v0, c2
mad r0.x, r0, r0, -r0.y
add r3.xyz, r2, r3
mul r2.xyz, r0.x, c17
dp4 r1.x, v0, c0
dp4 r1.y, v0, c1
mul r0.xyz, r1.xyww, c19.x
mul r0.y, r0, c8.x
add oT2.xyz, r3, r2
mad oT1.xy, r0.z, c9.zwzw, r0
mov oPos, r1
mov oD0, v3
mov oT1.zw, r1
mad oT0.xy, v2, c18, c18.zwzw
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 9 [_Object2World]
Vector 13 [_ProjectionParams]
Vector 14 [unity_LightmapST]
Vector 15 [unity_ShadowFadeCenterAndType]
Vector 16 [_MainTex_ST]
"!!ARBvp1.0
# 21 ALU
PARAM c[17] = { { 0.5, 1 },
		state.matrix.modelview[0],
		state.matrix.mvp,
		program.local[9..16] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[8];
DP4 R0.z, vertex.position, c[7];
DP4 R0.x, vertex.position, c[5];
DP4 R0.y, vertex.position, c[6];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[13].x;
ADD result.texcoord[1].xy, R1, R1.z;
MOV result.position, R0;
MOV R0.x, c[0].y;
ADD R0.y, R0.x, -c[15].w;
DP4 R0.x, vertex.position, c[3];
DP4 R1.z, vertex.position, c[11];
DP4 R1.x, vertex.position, c[9];
DP4 R1.y, vertex.position, c[10];
ADD R1.xyz, R1, -c[15];
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R0;
MUL result.texcoord[3].xyz, R1, c[15].w;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[16], c[16].zwzw;
MAD result.texcoord[2].xy, vertex.texcoord[1], c[14], c[14].zwzw;
MUL result.texcoord[3].w, -R0.x, R0.y;
END
# 21 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_modelview0]
Matrix 4 [glstate_matrix_mvp]
Matrix 8 [_Object2World]
Vector 12 [_ProjectionParams]
Vector 13 [_ScreenParams]
Vector 14 [unity_LightmapST]
Vector 15 [unity_ShadowFadeCenterAndType]
Vector 16 [_MainTex_ST]
"vs_2_0
; 21 ALU
def c17, 0.50000000, 1.00000000, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_color0 v3
dp4 r0.w, v0, c7
dp4 r0.z, v0, c6
dp4 r0.x, v0, c4
dp4 r0.y, v0, c5
mul r1.xyz, r0.xyww, c17.x
mul r1.y, r1, c12.x
mad oT1.xy, r1.z, c13.zwzw, r1
mov oPos, r0
mov r0.x, c15.w
add r0.y, c17, -r0.x
dp4 r0.x, v0, c2
dp4 r1.z, v0, c10
dp4 r1.x, v0, c8
dp4 r1.y, v0, c9
add r1.xyz, r1, -c15
mov oD0, v3
mov oT1.zw, r0
mul oT3.xyz, r1, c15.w
mad oT0.xy, v1, c16, c16.zwzw
mad oT2.xy, v2, c14, c14.zwzw
mul oT3.w, -r0.x, r0.y
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Vector 5 [_ProjectionParams]
Vector 6 [unity_LightmapST]
Vector 7 [_MainTex_ST]
"!!ARBvp1.0
# 12 ALU
PARAM c[8] = { { 0.5 },
		state.matrix.mvp,
		program.local[5..7] };
TEMP R0;
TEMP R1;
DP4 R0.w, vertex.position, c[4];
DP4 R0.z, vertex.position, c[3];
DP4 R0.x, vertex.position, c[1];
DP4 R0.y, vertex.position, c[2];
MUL R1.xyz, R0.xyww, c[0].x;
MUL R1.y, R1, c[5].x;
ADD result.texcoord[1].xy, R1, R1.z;
MOV result.position, R0;
MOV result.color, vertex.color;
MOV result.texcoord[1].zw, R0;
MAD result.texcoord[0].xy, vertex.texcoord[0], c[7], c[7].zwzw;
MAD result.texcoord[2].xy, vertex.texcoord[1], c[6], c[6].zwzw;
END
# 12 instructions, 2 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_ON" }
Bind "vertex" Vertex
Bind "color" Color
Bind "texcoord" TexCoord0
Bind "texcoord1" TexCoord1
Matrix 0 [glstate_matrix_mvp]
Vector 4 [_ProjectionParams]
Vector 5 [_ScreenParams]
Vector 6 [unity_LightmapST]
Vector 7 [_MainTex_ST]
"vs_2_0
; 12 ALU
def c8, 0.50000000, 0, 0, 0
dcl_position0 v0
dcl_texcoord0 v1
dcl_texcoord1 v2
dcl_color0 v3
dp4 r0.w, v0, c3
dp4 r0.z, v0, c2
dp4 r0.x, v0, c0
dp4 r0.y, v0, c1
mul r1.xyz, r0.xyww, c8.x
mul r1.y, r1, c4.x
mad oT1.xy, r1.z, c5.zwzw, r1
mov oPos, r0
mov oD0, v3
mov oT1.zw, r0
mad oT0.xy, v1, c7, c7.zwzw
mad oT2.xy, v2, c6, c6.zwzw
"
}
}
Program "fp" {
SubProgram "opengl " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 32 ALU, 3 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
TXP R2.xyz, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R0.z, R1, c[5].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R2.w, R1.z, -R0.x, R0.x;
ABS R0.w, R0.z;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R1.xy, R2.w, R0;
FRC R0.w, R0;
CMP R1.w, R0.z, -R0, R0;
ADD R2.w, -R2, c[5].x;
MUL R0.xy, R0, R1.w;
MOV R0.w, c[4].x;
MOV R0.z, c[3].x;
MUL R0.zw, R1.z, R0;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R0;
ADD R1.xy, R0.zwzw, R1;
ADD R0.xy, R0.zwzw, R0;
ABS R2.w, R2;
TEX R1, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R2.w, R0;
MAD R0, R0, c[5].y, R1;
LG2 R1.x, R2.x;
LG2 R1.z, R2.z;
LG2 R1.y, R2.y;
ADD R1.xyz, -R1, fragment.texcoord[2];
MOV result.color.w, R0;
MUL result.color.xyz, R0, R1;
END
# 32 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
"ps_2_0
; 29 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c5, 0.50000000, 2.00000000, -1.00000000, 0
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xyz
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c5
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c2.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r2, r2, s0
texld r1, r1, s0
texldp r3, t1, s1
add_pp r2, r2, -r1
mul_pp r0, r0.x, r2
mad_pp r0, r0, c5.y, r1
log_pp r2.x, r3.x
log_pp r2.z, r3.z
log_pp r2.y, r3.y
add_pp r2.xyz, -r2, t2
mul_pp r0.xyz, r0, r2
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
Vector 5 [unity_LightmapFade]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
SetTexture 3 [unity_LightmapInd] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 43 ALU, 5 TEX
PARAM c[7] = { program.local[0..5],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
TEX R2, fragment.texcoord[2], texture[2], 2D;
TEX R3, fragment.texcoord[2], texture[3], 2D;
TXP R4.xyz, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
MUL R2.xyz, R2.w, R2;
DP4 R2.w, fragment.texcoord[3], fragment.texcoord[3];
MUL R3.xyz, R3.w, R3;
MUL R3.xyz, R3, c[6].w;
RSQ R2.w, R2.w;
RCP R2.w, R2.w;
MAD R2.xyz, R2, c[6].w, -R3;
MAD_SAT R2.w, R2, c[5].z, c[5];
MAD R2.xyz, R2.w, R2, R3;
ADD R1.x, R1.z, c[6];
CMP R4.w, R1.z, -R0.x, R0.x;
ABS R0.x, R1;
FRC R1.y, R0.x;
CMP R1.w, R1.x, -R1.y, R1.y;
MAD R0.zw, fragment.color.primary.xyxy, c[6].y, -c[6].z;
MUL R0.xy, R4.w, R0.zwzw;
ADD R4.w, -R4, c[6].x;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0, R1.w;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R1.xyxy;
ADD R1.xy, R0.zwzw, R1.zwzw;
ADD R1.zw, R0, R0.xyxy;
ABS R4.w, R4;
LG2 R3.x, R4.x;
LG2 R3.y, R4.y;
LG2 R3.z, R4.z;
ADD R2.xyz, -R3, R2;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R4.w, R0;
MAD R0, R0, c[6].y, R1;
MUL result.color.xyz, R0, R2;
MOV result.color.w, R0;
END
# 43 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
Vector 5 [unity_LightmapFade]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
SetTexture 3 [unity_LightmapInd] 2D
"ps_2_0
; 39 ALU, 5 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
def c6, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xy
dcl t3
texldp r5, t1, s1
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c6
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c6.y, c6.z
abs_pp r0.x, r1
frc_pp r0.x, r0
mul_pp r2.xy, r4, r2.x
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c2.x, r1
add r3.xy, r1, r3
add r1.xy, r1, r2
add_pp r0.x, -r0, c6
abs_pp r0.x, r0
texld r4, r1, s0
texld r3, r3, s0
texld r1, t2, s3
texld r2, t2, s2
mul_pp r1.xyz, r1.w, r1
mul_pp r1.xyz, r1, c6.w
mul_pp r2.xyz, r2.w, r2
mad_pp r2.xyz, r2, c6.w, -r1
add_pp r4, r4, -r3
mul_pp r4, r0.x, r4
dp4 r0.x, t3, t3
rsq r0.x, r0.x
rcp r0.x, r0.x
mad_sat r0.x, r0, c5.z, c5.w
mad_pp r0.xyz, r0.x, r2, r1
log_pp r1.x, r5.x
log_pp r1.y, r5.y
log_pp r1.z, r5.z
add_pp r0.xyz, -r1, r0
mad_pp r1, r4, c6.y, r3
mul_pp r0.xyz, r1, r0
mov_pp r0.w, r1
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 34 ALU, 4 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TXP R3.xyz, fragment.texcoord[1], texture[1], 2D;
TEX R2, fragment.texcoord[2], texture[2], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R1.x, R1.z, c[5];
ABS R0.z, R1.x;
FRC R1.y, R0.z;
CMP R1.w, R1.x, -R1.y, R1.y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R3.w, R1.z, -R0.x, R0.x;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R0.zw, R3.w, R0.xyxy;
ADD R3.w, -R3, c[5].x;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0.xyxy, R1.w;
MAD R0.xy, fragment.texcoord[0], c[2].x, R1;
ADD R1.xy, R0, R1.zwzw;
ADD R1.zw, R0.xyxy, R0;
ABS R3.w, R3;
MUL R2.xyz, R2.w, R2;
LG2 R3.x, R3.x;
LG2 R3.z, R3.z;
LG2 R3.y, R3.y;
MAD R2.xyz, R2, c[5].w, -R3;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R3.w, R0;
MAD R0, R0, c[5].y, R1;
MUL result.color.xyz, R0, R2;
MOV result.color.w, R0;
END
# 34 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_OFF" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
"ps_2_0
; 30 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xy
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
abs_pp r0.x, r1
frc_pp r0.x, r0
mul_pp r2.xy, r4, r2.x
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c2.x, r1
add r3.xy, r1, r3
add r1.xy, r1, r2
add_pp r0.x, -r0, c5
abs_pp r0.x, r0
texld r2, r3, s0
texld r3, r1, s0
texldp r4, t1, s1
texld r1, t2, s2
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mad_pp r0, r0, c5.y, r2
mul_pp r1.xyz, r1.w, r1
log_pp r3.x, r4.x
log_pp r3.z, r4.z
log_pp r3.y, r4.y
mad_pp r1.xyz, r1, c5.w, -r3
mul_pp r0.xyz, r0, r1
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 29 ALU, 3 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1 } };
TEMP R0;
TEMP R1;
TEMP R2;
TXP R2.xyz, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R0.z, R1, c[5].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R2.w, R1.z, -R0.x, R0.x;
ABS R0.w, R0.z;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R1.xy, R2.w, R0;
FRC R0.w, R0;
CMP R1.w, R0.z, -R0, R0;
ADD R2.w, -R2, c[5].x;
MUL R0.xy, R0, R1.w;
MOV R0.w, c[4].x;
MOV R0.z, c[3].x;
MUL R0.zw, R1.z, R0;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R0;
ADD R1.xy, R0.zwzw, R1;
ADD R0.xy, R0.zwzw, R0;
ABS R2.w, R2;
TEX R1, R1, texture[0], 2D;
TEX R0, R0, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R2.w, R0;
MAD R0, R0, c[5].y, R1;
ADD R1.xyz, R2, fragment.texcoord[2];
MOV result.color.w, R0;
MUL result.color.xyz, R0, R1;
END
# 29 instructions, 3 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
"ps_2_0
; 26 ALU, 3 TEX
dcl_2d s0
dcl_2d s1
def c5, 0.50000000, 2.00000000, -1.00000000, 0
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xyz
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c5
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mad r1.xy, t0, c2.x, r1
mul_pp r2.xy, r4, r2.x
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r2, r2, s0
texld r1, r1, s0
texldp r3, t1, s1
add_pp r2, r2, -r1
mul_pp r0, r0.x, r2
mad_pp r0, r0, c5.y, r1
add_pp r2.xyz, r3, t2
mul_pp r0.xyz, r0, r2
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
Vector 5 [unity_LightmapFade]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
SetTexture 3 [unity_LightmapInd] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 40 ALU, 5 TEX
PARAM c[7] = { program.local[0..5],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEMP R4;
TEX R3, fragment.texcoord[2], texture[3], 2D;
TEX R2, fragment.texcoord[2], texture[2], 2D;
TXP R4.xyz, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ABS R0.x, R1.z;
FRC R0.x, R0;
MUL R2.xyz, R2.w, R2;
MUL R3.xyz, R3.w, R3;
MUL R3.xyz, R3, c[6].w;
DP4 R2.w, fragment.texcoord[3], fragment.texcoord[3];
RSQ R2.w, R2.w;
RCP R3.w, R2.w;
CMP R4.w, R1.z, -R0.x, R0.x;
ADD R1.x, R1.z, c[6];
ABS R0.x, R1;
FRC R1.y, R0.x;
CMP R1.w, R1.x, -R1.y, R1.y;
MAD R0.zw, fragment.color.primary.xyxy, c[6].y, -c[6].z;
ADD R2.w, -R4, c[6].x;
MUL R0.xy, R4.w, R0.zwzw;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0, R1.w;
MAD R0.zw, fragment.texcoord[0].xyxy, c[2].x, R1.xyxy;
ADD R1.xy, R0.zwzw, R1.zwzw;
ADD R1.zw, R0, R0.xyxy;
MAD R2.xyz, R2, c[6].w, -R3;
MAD_SAT R3.w, R3, c[5].z, c[5];
MAD R2.xyz, R3.w, R2, R3;
ABS R2.w, R2;
ADD R2.xyz, R4, R2;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R2.w, R0;
MAD R0, R0, c[6].y, R1;
MUL result.color.xyz, R0, R2;
MOV result.color.w, R0;
END
# 40 instructions, 5 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_OFF" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
Vector 5 [unity_LightmapFade]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
SetTexture 3 [unity_LightmapInd] 2D
"ps_2_0
; 36 ALU, 5 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
dcl_2d s3
def c6, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xy
dcl t3
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c6
abs_pp r0.x, r1
abs_pp r3.x, r2
frc_pp r3.x, r3
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c6.y, c6.z
frc_pp r0.x, r0
cmp_pp r0.x, r1, r0, -r0
mul_pp r5.xy, r0.x, r4
add_pp r0.x, -r0, c6
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r2.xy, r4, r2.x
mad r1.xy, t0, c2.x, r1
add r2.xy, r1, r2
add r1.xy, r1, r5
abs_pp r0.x, r0
texld r4, r2, s0
texld r2, r1, s0
texldp r5, t1, s1
texld r1, t2, s3
texld r3, t2, s2
mul_pp r1.xyz, r1.w, r1
mul_pp r1.xyz, r1, c6.w
mul_pp r3.xyz, r3.w, r3
add_pp r4, r4, -r2
mul_pp r4, r0.x, r4
dp4 r0.x, t3, t3
rsq r0.x, r0.x
rcp r0.x, r0.x
mad_pp r3.xyz, r3, c6.w, -r1
mad_sat r0.x, r0, c5.z, c5.w
mad_pp r0.xyz, r0.x, r3, r1
mad_pp r1, r4, c6.y, r2
add_pp r0.xyz, r5, r0
mul_pp r0.xyz, r1, r0
mov_pp r0.w, r1
mov_pp oC0, r0
"
}
SubProgram "opengl " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
"!!ARBfp1.0
OPTION ARB_precision_hint_fastest;
# 31 ALU, 4 TEX
PARAM c[6] = { program.local[0..4],
		{ 0.5, 2, 1, 8 } };
TEMP R0;
TEMP R1;
TEMP R2;
TEMP R3;
TEX R2, fragment.texcoord[2], texture[2], 2D;
TXP R3.xyz, fragment.texcoord[1], texture[1], 2D;
MOV R0.x, c[1];
MUL R1.z, R0.x, c[0].x;
ADD R1.x, R1.z, c[5];
ABS R0.z, R1.x;
FRC R1.y, R0.z;
CMP R1.w, R1.x, -R1.y, R1.y;
ABS R0.x, R1.z;
FRC R0.x, R0;
CMP R3.w, R1.z, -R0.x, R0.x;
MAD R0.xy, fragment.color.primary, c[5].y, -c[5].z;
MUL R0.zw, R3.w, R0.xyxy;
ADD R3.w, -R3, c[5].x;
MOV R1.y, c[4].x;
MOV R1.x, c[3];
MUL R1.xy, R1.z, R1;
MUL R1.zw, R0.xyxy, R1.w;
MAD R0.xy, fragment.texcoord[0], c[2].x, R1;
ADD R1.xy, R0, R1.zwzw;
ADD R1.zw, R0.xyxy, R0;
ABS R3.w, R3;
TEX R0, R1, texture[0], 2D;
TEX R1, R1.zwzw, texture[0], 2D;
ADD R0, R0, -R1;
MUL R0, R3.w, R0;
MAD R0, R0, c[5].y, R1;
MUL R1.xyz, R2.w, R2;
MAD R1.xyz, R1, c[5].w, R3;
MOV result.color.w, R0;
MUL result.color.xyz, R0, R1;
END
# 31 instructions, 4 R-regs
"
}
SubProgram "d3d9 " {
Keywords { "LIGHTMAP_ON" "DIRLIGHTMAP_ON" "HDR_LIGHT_PREPASS_ON" }
Vector 0 [_Time]
Float 1 [_FlowSpeed]
Float 2 [_Tiling]
Float 3 [_PanX]
Float 4 [_PanY]
SetTexture 0 [_MainTex] 2D
SetTexture 1 [_LightBuffer] 2D
SetTexture 2 [unity_Lightmap] 2D
"ps_2_0
; 27 ALU, 4 TEX
dcl_2d s0
dcl_2d s1
dcl_2d s2
def c5, 0.50000000, 2.00000000, -1.00000000, 8.00000000
dcl t0.xy
dcl v0.xy
dcl t1
dcl t2.xy
mov r0.x, c0
mul r1.x, c1, r0
add_pp r2.x, r1, c5
abs_pp r0.x, r2
frc_pp r3.x, r0
cmp_pp r2.x, r2, r3, -r3
mad r4.xy, v0, c5.y, c5.z
abs_pp r0.x, r1
frc_pp r0.x, r0
mul_pp r2.xy, r4, r2.x
cmp_pp r0.x, r1, r0, -r0
mov_pp r3.y, c4.x
mov_pp r3.x, c3
mul_pp r1.xy, r1.x, r3
mul_pp r3.xy, r0.x, r4
mad r1.xy, t0, c2.x, r1
add r3.xy, r1, r3
add r1.xy, r1, r2
add_pp r0.x, -r0, c5
abs_pp r0.x, r0
texld r2, r3, s0
texld r3, r1, s0
texldp r4, t1, s1
texld r1, t2, s2
add_pp r3, r3, -r2
mul_pp r0, r0.x, r3
mad_pp r0, r0, c5.y, r2
mul_pp r1.xyz, r1.w, r1
mad_pp r1.xyz, r1, c5.w, r4
mul_pp r0.xyz, r0, r1
mov_pp oC0, r0
"
}
}
 }
}
Fallback "Diffuse"
}