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

Frame frm-bounding_model {
  FrameTransformMatrix {
0.707100,-0.707114,0.000000,0.000000,
0.707114,0.707100,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bound5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound5 {
 18;
 6.789079;-6.789079;-27.730900;,
 -6.789079;-6.789079;-27.730900;,
 6.789079;6.789079;-27.730900;,
 -6.789079;6.789079;-27.730900;,
 0.000000;0.000000;-68.489662;,
 -5.110075;-5.110075;29.907578;,
 5.110075;-5.110075;29.907578;,
 -5.110075;5.110075;29.907578;,
 5.110075;5.110075;29.907578;,
 0.000000;0.000000;92.422485;,
 22.332499;22.332499;-22.730410;,
 10.288556;10.288556;60.690594;,
 22.332499;-22.332499;-22.730410;,
 10.288556;-10.288556;60.690594;,
 -22.332499;22.332499;-22.730410;,
 -10.288556;10.288556;60.690594;,
 -22.332499;-22.332499;-22.730410;,
 -10.288556;-10.288556;60.690594;;

 20;
 4;7,14,16,5;,
 3;2,4,3;,
 4;8,11,13,6;,
 3;9,11,15;,
 4;5,16,12,6;,
 4;8,10,14,7;,
 3;9,17,13;,
 3;13,11,9;,
 3;15,17,9;,
 4;5,17,15,7;,
 4;7,15,11,8;,
 4;6,12,10,8;,
 4;6,13,17,5;,
 3;1,4,0;,
 4;2,10,12,0;,
 4;1,16,14,3;,
 3;0,4,2;,
 4;0,12,16,1;,
 3;3,4,1;,
 4;3,14,10,2;;

 MeshNormals {
  18;
  0.444020;-0.444020;-0.778263;,
  -0.444020;-0.444020;-0.778263;,
  0.444020;0.444020;-0.778263;,
  -0.444020;0.444020;-0.778263;,
  0.000000;0.000000;-1.000000;,
  -0.703172;-0.703172;0.105351;,
  0.703172;-0.703172;0.105351;,
  -0.703172;0.703172;0.105351;,
  0.703172;0.703172;0.105351;,
  0.000000;0.000000;1.000000;,
  0.567593;0.567593;-0.596387;,
  0.703310;0.703310;0.103484;,
  0.567593;-0.567593;-0.596387;,
  0.703310;-0.703310;0.103484;,
  -0.567593;0.567593;-0.596387;,
  -0.703310;0.703310;0.103484;,
  -0.567593;-0.567593;-0.596387;,
  -0.703310;-0.703310;0.103484;;

  20;
  4;7,14,16,5;,
  3;2,4,3;,
  4;8,11,13,6;,
  3;9,11,15;,
  4;5,16,12,6;,
  4;8,10,14,7;,
  3;9,17,13;,
  3;13,11,9;,
  3;15,17,9;,
  4;5,17,15,7;,
  4;7,15,11,8;,
  4;6,12,10,8;,
  4;6,13,17,5;,
  3;1,4,0;,
  4;2,10,12,0;,
  4;1,16,14,3;,
  3;0,4,2;,
  4;0,12,16,1;,
  3;3,4,1;,
  4;3,14,10,2;;
 }
}
}
Frame frm-bound9 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound9 {
 4;
 1.935215;-49.524761;-18.330845;,
 -0.000001;-66.215408;-15.939865;,
 -1.724865;-49.524754;-19.225111;,
 -0.095591;-39.960835;-38.556900;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshNormals {
  4;
  0.321946;0.568928;0.756751;,
  -0.340149;-0.146799;0.928843;,
  -0.610479;0.474398;0.634241;,
  -0.168353;0.967066;0.190893;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
}
}
Frame frm-bound8 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound8 {
 4;
 49.524761;1.935209;-18.330845;,
 66.215408;-0.000010;-15.939865;,
 49.524754;-1.724871;-19.225111;,
 39.960835;-0.095596;-38.556900;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshNormals {
  4;
  -0.568928;0.321946;0.756751;,
  0.146799;-0.340149;0.928843;,
  -0.474398;-0.610479;0.634241;,
  -0.967066;-0.168353;0.190893;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
}
}
Frame frm-bound7 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound7 {
 4;
 -49.524761;-1.935213;-18.330845;,
 -66.215408;0.000004;-15.939865;,
 -49.524754;1.724867;-19.225111;,
 -39.960835;0.095593;-38.556900;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshNormals {
  4;
  0.568928;-0.321946;0.756751;,
  -0.146799;0.340149;0.928843;,
  0.474398;0.610479;0.634241;,
  0.967066;0.168353;0.190893;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
}
}
Frame frm-bound6 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound6 {
 4;
 -1.935211;49.524761;-18.330845;,
 0.000007;66.215408;-15.939865;,
 1.724869;49.524754;-19.225111;,
 0.095594;39.960835;-38.556900;;

 4;
 3;2,1,0;,
 3;3,0,1;,
 3;0,3,2;,
 3;1,2,3;;

 MeshNormals {
  4;
  -0.321946;-0.568928;0.756751;,
  0.340149;0.146799;0.928843;,
  0.610479;-0.474398;0.634241;,
  0.168353;-0.967066;0.190893;;

  4;
  3;2,1,0;,
  3;3,0,1;,
  3;0,3,2;,
  3;1,2,3;;
 }
}
}
Frame frm-bound4 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-27.477962,0.205115,-18.214211,1.000000;;
 }
Mesh bound4 {
 16;
 -38.733597;-5.200740;18.275257;,
 -37.859989;-5.200738;2.271585;,
 -37.859989;5.152368;2.271587;,
 -38.733597;5.152366;18.275259;,
 -45.441959;-14.220266;14.963791;,
 -44.859554;-14.220263;5.297950;,
 -44.859554;14.008099;5.297955;,
 -45.441956;14.008096;14.963796;,
 -62.179089;13.331904;4.890568;,
 -62.179089;13.331903;14.985549;,
 5.000000;8.589999;-4.999997;,
 10.930635;8.589996;11.988841;,
 -62.179089;-13.663936;4.890564;,
 -62.179092;-13.663938;14.985545;,
 4.999999;-8.589999;-5.000000;,
 10.930634;-8.590002;11.988838;;

 14;
 4;1,14,15,0;,
 4;2,10,14,1;,
 4;3,11,10,2;,
 4;0,15,11,3;,
 4;15,14,10,11;,
 4;9,8,12,13;,
 4;4,13,12,5;,
 4;6,8,9,7;,
 4;7,9,13,4;,
 4;5,12,8,6;,
 4;0,4,5,1;,
 4;3,7,4,0;,
 4;2,6,7,3;,
 4;1,5,6,2;;

 MeshNormals {
  16;
  0.177098;-0.656259;0.733458;,
  0.097458;-0.697582;-0.709846;,
  0.093939;0.698547;-0.709371;,
  0.173808;0.657512;0.733123;,
  0.148686;-0.663145;0.733574;,
  0.178010;-0.675398;-0.715647;,
  0.172482;0.677298;-0.715204;,
  0.143313;0.665151;0.732827;,
  -0.583496;0.573770;-0.574735;,
  -0.592213;0.569883;0.569665;,
  0.394240;0.558193;-0.730065;,
  0.638037;0.638092;0.430984;,
  -0.580818;-0.575258;-0.575959;,
  -0.589514;-0.571294;0.571048;,
  0.394685;-0.558062;-0.729925;,
  0.638430;-0.637883;0.430712;;

  14;
  4;1,14,15,0;,
  4;2,10,14,1;,
  4;3,11,10,2;,
  4;0,15,11,3;,
  4;15,14,10,11;,
  4;9,8,12,13;,
  4;4,13,12,5;,
  4;6,8,9,7;,
  4;7,9,13,4;,
  4;5,12,8,6;,
  4;0,4,5,1;,
  4;3,7,4,0;,
  4;2,6,7,3;,
  4;1,5,6,2;;
 }
}
}
Frame frm-bound3 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
27.477962,0.205113,-18.214211,1.000000;;
 }
Mesh bound3 {
 16;
 38.733597;-5.200742;18.275257;,
 37.859989;-5.200739;2.271585;,
 37.859989;5.152367;2.271587;,
 38.733597;5.152364;18.275259;,
 45.441959;-14.220267;14.963791;,
 44.859554;-14.220265;5.297950;,
 44.859554;14.008097;5.297955;,
 45.441956;14.008095;14.963796;,
 62.179089;13.331903;4.890568;,
 62.179089;13.331901;14.985549;,
 -5.000000;8.590000;-4.999997;,
 -10.930634;8.589996;11.988841;,
 62.179089;-13.663938;4.890564;,
 62.179092;-13.663939;14.985545;,
 -5.000000;-8.589998;-5.000000;,
 -10.930634;-8.590002;11.988838;;

 14;
 4;0,15,14,1;,
 4;1,14,10,2;,
 4;2,10,11,3;,
 4;3,11,15,0;,
 4;11,10,14,15;,
 4;13,12,8,9;,
 4;5,12,13,4;,
 4;7,9,8,6;,
 4;4,13,9,7;,
 4;6,8,12,5;,
 4;1,5,4,0;,
 4;0,4,7,3;,
 4;3,7,6,2;,
 4;2,6,5,1;;

 MeshNormals {
  16;
  -0.177098;-0.656259;0.733458;,
  -0.097458;-0.697582;-0.709846;,
  -0.093939;0.698547;-0.709371;,
  -0.173808;0.657512;0.733123;,
  -0.148686;-0.663145;0.733574;,
  -0.178010;-0.675398;-0.715647;,
  -0.172482;0.677298;-0.715204;,
  -0.143313;0.665151;0.732827;,
  0.583496;0.573770;-0.574735;,
  0.592213;0.569882;0.569665;,
  -0.394240;0.558193;-0.730065;,
  -0.638037;0.638092;0.430984;,
  0.580818;-0.575258;-0.575959;,
  0.589514;-0.571294;0.571048;,
  -0.394685;-0.558062;-0.729925;,
  -0.638430;-0.637883;0.430712;;

  14;
  4;0,15,14,1;,
  4;1,14,10,2;,
  4;2,10,11,3;,
  4;3,11,15,0;,
  4;11,10,14,15;,
  4;13,12,8,9;,
  4;5,12,13,4;,
  4;7,9,8,6;,
  4;4,13,9,7;,
  4;6,8,12,5;,
  4;1,5,4,0;,
  4;0,4,7,3;,
  4;3,7,6,2;,
  4;2,6,5,1;;
 }
}
}
Frame frm-bound2 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
-0.000001,-23.811056,-18.214211,1.000000;;
 }
Mesh bound2 {
 8;
 6.620001;-42.273788;1.988830;,
 6.620001;-42.273792;17.424591;,
 8.589999;5.000000;-4.999999;,
 8.589999;7.820157;11.988839;,
 -6.620001;-42.273788;1.988830;,
 -6.620001;-42.273792;17.424591;,
 -8.589999;5.000000;-4.999999;,
 -8.589999;7.820157;11.988839;;

 6;
 4;7,6,4,5;,
 4;6,2,0,4;,
 4;2,3,1,0;,
 4;3,7,5,1;,
 4;3,2,6,7;,
 4;5,4,0,1;;

 MeshNormals {
  8;
  0.543708;-0.645487;-0.536403;,
  0.590577;-0.550927;0.589660;,
  0.580747;0.465126;-0.668125;,
  0.596549;0.629502;0.497853;,
  -0.543708;-0.645487;-0.536403;,
  -0.590577;-0.550927;0.589660;,
  -0.580747;0.465126;-0.668125;,
  -0.596549;0.629502;0.497853;;

  6;
  4;7,6,4,5;,
  4;6,2,0,4;,
  4;2,3,1,0;,
  4;3,7,5,1;,
  4;3,2,6,7;,
  4;5,4,0,1;;
 }
}
}
Frame frm-bound1 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000001,23.811056,-18.214211,1.000000;;
 }
Mesh bound1 {
 8;
 6.620001;42.273788;1.988837;,
 6.620001;42.273788;17.424597;,
 8.589999;-5.000000;-5.000000;,
 8.589999;-7.421663;11.988838;,
 -6.620001;42.273788;1.988837;,
 -6.620001;42.273788;17.424597;,
 -8.589999;-5.000000;-5.000000;,
 -8.589999;-7.421663;11.988838;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.543587;0.645470;-0.536546;,
  0.590812;0.550778;0.589563;,
  0.585233;-0.470636;-0.660307;,
  0.591713;-0.626845;0.506893;,
  -0.543587;0.645470;-0.536546;,
  -0.590812;0.550778;0.589563;,
  -0.585233;-0.470636;-0.660307;,
  -0.591713;-0.626845;0.506893;;

  6;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;,
  4;7,6,2,3;,
  4;1,0,4,5;;
 }
}
}
}
AnimationSet {
 Animation anim-bounding_model {
  {frm-bounding_model}
  AnimationKey {
  0;
  2;
  1; 4; 0.923878, 0.000000, 0.000000, 0.382688;;,
  25; 4; 0.923878, 0.000000, 0.000000, 0.382688;;;
  }
 }
 Animation anim-bound4 {
  {frm-bound4}
  AnimationKey {
  2;
  2;
  1; 3; -27.477962, 0.205115, -18.214211;;,
  25; 3; -27.477962, 0.205115, -18.214211;;;
  }
 }
 Animation anim-bound3 {
  {frm-bound3}
  AnimationKey {
  2;
  2;
  1; 3; 27.477962, 0.205113, -18.214211;;,
  25; 3; 27.477962, 0.205113, -18.214211;;;
  }
 }
 Animation anim-bound2 {
  {frm-bound2}
  AnimationKey {
  2;
  2;
  1; 3; -0.000001, -23.811056, -18.214211;;,
  25; 3; -0.000001, -23.811056, -18.214211;;;
  }
 }
 Animation anim-bound1 {
  {frm-bound1}
  AnimationKey {
  2;
  2;
  1; 3; 0.000001, 23.811056, -18.214211;;,
  25; 3; 0.000001, 23.811056, -18.214211;;;
  }
 }
}