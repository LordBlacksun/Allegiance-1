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

Frame frm-bgnd04 {
  FrameTransformMatrix {
0.556211,0.000000,0.000000,0.000000,
0.000000,0.469033,0.000000,0.000000,
0.000000,0.000000,1.298000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh bgnd04 {
 48;
 -2.313555;12.715086;-3.237253;,
 3.384348;13.321223;-1.337731;,
 7.607288;-7.514304;8.193488;,
 0.004588;-6.625998;8.851545;,
 0.004588;-6.625998;8.851545;,
 -8.551818;-7.146335;8.938087;,
 6.864596;22.856647;-4.091680;,
 21.047819;17.927471;-11.412606;,
 14.185014;1.434555;-12.648997;,
 20.739546;-15.741417;-10.545857;,
 6.159139;-22.041389;-3.255999;,
 -4.501271;20.540295;-6.769727;,
 -0.575883;19.282349;-13.370193;,
 1.824058;-1.032247;-17.235643;,
 -0.322871;-16.907124;-14.204475;,
 -0.247124;-28.912018;-9.482643;,
 -10.820776;14.324865;-4.640172;,
 -16.491444;10.230256;-11.435867;,
 -14.702396;-0.926453;-12.452295;,
 -15.262605;-10.023510;-12.184501;,
 -7.542948;-20.880716;-10.288029;,
 -9.489546;12.358007;-3.751754;,
 -19.344940;5.761822;1.080389;,
 -15.323328;-1.107664;-3.033522;,
 -11.697685;-6.962460;-2.722674;,
 -9.522299;-16.265171;-3.888355;,
 -10.747753;7.088685;2.165975;,
 -5.440933;6.830585;7.594336;,
 -8.311316;-0.702754;7.769175;,
 -8.551818;-7.146335;8.938087;,
 -5.513026;-9.170061;4.329647;,
 -1.415128;16.034168;4.241546;,
 -1.056373;5.190947;8.825335;,
 -1.267156;-1.087519;9.067092;,
 0.004588;-6.625998;8.851545;,
 1.292225;-11.428188;4.574345;,
 6.141586;13.285098;1.725057;,
 6.801387;3.659349;8.222795;,
 6.796129;-0.207483;8.798010;,
 7.607288;-7.514304;8.193488;,
 2.942621;-10.524938;2.453627;,
 3.384348;13.321223;-1.337731;,
 16.582331;10.493659;-2.878098;,
 17.340956;0.232517;-6.024102;,
 14.225664;-7.129025;1.240639;,
 3.546596;-12.331440;0.822305;,
 -2.313555;12.715086;-3.237253;,
 2.163073;-17.073509;1.230136;;

 80;
 3;47,45,40;,
 3;2,40,45;,
 3;44,2,45;,
 3;38,2,44;,
 3;43,38,44;,
 3;37,38,43;,
 3;42,37,43;,
 3;36,37,42;,
 3;1,36,42;,
 3;0,36,41;,
 3;47,40,35;,
 3;4,35,40;,
 3;39,3,40;,
 3;33,34,2;,
 3;38,33,2;,
 3;32,33,38;,
 3;37,32,38;,
 3;31,32,37;,
 3;36,31,37;,
 3;46,31,36;,
 3;47,35,30;,
 3;5,30,35;,
 3;34,5,35;,
 3;28,29,3;,
 3;33,28,3;,
 3;27,28,33;,
 3;32,27,33;,
 3;31,26,27;,
 3;32,31,27;,
 3;46,26,31;,
 3;47,30,25;,
 3;24,25,30;,
 3;5,24,30;,
 3;23,24,5;,
 3;28,23,5;,
 3;22,23,28;,
 3;27,22,28;,
 3;26,21,22;,
 3;27,26,22;,
 3;46,21,26;,
 3;47,25,20;,
 3;19,20,25;,
 3;24,19,25;,
 3;18,19,24;,
 3;23,18,24;,
 3;17,18,23;,
 3;22,17,23;,
 3;16,17,22;,
 3;21,16,22;,
 3;46,16,21;,
 3;47,20,15;,
 3;14,15,20;,
 3;19,14,20;,
 3;13,14,19;,
 3;18,13,19;,
 3;12,13,18;,
 3;17,12,18;,
 3;11,12,17;,
 3;16,11,17;,
 3;46,11,16;,
 3;47,15,10;,
 3;9,10,15;,
 3;14,9,15;,
 3;8,9,14;,
 3;13,8,14;,
 3;7,8,13;,
 3;12,7,13;,
 3;6,7,12;,
 3;11,6,12;,
 3;46,6,11;,
 3;47,10,45;,
 3;44,45,10;,
 3;9,44,10;,
 3;43,44,9;,
 3;8,43,9;,
 3;42,43,8;,
 3;7,42,8;,
 3;1,42,7;,
 3;6,1,7;,
 3;46,1,6;;

 MeshMaterialList {
  1;
  80;
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
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.400000;0.400000;0.400000;;
 TextureFilename {
  "bgnd04.bmp";
 }
 }
}
 MeshNormals {
  48;
  -0.233750;0.765776;0.599122;,
  0.104324;0.778463;0.618961;,
  0.173609;-0.504687;0.845666;,
  0.137979;-0.333324;0.932661;,
  0.137979;-0.333324;0.932661;,
  -0.523101;-0.589655;0.615363;,
  -0.051573;0.778991;0.624911;,
  0.786525;0.540774;-0.298231;,
  0.737186;-0.050353;-0.673811;,
  0.919111;-0.372350;-0.128805;,
  0.405136;-0.531595;0.743823;,
  -0.439430;0.843021;0.310187;,
  -0.166944;0.592338;-0.788204;,
  0.014816;-0.022097;-0.999646;,
  -0.008139;-0.261671;-0.965123;,
  -0.069620;-0.996315;0.050101;,
  -0.327109;0.635452;0.699428;,
  -0.824705;0.443072;-0.351495;,
  -0.799076;-0.097243;-0.593314;,
  -0.834732;-0.310237;-0.454945;,
  -0.659295;-0.743999;-0.108608;,
  -0.064768;0.603075;0.795051;,
  -0.667500;0.401493;0.627094;,
  -0.919408;-0.369470;0.134836;,
  -0.854761;-0.430753;0.289545;,
  -0.667977;-0.541137;0.510859;,
  -0.381771;0.823914;0.418828;,
  -0.327850;0.402008;0.854929;,
  -0.425857;-0.025398;0.904434;,
  -0.523101;-0.589655;0.615363;,
  -0.457426;-0.709494;0.536078;,
  -0.140508;0.796396;0.588227;,
  -0.018273;0.205419;0.978504;,
  -0.077474;-0.000829;0.996994;,
  0.137979;-0.333324;0.932661;,
  0.288621;-0.638856;0.713134;,
  0.262204;0.935632;0.236310;,
  0.495773;0.278262;0.822666;,
  0.459052;0.081046;0.884705;,
  0.173609;-0.504687;0.845666;,
  0.500903;-0.543892;0.673259;,
  0.104324;0.778463;0.618961;,
  0.812623;0.441136;0.380845;,
  0.952624;0.136697;0.271702;,
  0.667927;-0.265782;0.695150;,
  0.400747;-0.526930;0.749497;,
  -0.233750;0.765776;0.599122;,
  0.136956;-0.563586;0.814625;;

  80;
  3;47,45,40;,
  3;2,40,45;,
  3;44,2,45;,
  3;38,2,44;,
  3;43,38,44;,
  3;37,38,43;,
  3;42,37,43;,
  3;36,37,42;,
  3;1,36,42;,
  3;0,36,41;,
  3;47,40,35;,
  3;4,35,40;,
  3;39,3,40;,
  3;33,34,2;,
  3;38,33,2;,
  3;32,33,38;,
  3;37,32,38;,
  3;31,32,37;,
  3;36,31,37;,
  3;46,31,36;,
  3;47,35,30;,
  3;5,30,35;,
  3;34,5,35;,
  3;28,29,3;,
  3;33,28,3;,
  3;27,28,33;,
  3;32,27,33;,
  3;31,26,27;,
  3;32,31,27;,
  3;46,26,31;,
  3;47,30,25;,
  3;24,25,30;,
  3;5,24,30;,
  3;23,24,5;,
  3;28,23,5;,
  3;22,23,28;,
  3;27,22,28;,
  3;26,21,22;,
  3;27,26,22;,
  3;46,21,26;,
  3;47,25,20;,
  3;19,20,25;,
  3;24,19,25;,
  3;18,19,24;,
  3;23,18,24;,
  3;17,18,23;,
  3;22,17,23;,
  3;16,17,22;,
  3;21,16,22;,
  3;46,16,21;,
  3;47,20,15;,
  3;14,15,20;,
  3;19,14,20;,
  3;13,14,19;,
  3;18,13,19;,
  3;12,13,18;,
  3;17,12,18;,
  3;11,12,17;,
  3;16,11,17;,
  3;46,11,16;,
  3;47,15,10;,
  3;9,10,15;,
  3;14,9,15;,
  3;8,9,14;,
  3;13,8,14;,
  3;7,8,13;,
  3;12,7,13;,
  3;6,7,12;,
  3;11,6,12;,
  3;46,6,11;,
  3;47,10,45;,
  3;44,45,10;,
  3;9,44,10;,
  3;43,44,9;,
  3;8,43,9;,
  3;42,43,8;,
  3;7,42,8;,
  3;1,42,7;,
  3;6,1,7;,
  3;46,1,6;;
 }
 MeshTextureCoords {
 48;
 0.467797;0.195902;,
 0.419017;0.166615;,
 0.112315;0.572995;,
 0.112687;0.571461;,
 0.008195;0.569508;,
 0.112326;0.572723;,
 0.500282;0.000000;,
 0.632130;0.224122;,
 0.813902;0.431382;,
 0.745662;0.745587;,
 0.468510;0.867282;,
 0.582566;0.105291;,
 0.853040;0.069044;,
 1.000000;0.461455;,
 0.884758;0.768105;,
 0.705240;1.000000;,
 0.568009;0.186290;,
 0.779499;0.243900;,
 0.769314;0.455505;,
 0.716164;0.635136;,
 0.735860;0.844862;,
 0.504936;0.271158;,
 0.303645;0.330216;,
 0.460052;0.462912;,
 0.508780;0.618976;,
 0.508176;0.716642;,
 0.305341;0.236226;,
 0.126305;0.340821;,
 0.137236;0.473645;,
 0.018576;0.641082;,
 0.339292;0.567869;,
 0.183462;0.131788;,
 0.009191;0.341243;,
 0.000000;0.462522;,
 0.018937;0.639820;,
 0.170809;0.662270;,
 0.279136;0.184891;,
 0.190302;0.386454;,
 0.068824;0.456265;,
 0.018565;0.641354;,
 0.251436;0.644822;,
 0.395579;0.184193;,
 0.454143;0.238812;,
 0.573750;0.437024;,
 0.340522;0.566529;,
 0.339825;0.664093;,
 0.368188;0.078714;,
 0.297952;0.771319;;
 }
}
}
AnimationSet {
 Animation anim-bgnd04 {
  {frm-bgnd04}
  AnimationKey {
  1;
  2;
  1; 3; 0.556211, 0.469033, 1.298000;;,
  100; 3; 0.556211, 0.469033, 1.298000;;;
  }
 }
  }
