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

Frame frm-ss11 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,-5.826557,0.000000,1.000000;;
 }
Frame frm-fuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,0.449990,1.000000;;
 }
Mesh fuselg {
 40;
 2.250000;-0.011226;0.001616;,
 1.590990;-0.011226;1.592606;,
 1.590990;-0.011226;1.592606;,
 0.000000;-0.011226;2.251617;,
 -1.590990;-0.011226;1.592606;,
 -1.590990;-0.011226;1.592606;,
 -2.250000;-0.011226;0.001616;,
 -1.590990;-0.011226;-1.589375;,
 -1.590990;-0.011226;-1.589375;,
 0.000000;-0.011226;-2.248385;,
 1.590990;-0.011226;-1.589375;,
 1.590990;-0.011226;-1.589375;,
 2.250000;10.766735;0.001616;,
 1.590990;10.766735;1.592606;,
 1.590990;10.766735;1.592606;,
 0.000000;10.766735;2.251617;,
 -1.590990;10.766735;1.592606;,
 -1.590990;10.766735;1.592606;,
 -2.250000;10.766735;0.001616;,
 -1.590990;10.766735;-1.589375;,
 -1.590990;10.766735;-1.589375;,
 0.000000;10.766735;-2.248385;,
 1.590990;10.766735;-1.589375;,
 1.590990;10.766735;-1.589375;,
 1.590990;10.766735;-1.589375;,
 0.000000;10.766735;-2.248385;,
 -1.590990;10.766735;-1.589375;,
 -2.250000;10.766735;0.001616;,
 -1.590990;10.766735;1.592606;,
 0.000000;10.766735;2.251617;,
 1.590990;10.766735;1.592606;,
 2.250000;10.766735;0.001616;,
 1.590990;-0.011226;-1.589375;,
 0.000000;-0.011226;-2.248385;,
 -1.590990;-0.011226;-1.589375;,
 -2.250000;-0.011226;0.001616;,
 -1.590990;-0.011226;1.592606;,
 0.000000;-0.011226;2.251617;,
 1.590990;-0.011226;1.592606;,
 2.250000;-0.011226;0.001616;;

 28;
 3;12,0,11;,
 3;23,12,11;,
 3;14,2,0;,
 3;12,14,0;,
 3;15,3,1;,
 3;13,15,1;,
 3;17,5,3;,
 3;15,17,3;,
 3;18,6,4;,
 3;16,18,4;,
 3;20,8,6;,
 3;18,20,6;,
 3;21,9,7;,
 3;19,21,7;,
 3;22,10,9;,
 3;21,22,9;,
 3;34,33,32;,
 3;35,34,32;,
 3;36,35,32;,
 3;37,36,32;,
 3;38,37,32;,
 3;39,38,32;,
 3;29,30,31;,
 3;28,29,31;,
 3;27,28,31;,
 3;26,27,31;,
 3;25,26,31;,
 3;24,25,31;;

 MeshMaterialList {
  2;
  28;
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
  1,
  1;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.600000;0.600000;0.600000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  40;
  0.948683;-0.316228;0.000000;,
  0.588348;-0.554700;0.588348;,
  0.588348;-0.554700;0.588348;,
  0.000000;-0.554700;0.832050;,
  -0.588348;-0.554700;0.588348;,
  -0.588348;-0.554700;0.588348;,
  -0.832050;-0.554700;0.000000;,
  -0.588348;-0.554700;-0.588348;,
  -0.588348;-0.554700;-0.588348;,
  0.000000;-0.316228;-0.948683;,
  0.316228;-0.894427;-0.316228;,
  0.316228;-0.894427;-0.316228;,
  0.447214;0.894427;0.000000;,
  0.670820;0.316228;0.670820;,
  0.670820;0.316228;0.670820;,
  0.000000;0.554700;0.832050;,
  -0.588348;0.554700;0.588348;,
  -0.588348;0.554700;0.588348;,
  -0.832050;0.554700;0.000000;,
  -0.588348;0.554700;-0.588348;,
  -0.588348;0.554700;-0.588348;,
  0.000000;0.554700;-0.832050;,
  0.670820;0.316228;-0.670820;,
  0.670820;0.316228;-0.670820;,
  0.670820;0.316228;-0.670820;,
  0.000000;0.554700;-0.832050;,
  -0.588348;0.554700;-0.588348;,
  -0.832050;0.554700;0.000000;,
  -0.588348;0.554700;0.588348;,
  0.000000;0.554700;0.832050;,
  0.670820;0.316228;0.670820;,
  0.447214;0.894427;0.000000;,
  0.316228;-0.894427;-0.316228;,
  0.000000;-0.316228;-0.948683;,
  -0.588348;-0.554700;-0.588348;,
  -0.832050;-0.554700;0.000000;,
  -0.588348;-0.554700;0.588348;,
  0.000000;-0.554700;0.832050;,
  0.588348;-0.554700;0.588348;,
  0.948683;-0.316228;0.000000;;

  28;
  3;12,0,11;,
  3;23,12,11;,
  3;14,2,0;,
  3;12,14,0;,
  3;15,3,1;,
  3;13,15,1;,
  3;17,5,3;,
  3;15,17,3;,
  3;18,6,4;,
  3;16,18,4;,
  3;20,8,6;,
  3;18,20,6;,
  3;21,9,7;,
  3;19,21,7;,
  3;22,10,9;,
  3;21,22,9;,
  3;34,33,32;,
  3;35,34,32;,
  3;36,35,32;,
  3;37,36,32;,
  3;38,37,32;,
  3;39,38,32;,
  3;29,30,31;,
  3;28,29,31;,
  3;27,28,31;,
  3;26,27,31;,
  3;25,26,31;,
  3;24,25,31;;
 }
 MeshTextureCoords {
 40;
 0.324445;0.992188;,
 0.117058;0.992188;,
 0.531539;0.992188;,
 0.324219;0.992188;,
 0.114822;0.992188;,
 0.531379;0.992188;,
 0.321055;0.992188;,
 0.117059;0.992188;,
 0.529142;0.992188;,
 0.324219;0.992188;,
 0.531379;0.992188;,
 0.117219;0.992188;,
 0.324445;0.062500;,
 0.117058;0.062500;,
 0.531539;0.062500;,
 0.324219;0.062500;,
 0.114822;0.062500;,
 0.531379;0.062500;,
 0.321055;0.062500;,
 0.117059;0.062500;,
 0.529142;0.062500;,
 0.324219;0.062500;,
 0.531379;0.062500;,
 0.117219;0.062500;,
 0.899663;0.882975;,
 0.805750;0.921875;,
 0.711837;0.882975;,
 0.672937;0.789062;,
 0.711837;0.695150;,
 0.805750;0.656250;,
 0.899663;0.695150;,
 0.938562;0.789062;,
 0.899663;0.882975;,
 0.805750;0.921875;,
 0.711837;0.882975;,
 0.672937;0.789063;,
 0.711837;0.695150;,
 0.805750;0.656250;,
 0.899663;0.695150;,
 0.938562;0.789063;;
 }
}
Frame frm-tfuselg {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.048518,10.691946,0.038816,1.000000;;
 }
Mesh tfuselg {
 24;
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;;

 12;
 3;7,3,1;,
 3;5,7,1;,
 3;13,9,10;,
 3;14,13,10;,
 3;22,18,19;,
 3;23,22,19;,
 3;16,20,21;,
 3;17,16,21;,
 3;15,11,2;,
 3;6,15,2;,
 3;4,0,8;,
 3;12,4,8;;

 MeshMaterialList {
  3;
  12;
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
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666667;-0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.333333;0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.816497;0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  0.333333;-0.666667;0.666667;,
  0.816497;-0.408248;-0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.816497;0.408248;0.408248;,
  0.816497;0.408248;0.408248;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;0.408248;;

  12;
  3;7,3,1;,
  3;5,7,1;,
  3;13,9,10;,
  3;14,13,10;,
  3;22,18,19;,
  3;23,22,19;,
  3;16,20,21;,
  3;17,16,21;,
  3;15,11,2;,
  3;6,15,2;,
  3;4,0,8;,
  3;12,4,8;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.578125;,
 0.112520;0.015625;,
 0.000000;0.000000;,
 -0.011281;0.024684;,
 0.765625;0.492188;,
 0.309031;0.030004;,
 0.000000;0.000000;,
 0.185229;0.039062;,
 0.851562;0.578125;,
 0.068156;0.036660;,
 0.191958;0.045719;,
 0.000000;0.000000;,
 0.851562;0.492188;,
 0.264667;0.022281;,
 0.388469;0.031340;,
 0.000000;0.000000;,
 0.178567;0.039062;,
 0.303906;0.029891;,
 0.360281;0.024796;,
 0.234942;0.015625;,
 -0.016406;0.024796;,
 0.108933;0.015625;,
 0.165308;0.039062;,
 0.039969;0.029891;;
 }
}
Frame frm-doccon {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.000000,0.000000,-1.000000,0.000000,
-0.048518,-0.038816,-0.502130,1.000000;;
 }
}
}
Frame frm-SS1 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
-2.306430,10.767136,0.000000,1.000000;;
 }
Mesh SS1 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SS2 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
2.304432,10.767136,0.000000,1.000000;;
 }
Mesh SS2 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SS3 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
2.304432,-0.007327,0.000000,1.000000;;
 }
Mesh SS3 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-SS4 {
  FrameTransformMatrix {
0.000010,0.000000,0.000000,0.000000,
0.000000,0.000010,0.000000,0.000000,
0.000000,0.000000,0.000010,0.000000,
-2.303656,-0.007327,0.000000,1.000000;;
 }
Mesh SS4 {
 6;
 0.000000;0.000000;-0.250000;,
 -0.250000;0.000000;0.000000;,
 0.000000;0.000000;0.250000;,
 0.250000;0.000000;0.000000;,
 0.000000;0.250000;0.000000;,
 0.000000;-0.250000;0.000000;;

 8;
 3;5,3,2;,
 3;4,2,3;,
 3;5,2,1;,
 3;4,1,2;,
 3;5,1,0;,
 3;4,0,1;,
 3;5,0,3;,
 3;4,3,0;;

 MeshMaterialList {
  1;
  8;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;0.500000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
}
 MeshNormals {
  6;
  0.000000;0.000000;-1.000000;,
  -1.000000;0.000000;0.000000;,
  0.000000;0.000000;1.000000;,
  1.000000;0.000000;0.000000;,
  0.000000;1.000000;0.000000;,
  0.000000;-1.000000;0.000000;;

  8;
  3;5,3,2;,
  3;4,2,3;,
  3;5,2,1;,
  3;4,1,2;,
  3;5,1,0;,
  3;4,0,1;,
  3;5,0,3;,
  3;4,3,0;;
 }
 MeshTextureCoords {
 6;
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;,
 0.000000;0.000000;;
 }
}
}
Frame frm-tfuselg1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-1.000000,0.000000,0.000000,
0.048518,0.061184,0.038816,1.000000;;
 }
Mesh tfuselg1 {
 24;
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;0.510300;,
 0.793800;0.810000;-0.510300;,
 0.793800;-0.810000;0.510300;,
 0.793800;-0.810000;-0.510300;,
 -0.793800;0.810000;0.510300;,
 -0.793800;0.810000;-0.510300;,
 -0.793800;-0.810000;0.510300;,
 -0.793800;-0.810000;-0.510300;;

 12;
 3;1,3,7;,
 3;1,7,5;,
 3;10,9,13;,
 3;10,13,14;,
 3;19,18,22;,
 3;19,22,23;,
 3;21,20,16;,
 3;21,16,17;,
 3;2,11,15;,
 3;2,15,6;,
 3;8,0,4;,
 3;8,4,12;;

 MeshMaterialList {
  3;
  12;
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
  2,
  2;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.500000;0.500000;0.500000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 1.000000;1.000000;1.000000;;
 }
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "ss10.bmp";
 }
 }
}
 MeshNormals {
  24;
  -0.816497;-0.408248;-0.408248;,
  -0.816497;-0.408248;-0.408248;,
  -0.333333;-0.666667;0.666667;,
  -0.333333;-0.666667;0.666667;,
  -0.333333;0.666667;-0.666667;,
  -0.333333;0.666667;-0.666667;,
  -0.816497;0.408248;0.408248;,
  -0.816497;0.408248;0.408248;,
  0.333333;-0.666667;-0.666667;,
  0.333333;-0.666667;-0.666667;,
  0.816497;-0.408248;0.408248;,
  0.816497;-0.408248;0.408248;,
  0.816497;0.408248;-0.408248;,
  0.816497;0.408248;-0.408248;,
  0.333333;0.666667;0.666667;,
  0.333333;0.666667;0.666667;,
  0.333333;0.666667;0.666667;,
  0.816497;0.408248;-0.408248;,
  0.816497;-0.408248;0.408248;,
  0.333333;-0.666667;-0.666667;,
  -0.816497;0.408248;0.408248;,
  -0.333333;0.666667;-0.666667;,
  -0.333333;-0.666667;0.666667;,
  -0.816497;-0.408248;-0.408248;;

  12;
  3;1,3,7;,
  3;1,7,5;,
  3;10,9,13;,
  3;10,13,14;,
  3;19,18,22;,
  3;19,22,23;,
  3;21,20,16;,
  3;21,16,17;,
  3;2,11,15;,
  3;2,15,6;,
  3;8,0,4;,
  3;8,4,12;;
 }
 MeshTextureCoords {
 24;
 0.765625;0.578125;,
 -0.011281;0.024684;,
 0.000000;0.000000;,
 0.112520;0.015625;,
 0.765625;0.492188;,
 0.185229;0.039062;,
 0.000000;0.000000;,
 0.309031;0.030004;,
 0.851562;0.578125;,
 0.191958;0.045719;,
 0.068156;0.036660;,
 0.000000;0.000000;,
 0.851562;0.492188;,
 0.388469;0.031340;,
 0.264667;0.022281;,
 0.000000;0.000000;,
 0.303906;0.029891;,
 0.178567;0.039062;,
 0.234942;0.015625;,
 0.360281;0.024796;,
 0.108933;0.015625;,
 -0.016406;0.024796;,
 0.039969;0.029891;,
 0.165308;0.039062;;
 }
}
}
}
}
AnimationSet {
 Animation anim-ss11 {
  {frm-ss11}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, -0.707107, 0.000000, 0.000000;;,  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, -0.707107, 0.000000, 0.000000;;;  # Original(-90.000000, 0.000000, 0.000000) Reextracted(90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, -5.826557, 0.000000;;,
  30; 3; 0.000000, -5.826557, 0.000000;;;
  }
 }
 Animation anim-fuselg {
  {frm-fuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.000000, 0.000000, -0.449990;;,
  30; 3; 0.000000, 0.000000, -0.449990;;;
  }
 }
 Animation anim-tfuselg {
  {frm-tfuselg}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.048518, 10.691946, -0.038816;;,
  30; 3; 0.048518, 10.691946, -0.038816;;;
  }
 }
 Animation anim-doccon {
  {frm-doccon}
  AnimationKey {
  0;
  2;
  1; 4; 0.000000, 1.000000, 0.000000, 0.000000;;,  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  30; 4; 0.000000, 1.000000, 0.000000, 0.000000;;;  # Original(179.999985, 0.000000, 0.000000) Reextracted(179.999985, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; -0.048518, -0.038816, 0.502130;;,
  30; 3; -0.048518, -0.038816, 0.502130;;;
  }
 }
 Animation anim-SS1 {
  {frm-SS1}
  AnimationKey {
  1;
  15;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.161837, 0.161837, 0.161837;;,
  3; 3; 0.324349, 0.324349, 0.324349;;,
  4; 3; 0.485235, 0.485235, 0.485235;;,
  5; 3; 0.323904, 0.323904, 0.323904;;,
  6; 3; 0.162573, 0.162573, 0.162573;;,
  7; 3; 0.001243, 0.001243, 0.001243;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.159427, 0.159427, 0.159427;;,
  11; 3; 0.482089, 0.482089, 0.482089;;,
  12; 3; 0.327518, 0.327518, 0.327518;;,
  13; 3; 0.165004, 0.165004, 0.165004;;,
  14; 3; 0.002491, 0.002491, 0.002491;;,
  15; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -2.306430, 10.767136, 0.000000;;,
  30; 3; -2.306430, 10.767136, 0.000000;;;
  }
 }
 Animation anim-SS2 {
  {frm-SS2}
  AnimationKey {
  1;
  15;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.161837, 0.161837, 0.161837;;,
  3; 3; 0.324349, 0.324349, 0.324349;;,
  4; 3; 0.485235, 0.485235, 0.485235;;,
  5; 3; 0.323904, 0.323904, 0.323904;;,
  6; 3; 0.162573, 0.162573, 0.162573;;,
  7; 3; 0.001243, 0.001243, 0.001243;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.159427, 0.159427, 0.159427;;,
  11; 3; 0.482089, 0.482089, 0.482089;;,
  12; 3; 0.327518, 0.327518, 0.327518;;,
  13; 3; 0.165004, 0.165004, 0.165004;;,
  14; 3; 0.002491, 0.002491, 0.002491;;,
  15; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 2.304432, 10.767136, 0.000000;;,
  30; 3; 2.304432, 10.767136, 0.000000;;;
  }
 }
 Animation anim-SS3 {
  {frm-SS3}
  AnimationKey {
  1;
  15;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.161837, 0.161837, 0.161837;;,
  3; 3; 0.324349, 0.324349, 0.324349;;,
  4; 3; 0.485235, 0.485235, 0.485235;;,
  5; 3; 0.323904, 0.323904, 0.323904;;,
  6; 3; 0.162573, 0.162573, 0.162573;;,
  7; 3; 0.001243, 0.001243, 0.001243;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.159427, 0.159427, 0.159427;;,
  11; 3; 0.482089, 0.482089, 0.482089;;,
  12; 3; 0.327518, 0.327518, 0.327518;;,
  13; 3; 0.165004, 0.165004, 0.165004;;,
  14; 3; 0.002491, 0.002491, 0.002491;;,
  15; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; 2.304432, -0.007327, 0.000000;;,
  30; 3; 2.304432, -0.007327, 0.000000;;;
  }
 }
 Animation anim-SS4 {
  {frm-SS4}
  AnimationKey {
  1;
  15;
  1; 3; 0.000010, 0.000010, 0.000010;;,
  2; 3; 0.161837, 0.161837, 0.161837;;,
  3; 3; 0.324349, 0.324349, 0.324349;;,
  4; 3; 0.485235, 0.485235, 0.485235;;,
  5; 3; 0.323904, 0.323904, 0.323904;;,
  6; 3; 0.162573, 0.162573, 0.162573;;,
  7; 3; 0.001243, 0.001243, 0.001243;;,
  8; 3; 0.000010, 0.000010, 0.000010;;,
  9; 3; 0.159427, 0.159427, 0.159427;;,
  11; 3; 0.482089, 0.482089, 0.482089;;,
  12; 3; 0.327518, 0.327518, 0.327518;;,
  13; 3; 0.165004, 0.165004, 0.165004;;,
  14; 3; 0.002491, 0.002491, 0.002491;;,
  15; 3; 0.000010, 0.000010, 0.000010;;,
  30; 3; 0.000010, 0.000010, 0.000010;;;
  }
  AnimationKey {
  2;
  2;
  1; 3; -2.303656, -0.007327, 0.000000;;,
  30; 3; -2.303656, -0.007327, 0.000000;;;
  }
 }
 Animation anim-tfuselg1 {
  {frm-tfuselg1}
  AnimationKey {
  0;
  2;
  1; 4; 0.707107, 0.707107, 0.000000, 0.000000;;,  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  30; 4; 0.707107, 0.707107, 0.000000, 0.000000;;;  # Original(90.000000, 0.000000, 0.000000) Reextracted(-90.000000, 0.000000, 0.000000)
  }
  AnimationKey {
  2;
  2;
  1; 3; 0.048518, 0.061184, -0.038816;;,
  30; 3; 0.048518, 0.061184, -0.038816;;;
  }
 }
  }