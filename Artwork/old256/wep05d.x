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

Frame frm-wep05d {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bwepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,-0.035524,0.000000,1.000000;;
 }
Mesh bwepbar1 {
 18;
 -0.015274;-0.015274;0.000004;,
 -0.014663;-0.014778;-0.182433;,
 -0.014663;-0.014778;-0.182433;,
 -0.015274;0.015274;0.000004;,
 -0.014663;0.014778;-0.182433;,
 0.015274;-0.015274;0.000004;,
 0.014663;-0.014778;-0.182433;,
 0.015274;0.015274;0.000004;,
 0.014663;0.014778;-0.182433;,
 0.014663;0.014778;-0.182433;,
 0.014663;0.014778;-0.182433;,
 0.015274;0.015274;0.000004;,
 0.014663;-0.014778;-0.182433;,
 0.015274;-0.015274;0.000004;,
 -0.014663;0.014778;-0.182433;,
 -0.015274;0.015274;0.000004;,
 -0.014663;-0.014778;-0.182433;,
 -0.015274;-0.015274;0.000004;;

 8;
 3;4,2,0;,
 3;3,4,0;,
 3;17,1,5;,
 3;16,6,5;,
 3;7,13,12;,
 3;9,7,12;,
 3;8,14,15;,
 3;11,10,15;;

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
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep05d.bmp";
 }
 }
}
 MeshNormals {
  18;
  -0.894419;-0.447210;-0.004212;,
  -0.447209;-0.894421;-0.003931;,
  -0.447209;-0.894421;-0.003931;,
  -0.447209;0.894421;-0.003931;,
  -0.894419;0.447210;-0.004212;,
  0.447209;-0.894421;-0.003931;,
  0.894419;-0.447210;-0.004212;,
  0.894419;0.447210;-0.004212;,
  0.447209;0.894421;-0.003931;,
  0.447209;0.894421;-0.003931;,
  0.447209;0.894421;-0.003931;,
  0.894419;0.447210;-0.004212;,
  0.894419;-0.447210;-0.004212;,
  0.447209;-0.894421;-0.003931;,
  -0.894419;0.447210;-0.004212;,
  -0.447209;0.894421;-0.003931;,
  -0.447209;-0.894421;-0.003931;,
  -0.894419;-0.447210;-0.004212;;

  8;
  3;4,2,0;,
  3;3,4,0;,
  3;17,1,5;,
  3;16,6,5;,
  3;7,13,12;,
  3;9,7,12;,
  3;8,14,15;,
  3;11,10,15;;
 }
 MeshTextureCoords {
 18;
 0.012600;0.582031;,
 0.378060;0.476262;,
 0.375977;0.581731;,
 0.013604;0.484049;,
 0.376948;0.480469;,
 0.011692;0.574219;,
 0.377995;0.575871;,
 0.010352;0.478581;,
 0.378641;0.479688;,
 0.378576;0.481641;,
 0.378185;0.479688;,
 0.011719;0.482096;,
 0.377084;0.585637;,
 0.011496;0.582031;,
 0.377924;0.576172;,
 0.011651;0.573893;,
 0.377930;0.476262;,
 0.011624;0.472656;;
 }
}
Frame frm-bwepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.219062,1.000000;;
 }
Mesh bwepbar2 {
 26;
 -0.023800;-0.023800;0.036750;,
 -0.023800;-0.023800;0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;0.023800;-0.036750;,
 -0.023800;0.023800;-0.036750;,
 0.023800;-0.023800;0.036750;,
 0.023800;-0.023800;0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;-0.023800;0.036750;,
 -0.023800;0.023800;-0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;0.036750;;

 12;
 3;8,4,1;,
 3;6,8,1;,
 3;17,12,3;,
 3;7,17,3;,
 3;14,10,11;,
 3;16,14,11;,
 3;5,0,9;,
 3;13,5,9;,
 3;2,20,21;,
 3;25,24,21;,
 3;15,22,23;,
 3;19,18,23;;

 MeshMaterialList {
  1;
  12;
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
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep05d.bmp";
 }
 }
}
 MeshNormals {
  26;
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666667;-0.666667;,
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
  0.333333;0.666667;-0.666667;,
  0.816497;0.408248;0.408248;,
  0.816497;-0.408248;-0.408248;,
  0.333333;-0.666667;0.666667;,
  -0.816497;0.408248;-0.408248;,
  -0.333333;0.666667;0.666667;,
  -0.333333;-0.666667;-0.666667;,
  -0.816497;-0.408248;0.408248;;

  12;
  3;8,4,1;,
  3;6,8,1;,
  3;17,12,3;,
  3;7,17,3;,
  3;14,10,11;,
  3;16,14,11;,
  3;5,0,9;,
  3;13,5,9;,
  3;2,20,21;,
  3;25,24,21;,
  3;15,22,23;,
  3;19,18,23;;
 }
 MeshTextureCoords {
 26;
 0.761454;0.585938;,
 0.997782;0.692187;,
 0.848772;0.689732;,
 0.761719;0.583767;,
 0.848828;0.691406;,
 0.762431;0.455078;,
 0.999735;0.496094;,
 0.762153;0.453993;,
 0.850000;0.496875;,
 0.824219;0.585938;,
 0.998047;0.689844;,
 0.849093;0.688281;,
 0.823832;0.583767;,
 0.824219;0.455078;,
 0.998828;0.499219;,
 0.847921;0.490625;,
 0.847921;0.497656;,
 0.823398;0.454861;,
 0.848702;0.496875;,
 0.996094;0.507812;,
 0.849037;0.501116;,
 0.999442;0.501116;,
 0.849219;0.693750;,
 0.999735;0.695312;,
 0.849330;0.690848;,
 0.998619;0.693080;;
 }
}
Frame frm-wepemt {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.035385,0.036862,1.000000;;
 }
}
}
}
Frame frm-twepbar1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.035435,0.000000,1.000000;;
 }
Mesh twepbar1 {
 17;
 -0.015274;-0.015274;0.000004;,
 -0.014663;-0.014778;-0.182433;,
 -0.014663;-0.014778;-0.182433;,
 -0.015274;0.015274;0.000004;,
 -0.014663;0.014778;-0.182433;,
 0.015274;-0.015274;0.000004;,
 0.014663;-0.014778;-0.182433;,
 0.015274;0.015274;0.000004;,
 0.014663;0.014778;-0.182433;,
 0.014663;0.014778;-0.182433;,
 0.015274;0.015274;0.000004;,
 0.014663;-0.014778;-0.182433;,
 0.015274;-0.015274;0.000004;,
 -0.014663;0.014778;-0.182433;,
 -0.015274;0.015274;0.000004;,
 -0.014663;-0.014778;-0.182433;,
 -0.015274;-0.015274;0.000004;;

 8;
 3;4,2,0;,
 3;3,4,0;,
 3;16,1,5;,
 3;15,6,5;,
 3;7,12,11;,
 3;8,7,11;,
 3;8,13,14;,
 3;10,9,14;;

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
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "wep05d.bmp";
 }
 }
}
 MeshNormals {
  17;
  -0.894419;-0.447210;-0.004212;,
  -0.447209;-0.894421;-0.003931;,
  -0.447209;-0.894421;-0.003931;,
  -0.447209;0.894421;-0.003931;,
  -0.894419;0.447210;-0.004212;,
  0.447209;-0.894421;-0.003931;,
  0.894419;-0.447210;-0.004212;,
  0.894419;0.447210;-0.004212;,
  0.447209;0.894421;-0.003931;,
  0.447209;0.894421;-0.003931;,
  0.894419;0.447210;-0.004212;,
  0.894419;-0.447210;-0.004212;,
  0.447209;-0.894421;-0.003931;,
  -0.894419;0.447210;-0.004212;,
  -0.447209;0.894421;-0.003931;,
  -0.447209;-0.894421;-0.003931;,
  -0.894419;-0.447210;-0.004212;;

  8;
  3;4,2,0;,
  3;3,4,0;,
  3;16,1,5;,
  3;15,6,5;,
  3;7,12,11;,
  3;8,7,11;,
  3;8,13,14;,
  3;10,9,14;;
 }
 MeshTextureCoords {
 17;
 0.009499;0.589801;,
 0.375781;0.591220;,
 0.378906;0.591220;,
 0.010476;0.478516;,
 0.377930;0.479167;,
 0.011719;0.481250;,
 0.376819;0.482199;,
 0.008789;0.472699;,
 0.376233;0.475224;,
 0.376124;0.475658;,
 0.010417;0.474652;,
 0.377209;0.589230;,
 0.009766;0.591797;,
 0.375868;0.587457;,
 0.011452;0.585938;,
 0.376563;0.584970;,
 0.012233;0.590192;;
 }
}
Frame frm-twepbar2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.219062,1.000000;;
 }
Mesh twepbar2 {
 25;
 -0.023800;-0.023800;0.036750;,
 -0.023800;-0.023800;0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;0.023800;-0.036750;,
 -0.023800;0.023800;-0.036750;,
 0.023800;-0.023800;0.036750;,
 0.023800;-0.023800;0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;-0.036750;,
 0.023800;0.023800;0.036750;,
 0.023800;-0.023800;-0.036750;,
 0.023800;-0.023800;0.036750;,
 -0.023800;0.023800;-0.036750;,
 -0.023800;0.023800;0.036750;,
 -0.023800;-0.023800;-0.036750;,
 -0.023800;-0.023800;0.036750;;

 12;
 3;8,4,1;,
 3;6,8,1;,
 3;16,12,3;,
 3;7,16,3;,
 3;14,10,11;,
 3;15,14,11;,
 3;5,0,9;,
 3;13,5,9;,
 3;2,19,20;,
 3;24,23,20;,
 3;17,21,22;,
 3;18,17,22;;

 MeshMaterialList {
  1;
  12;
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
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.300000;0.300000;0.300000;;
 TextureFilename {
  "wep05d.bmp";
 }
 }
}
 MeshNormals {
  25;
  -0.816497;-0.408248;0.408248;,
  -0.816497;-0.408248;0.408248;,
  -0.333333;-0.666667;-0.666667;,
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
  3;8,4,1;,
  3;6,8,1;,
  3;16,12,3;,
  3;7,16,3;,
  3;14,10,11;,
  3;15,14,11;,
  3;5,0,9;,
  3;13,5,9;,
  3;2,19,20;,
  3;24,23,20;,
  3;17,21,22;,
  3;18,17,22;;
 }
 MeshTextureCoords {
 25;
 0.763509;0.582031;,
 0.998101;0.691406;,
 0.849318;0.494496;,
 0.763174;0.582821;,
 0.851553;0.692196;,
 0.763455;0.455854;,
 0.998047;0.505116;,
 0.763608;0.456101;,
 0.851499;0.502000;,
 0.822438;0.581767;,
 0.997134;0.689406;,
 0.849609;0.684337;,
 0.822266;0.582774;,
 0.822384;0.456024;,
 0.999033;0.493351;,
 0.851508;0.500000;,
 0.822699;0.457031;,
 0.852485;0.498047;,
 0.998056;0.501163;,
 0.849479;0.693712;,
 0.999869;0.693313;,
 0.851499;0.689500;,
 0.999023;0.692616;,
 0.848970;0.494149;,
 0.999360;0.493750;;
 }
}
}
}
}
AnimationSet {
 Animation anim-bwepbar1 {
  {frm-bwepbar1}
  AnimationKey {
  2;
  11;
  0; 3; 0.000000, -0.035524, 0.000000;;,
  4; 3; 0.000000, -0.035524, 0.000000;;,
  5; 3; 0.000000, -0.035524, 0.102015;;,
  6; 3; 0.000000, -0.035524, 0.112470;;,
  7; 3; 0.000000, -0.035524, 0.061610;;,
  8; 3; 0.000000, -0.035524, 0.010751;;,
  9; 3; 0.000000, -0.035524, 0.000000;;,
  11; 3; 0.000000, -0.035524, 0.000000;;,
  12; 3; 0.000000, -0.035524, 0.134055;;,
  13; 3; 0.000000, -0.035524, 0.101790;;,
  15; 3; 0.000000, -0.035524, 0.000071;;;
  }
 }
 Animation anim-bwepbar2 {
  {frm-bwepbar2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000000, -0.219062;;,
  15; 3; 0.000000, 0.000000, -0.219062;;;
  }
 }
 Animation anim-wepemt {
  {frm-wepemt}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.035385, -0.036862;;,
  15; 3; 0.000000, 0.035385, -0.036862;;;
  }
 }
 Animation anim-twepbar1 {
  {frm-twepbar1}
  AnimationKey {
  2;
  12;
  0; 3; 0.000000, 0.035435, 0.000000;;,
  1; 3; 0.000000, 0.035435, 0.000000;;,
  2; 3; 0.000000, 0.035435, 0.146472;;,
  4; 3; 0.000000, 0.035435, 0.044754;;,
  5; 3; 0.000000, 0.035435, 0.000000;;,
  7; 3; 0.000000, 0.035435, 0.000000;;,
  8; 3; 0.000000, 0.035435, 0.032050;;,
  9; 3; 0.000000, 0.035435, 0.135791;;,
  10; 3; 0.000000, 0.035435, 0.084932;;,
  11; 3; 0.000000, 0.035435, 0.034073;;,
  12; 3; 0.000000, 0.035435, 0.000000;;,
  15; 3; 0.000000, 0.035435, 0.000000;;;
  }
 }
 Animation anim-twepbar2 {
  {frm-twepbar2}
  AnimationKey {
  2;
  2;
  0; 3; 0.000000, 0.000000, -0.219062;;,
  15; 3; 0.000000, 0.000000, -0.219062;;;
  }
 }
  }

