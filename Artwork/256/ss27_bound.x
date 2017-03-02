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
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Frame frm-bound07 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound07 {
 8;
 -0.744681;0.833338;-8.893654;,
 -0.744681;-0.892428;-8.893655;,
 -5.000000;3.226949;1.106349;,
 -5.000000;-3.374705;1.106344;,
 0.390070;0.833338;-8.893654;,
 0.390070;-0.892428;-8.893656;,
 5.000000;3.226949;1.106347;,
 5.000000;-3.374705;1.106343;;

 4;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;;

 MeshNormals {
  8;
  -0.622879;0.658333;-0.422634;,
  -0.621973;-0.656034;-0.427515;,
  -0.622879;0.658333;-0.422634;,
  -0.621973;-0.656034;-0.427515;,
  0.612982;0.656438;-0.439706;,
  0.612034;-0.654086;-0.444506;,
  0.612982;0.656438;-0.439706;,
  0.612034;-0.654086;-0.444506;;

  4;
  4;5,4,6,7;,
  4;4,0,2,6;,
  4;0,1,3,2;,
  4;1,5,7,3;;
 }
}
}
Frame frm-bound09 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound09 {
 8;
 -28.071859;4.277012;-1.179658;,
 -28.071859;-6.213476;-1.179666;,
 -29.475142;6.210376;3.993094;,
 -29.475142;-6.879026;3.993085;,
 -10.182154;4.277012;-1.179660;,
 -10.182154;-6.213476;-1.179669;,
 -10.182154;6.210376;3.993092;,
 -10.182154;-6.879026;3.993083;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  -0.459726;0.446196;-0.767829;,
  -0.492145;-0.505763;-0.708518;,
  -0.689461;0.669168;0.277234;,
  -0.638051;-0.655709;0.403654;,
  0.519860;0.486959;-0.701866;,
  0.554255;-0.549723;-0.624985;,
  0.659411;0.617676;0.428548;,
  0.603596;-0.598662;0.526570;;

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
Frame frm-bound08 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound08 {
 53;
 -12.833602;-5.014733;4.707236;,
 -12.833602;-5.014733;4.707236;,
 -12.833591;-5.014742;18.264372;,
 12.717547;-4.973742;4.707232;,
 12.717547;-4.973742;4.707232;,
 12.717555;-4.973751;18.264368;,
 12.717555;-4.973751;18.264368;,
 -2.011114;13.392641;4.707248;,
 -2.011114;13.392641;4.707248;,
 -2.011111;13.392632;18.264385;,
 -2.011111;13.392632;18.264385;,
 2.012227;13.392641;4.707247;,
 2.012227;13.392641;4.707247;,
 2.012230;13.392632;18.264385;,
 2.012230;13.392632;18.264385;,
 2.001989;1.139076;18.264378;,
 -2.038978;1.261864;18.264378;,
 -2.038978;1.261864;18.264378;,
 -2.038978;1.261864;18.264378;,
 -2.038985;1.261873;4.707242;,
 -2.038985;1.261873;4.707242;,
 -2.038985;1.261873;4.707242;,
 2.001984;1.139084;4.707240;,
 -10.526146;-8.538884;18.264370;,
 -10.526155;-8.538877;4.707234;,
 -0.111972;-2.396400;18.264370;,
 -0.111972;-2.396400;18.264370;,
 -0.111972;-2.396400;18.264370;,
 -0.111981;-2.396392;4.707233;,
 -0.111981;-2.396392;4.707233;,
 -0.111981;-2.396392;4.707233;,
 10.580824;-8.433897;4.707232;,
 10.580824;-8.433897;4.707232;,
 10.580832;-8.433905;18.264370;,
 10.580832;-8.433905;18.264370;,
 10.580832;-8.433905;18.264370;,
 10.580824;-8.433897;4.707232;,
 -0.111981;-2.396392;4.707233;,
 -0.111972;-2.396400;18.264370;,
 -10.526155;-8.538877;4.707234;,
 -10.526146;-8.538884;18.264370;,
 2.001984;1.139084;4.707240;,
 -2.038985;1.261873;4.707242;,
 -2.038978;1.261864;18.264378;,
 2.001989;1.139076;18.264378;,
 2.012230;13.392632;18.264385;,
 2.012227;13.392641;4.707247;,
 -2.011111;13.392632;18.264385;,
 -2.011114;13.392641;4.707248;,
 12.717555;-4.973751;18.264368;,
 12.717547;-4.973742;4.707232;,
 -12.833591;-5.014742;18.264372;,
 -12.833602;-5.014733;4.707236;;

 16;
 4;18,2,23,27;,
 4;21,1,51,17;,
 4;12,8,10,14;,
 4;30,24,0,20;,
 6;13,15,6,4,22,11;,
 4;32,3,5,34;,
 4;40,51,52,39;,
 4;16,9,7,19;,
 4;26,40,39,29;,
 4;33,25,28,31;,
 4;44,45,47,43;,
 4;38,35,49,44;,
 3;44,43,38;,
 4;41,50,36,37;,
 4;42,48,46,41;,
 3;41,37,42;;

 MeshNormals {
  53;
  -0.787272;0.186168;-0.587830;,
  -0.787272;0.186168;-0.587830;,
  -0.787271;0.186167;0.587832;,
  0.863792;-0.011001;-0.503729;,
  0.863792;-0.011001;-0.503729;,
  0.863792;-0.011002;0.503728;,
  0.863792;-0.011002;0.503728;,
  -0.576907;0.578234;-0.576908;,
  -0.576907;0.578234;-0.576908;,
  -0.576907;0.578234;0.576909;,
  -0.576907;0.578234;0.576909;,
  0.445611;0.775520;-0.447213;,
  0.445611;0.775520;-0.447213;,
  0.445611;0.775519;0.447214;,
  0.445611;0.775519;0.447214;,
  0.273205;0.159244;0.948683;,
  -0.480492;0.277162;0.832051;,
  -0.480492;0.277162;0.832051;,
  -0.480492;0.277162;0.832051;,
  -0.480493;0.277164;-0.832050;,
  -0.480493;0.277164;-0.832050;,
  -0.480493;0.277164;-0.832050;,
  0.273205;0.159246;-0.948683;,
  -0.186819;-0.801155;0.568550;,
  -0.186819;-0.801154;-0.568551;,
  0.005240;-0.554676;0.832050;,
  0.005240;-0.554676;0.832050;,
  0.005240;-0.554676;0.832050;,
  0.005239;-0.554674;-0.832051;,
  0.005239;-0.554674;-0.832051;,
  0.005239;-0.554674;-0.832051;,
  0.204713;-0.795767;-0.569954;,
  0.204713;-0.795767;-0.569954;,
  0.204713;-0.795768;0.569953;,
  0.204713;-0.795768;0.569953;,
  0.204713;-0.795768;0.569953;,
  0.204713;-0.795767;-0.569954;,
  0.005239;-0.554674;-0.832051;,
  0.005240;-0.554676;0.832050;,
  -0.186819;-0.801154;-0.568551;,
  -0.186819;-0.801155;0.568550;,
  0.273205;0.159246;-0.948683;,
  -0.480493;0.277164;-0.832050;,
  -0.480492;0.277162;0.832051;,
  0.273205;0.159244;0.948683;,
  0.445611;0.775519;0.447214;,
  0.445611;0.775520;-0.447213;,
  -0.576907;0.578234;0.576909;,
  -0.576907;0.578234;-0.576908;,
  0.863792;-0.011002;0.503728;,
  0.863792;-0.011001;-0.503729;,
  -0.787271;0.186167;0.587832;,
  -0.787272;0.186168;-0.587830;;

  16;
  4;18,2,23,27;,
  4;21,1,51,17;,
  4;12,8,10,14;,
  4;30,24,0,20;,
  6;13,15,6,4,22,11;,
  4;32,3,5,34;,
  4;40,51,52,39;,
  4;16,9,7,19;,
  4;26,40,39,29;,
  4;33,25,28,31;,
  4;44,45,47,43;,
  4;38,35,49,44;,
  3;44,43,38;,
  4;41,50,36,37;,
  4;42,48,46,41;,
  3;41,37,42;;
 }
}
}
Frame frm-bound06 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound06 {
 18;
 -2.362475;27.848682;-0.593191;,
 -1.082459;26.114441;1.794626;,
 -0.579815;22.955639;-4.323855;,
 -2.875391;9.325221;2.537090;,
 5.977825;5.293253;-0.600199;,
 4.696170;5.293253;1.794624;,
 2.903245;9.325219;2.537088;,
 -1.747101;9.324268;-7.055285;,
 -4.668323;5.293258;1.794627;,
 -5.949978;5.293260;-0.600195;,
 -1.747103;5.293255;-4.275502;,
 5.977825;9.341895;-0.593195;,
 -5.949975;9.341901;-0.593191;,
 1.110319;26.114441;1.794626;,
 1.774946;5.293253;-4.275503;,
 1.774946;9.324266;-7.055287;,
 0.607670;22.955639;-4.323856;,
 2.390335;27.848679;-0.593193;;

 19;
 6;14,4,5,8,9,10;,
 4;0,17,16,2;,
 4;7,15,14,10;,
 4;3,12,9,8;,
 4;0,1,13,17;,
 3;11,15,16;,
 4;4,14,15,11;,
 4;10,9,12,7;,
 4;5,4,11,6;,
 4;3,8,5,6;,
 4;16,15,7,2;,
 4;3,6,13,1;,
 3;2,7,12;,
 3;11,17,13;,
 3;12,3,1;,
 3;16,17,11;,
 3;12,0,2;,
 3;13,6,11;,
 3;1,0,12;;

 MeshNormals {
  18;
  -0.675689;0.718395;-0.165390;,
  -0.447670;0.327919;0.831902;,
  -0.462299;0.323670;-0.825541;,
  -0.411691;0.023668;0.911016;,
  0.812801;-0.582525;-0.004307;,
  0.386254;-0.473070;0.791842;,
  0.411692;0.023667;0.911016;,
  -0.466266;-0.120335;-0.876422;,
  -0.386253;-0.473069;0.791842;,
  -0.812802;-0.582524;-0.004307;,
  -0.311450;-0.737719;-0.598975;,
  0.994184;0.105753;0.020340;,
  -0.994184;0.105754;0.020341;,
  0.447671;0.327919;0.831901;,
  0.311448;-0.737719;-0.598975;,
  0.466265;-0.120335;-0.876423;,
  0.462299;0.323670;-0.825541;,
  0.675689;0.718394;-0.165390;;

  19;
  6;14,4,5,8,9,10;,
  4;0,17,16,2;,
  4;7,15,14,10;,
  4;3,12,9,8;,
  4;0,1,13,17;,
  3;11,15,16;,
  4;4,14,15,11;,
  4;10,9,12,7;,
  4;5,4,11,6;,
  4;3,8,5,6;,
  4;16,15,7,2;,
  4;3,6,13,1;,
  3;2,7,12;,
  3;11,17,13;,
  3;12,3,1;,
  3;16,17,11;,
  3;12,0,2;,
  3;13,6,11;,
  3;1,0,12;;
 }
}
}
Frame frm-bound05 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound05 {
 8;
 28.190916;-4.428038;-1.179673;,
 28.190916;6.499551;-1.179664;,
 29.594200;-6.677441;3.850109;,
 29.594200;6.939157;3.850118;,
 10.301212;-4.428038;-1.179670;,
 10.301212;6.499550;-1.179661;,
 10.301213;-6.677441;3.850112;,
 10.301212;6.939156;3.850121;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  0.450406;-0.426864;-0.784169;,
  0.496846;0.513862;-0.699350;,
  0.705230;-0.668370;0.236501;,
  0.630321;0.651907;0.421559;,
  -0.511879;-0.467279;-0.720854;,
  -0.561290;0.559158;-0.610160;,
  -0.676742;-0.617778;0.400462;,
  -0.594873;0.592614;0.543079;;

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
Frame frm-bound03 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound03 {
 8;
 -2.340426;2.306278;-10.556262;,
 -2.340426;-2.355689;-10.556266;,
 -2.340426;2.306276;-8.356263;,
 -2.340426;-2.355690;-8.356266;,
 1.572103;2.306278;-10.556263;,
 1.572103;-2.355689;-10.556266;,
 1.572103;2.306276;-8.356263;,
 1.572103;-2.355690;-8.356266;;

 6;
 4;5,4,6,7;,
 4;4,0,2,6;,
 4;0,1,3,2;,
 4;1,5,7,3;,
 4;7,6,2,3;,
 4;1,0,4,5;;

 MeshNormals {
  8;
  -0.577350;0.577351;-0.577350;,
  -0.577350;-0.577350;-0.577351;,
  -0.577350;0.577350;0.577351;,
  -0.577350;-0.577351;0.577350;,
  0.577350;0.577351;-0.577350;,
  0.577350;-0.577350;-0.577351;,
  0.577350;0.577350;0.577351;,
  0.577350;-0.577351;0.577350;;

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
Frame frm-bound04 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound04 {
 18;
 2.362477;-27.848682;-0.593191;,
 1.082461;-26.114441;1.794626;,
 0.579817;-22.955639;-4.323855;,
 2.875391;-9.325221;2.537090;,
 -5.977824;-5.293253;-0.600199;,
 -4.696170;-5.293253;1.794624;,
 -2.903244;-9.325219;2.537088;,
 1.747101;-9.324268;-7.055285;,
 4.668324;-5.293257;1.794627;,
 5.949979;-5.293259;-0.600195;,
 1.747103;-5.293255;-4.275502;,
 -5.977824;-9.341896;-0.593195;,
 5.949976;-9.341900;-0.593191;,
 -1.110317;-26.114441;1.794626;,
 -1.774946;-5.293253;-4.275503;,
 -1.774945;-9.324266;-7.055287;,
 -0.607668;-22.955639;-4.323856;,
 -2.390332;-27.848679;-0.593193;;

 19;
 6;14,4,5,8,9,10;,
 4;0,17,16,2;,
 4;7,15,14,10;,
 4;3,12,9,8;,
 4;0,1,13,17;,
 3;11,15,16;,
 4;4,14,15,11;,
 4;10,9,12,7;,
 4;5,4,11,6;,
 4;3,8,5,6;,
 4;16,15,7,2;,
 4;3,6,13,1;,
 3;2,7,12;,
 3;11,17,13;,
 3;12,3,1;,
 3;16,17,11;,
 3;12,0,2;,
 3;13,6,11;,
 3;1,0,12;;

 MeshNormals {
  18;
  0.675689;-0.718395;-0.165390;,
  0.447670;-0.327919;0.831902;,
  0.462299;-0.323670;-0.825541;,
  0.411691;-0.023668;0.911016;,
  -0.812801;0.582525;-0.004307;,
  -0.386254;0.473070;0.791842;,
  -0.411692;-0.023667;0.911016;,
  0.466266;0.120335;-0.876422;,
  0.386253;0.473069;0.791842;,
  0.812802;0.582524;-0.004307;,
  0.311450;0.737719;-0.598975;,
  -0.994184;-0.105753;0.020340;,
  0.994184;-0.105754;0.020341;,
  -0.447671;-0.327919;0.831901;,
  -0.311448;0.737719;-0.598975;,
  -0.466265;0.120335;-0.876423;,
  -0.462299;-0.323670;-0.825541;,
  -0.675689;-0.718394;-0.165390;;

  19;
  6;14,4,5,8,9,10;,
  4;0,17,16,2;,
  4;7,15,14,10;,
  4;3,12,9,8;,
  4;0,1,13,17;,
  3;11,15,16;,
  4;4,14,15,11;,
  4;10,9,12,7;,
  4;5,4,11,6;,
  4;3,8,5,6;,
  4;16,15,7,2;,
  4;3,6,13,1;,
  3;2,7,12;,
  3;11,17,13;,
  3;12,3,1;,
  3;16,17,11;,
  3;12,0,2;,
  3;13,6,11;,
  3;1,0,12;;
 }
}
}
Frame frm-bound01 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound01 {
 10;
 -19.239506;-1.129964;-1.155810;,
 -19.239508;1.130113;-1.155810;,
 -0.219319;0.517406;-7.108936;,
 -0.350800;1.290094;-4.420996;,
 -0.219318;-0.517592;-7.108936;,
 -0.350798;-1.289901;-4.420995;,
 -21.557074;0.453403;-3.018451;,
 -22.194656;1.130111;-1.158451;,
 -21.557074;-0.453256;-3.018451;,
 -22.194656;-1.129966;-1.158451;;

 9;
 4;7,6,8,9;,
 4;6,2,4,8;,
 4;2,3,5,4;,
 4;1,7,9,0;,
 3;0,9,8;,
 4;1,3,2,6;,
 4;0,5,3,1;,
 4;8,4,5,0;,
 3;6,7,1;;

 MeshNormals {
  10;
  0.048617;-0.809815;0.584667;,
  0.048615;0.809826;0.584652;,
  0.438692;0.557649;-0.704682;,
  0.673654;0.580389;0.457536;,
  0.438705;-0.557672;-0.704656;,
  0.673638;-0.580384;0.457566;,
  -0.402554;0.642743;-0.651791;,
  -0.688400;0.683466;0.242857;,
  -0.402556;-0.642758;-0.651775;,
  -0.688400;-0.683466;0.242857;;

  9;
  4;7,6,8,9;,
  4;6,2,4,8;,
  4;2,3,5,4;,
  4;1,7,9,0;,
  3;0,9,8;,
  4;1,3,2,6;,
  4;0,5,3,1;,
  4;8,4,5,0;,
  3;6,7,1;;
 }
}
}
Frame frm-bound02 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound02 {
 10;
 19.239506;-1.129964;-1.155812;,
 19.239508;1.130113;-1.155813;,
 0.219318;0.517406;-7.108936;,
 0.350799;1.290094;-4.420996;,
 0.219317;-0.517592;-7.108936;,
 0.350797;-1.289901;-4.420995;,
 21.557074;0.453403;-3.018455;,
 22.194656;1.130111;-1.158455;,
 21.557074;-0.453256;-3.018454;,
 22.194656;-1.129966;-1.158454;;

 9;
 4;9,8,6,7;,
 4;8,4,2,6;,
 4;4,5,3,2;,
 4;0,9,7,1;,
 3;8,9,0;,
 4;6,2,3,1;,
 4;1,3,5,0;,
 4;0,5,4,8;,
 3;1,7,6;;

 MeshNormals {
  10;
  -0.048617;-0.809815;0.584667;,
  -0.048615;0.809826;0.584652;,
  -0.438692;0.557649;-0.704682;,
  -0.673654;0.580389;0.457536;,
  -0.438705;-0.557672;-0.704656;,
  -0.673638;-0.580384;0.457566;,
  0.402554;0.642743;-0.651791;,
  0.688400;0.683466;0.242857;,
  0.402556;-0.642758;-0.651775;,
  0.688400;-0.683466;0.242857;;

  9;
  4;9,8,6,7;,
  4;8,4,2,6;,
  4;4,5,3,2;,
  4;0,9,7,1;,
  3;8,9,0;,
  4;6,2,3,1;,
  4;1,3,5,0;,
  4;0,5,4,8;,
  3;1,7,6;;
 }
}
}
Frame frm-bound10 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound10 {
 32;
 -4.936274;-1.044100;-2.124903;,
 4.936274;-1.044100;-2.124903;,
 4.936274;-1.044102;2.124902;,
 -4.936274;-1.044102;2.124902;,
 3.011372;2.833888;-3.282729;,
 3.011372;2.833886;3.282731;,
 -3.011372;2.833886;3.282731;,
 -3.011372;2.833888;-3.282729;,
 10.533250;0.101573;-2.931760;,
 -10.533250;0.101573;-2.931760;,
 10.533250;0.101571;2.718654;,
 -10.533250;0.101571;2.718654;,
 -10.424357;-1.014774;1.859178;,
 10.424357;-1.014774;1.859178;,
 -10.424357;-1.014773;-2.072287;,
 10.424357;-1.014773;-2.072287;,
 10.424357;-1.014773;-2.072287;,
 -10.424357;-1.014773;-2.072287;,
 10.424357;-1.014774;1.859178;,
 -10.424357;-1.014774;1.859178;,
 -10.533250;0.101571;2.718654;,
 10.533250;0.101571;2.718654;,
 -10.533250;0.101573;-2.931760;,
 10.533250;0.101573;-2.931760;,
 -3.011372;2.833888;-3.282729;,
 -3.011372;2.833886;3.282731;,
 3.011372;2.833886;3.282731;,
 3.011372;2.833888;-3.282729;,
 -4.936274;-1.044102;2.124902;,
 4.936274;-1.044102;2.124902;,
 4.936274;-1.044100;-2.124903;,
 -4.936274;-1.044100;-2.124903;;

 8;
 4;9,7,0,14;,
 4;12,3,6,11;,
 4;15,1,4,8;,
 4;10,5,2,13;,
 4;23,27,26,21;,
 4;18,29,30,16;,
 4;17,31,28,19;,
 4;20,25,24,22;;

 MeshNormals {
  32;
  0.028338;-0.833859;-0.551250;,
  -0.028338;-0.833859;-0.551250;,
  -0.008903;-0.830908;0.556339;,
  0.008903;-0.830908;0.556339;,
  0.260402;0.495444;-0.828689;,
  0.285032;0.496085;0.820156;,
  -0.285032;0.496085;0.820156;,
  -0.260402;0.495444;-0.828689;,
  0.260402;0.495444;-0.828689;,
  -0.260402;0.495444;-0.828689;,
  0.285032;0.496085;0.820156;,
  -0.285032;0.496085;0.820156;,
  0.008903;-0.830908;0.556339;,
  -0.008903;-0.830908;0.556339;,
  0.028338;-0.833859;-0.551250;,
  -0.028338;-0.833859;-0.551250;,
  -0.028338;-0.833859;-0.551250;,
  0.028338;-0.833859;-0.551250;,
  -0.008903;-0.830908;0.556339;,
  0.008903;-0.830908;0.556339;,
  -0.285032;0.496085;0.820156;,
  0.285032;0.496085;0.820156;,
  -0.260402;0.495444;-0.828689;,
  0.260402;0.495444;-0.828689;,
  -0.260402;0.495444;-0.828689;,
  -0.285032;0.496085;0.820156;,
  0.285032;0.496085;0.820156;,
  0.260402;0.495444;-0.828689;,
  0.008903;-0.830908;0.556339;,
  -0.008903;-0.830908;0.556339;,
  -0.028338;-0.833859;-0.551250;,
  0.028338;-0.833859;-0.551250;;

  8;
  4;9,7,0,14;,
  4;12,3,6,11;,
  4;15,1,4,8;,
  4;10,5,2,13;,
  4;23,27,26,21;,
  4;18,29,30,16;,
  4;17,31,28,19;,
  4;20,25,24,22;;
 }
}
}
Frame frm-bound12 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound12 {
 16;
 -1.761372;2.833888;-3.011371;,
 -1.761372;2.833888;-3.011371;,
 1.761372;2.833888;-3.011371;,
 1.761372;2.833888;-3.011371;,
 1.156320;0.601196;-2.312640;,
 1.156320;0.601196;-2.312640;,
 -1.156320;0.601196;-2.312640;,
 -1.156320;0.601196;-2.312640;,
 -1.156320;0.601196;-2.312640;,
 -0.426897;0.606334;-5.808284;,
 1.156320;0.601196;-2.312640;,
 0.729423;0.606334;-5.808284;,
 1.761372;2.833888;-3.011371;,
 -1.761372;2.833888;-3.011371;,
 1.031949;2.275716;-5.799325;,
 -0.729423;2.275716;-5.799325;;

 5;
 4;14,3,5,11;,
 4;11,4,7,9;,
 4;15,1,2,14;,
 4;9,6,0,15;,
 4;8,10,12,13;;

 MeshNormals {
  16;
  -0.633137;0.689861;0.351041;,
  -0.633137;0.689861;0.351041;,
  0.625106;0.673227;0.394978;,
  0.625106;0.673227;0.394978;,
  0.609980;-0.606708;0.509736;,
  0.609980;-0.606708;0.509736;,
  -0.615748;-0.632682;0.469646;,
  -0.615748;-0.632682;0.469646;,
  -0.615748;-0.632682;0.469646;,
  -0.589251;-0.793582;-0.151692;,
  0.609980;-0.606708;0.509736;,
  0.604697;-0.790364;-0.098314;,
  0.625106;0.673227;0.394978;,
  -0.633137;0.689861;0.351041;,
  0.762756;0.583185;-0.279463;,
  -0.743234;0.572535;-0.346131;;

  5;
  4;14,3,5,11;,
  4;11,4,7,9;,
  4;15,1,2,14;,
  4;9,6,0,15;,
  4;8,10,12,13;;
 }
}
}
Frame frm-bound11 {
  FrameTransformMatrix {
-1.000000,0.000000,-0.000000,0.000000,
-0.000000,0.000000,1.000000,0.000000,
0.000000,1.000000,-0.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bound11 {
 16;
 1.761372;2.833886;3.011373;,
 1.761372;2.833886;3.011373;,
 -1.761372;2.833886;3.011373;,
 -1.761372;2.833886;3.011373;,
 -1.156320;0.601195;2.312640;,
 -1.156320;0.601195;2.312640;,
 1.156320;0.601195;2.312640;,
 1.156320;0.601195;2.312640;,
 1.156320;0.601195;2.312640;,
 0.426897;0.606330;5.808284;,
 -1.156320;0.601195;2.312640;,
 -0.729423;0.606330;5.808284;,
 -1.761372;2.833886;3.011373;,
 1.761372;2.833886;3.011373;,
 -1.031949;2.275712;5.799327;,
 0.729423;2.275712;5.799327;;

 5;
 4;15,1,3,14;,
 4;11,5,7,9;,
 4;14,2,4,11;,
 4;9,6,0,15;,
 4;10,12,13,8;;

 MeshNormals {
  16;
  0.633137;0.689861;-0.351041;,
  0.633137;0.689861;-0.351041;,
  -0.625106;0.673227;-0.394977;,
  -0.625106;0.673227;-0.394977;,
  -0.609979;-0.606708;-0.509736;,
  -0.609979;-0.606708;-0.509736;,
  0.615748;-0.632682;-0.469647;,
  0.615748;-0.632682;-0.469647;,
  0.615748;-0.632682;-0.469647;,
  0.589251;-0.793582;0.151692;,
  -0.609979;-0.606708;-0.509736;,
  -0.604697;-0.790364;0.098313;,
  -0.625106;0.673227;-0.394977;,
  0.633137;0.689861;-0.351041;,
  -0.762756;0.583184;0.279463;,
  0.743234;0.572535;0.346131;;

  5;
  4;15,1,3,14;,
  4;11,5,7,9;,
  4;14,2,4,11;,
  4;9,6,0,15;,
  4;10,12,13,8;;
 }
}
}
}
AnimationSet {
 Animation anim-bound10 {
  {frm-bound10}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound12 {
  {frm-bound12}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
 Animation anim-bound11 {
  {frm-bound11}
  AnimationKey {
  0;
  2;
  1; 4; -0.000000, 0.000000, -0.707107, 0.707107;;,
  100; 4; -0.000000, 0.000000, -0.707107, 0.707107;;;
  }
 }
}
