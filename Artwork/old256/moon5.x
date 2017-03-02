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

Frame frm-Moon5 {
  FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh Moon5 {
 280;
 0.000000;90.730423;0.000000;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 81.151756;40.575878;0.000000;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 -65.653152;40.575878;47.699799;,
 24.793589;87.277077;0.000000;,
 24.793589;87.277077;0.000000;,
 24.793589;87.277077;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 47.699806;77.179909;0.000000;,
 66.974960;61.207554;0.000000;,
 66.974960;61.207554;0.000000;,
 66.974960;61.207554;0.000000;,
 -54.183884;61.207554;39.366890;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 -20.058434;87.277077;-14.573308;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 74.636597;45.884274;23.580105;,
 62.439857;47.699806;45.365211;,
 -23.849907;47.699806;73.402458;,
 -23.849907;47.699806;73.402458;,
 -23.849907;47.699806;73.402458;,
 -46.522247;45.884274;62.946991;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 -74.242310;45.884274;24.793581;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 87.033394;21.090687;14.573305;,
 -0.000004;0.000000;90.730423;,
 -0.000004;0.000000;90.730423;,
 -0.000004;0.000000;90.730423;,
 -13.034764;-21.090685;87.277069;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 -78.977470;21.090687;39.366890;,
 87.033394;21.090687;-14.573302;,
 13.034773;21.090687;-87.277077;,
 13.034773;21.090687;-87.277077;,
 13.034773;21.090687;-87.277077;,
 13.034773;21.090687;-87.277077;,
 23.849915;-47.699806;-73.402451;,
 23.849915;-47.699806;-73.402451;,
 23.849915;-47.699806;-73.402451;,
 23.849915;-47.699806;-73.402451;,
 23.849915;-47.699806;-73.402451;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 77.179909;-47.699802;0.000007;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 20.058435;-87.277077;14.573305;,
 38.589958;-77.179909;-28.037237;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 56.059135;67.176636;24.014215;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -5.515652;67.176636;60.736214;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -31.237600;67.176636;52.378639;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 -40.575882;81.151756;-0.000004;,
 40.162102;67.176628;-45.894608;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 90.730423;0.000000;0.000004;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 86.679504;-23.147491;13.522831;,
 -13.924457;23.147491;-86.615898;,
 78.073715;23.147490;-40.008728;,
 78.073715;23.147490;-40.008728;,
 78.073715;23.147490;-40.008728;,
 62.176674;23.147490;-61.889122;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 40.575882;-81.151756;0.000004;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.467995;-67.176628;13.522829;,
 59.468002;-67.176628;-13.522822;,
 59.467995;-67.176628;13.522829;,
 40.575882;-81.151756;0.000004;,
 5.515657;-67.176636;-60.736214;,
 31.237608;-67.176636;-52.378647;,
 12.538641;-81.151756;-38.589951;,
 -56.059143;-67.176636;-24.014221;,
 -40.162102;-67.176636;-45.894615;,
 -32.826572;-81.151756;-23.849907;,
 -40.162109;-67.176636;45.894608;,
 -56.059143;-67.176636;24.014212;,
 -32.826576;-81.151756;23.849901;,
 31.237597;-67.176636;52.378647;,
 5.515646;-67.176636;60.736214;,
 12.538637;-81.151756;38.589958;,
 62.176674;23.147490;-61.889122;,
 78.073715;23.147490;-40.008728;,
 73.402458;0.000000;-53.329994;,
 -39.646408;23.147491;-78.258331;,
 -13.924457;23.147491;-86.615898;,
 -28.037231;0.000000;-86.289764;,
 -86.679504;23.147491;13.522821;,
 -86.679504;23.147491;-13.522835;,
 -90.730415;0.000000;-0.000008;,
 -13.924471;23.147490;86.615891;,
 -39.646423;23.147491;78.258324;,
 -28.037249;0.000000;86.289764;,
 78.073715;23.147491;40.008736;,
 62.176674;23.147491;61.889137;,
 73.402458;0.000000;53.330009;,
 39.646423;-23.147490;-78.258316;,
 13.924477;-23.147491;-86.615891;,
 28.037256;0.000000;-86.289757;,
 -62.176674;-23.147491;-61.889145;,
 -78.073708;-23.147491;-40.008751;,
 -73.402443;0.000000;-53.330017;,
 -78.073715;-23.147491;40.008728;,
 -62.176682;-23.147491;61.889130;,
 -73.402458;0.000000;53.330002;,
 13.924467;-23.147491;86.615891;,
 39.646416;-23.147491;78.258324;,
 28.037241;0.000000;86.289764;,
 86.679504;-23.147491;13.522831;,
 86.679512;-23.147491;-13.522822;,
 90.730423;0.000000;0.000004;,
 56.059143;67.176628;-24.014212;,
 40.162102;67.176628;-45.894608;,
 32.826576;81.151756;-23.849901;,
 -5.515640;67.176636;-60.736214;,
 -31.237591;67.176636;-52.378654;,
 -12.538630;81.151756;-38.589958;,
 -59.467995;67.176636;-13.522835;,
 -59.468002;67.176636;13.522821;,
 -40.575882;81.151756;-0.000004;,
 -31.237600;67.176636;52.378639;,
 -5.515652;67.176636;60.736214;,
 -12.538638;81.151756;38.589951;,
 40.162102;67.176636;45.894608;,
 56.059135;67.176636;24.014215;,
 32.826569;81.151756;23.849903;,
 54.183891;-61.207554;-39.366890;,
 38.589958;-77.179909;-28.037237;,
 20.058437;-87.277077;-14.573302;,
 -20.696394;-61.207554;-63.696976;,
 -14.740047;-77.179909;-45.365219;,
 -7.661638;-87.277077;-23.580105;,
 -66.974960;-61.207554;-0.000006;,
 -47.699806;-77.179909;-0.000004;,
 -24.793589;-87.277077;-0.000002;,
 -20.696405;-61.207554;63.696976;,
 -14.740054;-77.179909;45.365211;,
 -7.661642;-87.277077;23.580105;,
 54.183884;-61.207554;39.366890;,
 38.589958;-77.179909;28.037245;,
 20.058435;-87.277077;14.573305;,
 74.242310;-45.884270;24.793591;,
 77.179909;-47.699802;0.000007;,
 74.242317;-45.884270;-24.793577;,
 46.522247;-45.884274;-62.946991;,
 23.849915;-47.699806;-73.402451;,
 -0.637956;-45.884274;-78.270271;,
 -45.489983;-45.884274;-63.696976;,
 -62.439857;-47.699806;-45.365219;,
 -74.636597;-45.884274;-23.580111;,
 -74.636604;-45.884274;23.580099;,
 -62.439865;-47.699806;45.365211;,
 -45.489998;-45.884274;63.696968;,
 -0.637969;-45.884274;78.270279;,
 23.849903;-47.699806;73.402458;,
 46.522240;-45.884274;62.946999;,
 -13.034750;-21.090687;-87.277077;,
 0.000011;0.000000;-90.730423;,
 13.034773;21.090687;-87.277077;,
 -87.033394;-21.090687;-14.573315;,
 -86.289757;0.000000;-28.037252;,
 -78.977463;21.090687;-39.366905;,
 -40.754845;-21.090687;78.270279;,
 -53.330009;0.000000;73.402458;,
 -61.845528;21.090687;62.946991;,
 61.845520;-21.090687;62.946999;,
 53.330002;0.000000;73.402458;,
 40.754829;21.090687;78.270279;,
 78.977478;-21.090687;-39.366890;,
 86.289764;0.000000;-28.037237;,
 87.033394;21.090687;-14.573302;,
 61.845528;-21.090685;-62.946983;,
 53.330009;0.000000;-73.402443;,
 40.754845;21.090685;-78.270264;,
 -40.754829;-21.090687;-78.270287;,
 -53.330002;0.000000;-73.402466;,
 -61.845520;21.090687;-62.947006;,
 -87.033394;-21.090687;14.573299;,
 -86.289764;0.000000;28.037237;,
 -78.977470;21.090687;39.366890;,
 -13.034764;-21.090685;87.277069;,
 -0.000004;0.000000;90.730423;,
 13.034756;21.090685;87.277069;,
 78.977470;-21.090687;39.366890;,
 86.289764;0.000000;28.037245;,
 87.033394;21.090687;14.573305;,
 74.636597;45.884270;-23.580099;,
 62.439857;47.699802;-45.365204;,
 45.489990;45.884270;-63.696960;,
 0.637976;45.884274;-78.270279;,
 -23.849895;47.699806;-73.402458;,
 -46.522232;45.884274;-62.947006;,
 -74.242310;45.884274;-24.793594;,
 -77.179901;47.699806;-0.000007;,
 -74.242310;45.884274;24.793581;,
 -46.522247;45.884274;62.946991;,
 -23.849907;47.699806;73.402458;,
 0.637963;45.884274;78.270279;,
 45.489983;45.884274;63.696976;,
 62.439857;47.699806;45.365211;,
 74.636597;45.884274;23.580105;,
 20.696409;61.207554;-63.696968;,
 14.740057;77.179909;-45.365211;,
 7.661644;87.277077;-23.580103;,
 -54.183876;61.207554;-39.366905;,
 -38.589951;77.179909;-28.037249;,
 -20.058434;87.277077;-14.573308;,
 -54.183884;61.207554;39.366890;,
 -38.589958;77.179909;28.037241;,
 -20.058435;87.277077;14.573305;,
 20.696398;61.207554;63.696976;,
 14.740049;77.179909;45.365211;,
 7.661639;87.277077;23.580105;,
 66.974960;61.207554;0.000000;,
 47.699806;77.179909;0.000000;,
 24.793589;87.277077;0.000000;,
 0.000000;-90.730423;0.000000;,
 65.653160;-40.575878;-47.699799;,
 -25.077263;-40.575878;-77.179909;,
 -81.151756;-40.575878;-0.000007;,
 -25.077276;-40.575878;77.179909;,
 65.653152;-40.575878;47.699806;,
 25.077282;40.575878;-77.179901;,
 -65.653145;40.575878;-47.699814;,
 -65.653152;40.575878;47.699799;,
 25.077269;40.575878;77.179909;,
 81.151756;40.575878;0.000000;,
 0.000000;90.730423;0.000000;;

 320;
 3;264,11,0;,
 3;177,16,10;,
 3;264,177,9;,
 3;263,177,264;,
 3;78,19,15;,
 3;177,77,14;,
 3;175,76,177;,
 3;263,175,177;,
 3;262,175,263;,
 3;29,4,18;,
 3;75,28,17;,
 3;30,27,74;,
 3;175,251,176;,
 3;250,251,175;,
 3;262,250,175;,
 3;277,250,262;,
 3;261,264,279;,
 3;174,263,264;,
 3;261,174,264;,
 3;260,174,261;,
 3;83,262,263;,
 3;174,82,263;,
 3;88,81,174;,
 3;260,87,174;,
 3;20,86,260;,
 3;249,277,262;,
 3;80,249,262;,
 3;33,249,79;,
 3;85,32,173;,
 3;34,31,84;,
 3;259,247,172;,
 3;8,247,259;,
 3;24,261,279;,
 3;93,260,261;,
 3;23,92,261;,
 3;257,91,22;,
 3;170,259,260;,
 3;90,170,260;,
 3;169,170,89;,
 3;257,169,171;,
 3;256,169,257;,
 3;39,7,259;,
 3;170,38,259;,
 3;245,37,170;,
 3;169,245,170;,
 3;244,245,169;,
 3;256,244,169;,
 3;275,244,256;,
 3;255,21,279;,
 3;168,257,258;,
 3;255,168,258;,
 3;254,168,255;,
 3;167,256,257;,
 3;168,167,257;,
 3;166,167,168;,
 3;254,166,168;,
 3;253,166,254;,
 3;243,275,256;,
 3;167,243,256;,
 3;242,243,167;,
 3;166,242,167;,
 3;241,242,166;,
 3;253,241,166;,
 3;274,241,253;,
 3;267,255,279;,
 3;165,254,255;,
 3;267,165,255;,
 3;13,165,267;,
 3;94,253,254;,
 3;165,164,254;,
 3;163,164,165;,
 3;12,163,165;,
 3;265,163,266;,
 3;240,274,253;,
 3;164,240,253;,
 3;239,240,164;,
 3;163,239,164;,
 3;238,239,163;,
 3;265,238,163;,
 3;3,238,265;,
 3;44,54,2;,
 3;99,221,222;,
 3;43,98,222;,
 3;236,97,42;,
 3;161,220,221;,
 3;96,161,221;,
 3;103,161,95;,
 3;236,102,162;,
 3;235,101,236;,
 3;195,269,220;,
 3;161,195,220;,
 3;67,195,161;,
 3;100,66,161;,
 3;193,65,160;,
 3;235,193,160;,
 3;273,193,235;,
 3;234,219,277;,
 3;159,218,219;,
 3;234,159,219;,
 3;47,159,234;,
 3;158,217,218;,
 3;159,158,218;,
 3;157,158,159;,
 3;46,157,159;,
 3;48,157,45;,
 3;207,273,217;,
 3;158,207,217;,
 3;206,207,158;,
 3;157,206,158;,
 3;205,206,157;,
 3;232,205,157;,
 3;272,205,232;,
 3;53,216,6;,
 3;156,215,216;,
 3;52,156,216;,
 3;230,156,51;,
 3;155,214,215;,
 3;156,155,215;,
 3;154,155,156;,
 3;230,154,156;,
 3;229,154,230;,
 3;204,272,214;,
 3;155,204,214;,
 3;203,204,155;,
 3;154,203,155;,
 3;202,203,154;,
 3;229,202,154;,
 3;271,202,229;,
 3;228,213,275;,
 3;153,212,213;,
 3;228,153,213;,
 3;227,153,228;,
 3;152,211,212;,
 3;153,152,212;,
 3;151,152,153;,
 3;227,151,153;,
 3;226,151,227;,
 3;201,271,211;,
 3;152,201,211;,
 3;200,201,152;,
 3;151,200,152;,
 3;199,200,151;,
 3;226,199,151;,
 3;270,199,226;,
 3;225,58,274;,
 3;150,209,57;,
 3;225,150,56;,
 3;224,150,225;,
 3;149,208,209;,
 3;150,149,209;,
 3;148,149,150;,
 3;224,148,150;,
 3;223,148,224;,
 3;198,270,208;,
 3;149,198,208;,
 3;63,198,149;,
 3;148,62,149;,
 3;196,61,148;,
 3;223,196,148;,
 3;269,196,223;,
 3;235,217,273;,
 3;147,218,217;,
 3;235,147,217;,
 3;236,147,235;,
 3;146,219,218;,
 3;147,146,218;,
 3;145,146,147;,
 3;236,145,147;,
 3;41,145,236;,
 3;250,277,219;,
 3;146,250,219;,
 3;251,250,146;,
 3;145,251,146;,
 3;26,251,145;,
 3;40,25,145;,
 3;1,252,237;,
 3;232,214,272;,
 3;144,215,214;,
 3;232,144,214;,
 3;233,144,232;,
 3;143,216,215;,
 3;144,143,215;,
 3;142,143,144;,
 3;233,142,144;,
 3;234,142,233;,
 3;247,5,216;,
 3;143,247,216;,
 3;248,247,143;,
 3;142,248,143;,
 3;249,248,142;,
 3;234,249,142;,
 3;277,249,234;,
 3;229,211,271;,
 3;141,212,211;,
 3;229,141,211;,
 3;230,141,229;,
 3;140,213,212;,
 3;141,140,212;,
 3;139,140,141;,
 3;230,139,141;,
 3;50,139,230;,
 3;244,275,213;,
 3;140,244,213;,
 3;245,244,140;,
 3;139,245,140;,
 3;36,245,139;,
 3;49,35,139;,
 3;276,246,231;,
 3;226,208,270;,
 3;138,209,208;,
 3;226,138,208;,
 3;227,138,226;,
 3;104,55,209;,
 3;138,137,209;,
 3;136,137,138;,
 3;227,136,138;,
 3;228,136,227;,
 3;241,274,210;,
 3;137,241,210;,
 3;242,241,137;,
 3;136,242,137;,
 3;243,242,136;,
 3;228,243,136;,
 3;275,243,228;,
 3;223,220,269;,
 3;135,221,220;,
 3;223,135,220;,
 3;224,135,223;,
 3;107,222,221;,
 3;135,106,221;,
 3;108,105,135;,
 3;224,133,135;,
 3;225,133,224;,
 3;238,278,222;,
 3;134,238,222;,
 3;239,238,134;,
 3;133,239,134;,
 3;240,239,133;,
 3;225,240,133;,
 3;274,240,225;,
 3;72,189,268;,
 3;132,188,189;,
 3;71,132,189;,
 3;191,132,70;,
 3;131,187,188;,
 3;132,131,188;,
 3;130,131,132;,
 3;191,130,132;,
 3;190,130,191;,
 3;205,272,187;,
 3;131,205,187;,
 3;206,205,131;,
 3;130,206,131;,
 3;207,206,130;,
 3;190,207,130;,
 3;273,207,190;,
 3;189,186,268;,
 3;129,185,186;,
 3;189,129,186;,
 3;188,129,189;,
 3;128,184,185;,
 3;129,128,185;,
 3;127,128,129;,
 3;188,127,129;,
 3;187,127,188;,
 3;202,271,184;,
 3;128,202,184;,
 3;203,202,128;,
 3;127,203,128;,
 3;204,203,127;,
 3;187,204,127;,
 3;272,204,187;,
 3;186,183,268;,
 3;126,182,183;,
 3;186,126,183;,
 3;185,126,186;,
 3;125,181,182;,
 3;126,125,182;,
 3;124,125,126;,
 3;185,124,126;,
 3;184,124,185;,
 3;199,270,181;,
 3;125,199,181;,
 3;200,199,125;,
 3;124,200,125;,
 3;201,200,124;,
 3;184,201,124;,
 3;271,201,184;,
 3;183,180,268;,
 3;123,73,180;,
 3;183,123,180;,
 3;182,123,183;,
 3;122,178,179;,
 3;123,122,179;,
 3;121,122,123;,
 3;182,121,123;,
 3;181,121,182;,
 3;196,269,178;,
 3;122,196,178;,
 3;60,196,122;,
 3;121,59,122;,
 3;198,197,121;,
 3;181,198,121;,
 3;270,198,181;,
 3;180,69,268;,
 3;112,191,68;,
 3;180,111,192;,
 3;179,110,180;,
 3;117,190,191;,
 3;109,116,191;,
 3;118,115,120;,
 3;179,118,120;,
 3;178,118,179;,
 3;193,273,190;,
 3;114,193,190;,
 3;64,193,113;,
 3;118,194,119;,
 3;195,194,118;,
 3;178,195,118;,
 3;269,195,178;;

 MeshMaterialList {
  1;
  320;
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
  0,
  0,
  0,
  0;
Material {
 1.000000;1.000000;1.000000;1.000000;;
 0.000000;
 1.000000;1.000000;1.000000;;
 0.000000;0.000000;0.000000;;
 TextureFilename {
  "moon5.bmp";
 }
 }
}
 MeshNormals {
  280;
  0.000000;1.000000;0.000000;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  0.894427;0.447214;0.000000;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  -0.723607;0.447214;0.525731;,
  0.260485;0.965478;0.000000;,
  0.260485;0.965478;0.000000;,
  0.260485;0.965478;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.522014;0.852937;0.000000;,
  0.743938;0.668248;0.000000;,
  0.743938;0.668248;0.000000;,
  0.743938;0.668248;0.000000;,
  -0.601859;0.668248;0.437276;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  -0.210737;0.965478;-0.153109;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.825855;0.504459;0.251964;,
  0.688191;0.525731;0.500000;,
  -0.262866;0.525731;0.809017;,
  -0.262866;0.525731;0.809017;,
  -0.262866;0.525731;0.809017;,
  -0.520030;0.504459;0.689268;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  -0.816231;0.504458;0.281582;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.957665;0.242173;0.155658;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  0.000000;0.000000;1.000000;,
  -0.147896;-0.242172;0.958895;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  -0.866261;0.242173;0.436972;,
  0.957665;0.242173;-0.155658;,
  0.147896;0.242172;-0.958895;,
  0.147896;0.242172;-0.958895;,
  0.147896;0.242172;-0.958895;,
  0.147896;0.242172;-0.958895;,
  0.262866;-0.525731;-0.809017;,
  0.262866;-0.525731;-0.809017;,
  0.262866;-0.525731;-0.809017;,
  0.262866;-0.525731;-0.809017;,
  0.262866;-0.525731;-0.809017;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  0.850651;-0.525731;0.000000;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.210737;-0.965478;0.153109;,
  0.422318;-0.852937;-0.306832;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  0.622186;0.735618;0.267864;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.062488;0.735618;0.674508;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.345912;0.735618;0.582418;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  -0.452095;0.891970;0.000000;,
  0.447020;0.735618;-0.508959;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.999985;-0.005465;0.000000;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;0.149005;,
  -0.152929;0.262064;-0.952856;,
  0.858963;0.262064;-0.439893;,
  0.858963;0.262064;-0.439893;,
  0.858963;0.262064;-0.439893;,
  0.683797;0.262064;-0.680988;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.452096;-0.891970;0.000000;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;0.149005;,
  0.660806;-0.735618;-0.149005;,
  0.660806;-0.735618;0.149005;,
  0.452096;-0.891970;0.000000;,
  0.062488;-0.735618;-0.674508;,
  0.345912;-0.735618;-0.582418;,
  0.139705;-0.891970;-0.429968;,
  -0.622186;-0.735618;-0.267864;,
  -0.447020;-0.735618;-0.508959;,
  -0.365753;-0.891970;-0.265735;,
  -0.447020;-0.735618;0.508959;,
  -0.622186;-0.735618;0.267864;,
  -0.365753;-0.891970;0.265735;,
  0.345912;-0.735618;0.582418;,
  0.062488;-0.735618;0.674508;,
  0.139705;-0.891970;0.429968;,
  0.683797;0.262064;-0.680988;,
  0.858963;0.262064;-0.439893;,
  0.809005;0.005466;-0.587777;,
  -0.436353;0.262064;-0.860766;,
  -0.152929;0.262064;-0.952856;,
  -0.309012;0.005466;-0.951042;,
  -0.953478;0.262064;0.149005;,
  -0.953478;0.262064;-0.149005;,
  -0.999985;0.005466;0.000000;,
  -0.152929;0.262064;0.952856;,
  -0.436353;0.262064;0.860766;,
  -0.309012;0.005465;0.951042;,
  0.858963;0.262064;0.439893;,
  0.683797;0.262064;0.680988;,
  0.809005;0.005465;0.587777;,
  0.436353;-0.262064;-0.860766;,
  0.152929;-0.262064;-0.952856;,
  0.309013;-0.005466;-0.951042;,
  -0.683797;-0.262064;-0.680988;,
  -0.858963;-0.262064;-0.439893;,
  -0.809005;-0.005465;-0.587776;,
  -0.858963;-0.262064;0.439893;,
  -0.683797;-0.262064;0.680988;,
  -0.809005;-0.005466;0.587776;,
  0.152929;-0.262064;0.952856;,
  0.436353;-0.262064;0.860766;,
  0.309012;-0.005465;0.951042;,
  0.953478;-0.262064;0.149005;,
  0.953478;-0.262064;-0.149005;,
  0.999985;-0.005465;0.000000;,
  0.622186;0.735618;-0.267864;,
  0.447020;0.735618;-0.508959;,
  0.365753;0.891970;-0.265735;,
  -0.062488;0.735618;-0.674508;,
  -0.345912;0.735618;-0.582418;,
  -0.139705;0.891970;-0.429968;,
  -0.660806;0.735618;-0.149005;,
  -0.660806;0.735618;0.149005;,
  -0.452095;0.891970;0.000000;,
  -0.345912;0.735618;0.582418;,
  -0.062488;0.735618;0.674508;,
  -0.139705;0.891970;0.429968;,
  0.447020;0.735618;0.508959;,
  0.622186;0.735618;0.267864;,
  0.365753;0.891970;0.265735;,
  0.601859;-0.668248;-0.437276;,
  0.422318;-0.852937;-0.306832;,
  0.210737;-0.965478;-0.153109;,
  -0.229890;-0.668248;-0.707528;,
  -0.161311;-0.852937;-0.496465;,
  -0.080494;-0.965478;-0.247736;,
  -0.743938;-0.668248;0.000000;,
  -0.522014;-0.852937;0.000000;,
  -0.260485;-0.965478;0.000000;,
  -0.229890;-0.668248;0.707527;,
  -0.161311;-0.852937;0.496465;,
  -0.080494;-0.965478;0.247736;,
  0.601859;-0.668248;0.437276;,
  0.422318;-0.852937;0.306832;,
  0.210737;-0.965478;0.153109;,
  0.816231;-0.504459;0.281582;,
  0.850651;-0.525731;0.000000;,
  0.816231;-0.504459;-0.281582;,
  0.520030;-0.504458;-0.689268;,
  0.262866;-0.525731;-0.809017;,
  -0.015571;-0.504458;-0.863295;,
  -0.494835;-0.504459;-0.707573;,
  -0.688191;-0.525731;-0.500000;,
  -0.825855;-0.504458;-0.251964;,
  -0.825855;-0.504458;0.251964;,
  -0.688191;-0.525731;0.500000;,
  -0.494835;-0.504458;0.707573;,
  -0.015571;-0.504458;0.863296;,
  0.262866;-0.525731;0.809017;,
  0.520030;-0.504458;0.689268;,
  -0.147895;-0.242173;-0.958895;,
  0.000000;0.000000;-1.000000;,
  0.147896;0.242172;-0.958895;,
  -0.957666;-0.242172;-0.155658;,
  -0.951057;0.000000;-0.309017;,
  -0.866261;0.242172;-0.436972;,
  -0.443974;-0.242173;0.862693;,
  -0.587785;0.000000;0.809017;,
  -0.683274;0.242173;0.688831;,
  0.683274;-0.242173;0.688831;,
  0.587785;0.000000;0.809017;,
  0.443974;0.242173;0.862693;,
  0.866261;-0.242172;-0.436972;,
  0.951057;0.000000;-0.309017;,
  0.957665;0.242173;-0.155658;,
  0.683274;-0.242172;-0.688831;,
  0.587785;0.000000;-0.809017;,
  0.443974;0.242173;-0.862693;,
  -0.443974;-0.242173;-0.862693;,
  -0.587785;0.000000;-0.809017;,
  -0.683274;0.242172;-0.688831;,
  -0.957666;-0.242172;0.155658;,
  -0.951057;0.000000;0.309017;,
  -0.866261;0.242173;0.436972;,
  -0.147896;-0.242172;0.958895;,
  0.000000;0.000000;1.000000;,
  0.147896;0.242172;0.958895;,
  0.866261;-0.242173;0.436972;,
  0.951057;0.000000;0.309017;,
  0.957665;0.242173;0.155658;,
  0.825855;0.504459;-0.251964;,
  0.688191;0.525731;-0.500000;,
  0.494835;0.504458;-0.707573;,
  0.015572;0.504459;-0.863296;,
  -0.262865;0.525731;-0.809017;,
  -0.520030;0.504458;-0.689268;,
  -0.816231;0.504458;-0.281582;,
  -0.850651;0.525731;0.000000;,
  -0.816231;0.504458;0.281582;,
  -0.520030;0.504459;0.689268;,
  -0.262866;0.525731;0.809017;,
  0.015571;0.504458;0.863296;,
  0.494835;0.504459;0.707573;,
  0.688191;0.525731;0.500000;,
  0.825855;0.504459;0.251964;,
  0.229890;0.668248;-0.707527;,
  0.161311;0.852937;-0.496465;,
  0.080494;0.965478;-0.247736;,
  -0.601859;0.668248;-0.437276;,
  -0.422318;0.852937;-0.306832;,
  -0.210737;0.965478;-0.153109;,
  -0.601859;0.668248;0.437276;,
  -0.422318;0.852937;0.306832;,
  -0.210737;0.965478;0.153109;,
  0.229890;0.668248;0.707528;,
  0.161311;0.852937;0.496465;,
  0.080494;0.965478;0.247736;,
  0.743938;0.668248;0.000000;,
  0.522014;0.852937;0.000000;,
  0.260485;0.965478;0.000000;,
  0.000000;-1.000000;0.000000;,
  0.723607;-0.447214;-0.525731;,
  -0.276393;-0.447214;-0.850651;,
  -0.894427;-0.447214;0.000000;,
  -0.276393;-0.447214;0.850651;,
  0.723607;-0.447214;0.525731;,
  0.276394;0.447214;-0.850651;,
  -0.723607;0.447214;-0.525731;,
  -0.723607;0.447214;0.525731;,
  0.276393;0.447214;0.850651;,
  0.894427;0.447214;0.000000;,
  0.000000;1.000000;0.000000;;

  320;
  3;264,11,0;,
  3;177,16,10;,
  3;264,177,9;,
  3;263,177,264;,
  3;78,19,15;,
  3;177,77,14;,
  3;175,76,177;,
  3;263,175,177;,
  3;262,175,263;,
  3;29,4,18;,
  3;75,28,17;,
  3;30,27,74;,
  3;175,251,176;,
  3;250,251,175;,
  3;262,250,175;,
  3;277,250,262;,
  3;261,264,279;,
  3;174,263,264;,
  3;261,174,264;,
  3;260,174,261;,
  3;83,262,263;,
  3;174,82,263;,
  3;88,81,174;,
  3;260,87,174;,
  3;20,86,260;,
  3;249,277,262;,
  3;80,249,262;,
  3;33,249,79;,
  3;85,32,173;,
  3;34,31,84;,
  3;259,247,172;,
  3;8,247,259;,
  3;24,261,279;,
  3;93,260,261;,
  3;23,92,261;,
  3;257,91,22;,
  3;170,259,260;,
  3;90,170,260;,
  3;169,170,89;,
  3;257,169,171;,
  3;256,169,257;,
  3;39,7,259;,
  3;170,38,259;,
  3;245,37,170;,
  3;169,245,170;,
  3;244,245,169;,
  3;256,244,169;,
  3;275,244,256;,
  3;255,21,279;,
  3;168,257,258;,
  3;255,168,258;,
  3;254,168,255;,
  3;167,256,257;,
  3;168,167,257;,
  3;166,167,168;,
  3;254,166,168;,
  3;253,166,254;,
  3;243,275,256;,
  3;167,243,256;,
  3;242,243,167;,
  3;166,242,167;,
  3;241,242,166;,
  3;253,241,166;,
  3;274,241,253;,
  3;267,255,279;,
  3;165,254,255;,
  3;267,165,255;,
  3;13,165,267;,
  3;94,253,254;,
  3;165,164,254;,
  3;163,164,165;,
  3;12,163,165;,
  3;265,163,266;,
  3;240,274,253;,
  3;164,240,253;,
  3;239,240,164;,
  3;163,239,164;,
  3;238,239,163;,
  3;265,238,163;,
  3;3,238,265;,
  3;44,54,2;,
  3;99,221,222;,
  3;43,98,222;,
  3;236,97,42;,
  3;161,220,221;,
  3;96,161,221;,
  3;103,161,95;,
  3;236,102,162;,
  3;235,101,236;,
  3;195,269,220;,
  3;161,195,220;,
  3;67,195,161;,
  3;100,66,161;,
  3;193,65,160;,
  3;235,193,160;,
  3;273,193,235;,
  3;234,219,277;,
  3;159,218,219;,
  3;234,159,219;,
  3;47,159,234;,
  3;158,217,218;,
  3;159,158,218;,
  3;157,158,159;,
  3;46,157,159;,
  3;48,157,45;,
  3;207,273,217;,
  3;158,207,217;,
  3;206,207,158;,
  3;157,206,158;,
  3;205,206,157;,
  3;232,205,157;,
  3;272,205,232;,
  3;53,216,6;,
  3;156,215,216;,
  3;52,156,216;,
  3;230,156,51;,
  3;155,214,215;,
  3;156,155,215;,
  3;154,155,156;,
  3;230,154,156;,
  3;229,154,230;,
  3;204,272,214;,
  3;155,204,214;,
  3;203,204,155;,
  3;154,203,155;,
  3;202,203,154;,
  3;229,202,154;,
  3;271,202,229;,
  3;228,213,275;,
  3;153,212,213;,
  3;228,153,213;,
  3;227,153,228;,
  3;152,211,212;,
  3;153,152,212;,
  3;151,152,153;,
  3;227,151,153;,
  3;226,151,227;,
  3;201,271,211;,
  3;152,201,211;,
  3;200,201,152;,
  3;151,200,152;,
  3;199,200,151;,
  3;226,199,151;,
  3;270,199,226;,
  3;225,58,274;,
  3;150,209,57;,
  3;225,150,56;,
  3;224,150,225;,
  3;149,208,209;,
  3;150,149,209;,
  3;148,149,150;,
  3;224,148,150;,
  3;223,148,224;,
  3;198,270,208;,
  3;149,198,208;,
  3;63,198,149;,
  3;148,62,149;,
  3;196,61,148;,
  3;223,196,148;,
  3;269,196,223;,
  3;235,217,273;,
  3;147,218,217;,
  3;235,147,217;,
  3;236,147,235;,
  3;146,219,218;,
  3;147,146,218;,
  3;145,146,147;,
  3;236,145,147;,
  3;41,145,236;,
  3;250,277,219;,
  3;146,250,219;,
  3;251,250,146;,
  3;145,251,146;,
  3;26,251,145;,
  3;40,25,145;,
  3;1,252,237;,
  3;232,214,272;,
  3;144,215,214;,
  3;232,144,214;,
  3;233,144,232;,
  3;143,216,215;,
  3;144,143,215;,
  3;142,143,144;,
  3;233,142,144;,
  3;234,142,233;,
  3;247,5,216;,
  3;143,247,216;,
  3;248,247,143;,
  3;142,248,143;,
  3;249,248,142;,
  3;234,249,142;,
  3;277,249,234;,
  3;229,211,271;,
  3;141,212,211;,
  3;229,141,211;,
  3;230,141,229;,
  3;140,213,212;,
  3;141,140,212;,
  3;139,140,141;,
  3;230,139,141;,
  3;50,139,230;,
  3;244,275,213;,
  3;140,244,213;,
  3;245,244,140;,
  3;139,245,140;,
  3;36,245,139;,
  3;49,35,139;,
  3;276,246,231;,
  3;226,208,270;,
  3;138,209,208;,
  3;226,138,208;,
  3;227,138,226;,
  3;104,55,209;,
  3;138,137,209;,
  3;136,137,138;,
  3;227,136,138;,
  3;228,136,227;,
  3;241,274,210;,
  3;137,241,210;,
  3;242,241,137;,
  3;136,242,137;,
  3;243,242,136;,
  3;228,243,136;,
  3;275,243,228;,
  3;223,220,269;,
  3;135,221,220;,
  3;223,135,220;,
  3;224,135,223;,
  3;107,222,221;,
  3;135,106,221;,
  3;108,105,135;,
  3;224,133,135;,
  3;225,133,224;,
  3;238,278,222;,
  3;134,238,222;,
  3;239,238,134;,
  3;133,239,134;,
  3;240,239,133;,
  3;225,240,133;,
  3;274,240,225;,
  3;72,189,268;,
  3;132,188,189;,
  3;71,132,189;,
  3;191,132,70;,
  3;131,187,188;,
  3;132,131,188;,
  3;130,131,132;,
  3;191,130,132;,
  3;190,130,191;,
  3;205,272,187;,
  3;131,205,187;,
  3;206,205,131;,
  3;130,206,131;,
  3;207,206,130;,
  3;190,207,130;,
  3;273,207,190;,
  3;189,186,268;,
  3;129,185,186;,
  3;189,129,186;,
  3;188,129,189;,
  3;128,184,185;,
  3;129,128,185;,
  3;127,128,129;,
  3;188,127,129;,
  3;187,127,188;,
  3;202,271,184;,
  3;128,202,184;,
  3;203,202,128;,
  3;127,203,128;,
  3;204,203,127;,
  3;187,204,127;,
  3;272,204,187;,
  3;186,183,268;,
  3;126,182,183;,
  3;186,126,183;,
  3;185,126,186;,
  3;125,181,182;,
  3;126,125,182;,
  3;124,125,126;,
  3;185,124,126;,
  3;184,124,185;,
  3;199,270,181;,
  3;125,199,181;,
  3;200,199,125;,
  3;124,200,125;,
  3;201,200,124;,
  3;184,201,124;,
  3;271,201,184;,
  3;183,180,268;,
  3;123,73,180;,
  3;183,123,180;,
  3;182,123,183;,
  3;122,178,179;,
  3;123,122,179;,
  3;121,122,123;,
  3;182,121,123;,
  3;181,121,182;,
  3;196,269,178;,
  3;122,196,178;,
  3;60,196,122;,
  3;121,59,122;,
  3;198,197,121;,
  3;181,198,121;,
  3;270,198,181;,
  3;180,69,268;,
  3;112,191,68;,
  3;180,111,192;,
  3;179,110,180;,
  3;117,190,191;,
  3;109,116,191;,
  3;118,115,120;,
  3;179,118,120;,
  3;178,118,179;,
  3;193,273,190;,
  3;114,193,190;,
  3;64,193,113;,
  3;118,194,119;,
  3;195,194,118;,
  3;178,195,118;,
  3;269,195,178;;
 }
 MeshTextureCoords {
 280;
 1.005610;0.000133;,
 0.000133;0.275593;,
 1.996709;0.275545;,
 1.996896;0.275648;,
 0.000133;0.275593;,
 0.751563;0.322143;,
 0.751563;0.322143;,
 0.751563;0.322143;,
 0.751563;0.322143;,
 0.644284;-0.001429;,
 0.644284;-0.001429;,
 0.644284;-0.001429;,
 2.000774;0.000067;,
 2.000774;0.000067;,
 0.002131;-0.000283;,
 0.002131;-0.000283;,
 0.002131;-0.000283;,
 0.001748;0.145865;,
 0.001748;0.145865;,
 0.001598;0.145837;,
 0.778227;0.231300;,
 1.149913;0.085174;,
 1.150781;0.085174;,
 1.150781;0.085174;,
 1.150781;0.085174;,
 0.093491;0.264622;,
 0.093491;0.264622;,
 0.097231;0.263589;,
 0.094119;0.264622;,
 0.094119;0.264622;,
 0.201233;0.259868;,
 0.534375;0.298011;,
 0.534375;0.298401;,
 0.534375;0.298401;,
 0.655985;0.301344;,
 0.862765;0.291188;,
 0.862765;0.291188;,
 0.862765;0.291188;,
 0.862765;0.291188;,
 0.862765;0.291188;,
 -0.000478;0.391470;,
 -0.000478;0.391470;,
 -0.000478;0.391470;,
 1.996071;0.389745;,
 1.996071;0.389712;,
 0.406250;0.491862;,
 0.406250;0.492188;,
 0.406250;0.492188;,
 0.432449;0.572071;,
 0.777967;0.397981;,
 0.777967;0.398158;,
 0.777967;0.397981;,
 0.777967;0.397981;,
 0.777967;0.397981;,
 1.888309;0.393944;,
 1.470470;0.416731;,
 1.468908;0.416535;,
 1.468908;0.416535;,
 1.468908;0.416535;,
 1.542187;0.682068;,
 1.542187;0.681091;,
 1.542187;0.681091;,
 1.542187;0.681091;,
 1.542187;0.681091;,
 0.000223;0.748970;,
 0.000223;0.748970;,
 1.996708;0.749045;,
 1.996708;0.749045;,
 0.642889;1.000958;,
 1.481022;0.999982;,
 0.642889;1.000958;,
 0.642889;1.000958;,
 0.642889;1.000958;,
 1.673438;0.878284;,
 0.140372;0.106979;,
 0.139289;0.106165;,
 0.139070;0.106327;,
 0.139289;0.106165;,
 0.139289;0.106165;,
 0.510345;0.220090;,
 0.510508;0.219989;,
 0.510508;0.219989;,
 0.510508;0.219989;,
 0.510508;0.219989;,
 0.653555;0.212567;,
 0.651992;0.212176;,
 0.652237;0.212196;,
 0.651992;0.212176;,
 0.651992;0.212176;,
 1.034956;0.141874;,
 1.035156;0.141724;,
 1.035156;0.141724;,
 1.035156;0.141724;,
 1.035156;0.141724;,
 1.685215;0.158465;,
 1.999094;0.499006;,
 1.999094;0.499006;,
 0.000206;0.497893;,
 1.999436;0.498981;,
 1.999094;0.499006;,
 1.997805;0.623434;,
 -0.005229;0.620007;,
 -0.005229;0.620007;,
 1.997805;0.623434;,
 1.345725;0.412415;,
 1.793772;0.390052;,
 1.793493;0.390121;,
 1.793493;0.390121;,
 1.706563;0.397585;,
 -0.001922;0.999780;,
 1.999591;0.999975;,
 1.999591;0.999975;,
 -0.001922;0.999780;,
 0.003388;0.874152;,
 0.003388;0.874152;,
 1.999458;0.873779;,
 0.003388;0.874152;,
 0.003388;0.874152;,
 1.864805;0.826886;,
 1.999458;0.873779;,
 1.999591;0.999975;,
 1.424570;0.757550;,
 1.577774;0.752668;,
 1.530469;0.828979;,
 1.025351;0.761457;,
 1.182461;0.749738;,
 1.119531;0.837768;,
 0.653476;0.759504;,
 0.791055;0.766340;,
 0.755469;0.840698;,
 0.267699;0.790754;,
 0.407461;0.768293;,
 0.481250;0.870971;,
 1.707400;0.397376;,
 1.793493;0.390121;,
 1.743750;0.503906;,
 1.269119;0.410071;,
 1.345725;0.412024;,
 1.309375;0.505859;,
 0.881619;0.393470;,
 0.962131;0.399329;,
 0.898438;0.487305;,
 0.453103;0.392493;,
 0.543381;0.392493;,
 0.479688;0.496094;,
 0.106619;0.390540;,
 0.183225;0.392493;,
 0.146875;0.497070;,
 1.605881;0.586022;,
 1.470681;0.586022;,
 1.534375;0.502930;,
 1.140256;0.579186;,
 1.048025;0.581140;,
 1.127344;0.486328;,
 0.741037;0.584069;,
 0.644900;0.585046;,
 0.700781;0.485352;,
 0.361350;0.586999;,
 0.288650;0.586999;,
 0.332813;0.489258;,
 -0.005229;0.620007;,
 1.889431;0.623620;,
 0.000206;0.497893;,
 1.834024;0.125262;,
 1.684726;0.158465;,
 1.548438;0.067505;,
 1.419180;0.201434;,
 1.293320;0.198504;,
 1.340625;0.136841;,
 1.055036;0.214495;,
 0.929258;0.204364;,
 1.035156;0.141724;,
 0.651992;0.212176;,
 0.510508;0.219989;,
 0.667188;0.142701;,
 0.258243;0.156566;,
 0.139070;0.106327;,
 0.338778;0.060949;,
 1.724219;0.766938;,
 1.673438;0.878479;,
 1.435156;0.926544;,
 1.293750;0.728852;,
 1.317188;0.808167;,
 1.235156;0.902130;,
 0.898438;0.737641;,
 0.968750;0.837464;,
 0.988281;0.911896;,
 0.495313;0.729828;,
 0.553906;0.817932;,
 0.682813;0.898224;,
 0.136786;0.807953;,
 0.261817;0.934143;,
 1.481022;0.999982;,
 0.070895;0.723056;,
 1.996708;0.749045;,
 1.840487;0.700902;,
 1.643592;0.696061;,
 1.542187;0.681091;,
 1.412765;0.661938;,
 1.194266;0.675609;,
 1.088281;0.674255;,
 0.997922;0.676586;,
 0.798953;0.669750;,
 0.692969;0.671325;,
 0.590890;0.669750;,
 0.421219;0.666332;,
 0.354024;0.691532;,
 0.278715;0.690898;,
 1.367030;0.580535;,
 1.421875;0.505859;,
 1.468908;0.416535;,
 0.936561;0.577605;,
 1.010937;0.489258;,
 1.077502;0.400910;,
 0.541249;0.579558;,
 0.600000;0.485352;,
 0.662658;0.392121;,
 0.196717;0.607879;,
 0.235938;0.503906;,
 0.286877;0.397981;,
 1.791639;0.588836;,
 1.832813;0.495117;,
 1.887658;0.393935;,
 1.717345;0.582488;,
 1.650781;0.501953;,
 1.607655;0.405793;,
 1.259533;0.573699;,
 1.220312;0.486328;,
 1.157655;0.410676;,
 0.825158;0.579558;,
 0.801563;0.486328;,
 0.777020;0.398395;,
 0.433752;0.571746;,
 0.406250;0.492188;,
 0.372889;0.395051;,
 0.097033;0.610808;,
 0.079405;0.500651;,
 0.000179;0.391470;,
 1.871276;0.256707;,
 1.748760;0.271001;,
 1.665109;0.284352;,
 1.446610;0.294117;,
 1.348438;0.300354;,
 1.261984;0.297047;,
 1.059110;0.294117;,
 0.945312;0.288636;,
 0.865369;0.291188;,
 0.655985;0.300953;,
 0.534375;0.298401;,
 0.426437;0.297535;,
 0.293414;0.273657;,
 0.202480;0.260901;,
 0.094119;0.264622;,
 1.571484;0.196441;,
 1.495312;0.137146;,
 1.331250;0.064667;,
 1.182031;0.225250;,
 1.189844;0.147888;,
 1.150781;0.085174;,
 0.777983;0.231361;,
 0.849219;0.150818;,
 0.923438;0.079315;,
 0.387691;0.218584;,
 0.450000;0.146911;,
 0.615939;0.065085;,
 1.997851;0.145404;,
 2.000119;0.000122;,
 1.504460;0.000347;,
 1.011719;1.000000;,
 1.735121;0.675724;,
 1.305469;0.646607;,
 0.871094;0.650513;,
 0.491406;0.643677;,
 0.170071;0.691781;,
 1.553906;0.310424;,
 1.166406;0.311401;,
 0.751563;0.320190;,
 0.356250;0.310424;,
 1.996896;0.275648;,
 1.005891;0.000342;;
 }
}
}

