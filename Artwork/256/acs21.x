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

Frame frm-acs21 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-genbody {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh genbody {
 62;
 -1.000000;-2.400000;0.000000;,
 -1.000000;-2.400000;0.000000;,
 -1.000000;-2.400001;0.300000;,
 -1.000000;-2.100000;0.600000;,
 -1.000000;-1.500000;2.100000;,
 -1.000000;-0.300000;3.299999;,
 -1.000000;1.500000;3.900000;,
 -1.000000;1.500000;3.900000;,
 -1.000000;1.500000;3.000000;,
 -1.000000;0.300000;2.400001;,
 -1.000000;0.300000;1.500000;,
 -1.000000;0.300000;1.500000;,
 -1.000000;0.900000;1.500000;,
 -1.000000;0.900000;0.600000;,
 -1.000000;0.900000;0.600000;,
 -1.000000;1.200000;0.300000;,
 -1.000000;1.200000;0.300000;,
 -1.000000;1.200000;0.000000;,
 -1.000000;1.200000;0.000000;,
 1.000000;-2.400000;0.000000;,
 1.000000;-2.400000;0.000000;,
 1.000000;-2.400001;0.300000;,
 1.000000;-2.100000;0.600000;,
 1.000000;-1.500000;2.100000;,
 1.000000;-0.300000;3.299999;,
 1.000000;1.500000;3.900000;,
 1.000000;1.500000;3.900000;,
 1.000000;1.500000;3.000000;,
 1.000000;0.300000;2.400001;,
 1.000000;0.300000;1.500000;,
 1.000000;0.900000;1.500000;,
 1.000000;0.900000;0.600000;,
 1.000000;1.200000;0.300000;,
 1.000000;1.200000;0.300000;,
 1.000000;1.200000;0.000000;,
 1.000000;1.200000;0.000000;,
 1.000000;1.200000;0.000000;,
 1.000000;1.200000;0.300000;,
 1.000000;0.900000;0.600000;,
 1.000000;0.900000;1.500000;,
 1.000000;0.300000;1.500000;,
 1.000000;0.300000;2.400001;,
 1.000000;1.500000;3.000000;,
 1.000000;1.500000;3.900000;,
 1.000000;-0.300000;3.299999;,
 1.000000;-1.500000;2.100000;,
 1.000000;-2.100000;0.600000;,
 1.000000;-2.400001;0.300000;,
 1.000000;-2.400000;0.000000;,
 -1.000000;1.200000;0.000000;,
 -1.000000;1.200000;0.300000;,
 -1.000000;0.900000;0.600000;,
 -1.000000;0.900000;1.500000;,
 -1.000000;0.300000;1.500000;,
 -1.000000;0.300000;2.400001;,
 -1.000000;1.500000;3.000000;,
 -1.000000;1.500000;3.900000;,
 -1.000000;-0.300000;3.299999;,
 -1.000000;-1.500000;2.100000;,
 -1.000000;-2.100000;0.600000;,
 -1.000000;-2.400001;0.300000;,
 -1.000000;-2.400000;0.000000;;

 48;
 3;20,1,18;,
 3;35,20,18;,
 3;27,8,6;,
 3;25,27,6;,
 3;28,9,8;,
 3;27,28,8;,
 3;29,11,9;,
 3;28,29,9;,
 3;30,12,11;,
 3;29,30,11;,
 3;31,14,12;,
 3;30,31,12;,
 3;33,16,14;,
 3;31,33,14;,
 3;34,17,16;,
 3;33,34,16;,
 3;23,4,3;,
 3;22,23,3;,
 3;24,5,4;,
 3;23,24,4;,
 3;26,7,5;,
 3;24,26,5;,
 3;21,2,0;,
 3;19,21,0;,
 3;22,3,2;,
 3;21,22,2;,
 3;56,55,54;,
 3;57,56,54;,
 3;42,43,44;,
 3;41,42,44;,
 3;38,39,40;,
 3;41,44,45;,
 3;40,41,45;,
 3;40,45,46;,
 3;48,36,32;,
 3;40,46,47;,
 3;38,40,47;,
 3;32,38,47;,
 3;37,47,48;,
 3;15,49,61;,
 3;57,54,10;,
 3;58,57,10;,
 3;59,58,10;,
 3;53,52,13;,
 3;59,10,51;,
 3;60,59,51;,
 3;60,51,50;,
 3;61,60,50;;

 MeshMaterialList {
  3;
  48;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
Material {
 1.000000;1.000000;0.983051;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;0.983051;;
 TextureFilename {
  "acs21.bmp";
 }
 }
}
 MeshNormals {
  62;
  -0.666667;-0.666667;-0.333333;,
  -0.666667;-0.666667;-0.333333;,
  -0.707107;-0.653282;0.270598;,
  -0.707107;-0.590322;0.389256;,
  -0.554700;-0.694630;0.458036;,
  -0.707107;-0.371748;0.601501;,
  -0.719113;0.605412;0.341105;,
  -0.719113;0.605412;0.341105;,
  -0.358314;0.678799;-0.640971;,
  -0.754998;0.615881;-0.225097;,
  -0.912871;0.182574;0.365148;,
  -0.912871;0.182574;0.365148;,
  -0.408248;0.816497;0.408248;,
  -0.800000;0.554328;0.229610;,
  -0.800000;0.554328;0.229610;,
  -0.707107;0.653282;0.270598;,
  -0.707107;0.653282;0.270598;,
  -0.408248;0.408248;-0.816497;,
  -0.408248;0.408248;-0.816497;,
  0.666667;-0.333333;-0.666667;,
  0.666667;-0.333333;-0.666667;,
  0.800000;-0.554328;0.229610;,
  0.554700;-0.694630;0.458036;,
  0.707107;-0.590322;0.389256;,
  0.707107;-0.371748;0.601501;,
  0.459553;0.168906;0.871941;,
  0.459553;0.168906;0.871941;,
  0.608895;0.745048;-0.272306;,
  0.754998;0.476763;-0.450194;,
  0.912871;0.365148;0.182574;,
  0.408248;0.408248;0.816497;,
  0.707107;0.653282;0.270598;,
  0.707107;0.653282;0.270598;,
  0.707107;0.653282;0.270598;,
  0.408248;0.816497;-0.408248;,
  0.408248;0.816497;-0.408248;,
  0.408248;0.816497;-0.408248;,
  0.707107;0.653282;0.270598;,
  0.707107;0.653282;0.270598;,
  0.408248;0.408248;0.816497;,
  0.912871;0.365148;0.182574;,
  0.754998;0.476763;-0.450194;,
  0.608895;0.745048;-0.272306;,
  0.459553;0.168906;0.871941;,
  0.707107;-0.371748;0.601501;,
  0.707107;-0.590322;0.389256;,
  0.554700;-0.694630;0.458036;,
  0.800000;-0.554328;0.229610;,
  0.666667;-0.333333;-0.666667;,
  -0.408248;0.408248;-0.816497;,
  -0.707107;0.653282;0.270598;,
  -0.800000;0.554328;0.229610;,
  -0.408248;0.816497;0.408248;,
  -0.912871;0.182574;0.365148;,
  -0.754998;0.615881;-0.225097;,
  -0.358314;0.678799;-0.640971;,
  -0.719113;0.605412;0.341105;,
  -0.707107;-0.371748;0.601501;,
  -0.554700;-0.694630;0.458036;,
  -0.707107;-0.590322;0.389256;,
  -0.707107;-0.653282;0.270598;,
  -0.666667;-0.666667;-0.333333;;

  48;
  3;20,1,18;,
  3;35,20,18;,
  3;27,8,6;,
  3;25,27,6;,
  3;28,9,8;,
  3;27,28,8;,
  3;29,11,9;,
  3;28,29,9;,
  3;30,12,11;,
  3;29,30,11;,
  3;31,14,12;,
  3;30,31,12;,
  3;33,16,14;,
  3;31,33,14;,
  3;34,17,16;,
  3;33,34,16;,
  3;23,4,3;,
  3;22,23,3;,
  3;24,5,4;,
  3;23,24,4;,
  3;26,7,5;,
  3;24,26,5;,
  3;21,2,0;,
  3;19,21,0;,
  3;22,3,2;,
  3;21,22,2;,
  3;56,55,54;,
  3;57,56,54;,
  3;42,43,44;,
  3;41,42,44;,
  3;38,39,40;,
  3;41,44,45;,
  3;40,41,45;,
  3;40,45,46;,
  3;48,36,32;,
  3;40,46,47;,
  3;38,40,47;,
  3;32,38,47;,
  3;37,47,48;,
  3;15,49,61;,
  3;57,54,10;,
  3;58,57,10;,
  3;59,58,10;,
  3;53,52,13;,
  3;59,10,51;,
  3;60,59,51;,
  3;60,51,50;,
  3;61,60,50;;
 }
 MeshTextureCoords {
 62;
 0.166271;0.017661;,
 0.979929;0.410714;,
 0.166095;0.040779;,
 0.165812;0.074120;,
 0.165833;0.333198;,
 0.165111;0.522921;,
 0.769531;0.088663;,
 0.164410;0.583153;,
 0.769531;0.295248;,
 0.769531;0.420072;,
 0.321926;0.630863;,
 0.769531;0.611178;,
 0.769531;0.611178;,
 0.253616;0.833267;,
 0.769531;0.802284;,
 0.226951;0.897376;,
 0.769531;0.865986;,
 0.769531;0.929688;,
 0.765165;0.410714;,
 0.026146;0.017067;,
 0.979159;0.599524;,
 0.026263;0.040067;,
 0.026156;0.074120;,
 0.026177;0.334740;,
 0.026983;0.516751;,
 0.976562;0.088663;,
 0.027046;0.583153;,
 0.976562;0.292668;,
 0.976562;0.420072;,
 0.976562;0.611178;,
 0.976562;0.611178;,
 0.976562;0.802284;,
 0.227050;0.898370;,
 0.976562;0.865986;,
 0.976562;0.929688;,
 0.764396;0.594881;,
 0.226404;0.946204;,
 0.225112;0.897078;,
 0.255523;0.832968;,
 0.254231;0.629790;,
 0.322025;0.631856;,
 0.322542;0.440561;,
 0.192452;0.308283;,
 0.193190;0.089752;,
 0.380299;0.231995;,
 0.523598;0.520687;,
 0.584677;0.835035;,
 0.614829;0.894494;,
 0.614054;0.946203;,
 0.226305;0.945211;,
 0.225014;0.896085;,
 0.255424;0.831975;,
 0.254907;0.630605;,
 0.323089;0.629313;,
 0.322443;0.439568;,
 0.192353;0.307290;,
 0.193091;0.088759;,
 0.380201;0.231001;,
 0.523500;0.519694;,
 0.584578;0.834041;,
 0.614730;0.893501;,
 0.613955;0.945210;;
 }
}
Frame frm-bar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.900090,-1.609303,1.000000;;
 }
Mesh bar1 {
 27;
 0.789150;0.000000;-1.273459;,
 0.558013;0.558013;-1.273459;,
 0.558013;0.558013;-1.273459;,
 0.000000;0.789150;-1.273459;,
 0.000000;0.789150;-1.273459;,
 -0.558013;0.558013;-1.273459;,
 -0.789150;0.000000;-1.273459;,
 -0.558013;-0.558013;-1.273459;,
 0.000000;-0.789150;-1.273459;,
 0.558013;-0.558013;-1.273459;,
 0.558013;-0.558013;-1.273459;,
 0.558013;-0.558013;0.711562;,
 0.000000;-0.789150;-1.273459;,
 0.000000;-0.789150;0.711562;,
 -0.558013;-0.558013;-1.273459;,
 -0.558013;-0.558013;0.711562;,
 -0.789150;0.000000;-1.273459;,
 -0.789150;0.000000;0.711562;,
 -0.558013;0.558013;-1.273459;,
 -0.558013;0.558013;0.711562;,
 0.000000;0.789150;-1.273459;,
 0.000000;0.789150;0.711562;,
 0.558013;0.558013;-1.273459;,
 0.558013;0.558013;0.711562;,
 0.789150;0.000000;-1.273459;,
 0.789150;0.000000;0.711562;,
 0.000000;0.000000;-1.273459;;

 24;
 3;26,0,9;,
 3;26,1,0;,
 3;26,3,22;,
 3;26,9,8;,
 3;26,18,20;,
 3;26,16,18;,
 3;26,8,7;,
 3;26,7,16;,
 3;24,2,25;,
 3;2,23,25;,
 3;5,19,21;,
 3;4,5,21;,
 3;24,25,11;,
 3;10,11,13;,
 3;12,10,13;,
 3;6,17,19;,
 3;5,6,19;,
 3;10,24,11;,
 3;4,21,23;,
 3;14,15,17;,
 3;6,14,17;,
 3;2,4,23;,
 3;12,13,15;,
 3;14,12,15;;

 MeshMaterialList {
  2;
  24;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.700000;0.700000;0.700000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
}
 MeshNormals {
  27;
  0.832050;0.000000;-0.554700;,
  0.588348;0.588348;-0.554700;,
  0.588348;0.588348;-0.554700;,
  0.000000;0.832050;-0.554700;,
  0.000000;0.832050;-0.554700;,
  -0.588348;0.588348;-0.554700;,
  -0.832050;0.000000;-0.554700;,
  -0.588348;-0.588348;-0.554700;,
  0.000000;-0.832050;-0.554700;,
  0.588348;-0.588348;-0.554700;,
  0.588348;-0.588348;-0.554700;,
  0.707107;-0.707107;0.000000;,
  0.000000;-0.832050;-0.554700;,
  0.000000;-1.000000;0.000000;,
  -0.588348;-0.588348;-0.554700;,
  -0.707107;-0.707107;0.000000;,
  -0.832050;0.000000;-0.554700;,
  -1.000000;0.000000;0.000000;,
  -0.588348;0.588348;-0.554700;,
  -0.707107;0.707107;0.000000;,
  0.000000;0.832050;-0.554700;,
  0.000000;1.000000;0.000000;,
  0.588348;0.588348;-0.554700;,
  0.707107;0.707107;0.000000;,
  0.832050;0.000000;-0.554700;,
  1.000000;0.000000;0.000000;,
  0.000000;0.000000;-1.000000;;

  24;
  3;26,0,9;,
  3;26,1,0;,
  3;26,3,22;,
  3;26,9,8;,
  3;26,18,20;,
  3;26,16,18;,
  3;26,8,7;,
  3;26,7,16;,
  3;24,2,25;,
  3;2,23,25;,
  3;5,19,21;,
  3;4,5,21;,
  3;24,25,11;,
  3;10,11,13;,
  3;12,10,13;,
  3;6,17,19;,
  3;5,6,19;,
  3;10,24,11;,
  3;4,21,23;,
  3;14,15,17;,
  3;6,14,17;,
  3;2,4,23;,
  3;12,13,15;,
  3;14,12,15;;
 }
 MeshTextureCoords {
 27;
 0.753906;0.336535;,
 0.722067;0.200717;,
 0.135393;0.619641;,
 0.660455;0.148438;,
 0.102674;0.619641;,
 0.068848;0.619130;,
 0.024860;0.618449;,
 0.593654;0.468097;,
 0.659857;0.520376;,
 0.724705;0.468943;,
 0.135393;0.619641;,
 0.134797;0.977345;,
 0.102674;0.619641;,
 0.100376;0.978197;,
 0.068848;0.619130;,
 0.069615;0.978367;,
 0.566406;0.335340;,
 0.026052;0.977345;,
 0.594076;0.202932;,
 0.069615;0.978367;,
 0.660455;0.151499;,
 0.100376;0.978197;,
 0.723598;0.197655;,
 0.134797;0.977345;,
 0.170102;0.621344;,
 0.169251;0.978027;,
 0.660156;0.335938;;
 }
}
}
Frame frm-bar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,2.261117,-1.609303,1.000000;;
 }
Mesh bar2 {
 19;
 0.330000;0.278497;-0.000001;,
 0.165000;0.278497;0.285788;,
 -0.165000;0.278497;0.285788;,
 -0.330000;0.278497;-0.000001;,
 -0.165000;0.278497;-0.285789;,
 0.165000;0.278497;-0.285789;,
 0.165000;0.278497;-0.285789;,
 0.165000;-0.271503;-0.285789;,
 -0.165000;0.278497;-0.285789;,
 -0.165000;-0.271503;-0.285789;,
 -0.330000;0.278497;-0.000001;,
 -0.330000;-0.271503;-0.000001;,
 -0.165000;0.278497;0.285788;,
 -0.165000;-0.271503;0.285788;,
 0.165000;0.278497;0.285788;,
 0.165000;-0.271503;0.285788;,
 0.330000;0.278497;-0.000001;,
 0.330000;-0.271503;-0.000001;,
 0.000000;0.278497;-0.000001;;

 18;
 3;18,0,5;,
 3;18,14,0;,
 3;18,12,14;,
 3;18,5,4;,
 3;18,10,12;,
 3;18,4,10;,
 3;2,13,15;,
 3;1,2,15;,
 3;16,1,17;,
 3;1,15,17;,
 3;3,11,13;,
 3;2,3,13;,
 3;16,17,7;,
 3;6,7,9;,
 3;8,6,9;,
 3;8,9,11;,
 3;3,8,11;,
 3;6,16,7;;

 MeshMaterialList {
  2;
  18;
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.700000;0.700000;0.700000;;
 TextureFilename {
  "acs21.bmp";
 }
 }
}
 MeshNormals {
  19;
  0.832050;0.554700;0.000000;,
  0.522233;0.603023;0.603023;,
  -0.261117;0.603023;0.753778;,
  -0.783350;0.603023;0.150755;,
  -0.522233;0.603023;-0.603023;,
  0.416025;0.554700;-0.720577;,
  0.416025;0.554700;-0.720577;,
  0.500000;0.000000;-0.866025;,
  -0.522233;0.603023;-0.603023;,
  -0.327327;0.000000;-0.944911;,
  -0.783350;0.603023;0.150755;,
  -0.981980;0.000000;-0.188983;,
  -0.261117;0.603023;0.753778;,
  -0.654654;0.000000;0.755929;,
  0.522233;0.603023;0.603023;,
  0.327327;0.000000;0.944911;,
  0.832050;0.554700;0.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;;

  18;
  3;18,0,5;,
  3;18,14,0;,
  3;18,12,14;,
  3;18,5,4;,
  3;18,10,12;,
  3;18,4,10;,
  3;2,13,15;,
  3;1,2,15;,
  3;16,1,17;,
  3;1,15,17;,
  3;3,11,13;,
  3;2,3,13;,
  3;16,17,7;,
  3;6,7,9;,
  3;8,6,9;,
  3;8,9,11;,
  3;3,8,11;,
  3;6,16,7;;
 }
 MeshTextureCoords {
 19;
 0.753906;0.746094;,
 0.529297;0.015625;,
 0.455078;0.015625;,
 0.417969;0.015625;,
 0.633789;0.609375;,
 0.713867;0.609375;,
 0.529297;0.015625;,
 0.529297;0.234375;,
 0.455078;0.015625;,
 0.455078;0.234375;,
 0.593750;0.746094;,
 0.417969;0.234375;,
 0.633789;0.882812;,
 0.455078;0.234375;,
 0.713867;0.882812;,
 0.529297;0.234375;,
 0.566406;0.015625;,
 0.566406;0.234375;,
 0.673828;0.746094;;
 }
}
Frame frm-doccon {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.276909,-0.000465,1.000000;;
 }
}
}
}
}
AnimationSet {
 Animation anim-acs21 {
  {frm-acs21}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
 }
 Animation anim-bar1 {
  {frm-bar1}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.900090, 1.609303;;,
  100; 3; 0.000000, 0.900090, 1.609303;;;
  }
 }
 Animation anim-bar2 {
  {frm-bar2}
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 2.261117, 1.609303;;,
  100; 3; 0.000000, 2.261117, 1.609303;;;
  }
 }
 Animation anim-doccon {
  {frm-doccon}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  100; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.276909, 0.000465;;,
  100; 3; 0.000000, 0.276909, 0.000465;;;
  }
 }
  }
