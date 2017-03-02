xof 0302txt 0032
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}

Header {
 1;
 0;
 1;
}

Frame frm-wep01a {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-wepbas1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000069,0.094362,0.035604,1.000000;;
 }
Mesh wepbas1 {
 40;
 0.078450;0.035862;0.208520;,
 0.078450;0.035862;0.208520;,
 0.078752;0.130224;0.113821;,
 0.078752;0.130224;0.113821;,
 0.078752;0.130224;-0.133060;,
 0.078752;0.130224;-0.133060;,
 0.104889;-0.094362;-0.133060;,
 0.104889;-0.094362;-0.133060;,
 0.078450;-0.094362;0.208520;,
 0.078450;-0.094362;0.208520;,
 -0.079410;0.035862;0.208520;,
 -0.079410;0.035862;0.208520;,
 -0.079716;0.130224;0.113821;,
 -0.079716;0.130224;0.113821;,
 -0.079716;0.130224;-0.133060;,
 -0.079716;0.130224;-0.133060;,
 -0.106172;-0.094362;-0.133060;,
 -0.106172;-0.094362;-0.133060;,
 -0.079410;-0.094362;0.208520;,
 -0.079410;-0.094362;0.208520;,
 0.104889;0.035879;-0.133060;,
 -0.106172;0.035879;-0.133060;,
 0.104889;-0.094362;0.114020;,
 -0.106172;-0.094362;0.114020;,
 -0.106172;-0.094362;0.114020;,
 0.104889;-0.094362;0.114020;,
 -0.106172;0.035870;0.114020;,
 0.104889;0.035870;0.114020;,
 -0.106172;0.035879;-0.133060;,
 0.104889;0.035879;-0.133060;,
 -0.079410;-0.094362;0.208520;,
 -0.106172;-0.094362;-0.133060;,
 -0.079716;0.130224;-0.133060;,
 -0.079716;0.130224;0.113821;,
 -0.079410;0.035862;0.208520;,
 0.078450;-0.094362;0.208520;,
 0.104889;-0.094362;-0.133060;,
 0.078752;0.130224;-0.133060;,
 0.078752;0.130224;0.113821;,
 0.078450;0.035862;0.208520;;

 28;
 3;1,11,19;,
 3;9,1,19;,
 3;3,13,10;,
 3;0,3,10;,
 3;5,15,12;,
 3;2,5,12;,
 3;7,17,21;,
 3;20,7,21;,
 3;8,18,23;,
 3;29,4,38;,
 3;27,29,38;,
 3;26,34,33;,
 3;39,35,22;,
 3;27,39,22;,
 3;28,16,24;,
 3;26,28,24;,
 3;14,37,20;,
 3;21,14,20;,
 3;6,29,27;,
 3;22,6,27;,
 3;30,34,26;,
 3;24,30,26;,
 3;32,28,26;,
 3;33,32,26;,
 3;38,39,27;,
 3;31,36,25;,
 3;25,23,31;,
 3;23,25,8;;

 MeshMaterialList {
  5;
  28;
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3,
  2,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  3,
  3,
  4,
  4,
  4,
  4,
  4,
  4,
  4,
  2,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.200000;0.200000;0.200000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
}
 MeshNormals {
  40;
  0.599235;0.212365;0.771893;,
  0.599235;0.212365;0.771893;,
  0.601417;0.707687;0.370779;,
  0.601417;0.707687;0.370779;,
  0.362491;0.852711;-0.376144;,
  0.362491;0.852711;-0.376144;,
  0.666667;-0.333333;-0.666667;,
  0.666667;-0.333333;-0.666667;,
  0.376604;-0.782130;0.496429;,
  0.376604;-0.782130;0.496429;,
  -0.468265;0.437644;0.767591;,
  -0.468265;0.437644;0.767591;,
  -0.469682;0.846253;0.251503;,
  -0.469682;0.846253;0.251503;,
  -0.606547;0.485053;-0.629940;,
  -0.606547;0.485053;-0.629940;,
  -0.408248;-0.816497;-0.408248;,
  -0.408248;-0.816497;-0.408248;,
  -0.575519;-0.299076;0.761138;,
  -0.575519;-0.299076;0.761138;,
  0.695632;0.126877;-0.707106;,
  -0.704190;0.064173;-0.707106;,
  0.695413;-0.707107;0.128066;,
  -0.704134;-0.707107;0.064771;,
  -0.704134;-0.707107;0.064771;,
  0.695413;-0.707107;0.128066;,
  -0.981165;0.135995;0.137192;,
  0.988410;0.106882;0.107803;,
  -0.704190;0.064173;-0.707106;,
  0.695632;0.126877;-0.707106;,
  -0.575519;-0.299076;0.761138;,
  -0.408248;-0.816497;-0.408248;,
  -0.606547;0.485053;-0.629940;,
  -0.469682;0.846253;0.251503;,
  -0.468265;0.437644;0.767591;,
  0.376604;-0.782130;0.496429;,
  0.666667;-0.333333;-0.666667;,
  0.362491;0.852711;-0.376144;,
  0.601417;0.707687;0.370779;,
  0.599235;0.212365;0.771893;;

  28;
  3;1,11,19;,
  3;9,1,19;,
  3;3,13,10;,
  3;0,3,10;,
  3;5,15,12;,
  3;2,5,12;,
  3;7,17,21;,
  3;20,7,21;,
  3;8,18,23;,
  3;29,4,38;,
  3;27,29,38;,
  3;26,34,33;,
  3;39,35,22;,
  3;27,39,22;,
  3;28,16,24;,
  3;26,28,24;,
  3;14,37,20;,
  3;21,14,20;,
  3;6,29,27;,
  3;22,6,27;,
  3;30,34,26;,
  3;24,30,26;,
  3;32,28,26;,
  3;33,32,26;,
  3;38,39,27;,
  3;31,36,25;,
  3;25,23,31;,
  3;23,25,8;;
 }
 MeshTextureCoords {
 40;
 0.863074;0.761590;,
 0.989488;0.754764;,
 0.326928;0.537539;,
 0.863019;0.967278;,
 0.988281;0.531250;,
 0.004681;0.543912;,
 0.988281;0.976562;,
 0.664143;0.463533;,
 0.430165;0.474122;,
 0.989488;0.966235;,
 0.988122;0.762211;,
 0.865656;0.753589;,
 0.325294;0.018548;,
 0.987773;0.966133;,
 0.885224;0.087250;,
 0.004596;0.015684;,
 0.988281;0.976562;,
 0.662845;0.033228;,
 0.429853;0.090322;,
 0.865656;0.965060;,
 0.788262;0.465534;,
 0.807161;0.034267;,
 0.748108;0.976562;,
 0.331359;0.014471;,
 0.748108;0.976562;,
 0.328873;0.537908;,
 0.748108;0.718336;,
 0.748108;0.718336;,
 0.988281;0.718319;,
 0.988281;0.718319;,
 0.656250;0.976562;,
 0.004987;0.014841;,
 0.988281;0.531250;,
 0.748302;0.531250;,
 0.656250;0.718352;,
 0.656250;0.976562;,
 0.003468;0.538278;,
 0.885962;0.417094;,
 0.748302;0.531250;,
 0.656250;0.718352;;
 }
}
Frame frm-wepbas2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000030,0.100134,-0.174523,1.000000;;
 }
Mesh wepbas2 {
 24;
 -0.073213;-0.050355;0.015523;,
 -0.073213;-0.050355;0.015523;,
 -0.073213;0.015523;-0.050355;,
 -0.073213;0.015523;-0.050355;,
 -0.050128;-0.014249;0.027125;,
 -0.050128;-0.014249;0.027125;,
 -0.050128;0.026702;-0.014249;,
 -0.050128;0.026702;-0.014249;,
 0.073213;-0.050355;0.015523;,
 0.073213;-0.050355;0.015523;,
 0.073213;0.015523;-0.050355;,
 0.073213;0.015523;-0.050355;,
 0.050128;-0.014249;0.027125;,
 0.050128;-0.014249;0.027125;,
 0.050128;0.026702;-0.014249;,
 0.050128;0.026702;-0.014249;,
 0.050128;0.026702;-0.014249;,
 0.050128;-0.014249;0.027125;,
 0.073213;0.015523;-0.050355;,
 0.073213;-0.050355;0.015523;,
 -0.050128;0.026702;-0.014249;,
 -0.050128;-0.014249;0.027125;,
 -0.073213;0.015523;-0.050355;,
 -0.073213;-0.050355;0.015523;;

 12;
 3;7,3,1;,
 3;5,7,1;,
 3;15,11,2;,
 3;6,15,2;,
 3;13,9,10;,
 3;14,13,10;,
 3;4,0,8;,
 3;12,4,8;,
 3;22,18,19;,
 3;23,22,19;,
 3;16,20,21;,
 3;17,16,21;;

 MeshMaterialList {
  4;
  12;
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.840172;-0.107309;0.531597;,
  -0.840172;-0.107309;0.531597;,
  -0.408582;0.445895;-0.796391;,
  -0.408582;0.445895;-0.796391;,
  -0.215837;0.332605;0.918035;,
  -0.215837;0.332605;0.918035;,
  -0.524843;0.754808;0.393453;,
  -0.524843;0.754808;0.393453;,
  0.406679;-0.801617;0.438204;,
  0.406679;-0.801617;0.438204;,
  0.838298;0.535327;-0.103350;,
  0.838298;0.535327;-0.103350;,
  0.525862;0.395713;0.752915;,
  0.525862;0.395713;0.752915;,
  0.213270;0.919270;0.330847;,
  0.213270;0.919270;0.330847;,
  0.213270;0.919270;0.330847;,
  0.525862;0.395713;0.752915;,
  0.838298;0.535327;-0.103350;,
  0.406679;-0.801617;0.438204;,
  -0.524843;0.754808;0.393453;,
  -0.215837;0.332605;0.918035;,
  -0.408582;0.445895;-0.796391;,
  -0.840172;-0.107309;0.531597;;

  12;
  3;7,3,1;,
  3;5,7,1;,
  3;15,11,2;,
  3;6,15,2;,
  3;13,9,10;,
  3;14,13,10;,
  3;4,0,8;,
  3;12,4,8;,
  3;22,18,19;,
  3;23,22,19;,
  3;16,20,21;,
  3;17,16,21;;
 }
 MeshTextureCoords {
 24;
 0.314390;0.625000;,
 0.313760;0.623503;,
 0.313256;0.625189;,
 0.431368;0.624711;,
 0.327951;0.557349;,
 0.329620;0.560258;,
 0.324549;0.558203;,
 0.414599;0.560665;,
 0.429688;0.625000;,
 0.314600;0.621911;,
 0.428007;0.623119;,
 0.427797;0.624486;,
 0.418772;0.556646;,
 0.330460;0.557870;,
 0.415859;0.558277;,
 0.419907;0.556094;,
 0.984135;0.341510;,
 0.898416;0.342266;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.984397;0.041060;,
 0.898678;0.040123;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-wepbas3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000946,-0.035145,-0.226797,1.000000;;
 }
Mesh wepbas3 {
 24;
 -0.049528;0.024193;0.040001;,
 -0.049528;0.024193;0.040001;,
 -0.049528;-0.018699;0.040001;,
 -0.049528;-0.018699;0.040001;,
 -0.071345;0.035959;-0.019013;,
 -0.071345;0.035959;-0.019013;,
 -0.071345;-0.035959;-0.019013;,
 -0.071345;-0.035959;-0.019013;,
 0.049528;0.024193;0.040001;,
 0.049528;0.024193;0.040001;,
 0.049528;-0.018699;0.040001;,
 0.049528;-0.018699;0.040001;,
 0.071345;0.035959;-0.019013;,
 0.071345;0.035959;-0.019013;,
 0.071345;-0.035959;-0.019013;,
 0.071345;-0.035959;-0.019013;,
 0.071345;-0.035959;-0.019013;,
 0.071345;0.035959;-0.019013;,
 0.049528;-0.018699;0.040001;,
 0.049528;0.024193;0.040001;,
 -0.071345;-0.035959;-0.019013;,
 -0.071345;0.035959;-0.019013;,
 -0.049528;-0.018699;0.040001;,
 -0.049528;0.024193;0.040001;;

 12;
 3;7,3,1;,
 3;5,7,1;,
 3;15,11,2;,
 3;6,15,2;,
 3;13,9,10;,
 3;14,13,10;,
 3;4,0,8;,
 3;12,4,8;,
 3;22,18,19;,
 3;23,22,19;,
 3;16,20,21;,
 3;17,16,21;;

 MeshMaterialList {
  4;
  12;
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  2,
  2,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;0.988701;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 }
}
 MeshNormals {
  24;
  -0.661197;0.345665;0.665833;,
  -0.661197;0.345665;0.665833;,
  -0.259920;-0.531942;0.805903;,
  -0.259920;-0.531942;0.805903;,
  -0.373100;0.780207;-0.502070;,
  -0.373100;0.780207;-0.502070;,
  -0.890177;-0.455451;-0.012221;,
  -0.890177;-0.455451;-0.012221;,
  0.268288;0.561028;0.783115;,
  0.268288;0.561028;0.783115;,
  0.649656;-0.332390;0.683713;,
  0.649656;-0.332390;0.683713;,
  0.884989;0.462660;-0.052339;,
  0.884989;0.462660;-0.052339;,
  0.390930;-0.800064;-0.455051;,
  0.390930;-0.800064;-0.455051;,
  0.390930;-0.800064;-0.455051;,
  0.884989;0.462660;-0.052339;,
  0.649656;-0.332390;0.683713;,
  0.268288;0.561028;0.783115;,
  -0.890177;-0.455451;-0.012221;,
  -0.373100;0.780207;-0.502070;,
  -0.259920;-0.531942;0.805903;,
  -0.661197;0.345665;0.665833;;

  12;
  3;7,3,1;,
  3;5,7,1;,
  3;15,11,2;,
  3;6,15,2;,
  3;13,9,10;,
  3;14,13,10;,
  3;4,0,8;,
  3;12,4,8;,
  3;22,18,19;,
  3;23,22,19;,
  3;16,20,21;,
  3;17,16,21;;
 }
 MeshTextureCoords {
 24;
 0.599652;0.726762;,
 0.518687;0.726760;,
 0.602801;0.727261;,
 0.601377;0.726807;,
 0.619634;0.618641;,
 0.500518;0.618539;,
 0.619924;0.617775;,
 0.617342;0.617933;,
 0.517110;0.727296;,
 0.518093;0.727777;,
 0.598694;0.727452;,
 0.515843;0.726800;,
 0.498821;0.618260;,
 0.499096;0.615258;,
 0.618679;0.615157;,
 0.498350;0.617541;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.587592;0.319306;,
 0.649644;0.318982;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.587928;0.022473;,
 0.649490;0.023165;;
 }
}
}
}
Frame frm-wepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000069,0.112974,0.168240,1.000000;;
 }
Mesh wepbar1 {
 50;
 0.034248;-0.059319;-0.735578;,
 0.034248;-0.059319;-0.537775;,
 0.044522;0.000000;-0.525283;,
 0.068495;0.000000;-0.537775;,
 0.068495;0.000000;-0.537775;,
 0.068495;0.000000;-0.735578;,
 0.068495;0.000000;-0.735578;,
 0.022261;0.038557;-0.000002;,
 0.022261;0.038557;-0.525283;,
 0.022261;0.038557;-0.525283;,
 0.034248;0.059319;-0.537775;,
 0.034248;0.059319;-0.735578;,
 -0.022261;0.038557;-0.525283;,
 -0.034248;0.059319;-0.537775;,
 -0.034248;0.059319;-0.735578;,
 -0.044522;0.000000;-0.525283;,
 -0.068495;0.000000;-0.537775;,
 -0.068495;0.000000;-0.537775;,
 -0.068495;0.000000;-0.735578;,
 -0.068495;0.000000;-0.735578;,
 -0.022261;-0.038557;-0.000002;,
 -0.022261;-0.038557;-0.525283;,
 -0.022261;-0.038557;-0.525283;,
 -0.034248;-0.059319;-0.537775;,
 -0.034248;-0.059319;-0.735578;,
 0.022261;-0.038557;-0.525283;,
 0.022261;-0.038557;-0.525283;,
 0.022261;-0.038557;-0.000002;,
 -0.034248;-0.059319;-0.735578;,
 -0.034248;-0.059319;-0.537775;,
 -0.022261;-0.038557;-0.525283;,
 -0.022261;-0.038557;-0.000002;,
 -0.068495;0.000000;-0.735578;,
 -0.068495;0.000000;-0.537775;,
 -0.044522;0.000000;-0.525283;,
 -0.044522;0.000000;-0.000002;,
 -0.034248;0.059319;-0.735578;,
 -0.034248;0.059319;-0.537775;,
 -0.022261;0.038557;-0.525283;,
 -0.022261;0.038557;-0.000002;,
 0.034248;0.059319;-0.735578;,
 0.034248;0.059319;-0.537775;,
 0.022261;0.038557;-0.525283;,
 0.022261;0.038557;-0.000002;,
 0.068495;0.000000;-0.735578;,
 0.068495;0.000000;-0.537775;,
 0.044522;0.000000;-0.525283;,
 0.044522;0.000000;-0.000002;,
 0.034248;-0.059319;-0.537775;,
 0.034248;-0.059319;-0.735578;;

 40;
 3;6,4,1;,
 3;0,6,1;,
 3;24,19,14;,
 3;0,1,23;,
 3;28,0,23;,
 3;9,7,47;,
 3;2,9,47;,
 3;10,8,46;,
 3;3,10,46;,
 3;11,41,45;,
 3;5,11,45;,
 3;28,23,17;,
 3;18,28,17;,
 3;3,46,25;,
 3;48,3,25;,
 3;29,22,15;,
 3;16,29,15;,
 3;21,20,35;,
 3;34,21,35;,
 3;12,39,43;,
 3;42,12,43;,
 3;13,38,8;,
 3;10,13,8;,
 3;36,37,41;,
 3;11,36,41;,
 3;26,27,31;,
 3;30,26,31;,
 3;2,47,27;,
 3;26,2,27;,
 3;48,25,22;,
 3;29,48,22;,
 3;32,33,37;,
 3;36,32,37;,
 3;34,35,39;,
 3;12,34,39;,
 3;16,15,38;,
 3;13,16,38;,
 3;40,44,49;,
 3;24,14,40;,
 3;40,49,24;;

 MeshMaterialList {
  6;
  40;
  0,
  0,
  1,
  0,
  0,
  2,
  2,
  3,
  3,
  4,
  4,
  0,
  0,
  3,
  3,
  3,
  3,
  5,
  5,
  5,
  5,
  3,
  3,
  4,
  4,
  2,
  2,
  2,
  2,
  3,
  3,
  4,
  4,
  5,
  5,
  3,
  3,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
}
 MeshNormals {
  50;
  0.272352;-0.786214;-0.554700;,
  0.462674;-0.698487;0.545938;,
  0.836245;-0.051444;0.545938;,
  0.836245;0.051444;0.545938;,
  0.836245;0.051444;0.545938;,
  0.918559;-0.176777;-0.353553;,
  0.918559;-0.176777;-0.353553;,
  0.327327;0.944911;0.000000;,
  0.462674;0.698487;0.545938;,
  0.462674;0.698487;0.545938;,
  0.373571;0.749931;0.545938;,
  0.462910;0.534523;-0.707107;,
  -0.373571;0.749931;0.545938;,
  -0.462674;0.698487;0.545938;,
  -0.261117;0.753778;-0.603023;,
  -0.836245;0.051444;0.545938;,
  -0.836245;-0.051444;0.545938;,
  -0.836245;-0.051444;0.545938;,
  -0.918559;0.176776;-0.353553;,
  -0.918559;0.176776;-0.353553;,
  -0.327327;-0.944911;0.000000;,
  -0.462674;-0.698487;0.545938;,
  -0.462674;-0.698487;0.545938;,
  -0.373571;-0.749931;0.545938;,
  -0.462910;-0.534523;-0.707107;,
  0.373571;-0.749931;0.545938;,
  0.373571;-0.749931;0.545938;,
  0.654654;-0.755929;0.000000;,
  -0.462910;-0.534523;-0.707107;,
  -0.373571;-0.749931;0.545938;,
  -0.462674;-0.698487;0.545938;,
  -0.327327;-0.944911;0.000000;,
  -0.918559;0.176776;-0.353553;,
  -0.836245;-0.051444;0.545938;,
  -0.836245;0.051444;0.545938;,
  -0.981980;-0.188983;0.000000;,
  -0.261117;0.753778;-0.603023;,
  -0.462674;0.698487;0.545938;,
  -0.373571;0.749931;0.545938;,
  -0.654654;0.755929;0.000000;,
  0.462910;0.534523;-0.707107;,
  0.373571;0.749931;0.545938;,
  0.462674;0.698487;0.545938;,
  0.327327;0.944911;0.000000;,
  0.918559;-0.176777;-0.353553;,
  0.836245;0.051444;0.545938;,
  0.836245;-0.051444;0.545938;,
  0.981981;0.188982;0.000000;,
  0.462674;-0.698487;0.545938;,
  0.272352;-0.786214;-0.554700;;

  40;
  3;6,4,1;,
  3;0,6,1;,
  3;24,19,14;,
  3;0,1,23;,
  3;28,0,23;,
  3;9,7,47;,
  3;2,9,47;,
  3;10,8,46;,
  3;3,10,46;,
  3;11,41,45;,
  3;5,11,45;,
  3;28,23,17;,
  3;18,28,17;,
  3;3,46,25;,
  3;48,3,25;,
  3;29,22,15;,
  3;16,29,15;,
  3;21,20,35;,
  3;34,21,35;,
  3;12,39,43;,
  3;42,12,43;,
  3;13,38,8;,
  3;10,13,8;,
  3;36,37,41;,
  3;11,36,41;,
  3;26,27,31;,
  3;30,26,31;,
  3;2,47,27;,
  3;26,2,27;,
  3;48,25,22;,
  3;29,48,22;,
  3;32,33,37;,
  3;36,32,37;,
  3;34,35,39;,
  3;12,34,39;,
  3;16,15,38;,
  3;13,16,38;,
  3;40,44,49;,
  3;24,14,40;,
  3;40,49,24;;
 }
 MeshTextureCoords {
 50;
 0.444364;0.518074;,
 0.625470;0.519208;,
 0.582663;0.816190;,
 0.556436;0.085504;,
 0.625230;0.571941;,
 0.444052;0.359169;,
 0.444125;0.570808;,
 0.008418;0.765339;,
 0.498604;0.046794;,
 0.582121;0.764632;,
 0.499127;0.010644;,
 0.444410;0.412815;,
 0.008581;0.900066;,
 0.442374;0.082023;,
 0.497335;0.019808;,
 0.458191;0.205180;,
 0.442508;0.221506;,
 0.626188;0.361007;,
 0.445082;0.359873;,
 0.441813;0.084666;,
 0.584086;0.761079;,
 0.010198;0.759877;,
 0.499496;0.249237;,
 0.625948;0.413740;,
 0.441985;0.219369;,
 0.543100;0.203474;,
 0.583752;0.919879;,
 0.010048;0.920585;,
 0.444843;0.412607;,
 0.500239;0.282853;,
 0.584299;0.972010;,
 0.010596;0.972716;,
 0.445460;0.570100;,
 0.625215;0.568445;,
 0.009467;0.823244;,
 0.583355;0.803075;,
 0.445114;0.518280;,
 0.624869;0.516626;,
 0.460067;0.095935;,
 0.583763;0.891211;,
 0.556266;0.082069;,
 0.624165;0.411160;,
 0.009720;0.975123;,
 0.584255;0.980097;,
 0.556439;0.212439;,
 0.623807;0.357514;,
 0.542443;0.099296;,
 0.008959;0.816896;,
 0.556993;0.217386;,
 0.498220;0.283797;;
 }
}
Frame frm-bwepbar {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000174,-0.096560,0.000111,1.000000;;
 }
Mesh bwepbar {
 36;
 -0.009296;0.017189;-0.537783;,
 -0.009296;0.017189;-0.537783;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;0.060047;-0.578997;,
 -0.009296;0.060047;-0.578997;,
 0.009296;0.017189;-0.537783;,
 0.009296;0.017189;-0.537783;,
 0.009296;-0.016000;-0.578997;,
 0.009296;-0.016000;-0.578997;,
 0.009296;0.060047;-0.537783;,
 0.009296;0.060047;-0.537783;,
 0.009296;0.060047;-0.578997;,
 0.009296;0.060047;-0.578997;,
 -0.009296;0.017189;-0.000136;,
 -0.009296;0.017189;-0.000136;,
 -0.009296;-0.016000;-0.000356;,
 -0.009296;-0.016000;-0.000356;,
 0.009296;0.017189;-0.000136;,
 0.009296;0.017189;-0.000136;,
 0.009296;-0.016000;-0.000356;,
 0.009296;-0.016000;-0.000356;,
 0.009296;-0.016000;-0.000356;,
 0.009296;0.017189;-0.000136;,
 -0.009296;-0.016000;-0.000356;,
 -0.009296;0.017189;-0.000136;,
 0.009296;0.060047;-0.578997;,
 0.009296;0.060047;-0.537783;,
 0.009296;-0.016000;-0.578997;,
 0.009296;0.017189;-0.537783;,
 -0.009296;0.060047;-0.578997;,
 -0.009296;0.060047;-0.537783;,
 -0.009296;-0.016000;-0.578997;,
 -0.009296;0.017189;-0.537783;;

 20;
 3;7,3,1;,
 3;5,7,1;,
 3;15,11,2;,
 3;6,15,2;,
 3;13,9,10;,
 3;14,13,10;,
 3;4,0,8;,
 3;12,4,8;,
 3;19,23,21;,
 3;17,19,21;,
 3;28,32,33;,
 3;29,28,33;,
 3;16,1,3;,
 3;18,16,3;,
 3;26,34,30;,
 3;22,26,30;,
 3;24,10,9;,
 3;20,24,9;,
 3;25,31,35;,
 3;27,25,35;;

 MeshMaterialList {
  4;
  20;
  0,
  0,
  1,
  1,
  0,
  0,
  1,
  1,
  2,
  2,
  2,
  2,
  0,
  0,
  3,
  3,
  0,
  0,
  3,
  3;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "wep01a.bmp";
 }
 }
}
 MeshNormals {
  36;
  -0.801784;0.534522;0.267261;,
  -0.801784;0.534522;0.267261;,
  -0.801784;-0.267261;-0.534522;,
  -0.801784;-0.267261;-0.534522;,
  -0.333333;0.666667;0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  0.801784;0.267261;0.534522;,
  0.801784;0.267261;0.534522;,
  0.801784;-0.534522;-0.267261;,
  0.801784;-0.534522;-0.267261;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  -0.817401;0.405988;0.408692;,
  -0.817401;0.405988;0.408692;,
  -0.332354;-0.669121;0.664694;,
  -0.332354;-0.669121;0.664694;,
  0.334321;0.664204;0.668627;,
  0.334321;0.664204;0.668627;,
  0.815595;-0.410504;0.407788;,
  0.815595;-0.410504;0.407788;,
  0.815595;-0.410504;0.407788;,
  0.334321;0.664204;0.668627;,
  -0.332354;-0.669121;0.664694;,
  -0.817401;0.405988;0.408692;,
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.801784;-0.534522;-0.267261;,
  0.801784;0.267261;0.534522;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.801784;-0.267261;-0.534522;,
  -0.801784;0.534522;0.267261;;

  20;
  3;7,3,1;,
  3;5,7,1;,
  3;15,11,2;,
  3;6,15,2;,
  3;13,9,10;,
  3;14,13,10;,
  3;4,0,8;,
  3;12,4,8;,
  3;19,23,21;,
  3;17,19,21;,
  3;28,32,33;,
  3;29,28,33;,
  3;16,1,3;,
  3;18,16,3;,
  3;26,34,30;,
  3;22,26,30;,
  3;24,10,9;,
  3;20,24,9;,
  3;25,31,35;,
  3;27,25,35;;
 }
 MeshTextureCoords {
 36;
 0.038733;0.671539;,
 0.450444;0.672009;,
 0.008097;0.671762;,
 0.484375;0.726562;,
 0.116867;0.671783;,
 0.450444;0.601562;,
 0.144814;0.671989;,
 0.484375;0.601562;,
 0.038190;0.729154;,
 0.450444;0.672009;,
 0.484375;0.726562;,
 0.007530;0.726449;,
 0.116323;0.728422;,
 0.450444;0.601562;,
 0.484375;0.601562;,
 0.144247;0.726676;,
 0.007812;0.672009;,
 0.000000;0.000000;,
 0.007994;0.726562;,
 0.000000;0.000000;,
 0.007813;0.672009;,
 0.000000;0.000000;,
 0.448395;0.726664;,
 0.000000;0.000000;,
 0.007994;0.726562;,
 0.446613;0.720521;,
 0.449872;0.671977;,
 0.445952;0.669935;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.007159;0.726481;,
 0.008756;0.725976;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.008636;0.671794;,
 0.008870;0.676758;;
 }
}
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000069,0.000003,0.735610,1.000000;;
 }
}
}
}
AnimationSet {
 Animation anim-wepbas1 {
  {frm-wepbas1}
  AnimationKey {
  2;
  2;
  0; 3; 0.000069, 0.094362, -0.035604;;,
  15; 3; 0.000069, 0.094362, -0.035604;;;
  }
 }
 Animation anim-wepbas2 {
  {frm-wepbas2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000030, 0.100134, 0.174523;;,
  15; 3; 0.000030, 0.100134, 0.174523;;;
  }
 }
 Animation anim-wepbas3 {
  {frm-wepbas3}
  AnimationKey {
  2;
  2;
  0; 3; -0.000946, -0.035145, 0.226797;;,
  15; 3; -0.000946, -0.035145, 0.226797;;;
  }
 }
 Animation anim-wepbar1 {
  {frm-wepbar1}
  AnimationKey {
  2;
  16;
  0; 3; 0.000069, 0.112974, -0.168240;;,
  1; 3; 0.000069, 0.112974, -0.166409;;,
  2; 3; 0.000069, 0.112974, -0.011631;;,
  3; 3; 0.000069, 0.112974, 0.089917;;,
  4; 3; 0.000069, 0.112974, 0.038324;;,
  5; 3; 0.000069, 0.112974, -0.013268;;,
  6; 3; 0.000069, 0.112974, -0.064861;;,
  7; 3; 0.000069, 0.112974, -0.116453;;,
  8; 3; 0.000069, 0.112974, -0.168046;;,
  9; 3; 0.000069, 0.112974, -0.014047;;,
  10; 3; 0.000069, 0.112974, 0.090722;;,
  11; 3; 0.000069, 0.112974, 0.039129;;,
  12; 3; 0.000069, 0.112974, -0.012463;;,
  13; 3; 0.000069, 0.112974, -0.064056;;,
  14; 3; 0.000069, 0.112974, -0.115649;;,
  15; 3; 0.000069, 0.112974, -0.167241;;;
  }
 }
 Animation anim-bwepbar {
  {frm-bwepbar}
  AnimationKey {
  2;
  2;
  0; 3; -0.000174, -0.096560, -0.000111;;,
  15; 3; -0.000174, -0.096560, -0.000111;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; -0.000069, 0.000003, -0.735610;;,
  15; 3; -0.000069, 0.000003, -0.735610;;;
  }
 }
  }

