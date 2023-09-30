; ModuleID = 'encrypt-k.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@iSsm0 = internal constant [256 x i32] [i32 1374988112, i32 2118214995, i32 437757123, i32 975658646, i32 1001089995, i32 530400753, i32 -1392879445, i32 1273168787, i32 540080725, i32 -1384747530, i32 -1999866223, i32 -184398811, i32 1340463100, i32 -987051049, i32 641025152, i32 -1251826801, i32 -558802359, i32 632953703, i32 1172967064, i32 1576976609, i32 -1020300030, i32 -2125664238, i32 -1924753501, i32 1809054150, i32 59727847, i32 361929877, i32 -1083344149, i32 -1789765158, i32 -725712083, i32 1484005843, i32 1239443753, i32 -1899378620, i32 1975683434, i32 -191989384, i32 -1722270101, i32 666464733, i32 -1092530250, i32 -259478249, i32 -920605594, i32 2110667444, i32 1675577880, i32 -451268222, i32 -1756286112, i32 1649639237, i32 -1318815776, i32 -1150570876, i32 -25059300, i32 -116905068, i32 1883793496, i32 -1891238631, i32 -1797362553, i32 1383856311, i32 -1418472669, i32 1917518562, i32 -484470953, i32 1716890410, i32 -1293211641, i32 800440835, i32 -2033878118, i32 -751368027, i32 807962610, i32 599762354, i32 33778362, i32 -317291940, i32 -1966138325, i32 -1485196142, i32 -217582864, i32 1315562145, i32 1708848333, i32 101039829, i32 -785096161, i32 -995688822, i32 875451293, i32 -1561111136, i32 92987698, i32 -1527321739, i32 193195065, i32 1080094634, i32 1584504582, i32 -1116860335, i32 1042385657, i32 -1763899843, i32 -583137874, i32 1306967366, i32 -1856729675, i32 1908694277, i32 67556463, i32 1615861247, i32 429456164, i32 -692196969, i32 -1992277044, i32 1742315127, i32 -1326955843, i32 126454664, i32 -417768648, i32 2043211483, i32 -1585706425, i32 2084704233, i32 -125559095, i32 0, i32 159417987, i32 841739592, i32 504459436, i32 1817866830, i32 -49348613, i32 260388950, i32 1034867998, i32 908933415, i32 168810852, i32 1750902305, i32 -1688513327, i32 607530554, i32 202008497, i32 -1822955761, i32 -1259432238, i32 463180190, i32 -2134850225, i32 1641816226, i32 1517767529, i32 470948374, i32 -493635062, i32 -1063245083, i32 1008918595, i32 303765277, i32 235474187, i32 -225720403, i32 766945465, i32 337553864, i32 1475418501, i32 -1351284916, i32 -291906117, i32 -1551933187, i32 -150919521, i32 1551037884, i32 1147550661, i32 1543208500, i32 -1958532746, i32 -886847780, i32 -1225917336, i32 -1192955549, i32 -684598070, i32 1113818384, i32 328671808, i32 -2067394272, i32 -2058738563, i32 -759480840, i32 -1359400431, i32 -953573011, i32 496906059, i32 -592301837, i32 226906860, i32 2009195472, i32 733156972, i32 -1452230247, i32 294930682, i32 1206477858, i32 -1459843900, i32 -1594867942, i32 1451044056, i32 573804783, i32 -2025238841, i32 -650587711, i32 -1932877058, i32 -1730933962, i32 -1493859889, i32 -1518674392, i32 -625504730, i32 1068351396, i32 742039012, i32 1350078989, i32 1784663195, i32 1417561698, i32 -158526526, i32 -1864845080, i32 775550814, i32 -2101104651, i32 -1621262146, i32 1775276924, i32 1876241833, i32 -819653965, i32 -928212677, i32 270040487, i32 -392404114, i32 -616842373, i32 -853116919, i32 1851332852, i32 -325404927, i32 -2091935064, i32 -426414491, i32 -1426069890, i32 566021896, i32 -283776794, i32 -1159226407, i32 1248802510, i32 -358676012, i32 699432150, i32 832877231, i32 708780849, i32 -962227152, i32 899835584, i32 1951317047, i32 -58537306, i32 -527380304, i32 866637845, i32 -251357110, i32 1106041591, i32 2144161806, i32 395441711, i32 1984812685, i32 1139781709, i32 -861254316, i32 -459930401, i32 -1630423581, i32 1282050075, i32 -1054072904, i32 1181045119, i32 -1654724092, i32 25965917, i32 -91786125, i32 -83148498, i32 -1285087910, i32 -1831087534, i32 -384805325, i32 1842759443, i32 -1697160820, i32 933301370, i32 1509430414, i32 -351060855, i32 -827774994, i32 -1218328267, i32 -518199827, i32 2051518780, i32 -1663901863, i32 1441952575, i32 404016761, i32 1942435775, i32 1408749034, i32 1610459739, i32 -549621996, i32 2017778566, i32 -894438527, i32 -1184316354, i32 941896748, i32 -1029488545, i32 371049330, i32 -1126030068, i32 675039627, i32 -15887039, i32 967311729, i32 135050206, i32 -659233636, i32 1683407248, i32 2076935265, i32 -718096784, i32 1215061108, i32 -793225406], align 16, !dbg !0, !psr.id !22
@iS = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16, !dbg !14, !psr.id !23
@Ssm0 = internal constant [256 x i32] [i32 -966564955, i32 -126059388, i32 -294160487, i32 -159679603, i32 -855539, i32 -697603139, i32 -563122255, i32 -1849309868, i32 1613770832, i32 33620227, i32 -832084055, i32 1445669757, i32 -402719207, i32 -1244145822, i32 1303096294, i32 -327780710, i32 -1882535355, i32 528646813, i32 -1983264448, i32 -92439161, i32 -268764651, i32 -1302767125, i32 -1907931191, i32 -68095989, i32 1101901292, i32 -1277897625, i32 1604494077, i32 1169141738, i32 597466303, i32 1403299063, i32 -462261610, i32 -1681866661, i32 1974974402, i32 -503448292, i32 1033081774, i32 1277568618, i32 1815492186, i32 2118074177, i32 -168298750, i32 -2083730353, i32 1748251740, i32 1369810420, i32 -773462732, i32 -101584632, i32 -495881837, i32 -1411852173, i32 1647391059, i32 706024767, i32 134480908, i32 -1782069422, i32 1176707941, i32 -1648114850, i32 806885416, i32 932615841, i32 168101135, i32 798661301, i32 235341577, i32 605164086, i32 461406363, i32 -538779075, i32 -840176858, i32 1311188841, i32 2142417613, i32 -361400929, i32 302582043, i32 495158174, i32 1479289972, i32 874125870, i32 907746093, i32 -596742478, i32 -1269146898, i32 1537253627, i32 -1538108682, i32 1983593293, i32 -1210657183, i32 2108928974, i32 1378429307, i32 -572267714, i32 1580150641, i32 327451799, i32 -1504488459, i32 -1177431704, i32 0, i32 -1041371860, i32 1075847264, i32 -469959649, i32 2041688520, i32 -1235526675, i32 -731223362, i32 -1916023994, i32 1740553945, i32 1916352843, i32 -1807070498, i32 -1739830060, i32 -1336387352, i32 -2049978550, i32 -1143943061, i32 -974131414, i32 1336584933, i32 -302253290, i32 -2042412091, i32 -1706209833, i32 1714631509, i32 293963156, i32 -1975171633, i32 -369493744, i32 67240454, i32 -25198719, i32 -1605349136, i32 2017213508, i32 631218106, i32 1269344483, i32 -1571728909, i32 1571005438, i32 -2143272768, i32 93294474, i32 1066570413, i32 563977660, i32 1882732616, i32 -235539196, i32 1673313503, i32 2008463041, i32 -1344611723, i32 1109467491, i32 537923632, i32 -436207846, i32 -34344178, i32 -1076702611, i32 -2117218996, i32 403442708, i32 638784309, i32 -1007883217, i32 -1101045791, i32 899127202, i32 -2008791860, i32 773265209, i32 -1815821225, i32 1437050866, i32 -58818942, i32 2050833735, i32 -932944724, i32 -1168286233, i32 840505643, i32 -428641387, i32 -1067425632, i32 427917720, i32 -1638969391, i32 -1545806721, i32 1143087718, i32 1412049534, i32 999329963, i32 193497219, i32 -1941551414, i32 -940642775, i32 1807268051, i32 672404540, i32 -1478566279, i32 -1134666014, i32 369822493, i32 -1378100362, i32 -606019525, i32 1681011286, i32 1949973070, i32 336202270, i32 -1840690725, i32 201721354, i32 1210328172, i32 -1201906460, i32 -1614626211, i32 -1110191250, i32 1135389935, i32 -1000185178, i32 965841320, i32 831886756, i32 -739974089, i32 -226920053, i32 -706222286, i32 -1949775805, i32 1849112409, i32 -630362697, i32 26054028, i32 -1311386268, i32 -1672589614, i32 1235855840, i32 -663982924, i32 -1403627782, i32 -202050553, i32 -806688219, i32 -899324497, i32 -193299826, i32 1202630377, i32 268961816, i32 1874508501, i32 -260540280, i32 1243948399, i32 1546530418, i32 941366308, i32 1470539505, i32 1941222599, i32 -1748580783, i32 -873928669, i32 -1579295364, i32 -395021156, i32 1042226977, i32 -1773450275, i32 1639824860, i32 227249030, i32 260737669, i32 -529502064, i32 2084453954, i32 1907733956, i32 -865704278, i32 -1874310952, i32 100860677, i32 -134810111, i32 470683154, i32 -1033805405, i32 1781871967, i32 -1370007559, i32 1773779408, i32 394692241, i32 -1715355304, i32 974986535, i32 664706745, i32 -639508168, i32 -336005101, i32 731420851, i32 571543859, i32 -764843589, i32 -1445340816, i32 126783113, i32 865375399, i32 765172662, i32 1008606754, i32 361203602, i32 -907417312, i32 -2016489911, i32 -1437248001, i32 1344809080, i32 -1512054918, i32 59542671, i32 1503764984, i32 160008576, i32 437062935, i32 1707065306, i32 -672733647, i32 -2076032314, i32 -798463816, i32 -2109652541, i32 697932208, i32 1512910199, i32 504303377, i32 2075177163, i32 -1470868228, i32 1841019862, i32 739644986], align 16, !dbg !24, !psr.id !30
@br_aes_S = dso_local constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16, !dbg !31, !psr.id !43
@Rcon = internal constant [10 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 452984832, i32 905969664], align 16, !dbg !38, !psr.id !44

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_big_keysched_inv(i32* %0, i8* %1, i64 %2) #0 !dbg !51 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !60, metadata !DIExpression()), !dbg !61, !psr.id !62
  call void @llvm.dbg.value(metadata i8* %1, metadata !63, metadata !DIExpression()), !dbg !61, !psr.id !64
  call void @llvm.dbg.value(metadata i64 %2, metadata !65, metadata !DIExpression()), !dbg !61, !psr.id !66
  %4 = call i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2), !dbg !67, !psr.id !68
  call void @llvm.dbg.value(metadata i32 %4, metadata !69, metadata !DIExpression()), !dbg !61, !psr.id !70
  %5 = shl i32 %4, 2, !dbg !71, !psr.id !72
  call void @llvm.dbg.value(metadata i32 %5, metadata !73, metadata !DIExpression()), !dbg !61, !psr.id !74
  call void @llvm.dbg.value(metadata i32 4, metadata !75, metadata !DIExpression()), !dbg !61, !psr.id !76
  br label %6, !dbg !77, !psr.id !79

6:                                                ; preds = %54, %3
  %.0 = phi i32 [ 4, %3 ], [ %55, %54 ], !dbg !80, !psr.id !81
  call void @llvm.dbg.value(metadata i32 %.0, metadata !75, metadata !DIExpression()), !dbg !61, !psr.id !82
  %7 = icmp slt i32 %.0, %5, !dbg !83, !psr.id !85
  br i1 %7, label %8, label %56, !dbg !86, !psr.id !87

8:                                                ; preds = %6
  %9 = sext i32 %.0 to i64, !dbg !88, !psr.id !90
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !88, !psr.id !91
  %11 = load i32, i32* %10, align 4, !dbg !88, !psr.id !92
  call void @llvm.dbg.value(metadata i32 %11, metadata !93, metadata !DIExpression()), !dbg !94, !psr.id !95
  %12 = lshr i32 %11, 24, !dbg !96, !psr.id !97
  call void @llvm.dbg.value(metadata i32 %12, metadata !98, metadata !DIExpression()), !dbg !94, !psr.id !99
  %13 = lshr i32 %11, 16, !dbg !100, !psr.id !101
  %14 = and i32 %13, 255, !dbg !102, !psr.id !103
  call void @llvm.dbg.value(metadata i32 %14, metadata !104, metadata !DIExpression()), !dbg !94, !psr.id !105
  %15 = lshr i32 %11, 8, !dbg !106, !psr.id !107
  %16 = and i32 %15, 255, !dbg !108, !psr.id !109
  call void @llvm.dbg.value(metadata i32 %16, metadata !110, metadata !DIExpression()), !dbg !94, !psr.id !111
  %17 = and i32 %11, 255, !dbg !112, !psr.id !113
  call void @llvm.dbg.value(metadata i32 %17, metadata !114, metadata !DIExpression()), !dbg !94, !psr.id !115
  %18 = call i32 @mule(i32 %12), !dbg !116, !psr.id !117
  %19 = call i32 @mulb(i32 %14), !dbg !118, !psr.id !119
  %20 = xor i32 %18, %19, !dbg !120, !psr.id !121
  %21 = call i32 @muld(i32 %16), !dbg !122, !psr.id !123
  %22 = xor i32 %20, %21, !dbg !124, !psr.id !125
  %23 = call i32 @mul9(i32 %17), !dbg !126, !psr.id !127
  %24 = xor i32 %22, %23, !dbg !128, !psr.id !129
  call void @llvm.dbg.value(metadata i32 %24, metadata !130, metadata !DIExpression()), !dbg !94, !psr.id !131
  %25 = call i32 @mul9(i32 %12), !dbg !132, !psr.id !133
  %26 = call i32 @mule(i32 %14), !dbg !134, !psr.id !135
  %27 = xor i32 %25, %26, !dbg !136, !psr.id !137
  %28 = call i32 @mulb(i32 %16), !dbg !138, !psr.id !139
  %29 = xor i32 %27, %28, !dbg !140, !psr.id !141
  %30 = call i32 @muld(i32 %17), !dbg !142, !psr.id !143
  %31 = xor i32 %29, %30, !dbg !144, !psr.id !145
  call void @llvm.dbg.value(metadata i32 %31, metadata !146, metadata !DIExpression()), !dbg !94, !psr.id !147
  %32 = call i32 @muld(i32 %12), !dbg !148, !psr.id !149
  %33 = call i32 @mul9(i32 %14), !dbg !150, !psr.id !151
  %34 = xor i32 %32, %33, !dbg !152, !psr.id !153
  %35 = call i32 @mule(i32 %16), !dbg !154, !psr.id !155
  %36 = xor i32 %34, %35, !dbg !156, !psr.id !157
  %37 = call i32 @mulb(i32 %17), !dbg !158, !psr.id !159
  %38 = xor i32 %36, %37, !dbg !160, !psr.id !161
  call void @llvm.dbg.value(metadata i32 %38, metadata !162, metadata !DIExpression()), !dbg !94, !psr.id !163
  %39 = call i32 @mulb(i32 %12), !dbg !164, !psr.id !165
  %40 = call i32 @muld(i32 %14), !dbg !166, !psr.id !167
  %41 = xor i32 %39, %40, !dbg !168, !psr.id !169
  %42 = call i32 @mul9(i32 %16), !dbg !170, !psr.id !171
  %43 = xor i32 %41, %42, !dbg !172, !psr.id !173
  %44 = call i32 @mule(i32 %17), !dbg !174, !psr.id !175
  %45 = xor i32 %43, %44, !dbg !176, !psr.id !177
  call void @llvm.dbg.value(metadata i32 %45, metadata !178, metadata !DIExpression()), !dbg !94, !psr.id !179
  %46 = shl i32 %24, 24, !dbg !180, !psr.id !181
  %47 = shl i32 %31, 16, !dbg !182, !psr.id !183
  %48 = or i32 %46, %47, !dbg !184, !psr.id !185
  %49 = shl i32 %38, 8, !dbg !186, !psr.id !187
  %50 = or i32 %48, %49, !dbg !188, !psr.id !189
  %51 = or i32 %50, %45, !dbg !190, !psr.id !191
  %52 = sext i32 %.0 to i64, !dbg !192, !psr.id !193
  %53 = getelementptr inbounds i32, i32* %0, i64 %52, !dbg !192, !psr.id !194
  store i32 %51, i32* %53, align 4, !dbg !195, !psr.id !196
  br label %54, !dbg !197, !psr.id !198

54:                                               ; preds = %8
  %55 = add nsw i32 %.0, 1, !dbg !199, !psr.id !200
  call void @llvm.dbg.value(metadata i32 %55, metadata !75, metadata !DIExpression()), !dbg !61, !psr.id !201
  br label %6, !dbg !202, !llvm.loop !203, !psr.id !206

56:                                               ; preds = %6
  ret i32 %4, !dbg !207, !psr.id !208
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @mule(i32 %0) #0 !dbg !209 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !212, metadata !DIExpression()), !dbg !213, !psr.id !214
  %2 = call i32 @mul2(i32 %0), !dbg !215, !psr.id !216
  call void @llvm.dbg.value(metadata i32 %2, metadata !217, metadata !DIExpression()), !dbg !213, !psr.id !218
  %3 = call i32 @mul2(i32 %2), !dbg !219, !psr.id !220
  call void @llvm.dbg.value(metadata i32 %3, metadata !221, metadata !DIExpression()), !dbg !213, !psr.id !222
  %4 = xor i32 %2, %3, !dbg !223, !psr.id !224
  %5 = call i32 @mul2(i32 %3), !dbg !225, !psr.id !226
  %6 = xor i32 %4, %5, !dbg !227, !psr.id !228
  ret i32 %6, !dbg !229, !psr.id !230
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mulb(i32 %0) #0 !dbg !231 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !232, metadata !DIExpression()), !dbg !233, !psr.id !234
  %2 = call i32 @mul2(i32 %0), !dbg !235, !psr.id !236
  call void @llvm.dbg.value(metadata i32 %2, metadata !237, metadata !DIExpression()), !dbg !233, !psr.id !238
  %3 = xor i32 %0, %2, !dbg !239, !psr.id !240
  %4 = call i32 @mul2(i32 %2), !dbg !241, !psr.id !242
  %5 = call i32 @mul2(i32 %4), !dbg !243, !psr.id !244
  %6 = xor i32 %3, %5, !dbg !245, !psr.id !246
  ret i32 %6, !dbg !247, !psr.id !248
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @muld(i32 %0) #0 !dbg !249 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !250, metadata !DIExpression()), !dbg !251, !psr.id !252
  %2 = call i32 @mul2(i32 %0), !dbg !253, !psr.id !254
  %3 = call i32 @mul2(i32 %2), !dbg !255, !psr.id !256
  call void @llvm.dbg.value(metadata i32 %3, metadata !257, metadata !DIExpression()), !dbg !251, !psr.id !258
  %4 = xor i32 %0, %3, !dbg !259, !psr.id !260
  %5 = call i32 @mul2(i32 %3), !dbg !261, !psr.id !262
  %6 = xor i32 %4, %5, !dbg !263, !psr.id !264
  ret i32 %6, !dbg !265, !psr.id !266
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mul9(i32 %0) #0 !dbg !267 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !268, metadata !DIExpression()), !dbg !269, !psr.id !270
  %2 = call i32 @mul2(i32 %0), !dbg !271, !psr.id !272
  %3 = call i32 @mul2(i32 %2), !dbg !273, !psr.id !274
  %4 = call i32 @mul2(i32 %3), !dbg !275, !psr.id !276
  %5 = xor i32 %0, %4, !dbg !277, !psr.id !278
  ret i32 %5, !dbg !279, !psr.id !280
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mul2(i32 %0) #0 !dbg !281 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !284
  %2 = shl i32 %0, 1, !dbg !285, !psr.id !286
  call void @llvm.dbg.value(metadata i32 %2, metadata !282, metadata !DIExpression()), !dbg !283, !psr.id !287
  %3 = lshr i32 %2, 8, !dbg !288, !psr.id !289
  %4 = sub nsw i32 0, %3, !dbg !290, !psr.id !291
  %5 = and i32 %4, 283, !dbg !292, !psr.id !293
  %6 = xor i32 %2, %5, !dbg !294, !psr.id !295
  ret i32 %6, !dbg !296, !psr.id !297
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_big_decrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !298 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !303, metadata !DIExpression()), !dbg !304, !psr.id !305
  call void @llvm.dbg.value(metadata i32* %1, metadata !306, metadata !DIExpression()), !dbg !304, !psr.id !307
  call void @llvm.dbg.value(metadata i8* %2, metadata !308, metadata !DIExpression()), !dbg !304, !psr.id !309
  call void @llvm.dbg.value(metadata i8* %2, metadata !310, metadata !DIExpression()), !dbg !304, !psr.id !312
  %4 = call i32 @br_dec32be(i8* %2), !dbg !313, !psr.id !314
  call void @llvm.dbg.value(metadata i32 %4, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !316
  %5 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !317, !psr.id !318
  %6 = call i32 @br_dec32be(i8* %5), !dbg !319, !psr.id !320
  call void @llvm.dbg.value(metadata i32 %6, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !322
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !323, !psr.id !324
  %8 = call i32 @br_dec32be(i8* %7), !dbg !325, !psr.id !326
  call void @llvm.dbg.value(metadata i32 %8, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !328
  %9 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !329, !psr.id !330
  %10 = call i32 @br_dec32be(i8* %9), !dbg !331, !psr.id !332
  call void @llvm.dbg.value(metadata i32 %10, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !334
  %11 = shl i32 %0, 2, !dbg !335, !psr.id !336
  %12 = add i32 %11, 0, !dbg !337, !psr.id !338
  %13 = zext i32 %12 to i64, !dbg !339, !psr.id !340
  %14 = getelementptr inbounds i32, i32* %1, i64 %13, !dbg !339, !psr.id !341
  %15 = load i32, i32* %14, align 4, !dbg !339, !psr.id !342
  %16 = xor i32 %4, %15, !dbg !343, !psr.id !344
  call void @llvm.dbg.value(metadata i32 %16, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !345
  %17 = shl i32 %0, 2, !dbg !346, !psr.id !347
  %18 = add i32 %17, 1, !dbg !348, !psr.id !349
  %19 = zext i32 %18 to i64, !dbg !350, !psr.id !351
  %20 = getelementptr inbounds i32, i32* %1, i64 %19, !dbg !350, !psr.id !352
  %21 = load i32, i32* %20, align 4, !dbg !350, !psr.id !353
  %22 = xor i32 %6, %21, !dbg !354, !psr.id !355
  call void @llvm.dbg.value(metadata i32 %22, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !356
  %23 = shl i32 %0, 2, !dbg !357, !psr.id !358
  %24 = add i32 %23, 2, !dbg !359, !psr.id !360
  %25 = zext i32 %24 to i64, !dbg !361, !psr.id !362
  %26 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !361, !psr.id !363
  %27 = load i32, i32* %26, align 4, !dbg !361, !psr.id !364
  %28 = xor i32 %8, %27, !dbg !365, !psr.id !366
  call void @llvm.dbg.value(metadata i32 %28, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !367
  %29 = shl i32 %0, 2, !dbg !368, !psr.id !369
  %30 = add i32 %29, 3, !dbg !370, !psr.id !371
  %31 = zext i32 %30 to i64, !dbg !372, !psr.id !373
  %32 = getelementptr inbounds i32, i32* %1, i64 %31, !dbg !372, !psr.id !374
  %33 = load i32, i32* %32, align 4, !dbg !372, !psr.id !375
  %34 = xor i32 %10, %33, !dbg !376, !psr.id !377
  call void @llvm.dbg.value(metadata i32 %34, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !378
  %35 = sub i32 %0, 1, !dbg !379, !psr.id !381
  call void @llvm.dbg.value(metadata i32 %35, metadata !382, metadata !DIExpression()), !dbg !304, !psr.id !383
  br label %36, !dbg !384, !psr.id !385

36:                                               ; preds = %158, %3
  %.04 = phi i32 [ %16, %3 ], [ %139, %158 ], !dbg !304, !psr.id !386
  %.03 = phi i32 [ %22, %3 ], [ %145, %158 ], !dbg !304, !psr.id !387
  %.02 = phi i32 [ %28, %3 ], [ %151, %158 ], !dbg !304, !psr.id !388
  %.01 = phi i32 [ %34, %3 ], [ %157, %158 ], !dbg !304, !psr.id !389
  %.0 = phi i32 [ %35, %3 ], [ %159, %158 ], !dbg !390, !psr.id !391
  call void @llvm.dbg.value(metadata i32 %.0, metadata !382, metadata !DIExpression()), !dbg !304, !psr.id !392
  call void @llvm.dbg.value(metadata i32 %.01, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !393
  call void @llvm.dbg.value(metadata i32 %.02, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !394
  call void @llvm.dbg.value(metadata i32 %.03, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !395
  call void @llvm.dbg.value(metadata i32 %.04, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !396
  %37 = icmp ugt i32 %.0, 0, !dbg !397, !psr.id !399
  br i1 %37, label %38, label %160, !dbg !400, !psr.id !401

38:                                               ; preds = %36
  %39 = lshr i32 %.04, 24, !dbg !402, !psr.id !404
  %40 = zext i32 %39 to i64, !dbg !402, !psr.id !405
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %40, !dbg !402, !psr.id !406
  %42 = load i32, i32* %41, align 4, !dbg !402, !psr.id !407
  %43 = lshr i32 %.01, 16, !dbg !408, !psr.id !409
  %44 = and i32 %43, 255, !dbg !408, !psr.id !410
  %45 = zext i32 %44 to i64, !dbg !408, !psr.id !411
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %45, !dbg !408, !psr.id !412
  %47 = load i32, i32* %46, align 4, !dbg !408, !psr.id !413
  %48 = call i32 @rotr(i32 %47, i32 8), !dbg !408, !psr.id !414
  %49 = xor i32 %42, %48, !dbg !415, !psr.id !416
  %50 = lshr i32 %.02, 8, !dbg !417, !psr.id !418
  %51 = and i32 %50, 255, !dbg !417, !psr.id !419
  %52 = zext i32 %51 to i64, !dbg !417, !psr.id !420
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %52, !dbg !417, !psr.id !421
  %54 = load i32, i32* %53, align 4, !dbg !417, !psr.id !422
  %55 = call i32 @rotr(i32 %54, i32 16), !dbg !417, !psr.id !423
  %56 = xor i32 %49, %55, !dbg !424, !psr.id !425
  %57 = and i32 %.03, 255, !dbg !426, !psr.id !427
  %58 = zext i32 %57 to i64, !dbg !426, !psr.id !428
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %58, !dbg !426, !psr.id !429
  %60 = load i32, i32* %59, align 4, !dbg !426, !psr.id !430
  %61 = call i32 @rotr(i32 %60, i32 24), !dbg !426, !psr.id !431
  %62 = xor i32 %56, %61, !dbg !432, !psr.id !433
  call void @llvm.dbg.value(metadata i32 %62, metadata !434, metadata !DIExpression()), !dbg !435, !psr.id !436
  %63 = lshr i32 %.03, 24, !dbg !437, !psr.id !438
  %64 = zext i32 %63 to i64, !dbg !437, !psr.id !439
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %64, !dbg !437, !psr.id !440
  %66 = load i32, i32* %65, align 4, !dbg !437, !psr.id !441
  %67 = lshr i32 %.04, 16, !dbg !442, !psr.id !443
  %68 = and i32 %67, 255, !dbg !442, !psr.id !444
  %69 = zext i32 %68 to i64, !dbg !442, !psr.id !445
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %69, !dbg !442, !psr.id !446
  %71 = load i32, i32* %70, align 4, !dbg !442, !psr.id !447
  %72 = call i32 @rotr(i32 %71, i32 8), !dbg !442, !psr.id !448
  %73 = xor i32 %66, %72, !dbg !449, !psr.id !450
  %74 = lshr i32 %.01, 8, !dbg !451, !psr.id !452
  %75 = and i32 %74, 255, !dbg !451, !psr.id !453
  %76 = zext i32 %75 to i64, !dbg !451, !psr.id !454
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %76, !dbg !451, !psr.id !455
  %78 = load i32, i32* %77, align 4, !dbg !451, !psr.id !456
  %79 = call i32 @rotr(i32 %78, i32 16), !dbg !451, !psr.id !457
  %80 = xor i32 %73, %79, !dbg !458, !psr.id !459
  %81 = and i32 %.02, 255, !dbg !460, !psr.id !461
  %82 = zext i32 %81 to i64, !dbg !460, !psr.id !462
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %82, !dbg !460, !psr.id !463
  %84 = load i32, i32* %83, align 4, !dbg !460, !psr.id !464
  %85 = call i32 @rotr(i32 %84, i32 24), !dbg !460, !psr.id !465
  %86 = xor i32 %80, %85, !dbg !466, !psr.id !467
  call void @llvm.dbg.value(metadata i32 %86, metadata !468, metadata !DIExpression()), !dbg !435, !psr.id !469
  %87 = lshr i32 %.02, 24, !dbg !470, !psr.id !471
  %88 = zext i32 %87 to i64, !dbg !470, !psr.id !472
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %88, !dbg !470, !psr.id !473
  %90 = load i32, i32* %89, align 4, !dbg !470, !psr.id !474
  %91 = lshr i32 %.03, 16, !dbg !475, !psr.id !476
  %92 = and i32 %91, 255, !dbg !475, !psr.id !477
  %93 = zext i32 %92 to i64, !dbg !475, !psr.id !478
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %93, !dbg !475, !psr.id !479
  %95 = load i32, i32* %94, align 4, !dbg !475, !psr.id !480
  %96 = call i32 @rotr(i32 %95, i32 8), !dbg !475, !psr.id !481
  %97 = xor i32 %90, %96, !dbg !482, !psr.id !483
  %98 = lshr i32 %.04, 8, !dbg !484, !psr.id !485
  %99 = and i32 %98, 255, !dbg !484, !psr.id !486
  %100 = zext i32 %99 to i64, !dbg !484, !psr.id !487
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %100, !dbg !484, !psr.id !488
  %102 = load i32, i32* %101, align 4, !dbg !484, !psr.id !489
  %103 = call i32 @rotr(i32 %102, i32 16), !dbg !484, !psr.id !490
  %104 = xor i32 %97, %103, !dbg !491, !psr.id !492
  %105 = and i32 %.01, 255, !dbg !493, !psr.id !494
  %106 = zext i32 %105 to i64, !dbg !493, !psr.id !495
  %107 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %106, !dbg !493, !psr.id !496
  %108 = load i32, i32* %107, align 4, !dbg !493, !psr.id !497
  %109 = call i32 @rotr(i32 %108, i32 24), !dbg !493, !psr.id !498
  %110 = xor i32 %104, %109, !dbg !499, !psr.id !500
  call void @llvm.dbg.value(metadata i32 %110, metadata !501, metadata !DIExpression()), !dbg !435, !psr.id !502
  %111 = lshr i32 %.01, 24, !dbg !503, !psr.id !504
  %112 = zext i32 %111 to i64, !dbg !503, !psr.id !505
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %112, !dbg !503, !psr.id !506
  %114 = load i32, i32* %113, align 4, !dbg !503, !psr.id !507
  %115 = lshr i32 %.02, 16, !dbg !508, !psr.id !509
  %116 = and i32 %115, 255, !dbg !508, !psr.id !510
  %117 = zext i32 %116 to i64, !dbg !508, !psr.id !511
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %117, !dbg !508, !psr.id !512
  %119 = load i32, i32* %118, align 4, !dbg !508, !psr.id !513
  %120 = call i32 @rotr(i32 %119, i32 8), !dbg !508, !psr.id !514
  %121 = xor i32 %114, %120, !dbg !515, !psr.id !516
  %122 = lshr i32 %.03, 8, !dbg !517, !psr.id !518
  %123 = and i32 %122, 255, !dbg !517, !psr.id !519
  %124 = zext i32 %123 to i64, !dbg !517, !psr.id !520
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %124, !dbg !517, !psr.id !521
  %126 = load i32, i32* %125, align 4, !dbg !517, !psr.id !522
  %127 = call i32 @rotr(i32 %126, i32 16), !dbg !517, !psr.id !523
  %128 = xor i32 %121, %127, !dbg !524, !psr.id !525
  %129 = and i32 %.04, 255, !dbg !526, !psr.id !527
  %130 = zext i32 %129 to i64, !dbg !526, !psr.id !528
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %130, !dbg !526, !psr.id !529
  %132 = load i32, i32* %131, align 4, !dbg !526, !psr.id !530
  %133 = call i32 @rotr(i32 %132, i32 24), !dbg !526, !psr.id !531
  %134 = xor i32 %128, %133, !dbg !532, !psr.id !533
  call void @llvm.dbg.value(metadata i32 %134, metadata !534, metadata !DIExpression()), !dbg !435, !psr.id !535
  call void @llvm.dbg.value(metadata i32 %62, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !536
  call void @llvm.dbg.value(metadata i32 %86, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !537
  call void @llvm.dbg.value(metadata i32 %110, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !538
  call void @llvm.dbg.value(metadata i32 %134, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !539
  %135 = shl i32 %.0, 2, !dbg !540, !psr.id !541
  %136 = zext i32 %135 to i64, !dbg !542, !psr.id !543
  %137 = getelementptr inbounds i32, i32* %1, i64 %136, !dbg !542, !psr.id !544
  %138 = load i32, i32* %137, align 4, !dbg !542, !psr.id !545
  %139 = xor i32 %62, %138, !dbg !546, !psr.id !547
  call void @llvm.dbg.value(metadata i32 %139, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !548
  %140 = shl i32 %.0, 2, !dbg !549, !psr.id !550
  %141 = add i32 %140, 1, !dbg !551, !psr.id !552
  %142 = zext i32 %141 to i64, !dbg !553, !psr.id !554
  %143 = getelementptr inbounds i32, i32* %1, i64 %142, !dbg !553, !psr.id !555
  %144 = load i32, i32* %143, align 4, !dbg !553, !psr.id !556
  %145 = xor i32 %86, %144, !dbg !557, !psr.id !558
  call void @llvm.dbg.value(metadata i32 %145, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !559
  %146 = shl i32 %.0, 2, !dbg !560, !psr.id !561
  %147 = add i32 %146, 2, !dbg !562, !psr.id !563
  %148 = zext i32 %147 to i64, !dbg !564, !psr.id !565
  %149 = getelementptr inbounds i32, i32* %1, i64 %148, !dbg !564, !psr.id !566
  %150 = load i32, i32* %149, align 4, !dbg !564, !psr.id !567
  %151 = xor i32 %110, %150, !dbg !568, !psr.id !569
  call void @llvm.dbg.value(metadata i32 %151, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !570
  %152 = shl i32 %.0, 2, !dbg !571, !psr.id !572
  %153 = add i32 %152, 3, !dbg !573, !psr.id !574
  %154 = zext i32 %153 to i64, !dbg !575, !psr.id !576
  %155 = getelementptr inbounds i32, i32* %1, i64 %154, !dbg !575, !psr.id !577
  %156 = load i32, i32* %155, align 4, !dbg !575, !psr.id !578
  %157 = xor i32 %134, %156, !dbg !579, !psr.id !580
  call void @llvm.dbg.value(metadata i32 %157, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !581
  br label %158, !dbg !582, !psr.id !583

158:                                              ; preds = %38
  %159 = add i32 %.0, -1, !dbg !584, !psr.id !585
  call void @llvm.dbg.value(metadata i32 %159, metadata !382, metadata !DIExpression()), !dbg !304, !psr.id !586
  br label %36, !dbg !587, !llvm.loop !588, !psr.id !590

160:                                              ; preds = %36
  %161 = lshr i32 %.04, 24, !dbg !591, !psr.id !592
  %162 = zext i32 %161 to i64, !dbg !593, !psr.id !594
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %162, !dbg !593, !psr.id !595
  %164 = load i8, i8* %163, align 1, !dbg !593, !psr.id !596
  %165 = zext i8 %164 to i32, !dbg !597, !psr.id !598
  %166 = shl i32 %165, 24, !dbg !599, !psr.id !600
  %167 = lshr i32 %.01, 16, !dbg !601, !psr.id !602
  %168 = and i32 %167, 255, !dbg !603, !psr.id !604
  %169 = zext i32 %168 to i64, !dbg !605, !psr.id !606
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %169, !dbg !605, !psr.id !607
  %171 = load i8, i8* %170, align 1, !dbg !605, !psr.id !608
  %172 = zext i8 %171 to i32, !dbg !609, !psr.id !610
  %173 = shl i32 %172, 16, !dbg !611, !psr.id !612
  %174 = or i32 %166, %173, !dbg !613, !psr.id !614
  %175 = lshr i32 %.02, 8, !dbg !615, !psr.id !616
  %176 = and i32 %175, 255, !dbg !617, !psr.id !618
  %177 = zext i32 %176 to i64, !dbg !619, !psr.id !620
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %177, !dbg !619, !psr.id !621
  %179 = load i8, i8* %178, align 1, !dbg !619, !psr.id !622
  %180 = zext i8 %179 to i32, !dbg !623, !psr.id !624
  %181 = shl i32 %180, 8, !dbg !625, !psr.id !626
  %182 = or i32 %174, %181, !dbg !627, !psr.id !628
  %183 = and i32 %.03, 255, !dbg !629, !psr.id !630
  %184 = zext i32 %183 to i64, !dbg !631, !psr.id !632
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %184, !dbg !631, !psr.id !633
  %186 = load i8, i8* %185, align 1, !dbg !631, !psr.id !634
  %187 = zext i8 %186 to i32, !dbg !635, !psr.id !636
  %188 = or i32 %182, %187, !dbg !637, !psr.id !638
  call void @llvm.dbg.value(metadata i32 %188, metadata !639, metadata !DIExpression()), !dbg !304, !psr.id !640
  %189 = lshr i32 %.03, 24, !dbg !641, !psr.id !642
  %190 = zext i32 %189 to i64, !dbg !643, !psr.id !644
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %190, !dbg !643, !psr.id !645
  %192 = load i8, i8* %191, align 1, !dbg !643, !psr.id !646
  %193 = zext i8 %192 to i32, !dbg !647, !psr.id !648
  %194 = shl i32 %193, 24, !dbg !649, !psr.id !650
  %195 = lshr i32 %.04, 16, !dbg !651, !psr.id !652
  %196 = and i32 %195, 255, !dbg !653, !psr.id !654
  %197 = zext i32 %196 to i64, !dbg !655, !psr.id !656
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %197, !dbg !655, !psr.id !657
  %199 = load i8, i8* %198, align 1, !dbg !655, !psr.id !658
  %200 = zext i8 %199 to i32, !dbg !659, !psr.id !660
  %201 = shl i32 %200, 16, !dbg !661, !psr.id !662
  %202 = or i32 %194, %201, !dbg !663, !psr.id !664
  %203 = lshr i32 %.01, 8, !dbg !665, !psr.id !666
  %204 = and i32 %203, 255, !dbg !667, !psr.id !668
  %205 = zext i32 %204 to i64, !dbg !669, !psr.id !670
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %205, !dbg !669, !psr.id !671
  %207 = load i8, i8* %206, align 1, !dbg !669, !psr.id !672
  %208 = zext i8 %207 to i32, !dbg !673, !psr.id !674
  %209 = shl i32 %208, 8, !dbg !675, !psr.id !676
  %210 = or i32 %202, %209, !dbg !677, !psr.id !678
  %211 = and i32 %.02, 255, !dbg !679, !psr.id !680
  %212 = zext i32 %211 to i64, !dbg !681, !psr.id !682
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %212, !dbg !681, !psr.id !683
  %214 = load i8, i8* %213, align 1, !dbg !681, !psr.id !684
  %215 = zext i8 %214 to i32, !dbg !685, !psr.id !686
  %216 = or i32 %210, %215, !dbg !687, !psr.id !688
  call void @llvm.dbg.value(metadata i32 %216, metadata !689, metadata !DIExpression()), !dbg !304, !psr.id !690
  %217 = lshr i32 %.02, 24, !dbg !691, !psr.id !692
  %218 = zext i32 %217 to i64, !dbg !693, !psr.id !694
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %218, !dbg !693, !psr.id !695
  %220 = load i8, i8* %219, align 1, !dbg !693, !psr.id !696
  %221 = zext i8 %220 to i32, !dbg !697, !psr.id !698
  %222 = shl i32 %221, 24, !dbg !699, !psr.id !700
  %223 = lshr i32 %.03, 16, !dbg !701, !psr.id !702
  %224 = and i32 %223, 255, !dbg !703, !psr.id !704
  %225 = zext i32 %224 to i64, !dbg !705, !psr.id !706
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %225, !dbg !705, !psr.id !707
  %227 = load i8, i8* %226, align 1, !dbg !705, !psr.id !708
  %228 = zext i8 %227 to i32, !dbg !709, !psr.id !710
  %229 = shl i32 %228, 16, !dbg !711, !psr.id !712
  %230 = or i32 %222, %229, !dbg !713, !psr.id !714
  %231 = lshr i32 %.04, 8, !dbg !715, !psr.id !716
  %232 = and i32 %231, 255, !dbg !717, !psr.id !718
  %233 = zext i32 %232 to i64, !dbg !719, !psr.id !720
  %234 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %233, !dbg !719, !psr.id !721
  %235 = load i8, i8* %234, align 1, !dbg !719, !psr.id !722
  %236 = zext i8 %235 to i32, !dbg !723, !psr.id !724
  %237 = shl i32 %236, 8, !dbg !725, !psr.id !726
  %238 = or i32 %230, %237, !dbg !727, !psr.id !728
  %239 = and i32 %.01, 255, !dbg !729, !psr.id !730
  %240 = zext i32 %239 to i64, !dbg !731, !psr.id !732
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %240, !dbg !731, !psr.id !733
  %242 = load i8, i8* %241, align 1, !dbg !731, !psr.id !734
  %243 = zext i8 %242 to i32, !dbg !735, !psr.id !736
  %244 = or i32 %238, %243, !dbg !737, !psr.id !738
  call void @llvm.dbg.value(metadata i32 %244, metadata !739, metadata !DIExpression()), !dbg !304, !psr.id !740
  %245 = lshr i32 %.01, 24, !dbg !741, !psr.id !742
  %246 = zext i32 %245 to i64, !dbg !743, !psr.id !744
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %246, !dbg !743, !psr.id !745
  %248 = load i8, i8* %247, align 1, !dbg !743, !psr.id !746
  %249 = zext i8 %248 to i32, !dbg !747, !psr.id !748
  %250 = shl i32 %249, 24, !dbg !749, !psr.id !750
  %251 = lshr i32 %.02, 16, !dbg !751, !psr.id !752
  %252 = and i32 %251, 255, !dbg !753, !psr.id !754
  %253 = zext i32 %252 to i64, !dbg !755, !psr.id !756
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %253, !dbg !755, !psr.id !757
  %255 = load i8, i8* %254, align 1, !dbg !755, !psr.id !758
  %256 = zext i8 %255 to i32, !dbg !759, !psr.id !760
  %257 = shl i32 %256, 16, !dbg !761, !psr.id !762
  %258 = or i32 %250, %257, !dbg !763, !psr.id !764
  %259 = lshr i32 %.03, 8, !dbg !765, !psr.id !766
  %260 = and i32 %259, 255, !dbg !767, !psr.id !768
  %261 = zext i32 %260 to i64, !dbg !769, !psr.id !770
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %261, !dbg !769, !psr.id !771
  %263 = load i8, i8* %262, align 1, !dbg !769, !psr.id !772
  %264 = zext i8 %263 to i32, !dbg !773, !psr.id !774
  %265 = shl i32 %264, 8, !dbg !775, !psr.id !776
  %266 = or i32 %258, %265, !dbg !777, !psr.id !778
  %267 = and i32 %.04, 255, !dbg !779, !psr.id !780
  %268 = zext i32 %267 to i64, !dbg !781, !psr.id !782
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %268, !dbg !781, !psr.id !783
  %270 = load i8, i8* %269, align 1, !dbg !781, !psr.id !784
  %271 = zext i8 %270 to i32, !dbg !785, !psr.id !786
  %272 = or i32 %266, %271, !dbg !787, !psr.id !788
  call void @llvm.dbg.value(metadata i32 %272, metadata !789, metadata !DIExpression()), !dbg !304, !psr.id !790
  %273 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !791, !psr.id !792
  %274 = load i32, i32* %273, align 4, !dbg !791, !psr.id !793
  %275 = xor i32 %188, %274, !dbg !794, !psr.id !795
  call void @llvm.dbg.value(metadata i32 %275, metadata !315, metadata !DIExpression()), !dbg !304, !psr.id !796
  %276 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !797, !psr.id !798
  %277 = load i32, i32* %276, align 4, !dbg !797, !psr.id !799
  %278 = xor i32 %216, %277, !dbg !800, !psr.id !801
  call void @llvm.dbg.value(metadata i32 %278, metadata !321, metadata !DIExpression()), !dbg !304, !psr.id !802
  %279 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !803, !psr.id !804
  %280 = load i32, i32* %279, align 4, !dbg !803, !psr.id !805
  %281 = xor i32 %244, %280, !dbg !806, !psr.id !807
  call void @llvm.dbg.value(metadata i32 %281, metadata !327, metadata !DIExpression()), !dbg !304, !psr.id !808
  %282 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !809, !psr.id !810
  %283 = load i32, i32* %282, align 4, !dbg !809, !psr.id !811
  %284 = xor i32 %272, %283, !dbg !812, !psr.id !813
  call void @llvm.dbg.value(metadata i32 %284, metadata !333, metadata !DIExpression()), !dbg !304, !psr.id !814
  call void @br_enc32be(i8* %2, i32 %275), !dbg !815, !psr.id !816
  %285 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !817, !psr.id !818
  call void @br_enc32be(i8* %285, i32 %278), !dbg !819, !psr.id !820
  %286 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !821, !psr.id !822
  call void @br_enc32be(i8* %286, i32 %281), !dbg !823, !psr.id !824
  %287 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !825, !psr.id !826
  call void @br_enc32be(i8* %287, i32 %284), !dbg !827, !psr.id !828
  ret void, !dbg !829, !psr.id !830
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !831 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !835, metadata !DIExpression()), !dbg !836, !psr.id !837
  call void @llvm.dbg.value(metadata i8* %0, metadata !838, metadata !DIExpression()), !dbg !836, !psr.id !839
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !840, !psr.id !841
  %3 = load i8, i8* %2, align 1, !dbg !840, !psr.id !842
  %4 = zext i8 %3 to i32, !dbg !843, !psr.id !844
  %5 = shl i32 %4, 24, !dbg !845, !psr.id !846
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !847, !psr.id !848
  %7 = load i8, i8* %6, align 1, !dbg !847, !psr.id !849
  %8 = zext i8 %7 to i32, !dbg !850, !psr.id !851
  %9 = shl i32 %8, 16, !dbg !852, !psr.id !853
  %10 = or i32 %5, %9, !dbg !854, !psr.id !855
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !856, !psr.id !857
  %12 = load i8, i8* %11, align 1, !dbg !856, !psr.id !858
  %13 = zext i8 %12 to i32, !dbg !859, !psr.id !860
  %14 = shl i32 %13, 8, !dbg !861, !psr.id !862
  %15 = or i32 %10, %14, !dbg !863, !psr.id !864
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !865, !psr.id !866
  %17 = load i8, i8* %16, align 1, !dbg !865, !psr.id !867
  %18 = zext i8 %17 to i32, !dbg !868, !psr.id !869
  %19 = or i32 %15, %18, !dbg !870, !psr.id !871
  ret i32 %19, !dbg !872, !psr.id !873
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr(i32 %0, i32 %1) #0 !dbg !874 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !877, metadata !DIExpression()), !dbg !878, !psr.id !879
  call void @llvm.dbg.value(metadata i32 %1, metadata !880, metadata !DIExpression()), !dbg !878, !psr.id !881
  %3 = sub nsw i32 32, %1, !dbg !882, !psr.id !883
  %4 = shl i32 %0, %3, !dbg !884, !psr.id !885
  %5 = lshr i32 %0, %1, !dbg !886, !psr.id !887
  %6 = or i32 %4, %5, !dbg !888, !psr.id !889
  ret i32 %6, !dbg !890, !psr.id !891
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !892 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !895, metadata !DIExpression()), !dbg !896, !psr.id !897
  call void @llvm.dbg.value(metadata i32 %1, metadata !898, metadata !DIExpression()), !dbg !896, !psr.id !899
  call void @llvm.dbg.value(metadata i8* %0, metadata !900, metadata !DIExpression()), !dbg !896, !psr.id !901
  %3 = lshr i32 %1, 24, !dbg !902, !psr.id !903
  %4 = trunc i32 %3 to i8, !dbg !904, !psr.id !905
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !906, !psr.id !907
  store i8 %4, i8* %5, align 1, !dbg !908, !psr.id !909
  %6 = lshr i32 %1, 16, !dbg !910, !psr.id !911
  %7 = trunc i32 %6 to i8, !dbg !912, !psr.id !913
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !914, !psr.id !915
  store i8 %7, i8* %8, align 1, !dbg !916, !psr.id !917
  %9 = lshr i32 %1, 8, !dbg !918, !psr.id !919
  %10 = trunc i32 %9 to i8, !dbg !920, !psr.id !921
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !922, !psr.id !923
  store i8 %10, i8* %11, align 1, !dbg !924, !psr.id !925
  %12 = trunc i32 %1 to i8, !dbg !926, !psr.id !927
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !928, !psr.id !929
  store i8 %12, i8* %13, align 1, !dbg !930, !psr.id !931
  ret void, !dbg !932, !psr.id !933
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_big_encrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !934 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !935, metadata !DIExpression()), !dbg !936, !psr.id !937
  call void @llvm.dbg.value(metadata i32* %1, metadata !938, metadata !DIExpression()), !dbg !936, !psr.id !939
  call void @llvm.dbg.value(metadata i8* %2, metadata !940, metadata !DIExpression()), !dbg !936, !psr.id !941
  call void @llvm.dbg.value(metadata i8* %2, metadata !942, metadata !DIExpression()), !dbg !936, !psr.id !943
  %4 = call i32 @br_dec32be.1(i8* %2), !dbg !944, !psr.id !945
  call void @llvm.dbg.value(metadata i32 %4, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !947
  %5 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !948, !psr.id !949
  %6 = call i32 @br_dec32be.1(i8* %5), !dbg !950, !psr.id !951
  call void @llvm.dbg.value(metadata i32 %6, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !953
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !954, !psr.id !955
  %8 = call i32 @br_dec32be.1(i8* %7), !dbg !956, !psr.id !957
  call void @llvm.dbg.value(metadata i32 %8, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !959
  %9 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !960, !psr.id !961
  %10 = call i32 @br_dec32be.1(i8* %9), !dbg !962, !psr.id !963
  call void @llvm.dbg.value(metadata i32 %10, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !965
  %11 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !966, !psr.id !967, !PointTainted !968
  %12 = load i32, i32* %11, align 4, !dbg !966, !psr.id !969, !ValueTainted !970
  %13 = xor i32 %4, %12, !dbg !971, !psr.id !972, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %13, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !973
  %14 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !974, !psr.id !975, !PointTainted !968
  %15 = load i32, i32* %14, align 4, !dbg !974, !psr.id !976, !ValueTainted !970
  %16 = xor i32 %6, %15, !dbg !977, !psr.id !978, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %16, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !979
  %17 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !980, !psr.id !981, !PointTainted !968
  %18 = load i32, i32* %17, align 4, !dbg !980, !psr.id !982, !ValueTainted !970
  %19 = xor i32 %8, %18, !dbg !983, !psr.id !984, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %19, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !985
  %20 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !986, !psr.id !987, !PointTainted !968
  %21 = load i32, i32* %20, align 4, !dbg !986, !psr.id !988, !ValueTainted !970
  %22 = xor i32 %10, %21, !dbg !989, !psr.id !990, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %22, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !991
  call void @llvm.dbg.value(metadata i32 1, metadata !992, metadata !DIExpression()), !dbg !936, !psr.id !993
  br label %23, !dbg !994, !psr.id !996

23:                                               ; preds = %145, %3
  %.04 = phi i32 [ %13, %3 ], [ %126, %145 ], !dbg !936, !psr.id !997, !ValueTainted !970
  %.03 = phi i32 [ %16, %3 ], [ %132, %145 ], !dbg !936, !psr.id !998, !ValueTainted !970
  %.02 = phi i32 [ %19, %3 ], [ %138, %145 ], !dbg !936, !psr.id !999, !ValueTainted !970
  %.01 = phi i32 [ %22, %3 ], [ %144, %145 ], !dbg !936, !psr.id !1000, !ValueTainted !970
  %.0 = phi i32 [ 1, %3 ], [ %146, %145 ], !dbg !1001, !psr.id !1002
  call void @llvm.dbg.value(metadata i32 %.0, metadata !992, metadata !DIExpression()), !dbg !936, !psr.id !1003
  call void @llvm.dbg.value(metadata i32 %.01, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1004
  call void @llvm.dbg.value(metadata i32 %.02, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1005
  call void @llvm.dbg.value(metadata i32 %.03, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1006
  call void @llvm.dbg.value(metadata i32 %.04, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1007
  %24 = icmp ult i32 %.0, %0, !dbg !1008, !psr.id !1010
  br i1 %24, label %25, label %147, !dbg !1011, !psr.id !1012

25:                                               ; preds = %23
  %26 = lshr i32 %.04, 24, !dbg !1013, !psr.id !1015, !ValueTainted !970
  %27 = zext i32 %26 to i64, !dbg !1013, !psr.id !1016, !ValueTainted !970
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %27, !dbg !1013, !psr.id !1017, !ValueTainted !970
  %29 = load i32, i32* %28, align 4, !dbg !1013, !psr.id !1018, !Tainted !1019
  %30 = lshr i32 %.03, 16, !dbg !1020, !psr.id !1021, !ValueTainted !970
  %31 = and i32 %30, 255, !dbg !1020, !psr.id !1022, !ValueTainted !970
  %32 = zext i32 %31 to i64, !dbg !1020, !psr.id !1023, !ValueTainted !970
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %32, !dbg !1020, !psr.id !1024, !ValueTainted !970
  %34 = load i32, i32* %33, align 4, !dbg !1020, !psr.id !1025, !Tainted !1019
  %35 = call i32 @rotr.2(i32 %34, i32 8), !dbg !1020, !psr.id !1026
  %36 = xor i32 %29, %35, !dbg !1027, !psr.id !1028
  %37 = lshr i32 %.02, 8, !dbg !1029, !psr.id !1030, !ValueTainted !970
  %38 = and i32 %37, 255, !dbg !1029, !psr.id !1031, !ValueTainted !970
  %39 = zext i32 %38 to i64, !dbg !1029, !psr.id !1032, !ValueTainted !970
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %39, !dbg !1029, !psr.id !1033, !ValueTainted !970
  %41 = load i32, i32* %40, align 4, !dbg !1029, !psr.id !1034, !Tainted !1019
  %42 = call i32 @rotr.2(i32 %41, i32 16), !dbg !1029, !psr.id !1035
  %43 = xor i32 %36, %42, !dbg !1036, !psr.id !1037
  %44 = and i32 %.01, 255, !dbg !1038, !psr.id !1039, !ValueTainted !970
  %45 = zext i32 %44 to i64, !dbg !1038, !psr.id !1040, !ValueTainted !970
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %45, !dbg !1038, !psr.id !1041, !ValueTainted !970
  %47 = load i32, i32* %46, align 4, !dbg !1038, !psr.id !1042, !Tainted !1019
  %48 = call i32 @rotr.2(i32 %47, i32 24), !dbg !1038, !psr.id !1043
  %49 = xor i32 %43, %48, !dbg !1044, !psr.id !1045
  call void @llvm.dbg.value(metadata i32 %49, metadata !1046, metadata !DIExpression()), !dbg !1047, !psr.id !1048
  %50 = lshr i32 %.03, 24, !dbg !1049, !psr.id !1050, !ValueTainted !970
  %51 = zext i32 %50 to i64, !dbg !1049, !psr.id !1051, !ValueTainted !970
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %51, !dbg !1049, !psr.id !1052, !ValueTainted !970
  %53 = load i32, i32* %52, align 4, !dbg !1049, !psr.id !1053, !Tainted !1019
  %54 = lshr i32 %.02, 16, !dbg !1054, !psr.id !1055, !ValueTainted !970
  %55 = and i32 %54, 255, !dbg !1054, !psr.id !1056, !ValueTainted !970
  %56 = zext i32 %55 to i64, !dbg !1054, !psr.id !1057, !ValueTainted !970
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %56, !dbg !1054, !psr.id !1058, !ValueTainted !970
  %58 = load i32, i32* %57, align 4, !dbg !1054, !psr.id !1059, !Tainted !1019
  %59 = call i32 @rotr.2(i32 %58, i32 8), !dbg !1054, !psr.id !1060
  %60 = xor i32 %53, %59, !dbg !1061, !psr.id !1062
  %61 = lshr i32 %.01, 8, !dbg !1063, !psr.id !1064, !ValueTainted !970
  %62 = and i32 %61, 255, !dbg !1063, !psr.id !1065, !ValueTainted !970
  %63 = zext i32 %62 to i64, !dbg !1063, !psr.id !1066, !ValueTainted !970
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %63, !dbg !1063, !psr.id !1067, !ValueTainted !970
  %65 = load i32, i32* %64, align 4, !dbg !1063, !psr.id !1068, !Tainted !1019
  %66 = call i32 @rotr.2(i32 %65, i32 16), !dbg !1063, !psr.id !1069
  %67 = xor i32 %60, %66, !dbg !1070, !psr.id !1071
  %68 = and i32 %.04, 255, !dbg !1072, !psr.id !1073, !ValueTainted !970
  %69 = zext i32 %68 to i64, !dbg !1072, !psr.id !1074, !ValueTainted !970
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %69, !dbg !1072, !psr.id !1075, !ValueTainted !970
  %71 = load i32, i32* %70, align 4, !dbg !1072, !psr.id !1076, !Tainted !1019
  %72 = call i32 @rotr.2(i32 %71, i32 24), !dbg !1072, !psr.id !1077
  %73 = xor i32 %67, %72, !dbg !1078, !psr.id !1079
  call void @llvm.dbg.value(metadata i32 %73, metadata !1080, metadata !DIExpression()), !dbg !1047, !psr.id !1081
  %74 = lshr i32 %.02, 24, !dbg !1082, !psr.id !1083, !ValueTainted !970
  %75 = zext i32 %74 to i64, !dbg !1082, !psr.id !1084, !ValueTainted !970
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %75, !dbg !1082, !psr.id !1085, !ValueTainted !970
  %77 = load i32, i32* %76, align 4, !dbg !1082, !psr.id !1086, !Tainted !1019
  %78 = lshr i32 %.01, 16, !dbg !1087, !psr.id !1088, !ValueTainted !970
  %79 = and i32 %78, 255, !dbg !1087, !psr.id !1089, !ValueTainted !970
  %80 = zext i32 %79 to i64, !dbg !1087, !psr.id !1090, !ValueTainted !970
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %80, !dbg !1087, !psr.id !1091, !ValueTainted !970
  %82 = load i32, i32* %81, align 4, !dbg !1087, !psr.id !1092, !Tainted !1019
  %83 = call i32 @rotr.2(i32 %82, i32 8), !dbg !1087, !psr.id !1093
  %84 = xor i32 %77, %83, !dbg !1094, !psr.id !1095
  %85 = lshr i32 %.04, 8, !dbg !1096, !psr.id !1097, !ValueTainted !970
  %86 = and i32 %85, 255, !dbg !1096, !psr.id !1098, !ValueTainted !970
  %87 = zext i32 %86 to i64, !dbg !1096, !psr.id !1099, !ValueTainted !970
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %87, !dbg !1096, !psr.id !1100, !ValueTainted !970
  %89 = load i32, i32* %88, align 4, !dbg !1096, !psr.id !1101, !Tainted !1019
  %90 = call i32 @rotr.2(i32 %89, i32 16), !dbg !1096, !psr.id !1102
  %91 = xor i32 %84, %90, !dbg !1103, !psr.id !1104
  %92 = and i32 %.03, 255, !dbg !1105, !psr.id !1106, !ValueTainted !970
  %93 = zext i32 %92 to i64, !dbg !1105, !psr.id !1107, !ValueTainted !970
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %93, !dbg !1105, !psr.id !1108, !ValueTainted !970
  %95 = load i32, i32* %94, align 4, !dbg !1105, !psr.id !1109, !Tainted !1019
  %96 = call i32 @rotr.2(i32 %95, i32 24), !dbg !1105, !psr.id !1110
  %97 = xor i32 %91, %96, !dbg !1111, !psr.id !1112
  call void @llvm.dbg.value(metadata i32 %97, metadata !1113, metadata !DIExpression()), !dbg !1047, !psr.id !1114
  %98 = lshr i32 %.01, 24, !dbg !1115, !psr.id !1116, !ValueTainted !970
  %99 = zext i32 %98 to i64, !dbg !1115, !psr.id !1117, !ValueTainted !970
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %99, !dbg !1115, !psr.id !1118, !ValueTainted !970
  %101 = load i32, i32* %100, align 4, !dbg !1115, !psr.id !1119, !Tainted !1019
  %102 = lshr i32 %.04, 16, !dbg !1120, !psr.id !1121, !ValueTainted !970
  %103 = and i32 %102, 255, !dbg !1120, !psr.id !1122, !ValueTainted !970
  %104 = zext i32 %103 to i64, !dbg !1120, !psr.id !1123, !ValueTainted !970
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %104, !dbg !1120, !psr.id !1124, !ValueTainted !970
  %106 = load i32, i32* %105, align 4, !dbg !1120, !psr.id !1125, !Tainted !1019
  %107 = call i32 @rotr.2(i32 %106, i32 8), !dbg !1120, !psr.id !1126
  %108 = xor i32 %101, %107, !dbg !1127, !psr.id !1128
  %109 = lshr i32 %.03, 8, !dbg !1129, !psr.id !1130, !ValueTainted !970
  %110 = and i32 %109, 255, !dbg !1129, !psr.id !1131, !ValueTainted !970
  %111 = zext i32 %110 to i64, !dbg !1129, !psr.id !1132, !ValueTainted !970
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %111, !dbg !1129, !psr.id !1133, !ValueTainted !970
  %113 = load i32, i32* %112, align 4, !dbg !1129, !psr.id !1134, !Tainted !1019
  %114 = call i32 @rotr.2(i32 %113, i32 16), !dbg !1129, !psr.id !1135
  %115 = xor i32 %108, %114, !dbg !1136, !psr.id !1137
  %116 = and i32 %.02, 255, !dbg !1138, !psr.id !1139, !ValueTainted !970
  %117 = zext i32 %116 to i64, !dbg !1138, !psr.id !1140, !ValueTainted !970
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %117, !dbg !1138, !psr.id !1141, !ValueTainted !970
  %119 = load i32, i32* %118, align 4, !dbg !1138, !psr.id !1142, !Tainted !1019
  %120 = call i32 @rotr.2(i32 %119, i32 24), !dbg !1138, !psr.id !1143
  %121 = xor i32 %115, %120, !dbg !1144, !psr.id !1145
  call void @llvm.dbg.value(metadata i32 %121, metadata !1146, metadata !DIExpression()), !dbg !1047, !psr.id !1147
  call void @llvm.dbg.value(metadata i32 %49, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1148
  call void @llvm.dbg.value(metadata i32 %73, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1149
  call void @llvm.dbg.value(metadata i32 %97, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1150
  call void @llvm.dbg.value(metadata i32 %121, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1151
  %122 = shl i32 %.0, 2, !dbg !1152, !psr.id !1153
  %123 = zext i32 %122 to i64, !dbg !1154, !psr.id !1155
  %124 = getelementptr inbounds i32, i32* %1, i64 %123, !dbg !1154, !psr.id !1156, !PointTainted !968
  %125 = load i32, i32* %124, align 4, !dbg !1154, !psr.id !1157, !ValueTainted !970
  %126 = xor i32 %49, %125, !dbg !1158, !psr.id !1159, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %126, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1160
  %127 = shl i32 %.0, 2, !dbg !1161, !psr.id !1162
  %128 = add i32 %127, 1, !dbg !1163, !psr.id !1164
  %129 = zext i32 %128 to i64, !dbg !1165, !psr.id !1166
  %130 = getelementptr inbounds i32, i32* %1, i64 %129, !dbg !1165, !psr.id !1167, !PointTainted !968
  %131 = load i32, i32* %130, align 4, !dbg !1165, !psr.id !1168, !ValueTainted !970
  %132 = xor i32 %73, %131, !dbg !1169, !psr.id !1170, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %132, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1171
  %133 = shl i32 %.0, 2, !dbg !1172, !psr.id !1173
  %134 = add i32 %133, 2, !dbg !1174, !psr.id !1175
  %135 = zext i32 %134 to i64, !dbg !1176, !psr.id !1177
  %136 = getelementptr inbounds i32, i32* %1, i64 %135, !dbg !1176, !psr.id !1178, !PointTainted !968
  %137 = load i32, i32* %136, align 4, !dbg !1176, !psr.id !1179, !ValueTainted !970
  %138 = xor i32 %97, %137, !dbg !1180, !psr.id !1181, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %138, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1182
  %139 = shl i32 %.0, 2, !dbg !1183, !psr.id !1184
  %140 = add i32 %139, 3, !dbg !1185, !psr.id !1186
  %141 = zext i32 %140 to i64, !dbg !1187, !psr.id !1188
  %142 = getelementptr inbounds i32, i32* %1, i64 %141, !dbg !1187, !psr.id !1189, !PointTainted !968
  %143 = load i32, i32* %142, align 4, !dbg !1187, !psr.id !1190, !ValueTainted !970
  %144 = xor i32 %121, %143, !dbg !1191, !psr.id !1192, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %144, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1193
  br label %145, !dbg !1194, !psr.id !1195

145:                                              ; preds = %25
  %146 = add i32 %.0, 1, !dbg !1196, !psr.id !1197
  call void @llvm.dbg.value(metadata i32 %146, metadata !992, metadata !DIExpression()), !dbg !936, !psr.id !1198
  br label %23, !dbg !1199, !llvm.loop !1200, !psr.id !1202

147:                                              ; preds = %23
  %148 = lshr i32 %.04, 24, !dbg !1203, !psr.id !1204, !ValueTainted !970
  %149 = zext i32 %148 to i64, !dbg !1205, !psr.id !1206, !ValueTainted !970
  %150 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %149, !dbg !1205, !psr.id !1207, !ValueTainted !970
  %151 = load i8, i8* %150, align 1, !dbg !1205, !psr.id !1208, !Tainted !1019
  %152 = zext i8 %151 to i32, !dbg !1209, !psr.id !1210
  %153 = shl i32 %152, 24, !dbg !1211, !psr.id !1212
  %154 = lshr i32 %.03, 16, !dbg !1213, !psr.id !1214, !ValueTainted !970
  %155 = and i32 %154, 255, !dbg !1215, !psr.id !1216, !ValueTainted !970
  %156 = zext i32 %155 to i64, !dbg !1217, !psr.id !1218, !ValueTainted !970
  %157 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %156, !dbg !1217, !psr.id !1219, !ValueTainted !970
  %158 = load i8, i8* %157, align 1, !dbg !1217, !psr.id !1220, !Tainted !1019
  %159 = zext i8 %158 to i32, !dbg !1221, !psr.id !1222
  %160 = shl i32 %159, 16, !dbg !1223, !psr.id !1224
  %161 = or i32 %153, %160, !dbg !1225, !psr.id !1226
  %162 = lshr i32 %.02, 8, !dbg !1227, !psr.id !1228, !ValueTainted !970
  %163 = and i32 %162, 255, !dbg !1229, !psr.id !1230, !ValueTainted !970
  %164 = zext i32 %163 to i64, !dbg !1231, !psr.id !1232, !ValueTainted !970
  %165 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %164, !dbg !1231, !psr.id !1233, !ValueTainted !970
  %166 = load i8, i8* %165, align 1, !dbg !1231, !psr.id !1234, !Tainted !1019
  %167 = zext i8 %166 to i32, !dbg !1235, !psr.id !1236
  %168 = shl i32 %167, 8, !dbg !1237, !psr.id !1238
  %169 = or i32 %161, %168, !dbg !1239, !psr.id !1240
  %170 = and i32 %.01, 255, !dbg !1241, !psr.id !1242, !ValueTainted !970
  %171 = zext i32 %170 to i64, !dbg !1243, !psr.id !1244, !ValueTainted !970
  %172 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %171, !dbg !1243, !psr.id !1245, !ValueTainted !970
  %173 = load i8, i8* %172, align 1, !dbg !1243, !psr.id !1246, !Tainted !1019
  %174 = zext i8 %173 to i32, !dbg !1247, !psr.id !1248
  %175 = or i32 %169, %174, !dbg !1249, !psr.id !1250
  call void @llvm.dbg.value(metadata i32 %175, metadata !1251, metadata !DIExpression()), !dbg !936, !psr.id !1252
  %176 = lshr i32 %.03, 24, !dbg !1253, !psr.id !1254, !ValueTainted !970
  %177 = zext i32 %176 to i64, !dbg !1255, !psr.id !1256, !ValueTainted !970
  %178 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %177, !dbg !1255, !psr.id !1257, !ValueTainted !970
  %179 = load i8, i8* %178, align 1, !dbg !1255, !psr.id !1258, !Tainted !1019
  %180 = zext i8 %179 to i32, !dbg !1259, !psr.id !1260
  %181 = shl i32 %180, 24, !dbg !1261, !psr.id !1262
  %182 = lshr i32 %.02, 16, !dbg !1263, !psr.id !1264, !ValueTainted !970
  %183 = and i32 %182, 255, !dbg !1265, !psr.id !1266, !ValueTainted !970
  %184 = zext i32 %183 to i64, !dbg !1267, !psr.id !1268, !ValueTainted !970
  %185 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %184, !dbg !1267, !psr.id !1269, !ValueTainted !970
  %186 = load i8, i8* %185, align 1, !dbg !1267, !psr.id !1270, !Tainted !1019
  %187 = zext i8 %186 to i32, !dbg !1271, !psr.id !1272
  %188 = shl i32 %187, 16, !dbg !1273, !psr.id !1274
  %189 = or i32 %181, %188, !dbg !1275, !psr.id !1276
  %190 = lshr i32 %.01, 8, !dbg !1277, !psr.id !1278, !ValueTainted !970
  %191 = and i32 %190, 255, !dbg !1279, !psr.id !1280, !ValueTainted !970
  %192 = zext i32 %191 to i64, !dbg !1281, !psr.id !1282, !ValueTainted !970
  %193 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %192, !dbg !1281, !psr.id !1283, !ValueTainted !970
  %194 = load i8, i8* %193, align 1, !dbg !1281, !psr.id !1284, !Tainted !1019
  %195 = zext i8 %194 to i32, !dbg !1285, !psr.id !1286
  %196 = shl i32 %195, 8, !dbg !1287, !psr.id !1288
  %197 = or i32 %189, %196, !dbg !1289, !psr.id !1290
  %198 = and i32 %.04, 255, !dbg !1291, !psr.id !1292, !ValueTainted !970
  %199 = zext i32 %198 to i64, !dbg !1293, !psr.id !1294, !ValueTainted !970
  %200 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %199, !dbg !1293, !psr.id !1295, !ValueTainted !970
  %201 = load i8, i8* %200, align 1, !dbg !1293, !psr.id !1296, !Tainted !1019
  %202 = zext i8 %201 to i32, !dbg !1297, !psr.id !1298
  %203 = or i32 %197, %202, !dbg !1299, !psr.id !1300
  call void @llvm.dbg.value(metadata i32 %203, metadata !1301, metadata !DIExpression()), !dbg !936, !psr.id !1302
  %204 = lshr i32 %.02, 24, !dbg !1303, !psr.id !1304, !ValueTainted !970
  %205 = zext i32 %204 to i64, !dbg !1305, !psr.id !1306, !ValueTainted !970
  %206 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %205, !dbg !1305, !psr.id !1307, !ValueTainted !970
  %207 = load i8, i8* %206, align 1, !dbg !1305, !psr.id !1308, !Tainted !1019
  %208 = zext i8 %207 to i32, !dbg !1309, !psr.id !1310
  %209 = shl i32 %208, 24, !dbg !1311, !psr.id !1312
  %210 = lshr i32 %.01, 16, !dbg !1313, !psr.id !1314, !ValueTainted !970
  %211 = and i32 %210, 255, !dbg !1315, !psr.id !1316, !ValueTainted !970
  %212 = zext i32 %211 to i64, !dbg !1317, !psr.id !1318, !ValueTainted !970
  %213 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %212, !dbg !1317, !psr.id !1319, !ValueTainted !970
  %214 = load i8, i8* %213, align 1, !dbg !1317, !psr.id !1320, !Tainted !1019
  %215 = zext i8 %214 to i32, !dbg !1321, !psr.id !1322
  %216 = shl i32 %215, 16, !dbg !1323, !psr.id !1324
  %217 = or i32 %209, %216, !dbg !1325, !psr.id !1326
  %218 = lshr i32 %.04, 8, !dbg !1327, !psr.id !1328, !ValueTainted !970
  %219 = and i32 %218, 255, !dbg !1329, !psr.id !1330, !ValueTainted !970
  %220 = zext i32 %219 to i64, !dbg !1331, !psr.id !1332, !ValueTainted !970
  %221 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %220, !dbg !1331, !psr.id !1333, !ValueTainted !970
  %222 = load i8, i8* %221, align 1, !dbg !1331, !psr.id !1334, !Tainted !1019
  %223 = zext i8 %222 to i32, !dbg !1335, !psr.id !1336
  %224 = shl i32 %223, 8, !dbg !1337, !psr.id !1338
  %225 = or i32 %217, %224, !dbg !1339, !psr.id !1340
  %226 = and i32 %.03, 255, !dbg !1341, !psr.id !1342, !ValueTainted !970
  %227 = zext i32 %226 to i64, !dbg !1343, !psr.id !1344, !ValueTainted !970
  %228 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %227, !dbg !1343, !psr.id !1345, !ValueTainted !970
  %229 = load i8, i8* %228, align 1, !dbg !1343, !psr.id !1346, !Tainted !1019
  %230 = zext i8 %229 to i32, !dbg !1347, !psr.id !1348
  %231 = or i32 %225, %230, !dbg !1349, !psr.id !1350
  call void @llvm.dbg.value(metadata i32 %231, metadata !1351, metadata !DIExpression()), !dbg !936, !psr.id !1352
  %232 = lshr i32 %.01, 24, !dbg !1353, !psr.id !1354, !ValueTainted !970
  %233 = zext i32 %232 to i64, !dbg !1355, !psr.id !1356, !ValueTainted !970
  %234 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %233, !dbg !1355, !psr.id !1357, !ValueTainted !970
  %235 = load i8, i8* %234, align 1, !dbg !1355, !psr.id !1358, !Tainted !1019
  %236 = zext i8 %235 to i32, !dbg !1359, !psr.id !1360
  %237 = shl i32 %236, 24, !dbg !1361, !psr.id !1362
  %238 = lshr i32 %.04, 16, !dbg !1363, !psr.id !1364, !ValueTainted !970
  %239 = and i32 %238, 255, !dbg !1365, !psr.id !1366, !ValueTainted !970
  %240 = zext i32 %239 to i64, !dbg !1367, !psr.id !1368, !ValueTainted !970
  %241 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %240, !dbg !1367, !psr.id !1369, !ValueTainted !970
  %242 = load i8, i8* %241, align 1, !dbg !1367, !psr.id !1370, !Tainted !1019
  %243 = zext i8 %242 to i32, !dbg !1371, !psr.id !1372
  %244 = shl i32 %243, 16, !dbg !1373, !psr.id !1374
  %245 = or i32 %237, %244, !dbg !1375, !psr.id !1376
  %246 = lshr i32 %.03, 8, !dbg !1377, !psr.id !1378, !ValueTainted !970
  %247 = and i32 %246, 255, !dbg !1379, !psr.id !1380, !ValueTainted !970
  %248 = zext i32 %247 to i64, !dbg !1381, !psr.id !1382, !ValueTainted !970
  %249 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %248, !dbg !1381, !psr.id !1383, !ValueTainted !970
  %250 = load i8, i8* %249, align 1, !dbg !1381, !psr.id !1384, !Tainted !1019
  %251 = zext i8 %250 to i32, !dbg !1385, !psr.id !1386
  %252 = shl i32 %251, 8, !dbg !1387, !psr.id !1388
  %253 = or i32 %245, %252, !dbg !1389, !psr.id !1390
  %254 = and i32 %.02, 255, !dbg !1391, !psr.id !1392, !ValueTainted !970
  %255 = zext i32 %254 to i64, !dbg !1393, !psr.id !1394, !ValueTainted !970
  %256 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %255, !dbg !1393, !psr.id !1395, !ValueTainted !970
  %257 = load i8, i8* %256, align 1, !dbg !1393, !psr.id !1396, !Tainted !1019
  %258 = zext i8 %257 to i32, !dbg !1397, !psr.id !1398
  %259 = or i32 %253, %258, !dbg !1399, !psr.id !1400
  call void @llvm.dbg.value(metadata i32 %259, metadata !1401, metadata !DIExpression()), !dbg !936, !psr.id !1402
  %260 = shl i32 %0, 2, !dbg !1403, !psr.id !1404
  %261 = zext i32 %260 to i64, !dbg !1405, !psr.id !1406
  %262 = getelementptr inbounds i32, i32* %1, i64 %261, !dbg !1405, !psr.id !1407, !PointTainted !968
  %263 = load i32, i32* %262, align 4, !dbg !1405, !psr.id !1408, !ValueTainted !970
  %264 = xor i32 %175, %263, !dbg !1409, !psr.id !1410, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %264, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1411
  %265 = shl i32 %0, 2, !dbg !1412, !psr.id !1413
  %266 = add i32 %265, 1, !dbg !1414, !psr.id !1415
  %267 = zext i32 %266 to i64, !dbg !1416, !psr.id !1417
  %268 = getelementptr inbounds i32, i32* %1, i64 %267, !dbg !1416, !psr.id !1418, !PointTainted !968
  %269 = load i32, i32* %268, align 4, !dbg !1416, !psr.id !1419, !ValueTainted !970
  %270 = xor i32 %203, %269, !dbg !1420, !psr.id !1421, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %270, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1422
  %271 = shl i32 %0, 2, !dbg !1423, !psr.id !1424
  %272 = add i32 %271, 2, !dbg !1425, !psr.id !1426
  %273 = zext i32 %272 to i64, !dbg !1427, !psr.id !1428
  %274 = getelementptr inbounds i32, i32* %1, i64 %273, !dbg !1427, !psr.id !1429, !PointTainted !968
  %275 = load i32, i32* %274, align 4, !dbg !1427, !psr.id !1430, !ValueTainted !970
  %276 = xor i32 %231, %275, !dbg !1431, !psr.id !1432, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %276, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1433
  %277 = shl i32 %0, 2, !dbg !1434, !psr.id !1435
  %278 = add i32 %277, 3, !dbg !1436, !psr.id !1437
  %279 = zext i32 %278 to i64, !dbg !1438, !psr.id !1439
  %280 = getelementptr inbounds i32, i32* %1, i64 %279, !dbg !1438, !psr.id !1440, !PointTainted !968
  %281 = load i32, i32* %280, align 4, !dbg !1438, !psr.id !1441, !ValueTainted !970
  %282 = xor i32 %259, %281, !dbg !1442, !psr.id !1443, !ValueTainted !970
  call void @llvm.dbg.value(metadata i32 %282, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1444
  call void @br_enc32be.3(i8* %2, i32 %264), !dbg !1445, !psr.id !1446
  %283 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1447, !psr.id !1448
  call void @br_enc32be.3(i8* %283, i32 %270), !dbg !1449, !psr.id !1450
  %284 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1451, !psr.id !1452
  call void @br_enc32be.3(i8* %284, i32 %276), !dbg !1453, !psr.id !1454
  %285 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1455, !psr.id !1456
  call void @br_enc32be.3(i8* %285, i32 %282), !dbg !1457, !psr.id !1458
  ret void, !dbg !1459, !psr.id !1460
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.1(i8* %0) #0 !dbg !1461 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1462, metadata !DIExpression()), !dbg !1463, !psr.id !1464
  call void @llvm.dbg.value(metadata i8* %0, metadata !1465, metadata !DIExpression()), !dbg !1463, !psr.id !1466
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1467, !psr.id !1468
  %3 = load i8, i8* %2, align 1, !dbg !1467, !psr.id !1469
  %4 = zext i8 %3 to i32, !dbg !1470, !psr.id !1471
  %5 = shl i32 %4, 24, !dbg !1472, !psr.id !1473
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1474, !psr.id !1475
  %7 = load i8, i8* %6, align 1, !dbg !1474, !psr.id !1476
  %8 = zext i8 %7 to i32, !dbg !1477, !psr.id !1478
  %9 = shl i32 %8, 16, !dbg !1479, !psr.id !1480
  %10 = or i32 %5, %9, !dbg !1481, !psr.id !1482
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1483, !psr.id !1484
  %12 = load i8, i8* %11, align 1, !dbg !1483, !psr.id !1485
  %13 = zext i8 %12 to i32, !dbg !1486, !psr.id !1487
  %14 = shl i32 %13, 8, !dbg !1488, !psr.id !1489
  %15 = or i32 %10, %14, !dbg !1490, !psr.id !1491
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1492, !psr.id !1493
  %17 = load i8, i8* %16, align 1, !dbg !1492, !psr.id !1494
  %18 = zext i8 %17 to i32, !dbg !1495, !psr.id !1496
  %19 = or i32 %15, %18, !dbg !1497, !psr.id !1498
  ret i32 %19, !dbg !1499, !psr.id !1500
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr.2(i32 %0, i32 %1) #0 !dbg !1501 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1502, metadata !DIExpression()), !dbg !1503, !psr.id !1504
  call void @llvm.dbg.value(metadata i32 %1, metadata !1505, metadata !DIExpression()), !dbg !1503, !psr.id !1506
  %3 = sub nsw i32 32, %1, !dbg !1507, !psr.id !1508
  %4 = shl i32 %0, %3, !dbg !1509, !psr.id !1510
  %5 = lshr i32 %0, %1, !dbg !1511, !psr.id !1512
  %6 = or i32 %4, %5, !dbg !1513, !psr.id !1514
  ret i32 %6, !dbg !1515, !psr.id !1516
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be.3(i8* %0, i32 %1) #0 !dbg !1517 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1518, metadata !DIExpression()), !dbg !1519, !psr.id !1520
  call void @llvm.dbg.value(metadata i32 %1, metadata !1521, metadata !DIExpression()), !dbg !1519, !psr.id !1522
  call void @llvm.dbg.value(metadata i8* %0, metadata !1523, metadata !DIExpression()), !dbg !1519, !psr.id !1524
  %3 = lshr i32 %1, 24, !dbg !1525, !psr.id !1526, !ValueTainted !970
  %4 = trunc i32 %3 to i8, !dbg !1527, !psr.id !1528, !ValueTainted !970
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1529, !psr.id !1530
  store i8 %4, i8* %5, align 1, !dbg !1531, !psr.id !1532
  %6 = lshr i32 %1, 16, !dbg !1533, !psr.id !1534, !ValueTainted !970
  %7 = trunc i32 %6 to i8, !dbg !1535, !psr.id !1536, !ValueTainted !970
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1537, !psr.id !1538
  store i8 %7, i8* %8, align 1, !dbg !1539, !psr.id !1540
  %9 = lshr i32 %1, 8, !dbg !1541, !psr.id !1542, !ValueTainted !970
  %10 = trunc i32 %9 to i8, !dbg !1543, !psr.id !1544, !ValueTainted !970
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1545, !psr.id !1546
  store i8 %10, i8* %11, align 1, !dbg !1547, !psr.id !1548
  %12 = trunc i32 %1 to i8, !dbg !1549, !psr.id !1550, !ValueTainted !970
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1551, !psr.id !1552
  store i8 %12, i8* %13, align 1, !dbg !1553, !psr.id !1554
  ret void, !dbg !1555, !psr.id !1556
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !1557 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1558, metadata !DIExpression()), !dbg !1559, !psr.id !1560
  call void @llvm.dbg.value(metadata i8* %1, metadata !1561, metadata !DIExpression()), !dbg !1559, !psr.id !1562
  call void @llvm.dbg.value(metadata i64 %2, metadata !1563, metadata !DIExpression()), !dbg !1559, !psr.id !1564
  switch i64 %2, label %7 [
    i64 16, label %4
    i64 24, label %5
    i64 32, label %6
  ], !dbg !1565, !psr.id !1566

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1567, metadata !DIExpression()), !dbg !1559, !psr.id !1568
  br label %8, !dbg !1569, !psr.id !1571

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !1567, metadata !DIExpression()), !dbg !1559, !psr.id !1572
  br label %8, !dbg !1573, !psr.id !1574

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !1567, metadata !DIExpression()), !dbg !1559, !psr.id !1575
  br label %8, !dbg !1576, !psr.id !1577

7:                                                ; preds = %3
  br label %65, !dbg !1578, !psr.id !1579

8:                                                ; preds = %6, %5, %4
  %.06 = phi i32 [ 14, %6 ], [ 12, %5 ], [ 10, %4 ], !dbg !1580, !psr.id !1581
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1567, metadata !DIExpression()), !dbg !1559, !psr.id !1582
  %9 = lshr i64 %2, 2, !dbg !1583, !psr.id !1584
  %10 = trunc i64 %9 to i32, !dbg !1585, !psr.id !1586
  call void @llvm.dbg.value(metadata i32 %10, metadata !1587, metadata !DIExpression()), !dbg !1559, !psr.id !1588
  %11 = add i32 %.06, 1, !dbg !1589, !psr.id !1590
  %12 = shl i32 %11, 2, !dbg !1591, !psr.id !1592
  call void @llvm.dbg.value(metadata i32 %12, metadata !1593, metadata !DIExpression()), !dbg !1559, !psr.id !1594
  call void @llvm.dbg.value(metadata i32 0, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1596
  br label %13, !dbg !1597, !psr.id !1599

13:                                               ; preds = %22, %8
  %.07 = phi i32 [ 0, %8 ], [ %23, %22 ], !dbg !1600, !psr.id !1601
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1602
  %14 = icmp slt i32 %.07, %10, !dbg !1603, !psr.id !1605
  br i1 %14, label %15, label %24, !dbg !1606, !psr.id !1607

15:                                               ; preds = %13
  %16 = shl i32 %.07, 2, !dbg !1608, !psr.id !1610
  %17 = sext i32 %16 to i64, !dbg !1611, !psr.id !1612
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !1611, !psr.id !1613
  %19 = call i32 @br_dec32be.8(i8* %18), !dbg !1614, !psr.id !1615
  %20 = sext i32 %.07 to i64, !dbg !1616, !psr.id !1617
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1616, !psr.id !1618
  store i32 %19, i32* %21, align 4, !dbg !1619, !psr.id !1620
  br label %22, !dbg !1621, !psr.id !1622

22:                                               ; preds = %15
  %23 = add nsw i32 %.07, 1, !dbg !1623, !psr.id !1624
  call void @llvm.dbg.value(metadata i32 %23, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1625
  br label %13, !dbg !1626, !llvm.loop !1627, !psr.id !1629

24:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 %10, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1630
  call void @llvm.dbg.value(metadata i32 0, metadata !1631, metadata !DIExpression()), !dbg !1559, !psr.id !1632
  call void @llvm.dbg.value(metadata i32 0, metadata !1633, metadata !DIExpression()), !dbg !1559, !psr.id !1634
  br label %25, !dbg !1635, !psr.id !1637

25:                                               ; preds = %62, %24
  %.18 = phi i32 [ %10, %24 ], [ %63, %62 ], !dbg !1638, !psr.id !1639
  %.04 = phi i32 [ 0, %24 ], [ %.15, %62 ], !dbg !1638, !psr.id !1640
  %.02 = phi i32 [ 0, %24 ], [ %.13, %62 ], !dbg !1638, !psr.id !1641
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1633, metadata !DIExpression()), !dbg !1559, !psr.id !1642
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1631, metadata !DIExpression()), !dbg !1559, !psr.id !1643
  call void @llvm.dbg.value(metadata i32 %.18, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1644
  %26 = icmp slt i32 %.18, %12, !dbg !1645, !psr.id !1647
  br i1 %26, label %27, label %64, !dbg !1648, !psr.id !1649

27:                                               ; preds = %25
  %28 = sub nsw i32 %.18, 1, !dbg !1650, !psr.id !1652
  %29 = sext i32 %28 to i64, !dbg !1653, !psr.id !1654
  %30 = getelementptr inbounds i32, i32* %0, i64 %29, !dbg !1653, !psr.id !1655
  %31 = load i32, i32* %30, align 4, !dbg !1653, !psr.id !1656
  call void @llvm.dbg.value(metadata i32 %31, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1659
  %32 = icmp eq i32 %.04, 0, !dbg !1660, !psr.id !1662
  br i1 %32, label %33, label %42, !dbg !1663, !psr.id !1664

33:                                               ; preds = %27
  %34 = shl i32 %31, 8, !dbg !1665, !psr.id !1667
  %35 = lshr i32 %31, 24, !dbg !1668, !psr.id !1669
  %36 = or i32 %34, %35, !dbg !1670, !psr.id !1671
  call void @llvm.dbg.value(metadata i32 %36, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1672
  %37 = call i32 @SubWord(i32 %36), !dbg !1673, !psr.id !1674
  %38 = sext i32 %.02 to i64, !dbg !1675, !psr.id !1676
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* @Rcon, i64 0, i64 %38, !dbg !1675, !psr.id !1677
  %40 = load i32, i32* %39, align 4, !dbg !1675, !psr.id !1678
  %41 = xor i32 %37, %40, !dbg !1679, !psr.id !1680
  call void @llvm.dbg.value(metadata i32 %41, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1681
  br label %49, !dbg !1682, !psr.id !1683

42:                                               ; preds = %27
  %43 = icmp sgt i32 %10, 6, !dbg !1684, !psr.id !1686
  br i1 %43, label %44, label %48, !dbg !1687, !psr.id !1688

44:                                               ; preds = %42
  %45 = icmp eq i32 %.04, 4, !dbg !1689, !psr.id !1690
  br i1 %45, label %46, label %48, !dbg !1691, !psr.id !1692

46:                                               ; preds = %44
  %47 = call i32 @SubWord(i32 %31), !dbg !1693, !psr.id !1695
  call void @llvm.dbg.value(metadata i32 %47, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1696
  br label %48, !dbg !1697, !psr.id !1698

48:                                               ; preds = %46, %44, %42
  %.01 = phi i32 [ %47, %46 ], [ %31, %44 ], [ %31, %42 ], !dbg !1658, !psr.id !1699
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1700
  br label %49, !psr.id !1701

49:                                               ; preds = %48, %33
  %.1 = phi i32 [ %41, %33 ], [ %.01, %48 ], !dbg !1702, !psr.id !1703
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1657, metadata !DIExpression()), !dbg !1658, !psr.id !1704
  %50 = sub nsw i32 %.18, %10, !dbg !1705, !psr.id !1706
  %51 = sext i32 %50 to i64, !dbg !1707, !psr.id !1708
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !1707, !psr.id !1709
  %53 = load i32, i32* %52, align 4, !dbg !1707, !psr.id !1710
  %54 = xor i32 %53, %.1, !dbg !1711, !psr.id !1712
  %55 = sext i32 %.18 to i64, !dbg !1713, !psr.id !1714
  %56 = getelementptr inbounds i32, i32* %0, i64 %55, !dbg !1713, !psr.id !1715
  store i32 %54, i32* %56, align 4, !dbg !1716, !psr.id !1717
  %57 = add nsw i32 %.04, 1, !dbg !1718, !psr.id !1720
  call void @llvm.dbg.value(metadata i32 %57, metadata !1631, metadata !DIExpression()), !dbg !1559, !psr.id !1721
  %58 = icmp eq i32 %57, %10, !dbg !1722, !psr.id !1723
  br i1 %58, label %59, label %61, !dbg !1724, !psr.id !1725

59:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 0, metadata !1631, metadata !DIExpression()), !dbg !1559, !psr.id !1726
  %60 = add nsw i32 %.02, 1, !dbg !1727, !psr.id !1729
  call void @llvm.dbg.value(metadata i32 %60, metadata !1633, metadata !DIExpression()), !dbg !1559, !psr.id !1730
  br label %61, !dbg !1731, !psr.id !1732

61:                                               ; preds = %59, %49
  %.15 = phi i32 [ 0, %59 ], [ %57, %49 ], !dbg !1733, !psr.id !1734
  %.13 = phi i32 [ %60, %59 ], [ %.02, %49 ], !dbg !1638, !psr.id !1735
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1633, metadata !DIExpression()), !dbg !1559, !psr.id !1736
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1631, metadata !DIExpression()), !dbg !1559, !psr.id !1737
  br label %62, !dbg !1738, !psr.id !1739

62:                                               ; preds = %61
  %63 = add nsw i32 %.18, 1, !dbg !1740, !psr.id !1741
  call void @llvm.dbg.value(metadata i32 %63, metadata !1595, metadata !DIExpression()), !dbg !1559, !psr.id !1742
  br label %25, !dbg !1743, !llvm.loop !1744, !psr.id !1746

64:                                               ; preds = %25
  br label %65, !dbg !1747, !psr.id !1748

65:                                               ; preds = %64, %7
  %.0 = phi i32 [ 0, %7 ], [ %.06, %64 ], !dbg !1559, !psr.id !1749
  ret i32 %.0, !dbg !1750, !psr.id !1751
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.8(i8* %0) #0 !dbg !1752 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1753, metadata !DIExpression()), !dbg !1754, !psr.id !1755
  call void @llvm.dbg.value(metadata i8* %0, metadata !1756, metadata !DIExpression()), !dbg !1754, !psr.id !1757
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1758, !psr.id !1759
  %3 = load i8, i8* %2, align 1, !dbg !1758, !psr.id !1760
  %4 = zext i8 %3 to i32, !dbg !1761, !psr.id !1762
  %5 = shl i32 %4, 24, !dbg !1763, !psr.id !1764
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1765, !psr.id !1766
  %7 = load i8, i8* %6, align 1, !dbg !1765, !psr.id !1767
  %8 = zext i8 %7 to i32, !dbg !1768, !psr.id !1769
  %9 = shl i32 %8, 16, !dbg !1770, !psr.id !1771
  %10 = or i32 %5, %9, !dbg !1772, !psr.id !1773
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1774, !psr.id !1775
  %12 = load i8, i8* %11, align 1, !dbg !1774, !psr.id !1776
  %13 = zext i8 %12 to i32, !dbg !1777, !psr.id !1778
  %14 = shl i32 %13, 8, !dbg !1779, !psr.id !1780
  %15 = or i32 %10, %14, !dbg !1781, !psr.id !1782
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1783, !psr.id !1784
  %17 = load i8, i8* %16, align 1, !dbg !1783, !psr.id !1785
  %18 = zext i8 %17 to i32, !dbg !1786, !psr.id !1787
  %19 = or i32 %15, %18, !dbg !1788, !psr.id !1789
  ret i32 %19, !dbg !1790, !psr.id !1791
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SubWord(i32 %0) #0 !dbg !1792 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1795, metadata !DIExpression()), !dbg !1796, !psr.id !1797
  %2 = lshr i32 %0, 24, !dbg !1798, !psr.id !1799
  %3 = zext i32 %2 to i64, !dbg !1800, !psr.id !1801
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %3, !dbg !1800, !psr.id !1802
  %5 = load i8, i8* %4, align 1, !dbg !1800, !psr.id !1803
  %6 = zext i8 %5 to i32, !dbg !1804, !psr.id !1805
  %7 = shl i32 %6, 24, !dbg !1806, !psr.id !1807
  %8 = lshr i32 %0, 16, !dbg !1808, !psr.id !1809
  %9 = and i32 %8, 255, !dbg !1810, !psr.id !1811
  %10 = zext i32 %9 to i64, !dbg !1812, !psr.id !1813
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %10, !dbg !1812, !psr.id !1814
  %12 = load i8, i8* %11, align 1, !dbg !1812, !psr.id !1815
  %13 = zext i8 %12 to i32, !dbg !1816, !psr.id !1817
  %14 = shl i32 %13, 16, !dbg !1818, !psr.id !1819
  %15 = or i32 %7, %14, !dbg !1820, !psr.id !1821
  %16 = lshr i32 %0, 8, !dbg !1822, !psr.id !1823
  %17 = and i32 %16, 255, !dbg !1824, !psr.id !1825
  %18 = zext i32 %17 to i64, !dbg !1826, !psr.id !1827
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %18, !dbg !1826, !psr.id !1828
  %20 = load i8, i8* %19, align 1, !dbg !1826, !psr.id !1829
  %21 = zext i8 %20 to i32, !dbg !1830, !psr.id !1831
  %22 = shl i32 %21, 8, !dbg !1832, !psr.id !1833
  %23 = or i32 %15, %22, !dbg !1834, !psr.id !1835
  %24 = and i32 %0, 255, !dbg !1836, !psr.id !1837
  %25 = zext i32 %24 to i64, !dbg !1838, !psr.id !1839
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %25, !dbg !1838, !psr.id !1840
  %27 = load i8, i8* %26, align 1, !dbg !1838, !psr.id !1841
  %28 = zext i8 %27 to i32, !dbg !1842, !psr.id !1843
  %29 = or i32 %23, %28, !dbg !1844, !psr.id !1845
  ret i32 %29, !dbg !1846, !psr.id !1847
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @encrypt_wrapper(i32 %0, i32* %1, i8* %2) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1849, metadata !DIExpression()), !dbg !1850, !psr.id !1851
  call void @llvm.dbg.value(metadata i32* %1, metadata !1852, metadata !DIExpression()), !dbg !1850, !psr.id !1853
  call void @llvm.dbg.value(metadata i8* %2, metadata !1854, metadata !DIExpression()), !dbg !1850, !psr.id !1855
  %4 = call %struct.smack_value* (i32, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32, ...)*)(i32 %0), !dbg !1856, !psr.id !1857
  call void @public_in(%struct.smack_value* %4), !dbg !1858, !psr.id !1859
  %5 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %1), !dbg !1860, !psr.id !1861
  call void @public_in(%struct.smack_value* %5), !dbg !1862, !psr.id !1863
  %6 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %2), !dbg !1864, !psr.id !1865
  call void @public_in(%struct.smack_value* %6), !dbg !1866, !psr.id !1867
  %7 = call %struct.smack_value* @__SMACK_values(i8* %2, i32 16), !dbg !1868, !psr.id !1869
  call void @public_in(%struct.smack_value* %7), !dbg !1870, !psr.id !1871
  call void @br_aes_big_encrypt(i32 %0, i32* %1, i8* %2), !dbg !1872, !psr.id !1873
  ret void, !dbg !1874, !psr.id !1875
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

declare dso_local %struct.smack_value* @__SMACK_values(i8*, i32) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @encrypt_wrapper_t() #0 !dbg !1876 {
  %1 = call i32 (...) @getuns(), !dbg !1879, !psr.id !1880
  call void @llvm.dbg.value(metadata i32 %1, metadata !1881, metadata !DIExpression()), !dbg !1882, !psr.id !1883
  %2 = call i32* (...) @getpt(), !dbg !1884, !psr.id !1885
  call void @llvm.dbg.value(metadata i32* %2, metadata !1886, metadata !DIExpression()), !dbg !1882, !psr.id !1887
  %3 = call i8* (...) @getpt2(), !dbg !1888, !psr.id !1889
  call void @llvm.dbg.value(metadata i8* %3, metadata !1890, metadata !DIExpression()), !dbg !1882, !psr.id !1891
  call void @br_aes_big_encrypt(i32 %1, i32* %2, i8* %3), !dbg !1892, !psr.id !1893
  ret void, !dbg !1894, !psr.id !1895
}

declare dso_local i32 @getuns(...) #2

declare dso_local i32* @getpt(...) #2

declare dso_local i8* @getpt2(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @encrypt_wrapper_t()
  ret void
}

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !26, !33, !45}
!llvm.ident = !{!47, !47, !47, !47}
!llvm.module.flags = !{!48, !49, !50}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "iSsm0", scope: !2, file: !3, line: 55, type: !20, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../BearSSL/src/symcipher/aes_big_dec.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!4 = !{}
!5 = !{!6, !7, !11, !12}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !8, line: 26, baseType: !9)
!8 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !10, line: 42, baseType: !11)
!10 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!11 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{!0, !14}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "iS", scope: !2, file: !3, line: 30, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !18)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!18 = !{!19}
!19 = !DISubrange(count: 256)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8192, elements: !18)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!22 = !{!"0"}
!23 = !{!"1"}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "Ssm0", scope: !26, file: !27, line: 29, type: !20, isLocal: true, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !28, globals: !29, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "../BearSSL/src/symcipher/aes_big_enc.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!28 = !{!7, !12}
!29 = !{!24}
!30 = !{!"2"}
!31 = !DIGlobalVariableExpression(var: !32, expr: !DIExpression())
!32 = distinct !DIGlobalVariable(name: "br_aes_S", scope: !33, file: !34, line: 35, type: !16, isLocal: false, isDefinition: true)
!33 = distinct !DICompileUnit(language: DW_LANG_C99, file: !34, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !35, globals: !37, splitDebugInlining: false, nameTableKind: None)
!34 = !DIFile(filename: "../BearSSL/src/symcipher/aes_common.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!35 = !{!6, !36, !7}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!37 = !{!31, !38}
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "Rcon", scope: !33, file: !34, line: 27, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 320, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 10)
!43 = !{!"3"}
!44 = !{!"4"}
!45 = distinct !DICompileUnit(language: DW_LANG_C99, file: !46, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!46 = !DIFile(filename: "encrypt.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!47 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!48 = !{i32 7, !"Dwarf Version", i32 4}
!49 = !{i32 2, !"Debug Info Version", i32 3}
!50 = !{i32 1, !"wchar_size", i32 4}
!51 = distinct !DISubprogram(name: "br_aes_big_keysched_inv", scope: !3, file: !3, line: 144, type: !52, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!52 = !DISubroutineType(types: !53)
!53 = !{!11, !54, !55, !57}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !58, line: 46, baseType: !59)
!58 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: "skey", arg: 1, scope: !51, file: !3, line: 144, type: !54)
!61 = !DILocation(line: 0, scope: !51)
!62 = !{!"5"}
!63 = !DILocalVariable(name: "key", arg: 2, scope: !51, file: !3, line: 144, type: !55)
!64 = !{!"6"}
!65 = !DILocalVariable(name: "key_len", arg: 3, scope: !51, file: !3, line: 144, type: !57)
!66 = !{!"7"}
!67 = !DILocation(line: 154, column: 15, scope: !51)
!68 = !{!"8"}
!69 = !DILocalVariable(name: "num_rounds", scope: !51, file: !3, line: 146, type: !11)
!70 = !{!"9"}
!71 = !DILocation(line: 155, column: 23, scope: !51)
!72 = !{!"10"}
!73 = !DILocalVariable(name: "m", scope: !51, file: !3, line: 147, type: !6)
!74 = !{!"11"}
!75 = !DILocalVariable(name: "i", scope: !51, file: !3, line: 147, type: !6)
!76 = !{!"12"}
!77 = !DILocation(line: 156, column: 7, scope: !78)
!78 = distinct !DILexicalBlock(scope: !51, file: !3, line: 156, column: 2)
!79 = !{!"13"}
!80 = !DILocation(line: 0, scope: !78)
!81 = !{!"14"}
!82 = !{!"15"}
!83 = !DILocation(line: 156, column: 16, scope: !84)
!84 = distinct !DILexicalBlock(scope: !78, file: !3, line: 156, column: 2)
!85 = !{!"16"}
!86 = !DILocation(line: 156, column: 2, scope: !78)
!87 = !{!"17"}
!88 = !DILocation(line: 161, column: 7, scope: !89)
!89 = distinct !DILexicalBlock(scope: !84, file: !3, line: 156, column: 27)
!90 = !{!"18"}
!91 = !{!"19"}
!92 = !{!"20"}
!93 = !DILocalVariable(name: "p", scope: !89, file: !3, line: 157, type: !7)
!94 = !DILocation(line: 0, scope: !89)
!95 = !{!"21"}
!96 = !DILocation(line: 162, column: 10, scope: !89)
!97 = !{!"22"}
!98 = !DILocalVariable(name: "p0", scope: !89, file: !3, line: 158, type: !11)
!99 = !{!"23"}
!100 = !DILocation(line: 163, column: 11, scope: !89)
!101 = !{!"24"}
!102 = !DILocation(line: 163, column: 18, scope: !89)
!103 = !{!"25"}
!104 = !DILocalVariable(name: "p1", scope: !89, file: !3, line: 158, type: !11)
!105 = !{!"26"}
!106 = !DILocation(line: 164, column: 11, scope: !89)
!107 = !{!"27"}
!108 = !DILocation(line: 164, column: 17, scope: !89)
!109 = !{!"28"}
!110 = !DILocalVariable(name: "p2", scope: !89, file: !3, line: 158, type: !11)
!111 = !{!"29"}
!112 = !DILocation(line: 165, column: 10, scope: !89)
!113 = !{!"30"}
!114 = !DILocalVariable(name: "p3", scope: !89, file: !3, line: 158, type: !11)
!115 = !{!"31"}
!116 = !DILocation(line: 166, column: 8, scope: !89)
!117 = !{!"32"}
!118 = !DILocation(line: 166, column: 19, scope: !89)
!119 = !{!"33"}
!120 = !DILocation(line: 166, column: 17, scope: !89)
!121 = !{!"34"}
!122 = !DILocation(line: 166, column: 30, scope: !89)
!123 = !{!"35"}
!124 = !DILocation(line: 166, column: 28, scope: !89)
!125 = !{!"36"}
!126 = !DILocation(line: 166, column: 41, scope: !89)
!127 = !{!"37"}
!128 = !DILocation(line: 166, column: 39, scope: !89)
!129 = !{!"38"}
!130 = !DILocalVariable(name: "q0", scope: !89, file: !3, line: 159, type: !7)
!131 = !{!"39"}
!132 = !DILocation(line: 167, column: 8, scope: !89)
!133 = !{!"40"}
!134 = !DILocation(line: 167, column: 19, scope: !89)
!135 = !{!"41"}
!136 = !DILocation(line: 167, column: 17, scope: !89)
!137 = !{!"42"}
!138 = !DILocation(line: 167, column: 30, scope: !89)
!139 = !{!"43"}
!140 = !DILocation(line: 167, column: 28, scope: !89)
!141 = !{!"44"}
!142 = !DILocation(line: 167, column: 41, scope: !89)
!143 = !{!"45"}
!144 = !DILocation(line: 167, column: 39, scope: !89)
!145 = !{!"46"}
!146 = !DILocalVariable(name: "q1", scope: !89, file: !3, line: 159, type: !7)
!147 = !{!"47"}
!148 = !DILocation(line: 168, column: 8, scope: !89)
!149 = !{!"48"}
!150 = !DILocation(line: 168, column: 19, scope: !89)
!151 = !{!"49"}
!152 = !DILocation(line: 168, column: 17, scope: !89)
!153 = !{!"50"}
!154 = !DILocation(line: 168, column: 30, scope: !89)
!155 = !{!"51"}
!156 = !DILocation(line: 168, column: 28, scope: !89)
!157 = !{!"52"}
!158 = !DILocation(line: 168, column: 41, scope: !89)
!159 = !{!"53"}
!160 = !DILocation(line: 168, column: 39, scope: !89)
!161 = !{!"54"}
!162 = !DILocalVariable(name: "q2", scope: !89, file: !3, line: 159, type: !7)
!163 = !{!"55"}
!164 = !DILocation(line: 169, column: 8, scope: !89)
!165 = !{!"56"}
!166 = !DILocation(line: 169, column: 19, scope: !89)
!167 = !{!"57"}
!168 = !DILocation(line: 169, column: 17, scope: !89)
!169 = !{!"58"}
!170 = !DILocation(line: 169, column: 30, scope: !89)
!171 = !{!"59"}
!172 = !DILocation(line: 169, column: 28, scope: !89)
!173 = !{!"60"}
!174 = !DILocation(line: 169, column: 41, scope: !89)
!175 = !{!"61"}
!176 = !DILocation(line: 169, column: 39, scope: !89)
!177 = !{!"62"}
!178 = !DILocalVariable(name: "q3", scope: !89, file: !3, line: 159, type: !7)
!179 = !{!"63"}
!180 = !DILocation(line: 170, column: 17, scope: !89)
!181 = !{!"64"}
!182 = !DILocation(line: 170, column: 30, scope: !89)
!183 = !{!"65"}
!184 = !DILocation(line: 170, column: 24, scope: !89)
!185 = !{!"66"}
!186 = !DILocation(line: 170, column: 43, scope: !89)
!187 = !{!"67"}
!188 = !DILocation(line: 170, column: 37, scope: !89)
!189 = !{!"68"}
!190 = !DILocation(line: 170, column: 49, scope: !89)
!191 = !{!"69"}
!192 = !DILocation(line: 170, column: 3, scope: !89)
!193 = !{!"70"}
!194 = !{!"71"}
!195 = !DILocation(line: 170, column: 11, scope: !89)
!196 = !{!"72"}
!197 = !DILocation(line: 171, column: 2, scope: !89)
!198 = !{!"73"}
!199 = !DILocation(line: 156, column: 23, scope: !84)
!200 = !{!"74"}
!201 = !{!"75"}
!202 = !DILocation(line: 156, column: 2, scope: !84)
!203 = distinct !{!203, !86, !204, !205}
!204 = !DILocation(line: 171, column: 2, scope: !78)
!205 = !{!"llvm.loop.mustprogress"}
!206 = !{!"76"}
!207 = !DILocation(line: 172, column: 2, scope: !51)
!208 = !{!"77"}
!209 = distinct !DISubprogram(name: "mule", scope: !3, file: !3, line: 133, type: !210, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!210 = !DISubroutineType(types: !211)
!211 = !{!11, !11}
!212 = !DILocalVariable(name: "x", arg: 1, scope: !209, file: !3, line: 133, type: !11)
!213 = !DILocation(line: 0, scope: !209)
!214 = !{!"78"}
!215 = !DILocation(line: 137, column: 7, scope: !209)
!216 = !{!"79"}
!217 = !DILocalVariable(name: "x2", scope: !209, file: !3, line: 135, type: !11)
!218 = !{!"80"}
!219 = !DILocation(line: 138, column: 7, scope: !209)
!220 = !{!"81"}
!221 = !DILocalVariable(name: "x4", scope: !209, file: !3, line: 135, type: !11)
!222 = !{!"82"}
!223 = !DILocation(line: 139, column: 12, scope: !209)
!224 = !{!"83"}
!225 = !DILocation(line: 139, column: 19, scope: !209)
!226 = !{!"84"}
!227 = !DILocation(line: 139, column: 17, scope: !209)
!228 = !{!"85"}
!229 = !DILocation(line: 139, column: 2, scope: !209)
!230 = !{!"86"}
!231 = distinct !DISubprogram(name: "mulb", scope: !3, file: !3, line: 115, type: !210, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!232 = !DILocalVariable(name: "x", arg: 1, scope: !231, file: !3, line: 115, type: !11)
!233 = !DILocation(line: 0, scope: !231)
!234 = !{!"87"}
!235 = !DILocation(line: 119, column: 7, scope: !231)
!236 = !{!"88"}
!237 = !DILocalVariable(name: "x2", scope: !231, file: !3, line: 117, type: !11)
!238 = !{!"89"}
!239 = !DILocation(line: 120, column: 11, scope: !231)
!240 = !{!"90"}
!241 = !DILocation(line: 120, column: 23, scope: !231)
!242 = !{!"91"}
!243 = !DILocation(line: 120, column: 18, scope: !231)
!244 = !{!"92"}
!245 = !DILocation(line: 120, column: 16, scope: !231)
!246 = !{!"93"}
!247 = !DILocation(line: 120, column: 2, scope: !231)
!248 = !{!"94"}
!249 = distinct !DISubprogram(name: "muld", scope: !3, file: !3, line: 124, type: !210, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!250 = !DILocalVariable(name: "x", arg: 1, scope: !249, file: !3, line: 124, type: !11)
!251 = !DILocation(line: 0, scope: !249)
!252 = !{!"95"}
!253 = !DILocation(line: 128, column: 12, scope: !249)
!254 = !{!"96"}
!255 = !DILocation(line: 128, column: 7, scope: !249)
!256 = !{!"97"}
!257 = !DILocalVariable(name: "x4", scope: !249, file: !3, line: 126, type: !11)
!258 = !{!"98"}
!259 = !DILocation(line: 129, column: 11, scope: !249)
!260 = !{!"99"}
!261 = !DILocation(line: 129, column: 18, scope: !249)
!262 = !{!"100"}
!263 = !DILocation(line: 129, column: 16, scope: !249)
!264 = !{!"101"}
!265 = !DILocation(line: 129, column: 2, scope: !249)
!266 = !{!"102"}
!267 = distinct !DISubprogram(name: "mul9", scope: !3, file: !3, line: 109, type: !210, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!268 = !DILocalVariable(name: "x", arg: 1, scope: !267, file: !3, line: 109, type: !11)
!269 = !DILocation(line: 0, scope: !267)
!270 = !{!"103"}
!271 = !DILocation(line: 111, column: 23, scope: !267)
!272 = !{!"104"}
!273 = !DILocation(line: 111, column: 18, scope: !267)
!274 = !{!"105"}
!275 = !DILocation(line: 111, column: 13, scope: !267)
!276 = !{!"106"}
!277 = !DILocation(line: 111, column: 11, scope: !267)
!278 = !{!"107"}
!279 = !DILocation(line: 111, column: 2, scope: !267)
!280 = !{!"108"}
!281 = distinct !DISubprogram(name: "mul2", scope: !3, file: !3, line: 102, type: !210, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!282 = !DILocalVariable(name: "x", arg: 1, scope: !281, file: !3, line: 102, type: !11)
!283 = !DILocation(line: 0, scope: !281)
!284 = !{!"109"}
!285 = !DILocation(line: 104, column: 4, scope: !281)
!286 = !{!"110"}
!287 = !{!"111"}
!288 = !DILocation(line: 105, column: 34, scope: !281)
!289 = !{!"112"}
!290 = !DILocation(line: 105, column: 25, scope: !281)
!291 = !{!"113"}
!292 = !DILocation(line: 105, column: 41, scope: !281)
!293 = !{!"114"}
!294 = !DILocation(line: 105, column: 11, scope: !281)
!295 = !{!"115"}
!296 = !DILocation(line: 105, column: 2, scope: !281)
!297 = !{!"116"}
!298 = distinct !DISubprogram(name: "br_aes_big_decrypt", scope: !3, file: !3, line: 188, type: !299, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !11, !301, !302}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!303 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !298, file: !3, line: 188, type: !11)
!304 = !DILocation(line: 0, scope: !298)
!305 = !{!"117"}
!306 = !DILocalVariable(name: "skey", arg: 2, scope: !298, file: !3, line: 188, type: !301)
!307 = !{!"118"}
!308 = !DILocalVariable(name: "data", arg: 3, scope: !298, file: !3, line: 188, type: !302)
!309 = !{!"119"}
!310 = !DILocalVariable(name: "buf", scope: !298, file: !3, line: 190, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!312 = !{!"120"}
!313 = !DILocation(line: 196, column: 7, scope: !298)
!314 = !{!"121"}
!315 = !DILocalVariable(name: "s0", scope: !298, file: !3, line: 191, type: !7)
!316 = !{!"122"}
!317 = !DILocation(line: 197, column: 22, scope: !298)
!318 = !{!"123"}
!319 = !DILocation(line: 197, column: 7, scope: !298)
!320 = !{!"124"}
!321 = !DILocalVariable(name: "s1", scope: !298, file: !3, line: 191, type: !7)
!322 = !{!"125"}
!323 = !DILocation(line: 198, column: 22, scope: !298)
!324 = !{!"126"}
!325 = !DILocation(line: 198, column: 7, scope: !298)
!326 = !{!"127"}
!327 = !DILocalVariable(name: "s2", scope: !298, file: !3, line: 191, type: !7)
!328 = !{!"128"}
!329 = !DILocation(line: 199, column: 22, scope: !298)
!330 = !{!"129"}
!331 = !DILocation(line: 199, column: 7, scope: !298)
!332 = !{!"130"}
!333 = !DILocalVariable(name: "s3", scope: !298, file: !3, line: 191, type: !7)
!334 = !{!"131"}
!335 = !DILocation(line: 200, column: 25, scope: !298)
!336 = !{!"132"}
!337 = !DILocation(line: 200, column: 31, scope: !298)
!338 = !{!"133"}
!339 = !DILocation(line: 200, column: 8, scope: !298)
!340 = !{!"134"}
!341 = !{!"135"}
!342 = !{!"136"}
!343 = !DILocation(line: 200, column: 5, scope: !298)
!344 = !{!"137"}
!345 = !{!"138"}
!346 = !DILocation(line: 201, column: 25, scope: !298)
!347 = !{!"139"}
!348 = !DILocation(line: 201, column: 31, scope: !298)
!349 = !{!"140"}
!350 = !DILocation(line: 201, column: 8, scope: !298)
!351 = !{!"141"}
!352 = !{!"142"}
!353 = !{!"143"}
!354 = !DILocation(line: 201, column: 5, scope: !298)
!355 = !{!"144"}
!356 = !{!"145"}
!357 = !DILocation(line: 202, column: 25, scope: !298)
!358 = !{!"146"}
!359 = !DILocation(line: 202, column: 31, scope: !298)
!360 = !{!"147"}
!361 = !DILocation(line: 202, column: 8, scope: !298)
!362 = !{!"148"}
!363 = !{!"149"}
!364 = !{!"150"}
!365 = !DILocation(line: 202, column: 5, scope: !298)
!366 = !{!"151"}
!367 = !{!"152"}
!368 = !DILocation(line: 203, column: 25, scope: !298)
!369 = !{!"153"}
!370 = !DILocation(line: 203, column: 31, scope: !298)
!371 = !{!"154"}
!372 = !DILocation(line: 203, column: 8, scope: !298)
!373 = !{!"155"}
!374 = !{!"156"}
!375 = !{!"157"}
!376 = !DILocation(line: 203, column: 5, scope: !298)
!377 = !{!"158"}
!378 = !{!"159"}
!379 = !DILocation(line: 204, column: 22, scope: !380)
!380 = distinct !DILexicalBlock(scope: !298, file: !3, line: 204, column: 2)
!381 = !{!"160"}
!382 = !DILocalVariable(name: "u", scope: !298, file: !3, line: 193, type: !11)
!383 = !{!"161"}
!384 = !DILocation(line: 204, column: 7, scope: !380)
!385 = !{!"162"}
!386 = !{!"163"}
!387 = !{!"164"}
!388 = !{!"165"}
!389 = !{!"166"}
!390 = !DILocation(line: 0, scope: !380)
!391 = !{!"167"}
!392 = !{!"168"}
!393 = !{!"169"}
!394 = !{!"170"}
!395 = !{!"171"}
!396 = !{!"172"}
!397 = !DILocation(line: 204, column: 29, scope: !398)
!398 = distinct !DILexicalBlock(scope: !380, file: !3, line: 204, column: 2)
!399 = !{!"173"}
!400 = !DILocation(line: 204, column: 2, scope: !380)
!401 = !{!"174"}
!402 = !DILocation(line: 205, column: 17, scope: !403)
!403 = distinct !DILexicalBlock(scope: !398, file: !3, line: 204, column: 40)
!404 = !{!"175"}
!405 = !{!"176"}
!406 = !{!"177"}
!407 = !{!"178"}
!408 = !DILocation(line: 206, column: 6, scope: !403)
!409 = !{!"179"}
!410 = !{!"180"}
!411 = !{!"181"}
!412 = !{!"182"}
!413 = !{!"183"}
!414 = !{!"184"}
!415 = !DILocation(line: 206, column: 4, scope: !403)
!416 = !{!"185"}
!417 = !DILocation(line: 207, column: 6, scope: !403)
!418 = !{!"186"}
!419 = !{!"187"}
!420 = !{!"188"}
!421 = !{!"189"}
!422 = !{!"190"}
!423 = !{!"191"}
!424 = !DILocation(line: 207, column: 4, scope: !403)
!425 = !{!"192"}
!426 = !DILocation(line: 208, column: 6, scope: !403)
!427 = !{!"193"}
!428 = !{!"194"}
!429 = !{!"195"}
!430 = !{!"196"}
!431 = !{!"197"}
!432 = !DILocation(line: 208, column: 4, scope: !403)
!433 = !{!"198"}
!434 = !DILocalVariable(name: "v0", scope: !403, file: !3, line: 205, type: !7)
!435 = !DILocation(line: 0, scope: !403)
!436 = !{!"199"}
!437 = !DILocation(line: 209, column: 17, scope: !403)
!438 = !{!"200"}
!439 = !{!"201"}
!440 = !{!"202"}
!441 = !{!"203"}
!442 = !DILocation(line: 210, column: 6, scope: !403)
!443 = !{!"204"}
!444 = !{!"205"}
!445 = !{!"206"}
!446 = !{!"207"}
!447 = !{!"208"}
!448 = !{!"209"}
!449 = !DILocation(line: 210, column: 4, scope: !403)
!450 = !{!"210"}
!451 = !DILocation(line: 211, column: 6, scope: !403)
!452 = !{!"211"}
!453 = !{!"212"}
!454 = !{!"213"}
!455 = !{!"214"}
!456 = !{!"215"}
!457 = !{!"216"}
!458 = !DILocation(line: 211, column: 4, scope: !403)
!459 = !{!"217"}
!460 = !DILocation(line: 212, column: 6, scope: !403)
!461 = !{!"218"}
!462 = !{!"219"}
!463 = !{!"220"}
!464 = !{!"221"}
!465 = !{!"222"}
!466 = !DILocation(line: 212, column: 4, scope: !403)
!467 = !{!"223"}
!468 = !DILocalVariable(name: "v1", scope: !403, file: !3, line: 209, type: !7)
!469 = !{!"224"}
!470 = !DILocation(line: 213, column: 17, scope: !403)
!471 = !{!"225"}
!472 = !{!"226"}
!473 = !{!"227"}
!474 = !{!"228"}
!475 = !DILocation(line: 214, column: 6, scope: !403)
!476 = !{!"229"}
!477 = !{!"230"}
!478 = !{!"231"}
!479 = !{!"232"}
!480 = !{!"233"}
!481 = !{!"234"}
!482 = !DILocation(line: 214, column: 4, scope: !403)
!483 = !{!"235"}
!484 = !DILocation(line: 215, column: 6, scope: !403)
!485 = !{!"236"}
!486 = !{!"237"}
!487 = !{!"238"}
!488 = !{!"239"}
!489 = !{!"240"}
!490 = !{!"241"}
!491 = !DILocation(line: 215, column: 4, scope: !403)
!492 = !{!"242"}
!493 = !DILocation(line: 216, column: 6, scope: !403)
!494 = !{!"243"}
!495 = !{!"244"}
!496 = !{!"245"}
!497 = !{!"246"}
!498 = !{!"247"}
!499 = !DILocation(line: 216, column: 4, scope: !403)
!500 = !{!"248"}
!501 = !DILocalVariable(name: "v2", scope: !403, file: !3, line: 213, type: !7)
!502 = !{!"249"}
!503 = !DILocation(line: 217, column: 17, scope: !403)
!504 = !{!"250"}
!505 = !{!"251"}
!506 = !{!"252"}
!507 = !{!"253"}
!508 = !DILocation(line: 218, column: 6, scope: !403)
!509 = !{!"254"}
!510 = !{!"255"}
!511 = !{!"256"}
!512 = !{!"257"}
!513 = !{!"258"}
!514 = !{!"259"}
!515 = !DILocation(line: 218, column: 4, scope: !403)
!516 = !{!"260"}
!517 = !DILocation(line: 219, column: 6, scope: !403)
!518 = !{!"261"}
!519 = !{!"262"}
!520 = !{!"263"}
!521 = !{!"264"}
!522 = !{!"265"}
!523 = !{!"266"}
!524 = !DILocation(line: 219, column: 4, scope: !403)
!525 = !{!"267"}
!526 = !DILocation(line: 220, column: 6, scope: !403)
!527 = !{!"268"}
!528 = !{!"269"}
!529 = !{!"270"}
!530 = !{!"271"}
!531 = !{!"272"}
!532 = !DILocation(line: 220, column: 4, scope: !403)
!533 = !{!"273"}
!534 = !DILocalVariable(name: "v3", scope: !403, file: !3, line: 217, type: !7)
!535 = !{!"274"}
!536 = !{!"275"}
!537 = !{!"276"}
!538 = !{!"277"}
!539 = !{!"278"}
!540 = !DILocation(line: 225, column: 16, scope: !403)
!541 = !{!"279"}
!542 = !DILocation(line: 225, column: 9, scope: !403)
!543 = !{!"280"}
!544 = !{!"281"}
!545 = !{!"282"}
!546 = !DILocation(line: 225, column: 6, scope: !403)
!547 = !{!"283"}
!548 = !{!"284"}
!549 = !DILocation(line: 226, column: 17, scope: !403)
!550 = !{!"285"}
!551 = !DILocation(line: 226, column: 23, scope: !403)
!552 = !{!"286"}
!553 = !DILocation(line: 226, column: 9, scope: !403)
!554 = !{!"287"}
!555 = !{!"288"}
!556 = !{!"289"}
!557 = !DILocation(line: 226, column: 6, scope: !403)
!558 = !{!"290"}
!559 = !{!"291"}
!560 = !DILocation(line: 227, column: 17, scope: !403)
!561 = !{!"292"}
!562 = !DILocation(line: 227, column: 23, scope: !403)
!563 = !{!"293"}
!564 = !DILocation(line: 227, column: 9, scope: !403)
!565 = !{!"294"}
!566 = !{!"295"}
!567 = !{!"296"}
!568 = !DILocation(line: 227, column: 6, scope: !403)
!569 = !{!"297"}
!570 = !{!"298"}
!571 = !DILocation(line: 228, column: 17, scope: !403)
!572 = !{!"299"}
!573 = !DILocation(line: 228, column: 23, scope: !403)
!574 = !{!"300"}
!575 = !DILocation(line: 228, column: 9, scope: !403)
!576 = !{!"301"}
!577 = !{!"302"}
!578 = !{!"303"}
!579 = !DILocation(line: 228, column: 6, scope: !403)
!580 = !{!"304"}
!581 = !{!"305"}
!582 = !DILocation(line: 229, column: 2, scope: !403)
!583 = !{!"306"}
!584 = !DILocation(line: 204, column: 36, scope: !398)
!585 = !{!"307"}
!586 = !{!"308"}
!587 = !DILocation(line: 204, column: 2, scope: !398)
!588 = distinct !{!588, !400, !589, !205}
!589 = !DILocation(line: 229, column: 2, scope: !380)
!590 = !{!"309"}
!591 = !DILocation(line: 230, column: 24, scope: !298)
!592 = !{!"310"}
!593 = !DILocation(line: 230, column: 18, scope: !298)
!594 = !{!"311"}
!595 = !{!"312"}
!596 = !{!"313"}
!597 = !DILocation(line: 230, column: 8, scope: !298)
!598 = !{!"314"}
!599 = !DILocation(line: 230, column: 31, scope: !298)
!600 = !{!"315"}
!601 = !DILocation(line: 231, column: 23, scope: !298)
!602 = !{!"316"}
!603 = !DILocation(line: 231, column: 30, scope: !298)
!604 = !{!"317"}
!605 = !DILocation(line: 231, column: 16, scope: !298)
!606 = !{!"318"}
!607 = !{!"319"}
!608 = !{!"320"}
!609 = !DILocation(line: 231, column: 6, scope: !298)
!610 = !{!"321"}
!611 = !DILocation(line: 231, column: 38, scope: !298)
!612 = !{!"322"}
!613 = !DILocation(line: 231, column: 3, scope: !298)
!614 = !{!"323"}
!615 = !DILocation(line: 232, column: 23, scope: !298)
!616 = !{!"324"}
!617 = !DILocation(line: 232, column: 29, scope: !298)
!618 = !{!"325"}
!619 = !DILocation(line: 232, column: 16, scope: !298)
!620 = !{!"326"}
!621 = !{!"327"}
!622 = !{!"328"}
!623 = !DILocation(line: 232, column: 6, scope: !298)
!624 = !{!"329"}
!625 = !DILocation(line: 232, column: 37, scope: !298)
!626 = !{!"330"}
!627 = !DILocation(line: 232, column: 3, scope: !298)
!628 = !{!"331"}
!629 = !DILocation(line: 233, column: 21, scope: !298)
!630 = !{!"332"}
!631 = !DILocation(line: 233, column: 15, scope: !298)
!632 = !{!"333"}
!633 = !{!"334"}
!634 = !{!"335"}
!635 = !DILocation(line: 233, column: 5, scope: !298)
!636 = !{!"336"}
!637 = !DILocation(line: 233, column: 3, scope: !298)
!638 = !{!"337"}
!639 = !DILocalVariable(name: "t0", scope: !298, file: !3, line: 192, type: !7)
!640 = !{!"338"}
!641 = !DILocation(line: 234, column: 24, scope: !298)
!642 = !{!"339"}
!643 = !DILocation(line: 234, column: 18, scope: !298)
!644 = !{!"340"}
!645 = !{!"341"}
!646 = !{!"342"}
!647 = !DILocation(line: 234, column: 8, scope: !298)
!648 = !{!"343"}
!649 = !DILocation(line: 234, column: 31, scope: !298)
!650 = !{!"344"}
!651 = !DILocation(line: 235, column: 23, scope: !298)
!652 = !{!"345"}
!653 = !DILocation(line: 235, column: 30, scope: !298)
!654 = !{!"346"}
!655 = !DILocation(line: 235, column: 16, scope: !298)
!656 = !{!"347"}
!657 = !{!"348"}
!658 = !{!"349"}
!659 = !DILocation(line: 235, column: 6, scope: !298)
!660 = !{!"350"}
!661 = !DILocation(line: 235, column: 38, scope: !298)
!662 = !{!"351"}
!663 = !DILocation(line: 235, column: 3, scope: !298)
!664 = !{!"352"}
!665 = !DILocation(line: 236, column: 23, scope: !298)
!666 = !{!"353"}
!667 = !DILocation(line: 236, column: 29, scope: !298)
!668 = !{!"354"}
!669 = !DILocation(line: 236, column: 16, scope: !298)
!670 = !{!"355"}
!671 = !{!"356"}
!672 = !{!"357"}
!673 = !DILocation(line: 236, column: 6, scope: !298)
!674 = !{!"358"}
!675 = !DILocation(line: 236, column: 37, scope: !298)
!676 = !{!"359"}
!677 = !DILocation(line: 236, column: 3, scope: !298)
!678 = !{!"360"}
!679 = !DILocation(line: 237, column: 21, scope: !298)
!680 = !{!"361"}
!681 = !DILocation(line: 237, column: 15, scope: !298)
!682 = !{!"362"}
!683 = !{!"363"}
!684 = !{!"364"}
!685 = !DILocation(line: 237, column: 5, scope: !298)
!686 = !{!"365"}
!687 = !DILocation(line: 237, column: 3, scope: !298)
!688 = !{!"366"}
!689 = !DILocalVariable(name: "t1", scope: !298, file: !3, line: 192, type: !7)
!690 = !{!"367"}
!691 = !DILocation(line: 238, column: 24, scope: !298)
!692 = !{!"368"}
!693 = !DILocation(line: 238, column: 18, scope: !298)
!694 = !{!"369"}
!695 = !{!"370"}
!696 = !{!"371"}
!697 = !DILocation(line: 238, column: 8, scope: !298)
!698 = !{!"372"}
!699 = !DILocation(line: 238, column: 31, scope: !298)
!700 = !{!"373"}
!701 = !DILocation(line: 239, column: 23, scope: !298)
!702 = !{!"374"}
!703 = !DILocation(line: 239, column: 30, scope: !298)
!704 = !{!"375"}
!705 = !DILocation(line: 239, column: 16, scope: !298)
!706 = !{!"376"}
!707 = !{!"377"}
!708 = !{!"378"}
!709 = !DILocation(line: 239, column: 6, scope: !298)
!710 = !{!"379"}
!711 = !DILocation(line: 239, column: 38, scope: !298)
!712 = !{!"380"}
!713 = !DILocation(line: 239, column: 3, scope: !298)
!714 = !{!"381"}
!715 = !DILocation(line: 240, column: 23, scope: !298)
!716 = !{!"382"}
!717 = !DILocation(line: 240, column: 29, scope: !298)
!718 = !{!"383"}
!719 = !DILocation(line: 240, column: 16, scope: !298)
!720 = !{!"384"}
!721 = !{!"385"}
!722 = !{!"386"}
!723 = !DILocation(line: 240, column: 6, scope: !298)
!724 = !{!"387"}
!725 = !DILocation(line: 240, column: 37, scope: !298)
!726 = !{!"388"}
!727 = !DILocation(line: 240, column: 3, scope: !298)
!728 = !{!"389"}
!729 = !DILocation(line: 241, column: 21, scope: !298)
!730 = !{!"390"}
!731 = !DILocation(line: 241, column: 15, scope: !298)
!732 = !{!"391"}
!733 = !{!"392"}
!734 = !{!"393"}
!735 = !DILocation(line: 241, column: 5, scope: !298)
!736 = !{!"394"}
!737 = !DILocation(line: 241, column: 3, scope: !298)
!738 = !{!"395"}
!739 = !DILocalVariable(name: "t2", scope: !298, file: !3, line: 192, type: !7)
!740 = !{!"396"}
!741 = !DILocation(line: 242, column: 24, scope: !298)
!742 = !{!"397"}
!743 = !DILocation(line: 242, column: 18, scope: !298)
!744 = !{!"398"}
!745 = !{!"399"}
!746 = !{!"400"}
!747 = !DILocation(line: 242, column: 8, scope: !298)
!748 = !{!"401"}
!749 = !DILocation(line: 242, column: 31, scope: !298)
!750 = !{!"402"}
!751 = !DILocation(line: 243, column: 23, scope: !298)
!752 = !{!"403"}
!753 = !DILocation(line: 243, column: 30, scope: !298)
!754 = !{!"404"}
!755 = !DILocation(line: 243, column: 16, scope: !298)
!756 = !{!"405"}
!757 = !{!"406"}
!758 = !{!"407"}
!759 = !DILocation(line: 243, column: 6, scope: !298)
!760 = !{!"408"}
!761 = !DILocation(line: 243, column: 38, scope: !298)
!762 = !{!"409"}
!763 = !DILocation(line: 243, column: 3, scope: !298)
!764 = !{!"410"}
!765 = !DILocation(line: 244, column: 23, scope: !298)
!766 = !{!"411"}
!767 = !DILocation(line: 244, column: 29, scope: !298)
!768 = !{!"412"}
!769 = !DILocation(line: 244, column: 16, scope: !298)
!770 = !{!"413"}
!771 = !{!"414"}
!772 = !{!"415"}
!773 = !DILocation(line: 244, column: 6, scope: !298)
!774 = !{!"416"}
!775 = !DILocation(line: 244, column: 37, scope: !298)
!776 = !{!"417"}
!777 = !DILocation(line: 244, column: 3, scope: !298)
!778 = !{!"418"}
!779 = !DILocation(line: 245, column: 21, scope: !298)
!780 = !{!"419"}
!781 = !DILocation(line: 245, column: 15, scope: !298)
!782 = !{!"420"}
!783 = !{!"421"}
!784 = !{!"422"}
!785 = !DILocation(line: 245, column: 5, scope: !298)
!786 = !{!"423"}
!787 = !DILocation(line: 245, column: 3, scope: !298)
!788 = !{!"424"}
!789 = !DILocalVariable(name: "t3", scope: !298, file: !3, line: 192, type: !7)
!790 = !{!"425"}
!791 = !DILocation(line: 246, column: 12, scope: !298)
!792 = !{!"426"}
!793 = !{!"427"}
!794 = !DILocation(line: 246, column: 10, scope: !298)
!795 = !{!"428"}
!796 = !{!"429"}
!797 = !DILocation(line: 247, column: 12, scope: !298)
!798 = !{!"430"}
!799 = !{!"431"}
!800 = !DILocation(line: 247, column: 10, scope: !298)
!801 = !{!"432"}
!802 = !{!"433"}
!803 = !DILocation(line: 248, column: 12, scope: !298)
!804 = !{!"434"}
!805 = !{!"435"}
!806 = !DILocation(line: 248, column: 10, scope: !298)
!807 = !{!"436"}
!808 = !{!"437"}
!809 = !DILocation(line: 249, column: 12, scope: !298)
!810 = !{!"438"}
!811 = !{!"439"}
!812 = !DILocation(line: 249, column: 10, scope: !298)
!813 = !{!"440"}
!814 = !{!"441"}
!815 = !DILocation(line: 250, column: 2, scope: !298)
!816 = !{!"442"}
!817 = !DILocation(line: 251, column: 17, scope: !298)
!818 = !{!"443"}
!819 = !DILocation(line: 251, column: 2, scope: !298)
!820 = !{!"444"}
!821 = !DILocation(line: 252, column: 17, scope: !298)
!822 = !{!"445"}
!823 = !DILocation(line: 252, column: 2, scope: !298)
!824 = !{!"446"}
!825 = !DILocation(line: 253, column: 17, scope: !298)
!826 = !{!"447"}
!827 = !DILocation(line: 253, column: 2, scope: !298)
!828 = !{!"448"}
!829 = !DILocation(line: 254, column: 1, scope: !298)
!830 = !{!"449"}
!831 = distinct !DISubprogram(name: "br_dec32be", scope: !832, file: !832, line: 590, type: !833, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!832 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!833 = !DISubroutineType(types: !834)
!834 = !{!7, !55}
!835 = !DILocalVariable(name: "src", arg: 1, scope: !831, file: !832, line: 590, type: !55)
!836 = !DILocation(line: 0, scope: !831)
!837 = !{!"450"}
!838 = !DILocalVariable(name: "buf", scope: !831, file: !832, line: 595, type: !36)
!839 = !{!"451"}
!840 = !DILocation(line: 598, column: 20, scope: !831)
!841 = !{!"452"}
!842 = !{!"453"}
!843 = !DILocation(line: 598, column: 10, scope: !831)
!844 = !{!"454"}
!845 = !DILocation(line: 598, column: 27, scope: !831)
!846 = !{!"455"}
!847 = !DILocation(line: 599, column: 16, scope: !831)
!848 = !{!"456"}
!849 = !{!"457"}
!850 = !DILocation(line: 599, column: 6, scope: !831)
!851 = !{!"458"}
!852 = !DILocation(line: 599, column: 23, scope: !831)
!853 = !{!"459"}
!854 = !DILocation(line: 599, column: 3, scope: !831)
!855 = !{!"460"}
!856 = !DILocation(line: 600, column: 16, scope: !831)
!857 = !{!"461"}
!858 = !{!"462"}
!859 = !DILocation(line: 600, column: 6, scope: !831)
!860 = !{!"463"}
!861 = !DILocation(line: 600, column: 23, scope: !831)
!862 = !{!"464"}
!863 = !DILocation(line: 600, column: 3, scope: !831)
!864 = !{!"465"}
!865 = !DILocation(line: 601, column: 15, scope: !831)
!866 = !{!"466"}
!867 = !{!"467"}
!868 = !DILocation(line: 601, column: 5, scope: !831)
!869 = !{!"468"}
!870 = !DILocation(line: 601, column: 3, scope: !831)
!871 = !{!"469"}
!872 = !DILocation(line: 598, column: 2, scope: !831)
!873 = !{!"470"}
!874 = distinct !DISubprogram(name: "rotr", scope: !3, file: !3, line: 176, type: !875, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!875 = !DISubroutineType(types: !876)
!876 = !{!7, !7, !6}
!877 = !DILocalVariable(name: "x", arg: 1, scope: !874, file: !3, line: 176, type: !7)
!878 = !DILocation(line: 0, scope: !874)
!879 = !{!"471"}
!880 = !DILocalVariable(name: "n", arg: 2, scope: !874, file: !3, line: 176, type: !6)
!881 = !{!"472"}
!882 = !DILocation(line: 178, column: 19, scope: !874)
!883 = !{!"473"}
!884 = !DILocation(line: 178, column: 12, scope: !874)
!885 = !{!"474"}
!886 = !DILocation(line: 178, column: 30, scope: !874)
!887 = !{!"475"}
!888 = !DILocation(line: 178, column: 25, scope: !874)
!889 = !{!"476"}
!890 = !DILocation(line: 178, column: 2, scope: !874)
!891 = !{!"477"}
!892 = distinct !DISubprogram(name: "br_enc32be", scope: !832, file: !832, line: 558, type: !893, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !302, !7}
!895 = !DILocalVariable(name: "dst", arg: 1, scope: !892, file: !832, line: 558, type: !302)
!896 = !DILocation(line: 0, scope: !892)
!897 = !{!"478"}
!898 = !DILocalVariable(name: "x", arg: 2, scope: !892, file: !832, line: 558, type: !7)
!899 = !{!"479"}
!900 = !DILocalVariable(name: "buf", scope: !892, file: !832, line: 563, type: !311)
!901 = !{!"480"}
!902 = !DILocation(line: 566, column: 29, scope: !892)
!903 = !{!"481"}
!904 = !DILocation(line: 566, column: 11, scope: !892)
!905 = !{!"482"}
!906 = !DILocation(line: 566, column: 2, scope: !892)
!907 = !{!"483"}
!908 = !DILocation(line: 566, column: 9, scope: !892)
!909 = !{!"484"}
!910 = !DILocation(line: 567, column: 29, scope: !892)
!911 = !{!"485"}
!912 = !DILocation(line: 567, column: 11, scope: !892)
!913 = !{!"486"}
!914 = !DILocation(line: 567, column: 2, scope: !892)
!915 = !{!"487"}
!916 = !DILocation(line: 567, column: 9, scope: !892)
!917 = !{!"488"}
!918 = !DILocation(line: 568, column: 29, scope: !892)
!919 = !{!"489"}
!920 = !DILocation(line: 568, column: 11, scope: !892)
!921 = !{!"490"}
!922 = !DILocation(line: 568, column: 2, scope: !892)
!923 = !{!"491"}
!924 = !DILocation(line: 568, column: 9, scope: !892)
!925 = !{!"492"}
!926 = !DILocation(line: 569, column: 11, scope: !892)
!927 = !{!"493"}
!928 = !DILocation(line: 569, column: 2, scope: !892)
!929 = !{!"494"}
!930 = !DILocation(line: 569, column: 9, scope: !892)
!931 = !{!"495"}
!932 = !DILocation(line: 571, column: 1, scope: !892)
!933 = !{!"496"}
!934 = distinct !DISubprogram(name: "br_aes_big_encrypt", scope: !27, file: !27, line: 89, type: !299, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !4)
!935 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !934, file: !27, line: 89, type: !11)
!936 = !DILocation(line: 0, scope: !934)
!937 = !{!"497"}
!938 = !DILocalVariable(name: "skey", arg: 2, scope: !934, file: !27, line: 89, type: !301)
!939 = !{!"498"}
!940 = !DILocalVariable(name: "data", arg: 3, scope: !934, file: !27, line: 89, type: !302)
!941 = !{!"499"}
!942 = !DILocalVariable(name: "buf", scope: !934, file: !27, line: 91, type: !311)
!943 = !{!"500"}
!944 = !DILocation(line: 97, column: 7, scope: !934)
!945 = !{!"501"}
!946 = !DILocalVariable(name: "s0", scope: !934, file: !27, line: 92, type: !7)
!947 = !{!"502"}
!948 = !DILocation(line: 98, column: 22, scope: !934)
!949 = !{!"503"}
!950 = !DILocation(line: 98, column: 7, scope: !934)
!951 = !{!"504"}
!952 = !DILocalVariable(name: "s1", scope: !934, file: !27, line: 92, type: !7)
!953 = !{!"505"}
!954 = !DILocation(line: 99, column: 22, scope: !934)
!955 = !{!"506"}
!956 = !DILocation(line: 99, column: 7, scope: !934)
!957 = !{!"507"}
!958 = !DILocalVariable(name: "s2", scope: !934, file: !27, line: 92, type: !7)
!959 = !{!"508"}
!960 = !DILocation(line: 100, column: 22, scope: !934)
!961 = !{!"509"}
!962 = !DILocation(line: 100, column: 7, scope: !934)
!963 = !{!"510"}
!964 = !DILocalVariable(name: "s3", scope: !934, file: !27, line: 92, type: !7)
!965 = !{!"511"}
!966 = !DILocation(line: 101, column: 8, scope: !934)
!967 = !{!"512"}
!968 = !{!"PointTainted"}
!969 = !{!"513"}
!970 = !{!"ValueTainted"}
!971 = !DILocation(line: 101, column: 5, scope: !934)
!972 = !{!"514"}
!973 = !{!"515"}
!974 = !DILocation(line: 102, column: 8, scope: !934)
!975 = !{!"516"}
!976 = !{!"517"}
!977 = !DILocation(line: 102, column: 5, scope: !934)
!978 = !{!"518"}
!979 = !{!"519"}
!980 = !DILocation(line: 103, column: 8, scope: !934)
!981 = !{!"520"}
!982 = !{!"521"}
!983 = !DILocation(line: 103, column: 5, scope: !934)
!984 = !{!"522"}
!985 = !{!"523"}
!986 = !DILocation(line: 104, column: 8, scope: !934)
!987 = !{!"524"}
!988 = !{!"525"}
!989 = !DILocation(line: 104, column: 5, scope: !934)
!990 = !{!"526"}
!991 = !{!"527"}
!992 = !DILocalVariable(name: "u", scope: !934, file: !27, line: 94, type: !11)
!993 = !{!"528"}
!994 = !DILocation(line: 105, column: 7, scope: !995)
!995 = distinct !DILexicalBlock(scope: !934, file: !27, line: 105, column: 2)
!996 = !{!"529"}
!997 = !{!"530"}
!998 = !{!"531"}
!999 = !{!"532"}
!1000 = !{!"533"}
!1001 = !DILocation(line: 0, scope: !995)
!1002 = !{!"534"}
!1003 = !{!"535"}
!1004 = !{!"536"}
!1005 = !{!"537"}
!1006 = !{!"538"}
!1007 = !{!"539"}
!1008 = !DILocation(line: 105, column: 16, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !995, file: !27, line: 105, column: 2)
!1010 = !{!"540"}
!1011 = !DILocation(line: 105, column: 2, scope: !995)
!1012 = !{!"541"}
!1013 = !DILocation(line: 108, column: 8, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1009, file: !27, line: 105, column: 36)
!1015 = !{!"542"}
!1016 = !{!"543"}
!1017 = !{!"544"}
!1018 = !{!"545"}
!1019 = !{!"Tainted"}
!1020 = !DILocation(line: 109, column: 6, scope: !1014)
!1021 = !{!"546"}
!1022 = !{!"547"}
!1023 = !{!"548"}
!1024 = !{!"549"}
!1025 = !{!"550"}
!1026 = !{!"551"}
!1027 = !DILocation(line: 109, column: 4, scope: !1014)
!1028 = !{!"552"}
!1029 = !DILocation(line: 110, column: 6, scope: !1014)
!1030 = !{!"553"}
!1031 = !{!"554"}
!1032 = !{!"555"}
!1033 = !{!"556"}
!1034 = !{!"557"}
!1035 = !{!"558"}
!1036 = !DILocation(line: 110, column: 4, scope: !1014)
!1037 = !{!"559"}
!1038 = !DILocation(line: 111, column: 6, scope: !1014)
!1039 = !{!"560"}
!1040 = !{!"561"}
!1041 = !{!"562"}
!1042 = !{!"563"}
!1043 = !{!"564"}
!1044 = !DILocation(line: 111, column: 4, scope: !1014)
!1045 = !{!"565"}
!1046 = !DILocalVariable(name: "v0", scope: !1014, file: !27, line: 106, type: !7)
!1047 = !DILocation(line: 0, scope: !1014)
!1048 = !{!"566"}
!1049 = !DILocation(line: 112, column: 8, scope: !1014)
!1050 = !{!"567"}
!1051 = !{!"568"}
!1052 = !{!"569"}
!1053 = !{!"570"}
!1054 = !DILocation(line: 113, column: 6, scope: !1014)
!1055 = !{!"571"}
!1056 = !{!"572"}
!1057 = !{!"573"}
!1058 = !{!"574"}
!1059 = !{!"575"}
!1060 = !{!"576"}
!1061 = !DILocation(line: 113, column: 4, scope: !1014)
!1062 = !{!"577"}
!1063 = !DILocation(line: 114, column: 6, scope: !1014)
!1064 = !{!"578"}
!1065 = !{!"579"}
!1066 = !{!"580"}
!1067 = !{!"581"}
!1068 = !{!"582"}
!1069 = !{!"583"}
!1070 = !DILocation(line: 114, column: 4, scope: !1014)
!1071 = !{!"584"}
!1072 = !DILocation(line: 115, column: 6, scope: !1014)
!1073 = !{!"585"}
!1074 = !{!"586"}
!1075 = !{!"587"}
!1076 = !{!"588"}
!1077 = !{!"589"}
!1078 = !DILocation(line: 115, column: 4, scope: !1014)
!1079 = !{!"590"}
!1080 = !DILocalVariable(name: "v1", scope: !1014, file: !27, line: 106, type: !7)
!1081 = !{!"591"}
!1082 = !DILocation(line: 116, column: 8, scope: !1014)
!1083 = !{!"592"}
!1084 = !{!"593"}
!1085 = !{!"594"}
!1086 = !{!"595"}
!1087 = !DILocation(line: 117, column: 6, scope: !1014)
!1088 = !{!"596"}
!1089 = !{!"597"}
!1090 = !{!"598"}
!1091 = !{!"599"}
!1092 = !{!"600"}
!1093 = !{!"601"}
!1094 = !DILocation(line: 117, column: 4, scope: !1014)
!1095 = !{!"602"}
!1096 = !DILocation(line: 118, column: 6, scope: !1014)
!1097 = !{!"603"}
!1098 = !{!"604"}
!1099 = !{!"605"}
!1100 = !{!"606"}
!1101 = !{!"607"}
!1102 = !{!"608"}
!1103 = !DILocation(line: 118, column: 4, scope: !1014)
!1104 = !{!"609"}
!1105 = !DILocation(line: 119, column: 6, scope: !1014)
!1106 = !{!"610"}
!1107 = !{!"611"}
!1108 = !{!"612"}
!1109 = !{!"613"}
!1110 = !{!"614"}
!1111 = !DILocation(line: 119, column: 4, scope: !1014)
!1112 = !{!"615"}
!1113 = !DILocalVariable(name: "v2", scope: !1014, file: !27, line: 106, type: !7)
!1114 = !{!"616"}
!1115 = !DILocation(line: 120, column: 8, scope: !1014)
!1116 = !{!"617"}
!1117 = !{!"618"}
!1118 = !{!"619"}
!1119 = !{!"620"}
!1120 = !DILocation(line: 121, column: 6, scope: !1014)
!1121 = !{!"621"}
!1122 = !{!"622"}
!1123 = !{!"623"}
!1124 = !{!"624"}
!1125 = !{!"625"}
!1126 = !{!"626"}
!1127 = !DILocation(line: 121, column: 4, scope: !1014)
!1128 = !{!"627"}
!1129 = !DILocation(line: 122, column: 6, scope: !1014)
!1130 = !{!"628"}
!1131 = !{!"629"}
!1132 = !{!"630"}
!1133 = !{!"631"}
!1134 = !{!"632"}
!1135 = !{!"633"}
!1136 = !DILocation(line: 122, column: 4, scope: !1014)
!1137 = !{!"634"}
!1138 = !DILocation(line: 123, column: 6, scope: !1014)
!1139 = !{!"635"}
!1140 = !{!"636"}
!1141 = !{!"637"}
!1142 = !{!"638"}
!1143 = !{!"639"}
!1144 = !DILocation(line: 123, column: 4, scope: !1014)
!1145 = !{!"640"}
!1146 = !DILocalVariable(name: "v3", scope: !1014, file: !27, line: 106, type: !7)
!1147 = !{!"641"}
!1148 = !{!"642"}
!1149 = !{!"643"}
!1150 = !{!"644"}
!1151 = !{!"645"}
!1152 = !DILocation(line: 128, column: 16, scope: !1014)
!1153 = !{!"646"}
!1154 = !DILocation(line: 128, column: 9, scope: !1014)
!1155 = !{!"647"}
!1156 = !{!"648"}
!1157 = !{!"649"}
!1158 = !DILocation(line: 128, column: 6, scope: !1014)
!1159 = !{!"650"}
!1160 = !{!"651"}
!1161 = !DILocation(line: 129, column: 17, scope: !1014)
!1162 = !{!"652"}
!1163 = !DILocation(line: 129, column: 23, scope: !1014)
!1164 = !{!"653"}
!1165 = !DILocation(line: 129, column: 9, scope: !1014)
!1166 = !{!"654"}
!1167 = !{!"655"}
!1168 = !{!"656"}
!1169 = !DILocation(line: 129, column: 6, scope: !1014)
!1170 = !{!"657"}
!1171 = !{!"658"}
!1172 = !DILocation(line: 130, column: 17, scope: !1014)
!1173 = !{!"659"}
!1174 = !DILocation(line: 130, column: 23, scope: !1014)
!1175 = !{!"660"}
!1176 = !DILocation(line: 130, column: 9, scope: !1014)
!1177 = !{!"661"}
!1178 = !{!"662"}
!1179 = !{!"663"}
!1180 = !DILocation(line: 130, column: 6, scope: !1014)
!1181 = !{!"664"}
!1182 = !{!"665"}
!1183 = !DILocation(line: 131, column: 17, scope: !1014)
!1184 = !{!"666"}
!1185 = !DILocation(line: 131, column: 23, scope: !1014)
!1186 = !{!"667"}
!1187 = !DILocation(line: 131, column: 9, scope: !1014)
!1188 = !{!"668"}
!1189 = !{!"669"}
!1190 = !{!"670"}
!1191 = !DILocation(line: 131, column: 6, scope: !1014)
!1192 = !{!"671"}
!1193 = !{!"672"}
!1194 = !DILocation(line: 132, column: 2, scope: !1014)
!1195 = !{!"673"}
!1196 = !DILocation(line: 105, column: 32, scope: !1009)
!1197 = !{!"674"}
!1198 = !{!"675"}
!1199 = !DILocation(line: 105, column: 2, scope: !1009)
!1200 = distinct !{!1200, !1011, !1201, !205}
!1201 = !DILocation(line: 132, column: 2, scope: !995)
!1202 = !{!"676"}
!1203 = !DILocation(line: 133, column: 23, scope: !934)
!1204 = !{!"677"}
!1205 = !DILocation(line: 133, column: 18, scope: !934)
!1206 = !{!"678"}
!1207 = !{!"679"}
!1208 = !{!"680"}
!1209 = !DILocation(line: 133, column: 8, scope: !934)
!1210 = !{!"681"}
!1211 = !DILocation(line: 133, column: 30, scope: !934)
!1212 = !{!"682"}
!1213 = !DILocation(line: 134, column: 22, scope: !934)
!1214 = !{!"683"}
!1215 = !DILocation(line: 134, column: 29, scope: !934)
!1216 = !{!"684"}
!1217 = !DILocation(line: 134, column: 16, scope: !934)
!1218 = !{!"685"}
!1219 = !{!"686"}
!1220 = !{!"687"}
!1221 = !DILocation(line: 134, column: 6, scope: !934)
!1222 = !{!"688"}
!1223 = !DILocation(line: 134, column: 37, scope: !934)
!1224 = !{!"689"}
!1225 = !DILocation(line: 134, column: 3, scope: !934)
!1226 = !{!"690"}
!1227 = !DILocation(line: 135, column: 22, scope: !934)
!1228 = !{!"691"}
!1229 = !DILocation(line: 135, column: 28, scope: !934)
!1230 = !{!"692"}
!1231 = !DILocation(line: 135, column: 16, scope: !934)
!1232 = !{!"693"}
!1233 = !{!"694"}
!1234 = !{!"695"}
!1235 = !DILocation(line: 135, column: 6, scope: !934)
!1236 = !{!"696"}
!1237 = !DILocation(line: 135, column: 36, scope: !934)
!1238 = !{!"697"}
!1239 = !DILocation(line: 135, column: 3, scope: !934)
!1240 = !{!"698"}
!1241 = !DILocation(line: 136, column: 20, scope: !934)
!1242 = !{!"699"}
!1243 = !DILocation(line: 136, column: 15, scope: !934)
!1244 = !{!"700"}
!1245 = !{!"701"}
!1246 = !{!"702"}
!1247 = !DILocation(line: 136, column: 5, scope: !934)
!1248 = !{!"703"}
!1249 = !DILocation(line: 136, column: 3, scope: !934)
!1250 = !{!"704"}
!1251 = !DILocalVariable(name: "t0", scope: !934, file: !27, line: 93, type: !7)
!1252 = !{!"705"}
!1253 = !DILocation(line: 137, column: 23, scope: !934)
!1254 = !{!"706"}
!1255 = !DILocation(line: 137, column: 18, scope: !934)
!1256 = !{!"707"}
!1257 = !{!"708"}
!1258 = !{!"709"}
!1259 = !DILocation(line: 137, column: 8, scope: !934)
!1260 = !{!"710"}
!1261 = !DILocation(line: 137, column: 30, scope: !934)
!1262 = !{!"711"}
!1263 = !DILocation(line: 138, column: 22, scope: !934)
!1264 = !{!"712"}
!1265 = !DILocation(line: 138, column: 29, scope: !934)
!1266 = !{!"713"}
!1267 = !DILocation(line: 138, column: 16, scope: !934)
!1268 = !{!"714"}
!1269 = !{!"715"}
!1270 = !{!"716"}
!1271 = !DILocation(line: 138, column: 6, scope: !934)
!1272 = !{!"717"}
!1273 = !DILocation(line: 138, column: 37, scope: !934)
!1274 = !{!"718"}
!1275 = !DILocation(line: 138, column: 3, scope: !934)
!1276 = !{!"719"}
!1277 = !DILocation(line: 139, column: 22, scope: !934)
!1278 = !{!"720"}
!1279 = !DILocation(line: 139, column: 28, scope: !934)
!1280 = !{!"721"}
!1281 = !DILocation(line: 139, column: 16, scope: !934)
!1282 = !{!"722"}
!1283 = !{!"723"}
!1284 = !{!"724"}
!1285 = !DILocation(line: 139, column: 6, scope: !934)
!1286 = !{!"725"}
!1287 = !DILocation(line: 139, column: 36, scope: !934)
!1288 = !{!"726"}
!1289 = !DILocation(line: 139, column: 3, scope: !934)
!1290 = !{!"727"}
!1291 = !DILocation(line: 140, column: 20, scope: !934)
!1292 = !{!"728"}
!1293 = !DILocation(line: 140, column: 15, scope: !934)
!1294 = !{!"729"}
!1295 = !{!"730"}
!1296 = !{!"731"}
!1297 = !DILocation(line: 140, column: 5, scope: !934)
!1298 = !{!"732"}
!1299 = !DILocation(line: 140, column: 3, scope: !934)
!1300 = !{!"733"}
!1301 = !DILocalVariable(name: "t1", scope: !934, file: !27, line: 93, type: !7)
!1302 = !{!"734"}
!1303 = !DILocation(line: 141, column: 23, scope: !934)
!1304 = !{!"735"}
!1305 = !DILocation(line: 141, column: 18, scope: !934)
!1306 = !{!"736"}
!1307 = !{!"737"}
!1308 = !{!"738"}
!1309 = !DILocation(line: 141, column: 8, scope: !934)
!1310 = !{!"739"}
!1311 = !DILocation(line: 141, column: 30, scope: !934)
!1312 = !{!"740"}
!1313 = !DILocation(line: 142, column: 22, scope: !934)
!1314 = !{!"741"}
!1315 = !DILocation(line: 142, column: 29, scope: !934)
!1316 = !{!"742"}
!1317 = !DILocation(line: 142, column: 16, scope: !934)
!1318 = !{!"743"}
!1319 = !{!"744"}
!1320 = !{!"745"}
!1321 = !DILocation(line: 142, column: 6, scope: !934)
!1322 = !{!"746"}
!1323 = !DILocation(line: 142, column: 37, scope: !934)
!1324 = !{!"747"}
!1325 = !DILocation(line: 142, column: 3, scope: !934)
!1326 = !{!"748"}
!1327 = !DILocation(line: 143, column: 22, scope: !934)
!1328 = !{!"749"}
!1329 = !DILocation(line: 143, column: 28, scope: !934)
!1330 = !{!"750"}
!1331 = !DILocation(line: 143, column: 16, scope: !934)
!1332 = !{!"751"}
!1333 = !{!"752"}
!1334 = !{!"753"}
!1335 = !DILocation(line: 143, column: 6, scope: !934)
!1336 = !{!"754"}
!1337 = !DILocation(line: 143, column: 36, scope: !934)
!1338 = !{!"755"}
!1339 = !DILocation(line: 143, column: 3, scope: !934)
!1340 = !{!"756"}
!1341 = !DILocation(line: 144, column: 20, scope: !934)
!1342 = !{!"757"}
!1343 = !DILocation(line: 144, column: 15, scope: !934)
!1344 = !{!"758"}
!1345 = !{!"759"}
!1346 = !{!"760"}
!1347 = !DILocation(line: 144, column: 5, scope: !934)
!1348 = !{!"761"}
!1349 = !DILocation(line: 144, column: 3, scope: !934)
!1350 = !{!"762"}
!1351 = !DILocalVariable(name: "t2", scope: !934, file: !27, line: 93, type: !7)
!1352 = !{!"763"}
!1353 = !DILocation(line: 145, column: 23, scope: !934)
!1354 = !{!"764"}
!1355 = !DILocation(line: 145, column: 18, scope: !934)
!1356 = !{!"765"}
!1357 = !{!"766"}
!1358 = !{!"767"}
!1359 = !DILocation(line: 145, column: 8, scope: !934)
!1360 = !{!"768"}
!1361 = !DILocation(line: 145, column: 30, scope: !934)
!1362 = !{!"769"}
!1363 = !DILocation(line: 146, column: 22, scope: !934)
!1364 = !{!"770"}
!1365 = !DILocation(line: 146, column: 29, scope: !934)
!1366 = !{!"771"}
!1367 = !DILocation(line: 146, column: 16, scope: !934)
!1368 = !{!"772"}
!1369 = !{!"773"}
!1370 = !{!"774"}
!1371 = !DILocation(line: 146, column: 6, scope: !934)
!1372 = !{!"775"}
!1373 = !DILocation(line: 146, column: 37, scope: !934)
!1374 = !{!"776"}
!1375 = !DILocation(line: 146, column: 3, scope: !934)
!1376 = !{!"777"}
!1377 = !DILocation(line: 147, column: 22, scope: !934)
!1378 = !{!"778"}
!1379 = !DILocation(line: 147, column: 28, scope: !934)
!1380 = !{!"779"}
!1381 = !DILocation(line: 147, column: 16, scope: !934)
!1382 = !{!"780"}
!1383 = !{!"781"}
!1384 = !{!"782"}
!1385 = !DILocation(line: 147, column: 6, scope: !934)
!1386 = !{!"783"}
!1387 = !DILocation(line: 147, column: 36, scope: !934)
!1388 = !{!"784"}
!1389 = !DILocation(line: 147, column: 3, scope: !934)
!1390 = !{!"785"}
!1391 = !DILocation(line: 148, column: 20, scope: !934)
!1392 = !{!"786"}
!1393 = !DILocation(line: 148, column: 15, scope: !934)
!1394 = !{!"787"}
!1395 = !{!"788"}
!1396 = !{!"789"}
!1397 = !DILocation(line: 148, column: 5, scope: !934)
!1398 = !{!"790"}
!1399 = !DILocation(line: 148, column: 3, scope: !934)
!1400 = !{!"791"}
!1401 = !DILocalVariable(name: "t3", scope: !934, file: !27, line: 93, type: !7)
!1402 = !{!"792"}
!1403 = !DILocation(line: 149, column: 28, scope: !934)
!1404 = !{!"793"}
!1405 = !DILocation(line: 149, column: 12, scope: !934)
!1406 = !{!"794"}
!1407 = !{!"795"}
!1408 = !{!"796"}
!1409 = !DILocation(line: 149, column: 10, scope: !934)
!1410 = !{!"797"}
!1411 = !{!"798"}
!1412 = !DILocation(line: 150, column: 29, scope: !934)
!1413 = !{!"799"}
!1414 = !DILocation(line: 150, column: 35, scope: !934)
!1415 = !{!"800"}
!1416 = !DILocation(line: 150, column: 12, scope: !934)
!1417 = !{!"801"}
!1418 = !{!"802"}
!1419 = !{!"803"}
!1420 = !DILocation(line: 150, column: 10, scope: !934)
!1421 = !{!"804"}
!1422 = !{!"805"}
!1423 = !DILocation(line: 151, column: 29, scope: !934)
!1424 = !{!"806"}
!1425 = !DILocation(line: 151, column: 35, scope: !934)
!1426 = !{!"807"}
!1427 = !DILocation(line: 151, column: 12, scope: !934)
!1428 = !{!"808"}
!1429 = !{!"809"}
!1430 = !{!"810"}
!1431 = !DILocation(line: 151, column: 10, scope: !934)
!1432 = !{!"811"}
!1433 = !{!"812"}
!1434 = !DILocation(line: 152, column: 29, scope: !934)
!1435 = !{!"813"}
!1436 = !DILocation(line: 152, column: 35, scope: !934)
!1437 = !{!"814"}
!1438 = !DILocation(line: 152, column: 12, scope: !934)
!1439 = !{!"815"}
!1440 = !{!"816"}
!1441 = !{!"817"}
!1442 = !DILocation(line: 152, column: 10, scope: !934)
!1443 = !{!"818"}
!1444 = !{!"819"}
!1445 = !DILocation(line: 153, column: 2, scope: !934)
!1446 = !{!"820"}
!1447 = !DILocation(line: 154, column: 17, scope: !934)
!1448 = !{!"821"}
!1449 = !DILocation(line: 154, column: 2, scope: !934)
!1450 = !{!"822"}
!1451 = !DILocation(line: 155, column: 17, scope: !934)
!1452 = !{!"823"}
!1453 = !DILocation(line: 155, column: 2, scope: !934)
!1454 = !{!"824"}
!1455 = !DILocation(line: 156, column: 17, scope: !934)
!1456 = !{!"825"}
!1457 = !DILocation(line: 156, column: 2, scope: !934)
!1458 = !{!"826"}
!1459 = !DILocation(line: 157, column: 1, scope: !934)
!1460 = !{!"827"}
!1461 = distinct !DISubprogram(name: "br_dec32be", scope: !832, file: !832, line: 590, type: !833, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1462 = !DILocalVariable(name: "src", arg: 1, scope: !1461, file: !832, line: 590, type: !55)
!1463 = !DILocation(line: 0, scope: !1461)
!1464 = !{!"828"}
!1465 = !DILocalVariable(name: "buf", scope: !1461, file: !832, line: 595, type: !36)
!1466 = !{!"829"}
!1467 = !DILocation(line: 598, column: 20, scope: !1461)
!1468 = !{!"830"}
!1469 = !{!"831"}
!1470 = !DILocation(line: 598, column: 10, scope: !1461)
!1471 = !{!"832"}
!1472 = !DILocation(line: 598, column: 27, scope: !1461)
!1473 = !{!"833"}
!1474 = !DILocation(line: 599, column: 16, scope: !1461)
!1475 = !{!"834"}
!1476 = !{!"835"}
!1477 = !DILocation(line: 599, column: 6, scope: !1461)
!1478 = !{!"836"}
!1479 = !DILocation(line: 599, column: 23, scope: !1461)
!1480 = !{!"837"}
!1481 = !DILocation(line: 599, column: 3, scope: !1461)
!1482 = !{!"838"}
!1483 = !DILocation(line: 600, column: 16, scope: !1461)
!1484 = !{!"839"}
!1485 = !{!"840"}
!1486 = !DILocation(line: 600, column: 6, scope: !1461)
!1487 = !{!"841"}
!1488 = !DILocation(line: 600, column: 23, scope: !1461)
!1489 = !{!"842"}
!1490 = !DILocation(line: 600, column: 3, scope: !1461)
!1491 = !{!"843"}
!1492 = !DILocation(line: 601, column: 15, scope: !1461)
!1493 = !{!"844"}
!1494 = !{!"845"}
!1495 = !DILocation(line: 601, column: 5, scope: !1461)
!1496 = !{!"846"}
!1497 = !DILocation(line: 601, column: 3, scope: !1461)
!1498 = !{!"847"}
!1499 = !DILocation(line: 598, column: 2, scope: !1461)
!1500 = !{!"848"}
!1501 = distinct !DISubprogram(name: "rotr", scope: !27, file: !27, line: 76, type: !875, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1502 = !DILocalVariable(name: "x", arg: 1, scope: !1501, file: !27, line: 76, type: !7)
!1503 = !DILocation(line: 0, scope: !1501)
!1504 = !{!"849"}
!1505 = !DILocalVariable(name: "n", arg: 2, scope: !1501, file: !27, line: 76, type: !6)
!1506 = !{!"850"}
!1507 = !DILocation(line: 78, column: 19, scope: !1501)
!1508 = !{!"851"}
!1509 = !DILocation(line: 78, column: 12, scope: !1501)
!1510 = !{!"852"}
!1511 = !DILocation(line: 78, column: 30, scope: !1501)
!1512 = !{!"853"}
!1513 = !DILocation(line: 78, column: 25, scope: !1501)
!1514 = !{!"854"}
!1515 = !DILocation(line: 78, column: 2, scope: !1501)
!1516 = !{!"855"}
!1517 = distinct !DISubprogram(name: "br_enc32be", scope: !832, file: !832, line: 558, type: !893, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1518 = !DILocalVariable(name: "dst", arg: 1, scope: !1517, file: !832, line: 558, type: !302)
!1519 = !DILocation(line: 0, scope: !1517)
!1520 = !{!"856"}
!1521 = !DILocalVariable(name: "x", arg: 2, scope: !1517, file: !832, line: 558, type: !7)
!1522 = !{!"857"}
!1523 = !DILocalVariable(name: "buf", scope: !1517, file: !832, line: 563, type: !311)
!1524 = !{!"858"}
!1525 = !DILocation(line: 566, column: 29, scope: !1517)
!1526 = !{!"859"}
!1527 = !DILocation(line: 566, column: 11, scope: !1517)
!1528 = !{!"860"}
!1529 = !DILocation(line: 566, column: 2, scope: !1517)
!1530 = !{!"861"}
!1531 = !DILocation(line: 566, column: 9, scope: !1517)
!1532 = !{!"862"}
!1533 = !DILocation(line: 567, column: 29, scope: !1517)
!1534 = !{!"863"}
!1535 = !DILocation(line: 567, column: 11, scope: !1517)
!1536 = !{!"864"}
!1537 = !DILocation(line: 567, column: 2, scope: !1517)
!1538 = !{!"865"}
!1539 = !DILocation(line: 567, column: 9, scope: !1517)
!1540 = !{!"866"}
!1541 = !DILocation(line: 568, column: 29, scope: !1517)
!1542 = !{!"867"}
!1543 = !DILocation(line: 568, column: 11, scope: !1517)
!1544 = !{!"868"}
!1545 = !DILocation(line: 568, column: 2, scope: !1517)
!1546 = !{!"869"}
!1547 = !DILocation(line: 568, column: 9, scope: !1517)
!1548 = !{!"870"}
!1549 = !DILocation(line: 569, column: 11, scope: !1517)
!1550 = !{!"871"}
!1551 = !DILocation(line: 569, column: 2, scope: !1517)
!1552 = !{!"872"}
!1553 = !DILocation(line: 569, column: 9, scope: !1517)
!1554 = !{!"873"}
!1555 = !DILocation(line: 571, column: 1, scope: !1517)
!1556 = !{!"874"}
!1557 = distinct !DISubprogram(name: "br_aes_keysched", scope: !34, file: !34, line: 71, type: !52, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1558 = !DILocalVariable(name: "skey", arg: 1, scope: !1557, file: !34, line: 71, type: !54)
!1559 = !DILocation(line: 0, scope: !1557)
!1560 = !{!"875"}
!1561 = !DILocalVariable(name: "key", arg: 2, scope: !1557, file: !34, line: 71, type: !55)
!1562 = !{!"876"}
!1563 = !DILocalVariable(name: "key_len", arg: 3, scope: !1557, file: !34, line: 71, type: !57)
!1564 = !{!"877"}
!1565 = !DILocation(line: 76, column: 2, scope: !1557)
!1566 = !{!"878"}
!1567 = !DILocalVariable(name: "num_rounds", scope: !1557, file: !34, line: 73, type: !11)
!1568 = !{!"879"}
!1569 = !DILocation(line: 79, column: 3, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1557, file: !34, line: 76, column: 19)
!1571 = !{!"880"}
!1572 = !{!"881"}
!1573 = !DILocation(line: 82, column: 3, scope: !1570)
!1574 = !{!"882"}
!1575 = !{!"883"}
!1576 = !DILocation(line: 85, column: 3, scope: !1570)
!1577 = !{!"884"}
!1578 = !DILocation(line: 88, column: 3, scope: !1570)
!1579 = !{!"885"}
!1580 = !DILocation(line: 0, scope: !1570)
!1581 = !{!"886"}
!1582 = !{!"887"}
!1583 = !DILocation(line: 90, column: 21, scope: !1557)
!1584 = !{!"888"}
!1585 = !DILocation(line: 90, column: 7, scope: !1557)
!1586 = !{!"889"}
!1587 = !DILocalVariable(name: "nk", scope: !1557, file: !34, line: 74, type: !6)
!1588 = !{!"890"}
!1589 = !DILocation(line: 91, column: 26, scope: !1557)
!1590 = !{!"891"}
!1591 = !DILocation(line: 91, column: 31, scope: !1557)
!1592 = !{!"892"}
!1593 = !DILocalVariable(name: "nkf", scope: !1557, file: !34, line: 74, type: !6)
!1594 = !{!"893"}
!1595 = !DILocalVariable(name: "i", scope: !1557, file: !34, line: 74, type: !6)
!1596 = !{!"894"}
!1597 = !DILocation(line: 92, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1557, file: !34, line: 92, column: 2)
!1599 = !{!"895"}
!1600 = !DILocation(line: 0, scope: !1598)
!1601 = !{!"896"}
!1602 = !{!"897"}
!1603 = !DILocation(line: 92, column: 16, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1598, file: !34, line: 92, column: 2)
!1605 = !{!"898"}
!1606 = !DILocation(line: 92, column: 2, scope: !1598)
!1607 = !{!"899"}
!1608 = !DILocation(line: 93, column: 56, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !34, line: 92, column: 28)
!1610 = !{!"900"}
!1611 = !DILocation(line: 93, column: 51, scope: !1609)
!1612 = !{!"901"}
!1613 = !{!"902"}
!1614 = !DILocation(line: 93, column: 13, scope: !1609)
!1615 = !{!"903"}
!1616 = !DILocation(line: 93, column: 3, scope: !1609)
!1617 = !{!"904"}
!1618 = !{!"905"}
!1619 = !DILocation(line: 93, column: 11, scope: !1609)
!1620 = !{!"906"}
!1621 = !DILocation(line: 94, column: 2, scope: !1609)
!1622 = !{!"907"}
!1623 = !DILocation(line: 92, column: 24, scope: !1604)
!1624 = !{!"908"}
!1625 = !{!"909"}
!1626 = !DILocation(line: 92, column: 2, scope: !1604)
!1627 = distinct !{!1627, !1606, !1628, !205}
!1628 = !DILocation(line: 94, column: 2, scope: !1598)
!1629 = !{!"910"}
!1630 = !{!"911"}
!1631 = !DILocalVariable(name: "j", scope: !1557, file: !34, line: 74, type: !6)
!1632 = !{!"912"}
!1633 = !DILocalVariable(name: "k", scope: !1557, file: !34, line: 74, type: !6)
!1634 = !{!"913"}
!1635 = !DILocation(line: 95, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1557, file: !34, line: 95, column: 2)
!1637 = !{!"914"}
!1638 = !DILocation(line: 0, scope: !1636)
!1639 = !{!"915"}
!1640 = !{!"916"}
!1641 = !{!"917"}
!1642 = !{!"918"}
!1643 = !{!"919"}
!1644 = !{!"920"}
!1645 = !DILocation(line: 95, column: 31, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1636, file: !34, line: 95, column: 2)
!1647 = !{!"921"}
!1648 = !DILocation(line: 95, column: 2, scope: !1636)
!1649 = !{!"922"}
!1650 = !DILocation(line: 98, column: 16, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1646, file: !34, line: 95, column: 44)
!1652 = !{!"923"}
!1653 = !DILocation(line: 98, column: 9, scope: !1651)
!1654 = !{!"924"}
!1655 = !{!"925"}
!1656 = !{!"926"}
!1657 = !DILocalVariable(name: "tmp", scope: !1651, file: !34, line: 96, type: !7)
!1658 = !DILocation(line: 0, scope: !1651)
!1659 = !{!"927"}
!1660 = !DILocation(line: 99, column: 9, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1651, file: !34, line: 99, column: 7)
!1662 = !{!"928"}
!1663 = !DILocation(line: 99, column: 7, scope: !1651)
!1664 = !{!"929"}
!1665 = !DILocation(line: 100, column: 15, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1661, file: !34, line: 99, column: 15)
!1667 = !{!"930"}
!1668 = !DILocation(line: 100, column: 28, scope: !1666)
!1669 = !{!"931"}
!1670 = !DILocation(line: 100, column: 21, scope: !1666)
!1671 = !{!"932"}
!1672 = !{!"933"}
!1673 = !DILocation(line: 101, column: 10, scope: !1666)
!1674 = !{!"934"}
!1675 = !DILocation(line: 101, column: 25, scope: !1666)
!1676 = !{!"935"}
!1677 = !{!"936"}
!1678 = !{!"937"}
!1679 = !DILocation(line: 101, column: 23, scope: !1666)
!1680 = !{!"938"}
!1681 = !{!"939"}
!1682 = !DILocation(line: 102, column: 3, scope: !1666)
!1683 = !{!"940"}
!1684 = !DILocation(line: 102, column: 17, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1661, file: !34, line: 102, column: 14)
!1686 = !{!"941"}
!1687 = !DILocation(line: 102, column: 21, scope: !1685)
!1688 = !{!"942"}
!1689 = !DILocation(line: 102, column: 26, scope: !1685)
!1690 = !{!"943"}
!1691 = !DILocation(line: 102, column: 14, scope: !1661)
!1692 = !{!"944"}
!1693 = !DILocation(line: 103, column: 10, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1685, file: !34, line: 102, column: 32)
!1695 = !{!"945"}
!1696 = !{!"946"}
!1697 = !DILocation(line: 104, column: 3, scope: !1694)
!1698 = !{!"947"}
!1699 = !{!"948"}
!1700 = !{!"949"}
!1701 = !{!"950"}
!1702 = !DILocation(line: 0, scope: !1661)
!1703 = !{!"951"}
!1704 = !{!"952"}
!1705 = !DILocation(line: 105, column: 20, scope: !1651)
!1706 = !{!"953"}
!1707 = !DILocation(line: 105, column: 13, scope: !1651)
!1708 = !{!"954"}
!1709 = !{!"955"}
!1710 = !{!"956"}
!1711 = !DILocation(line: 105, column: 26, scope: !1651)
!1712 = !{!"957"}
!1713 = !DILocation(line: 105, column: 3, scope: !1651)
!1714 = !{!"958"}
!1715 = !{!"959"}
!1716 = !DILocation(line: 105, column: 11, scope: !1651)
!1717 = !{!"960"}
!1718 = !DILocation(line: 106, column: 7, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1651, file: !34, line: 106, column: 7)
!1720 = !{!"961"}
!1721 = !{!"962"}
!1722 = !DILocation(line: 106, column: 12, scope: !1719)
!1723 = !{!"963"}
!1724 = !DILocation(line: 106, column: 7, scope: !1651)
!1725 = !{!"964"}
!1726 = !{!"965"}
!1727 = !DILocation(line: 108, column: 6, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1719, file: !34, line: 106, column: 19)
!1729 = !{!"966"}
!1730 = !{!"967"}
!1731 = !DILocation(line: 109, column: 3, scope: !1728)
!1732 = !{!"968"}
!1733 = !DILocation(line: 0, scope: !1719)
!1734 = !{!"969"}
!1735 = !{!"970"}
!1736 = !{!"971"}
!1737 = !{!"972"}
!1738 = !DILocation(line: 110, column: 2, scope: !1651)
!1739 = !{!"973"}
!1740 = !DILocation(line: 95, column: 40, scope: !1646)
!1741 = !{!"974"}
!1742 = !{!"975"}
!1743 = !DILocation(line: 95, column: 2, scope: !1646)
!1744 = distinct !{!1744, !1648, !1745, !205}
!1745 = !DILocation(line: 110, column: 2, scope: !1636)
!1746 = !{!"976"}
!1747 = !DILocation(line: 111, column: 2, scope: !1557)
!1748 = !{!"977"}
!1749 = !{!"978"}
!1750 = !DILocation(line: 112, column: 1, scope: !1557)
!1751 = !{!"979"}
!1752 = distinct !DISubprogram(name: "br_dec32be", scope: !832, file: !832, line: 590, type: !833, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1753 = !DILocalVariable(name: "src", arg: 1, scope: !1752, file: !832, line: 590, type: !55)
!1754 = !DILocation(line: 0, scope: !1752)
!1755 = !{!"980"}
!1756 = !DILocalVariable(name: "buf", scope: !1752, file: !832, line: 595, type: !36)
!1757 = !{!"981"}
!1758 = !DILocation(line: 598, column: 20, scope: !1752)
!1759 = !{!"982"}
!1760 = !{!"983"}
!1761 = !DILocation(line: 598, column: 10, scope: !1752)
!1762 = !{!"984"}
!1763 = !DILocation(line: 598, column: 27, scope: !1752)
!1764 = !{!"985"}
!1765 = !DILocation(line: 599, column: 16, scope: !1752)
!1766 = !{!"986"}
!1767 = !{!"987"}
!1768 = !DILocation(line: 599, column: 6, scope: !1752)
!1769 = !{!"988"}
!1770 = !DILocation(line: 599, column: 23, scope: !1752)
!1771 = !{!"989"}
!1772 = !DILocation(line: 599, column: 3, scope: !1752)
!1773 = !{!"990"}
!1774 = !DILocation(line: 600, column: 16, scope: !1752)
!1775 = !{!"991"}
!1776 = !{!"992"}
!1777 = !DILocation(line: 600, column: 6, scope: !1752)
!1778 = !{!"993"}
!1779 = !DILocation(line: 600, column: 23, scope: !1752)
!1780 = !{!"994"}
!1781 = !DILocation(line: 600, column: 3, scope: !1752)
!1782 = !{!"995"}
!1783 = !DILocation(line: 601, column: 15, scope: !1752)
!1784 = !{!"996"}
!1785 = !{!"997"}
!1786 = !DILocation(line: 601, column: 5, scope: !1752)
!1787 = !{!"998"}
!1788 = !DILocation(line: 601, column: 3, scope: !1752)
!1789 = !{!"999"}
!1790 = !DILocation(line: 598, column: 2, scope: !1752)
!1791 = !{!"1000"}
!1792 = distinct !DISubprogram(name: "SubWord", scope: !34, file: !34, line: 61, type: !1793, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{!7, !7}
!1795 = !DILocalVariable(name: "x", arg: 1, scope: !1792, file: !34, line: 61, type: !7)
!1796 = !DILocation(line: 0, scope: !1792)
!1797 = !{!"1001"}
!1798 = !DILocation(line: 63, column: 24, scope: !1792)
!1799 = !{!"1002"}
!1800 = !DILocation(line: 63, column: 20, scope: !1792)
!1801 = !{!"1003"}
!1802 = !{!"1004"}
!1803 = !{!"1005"}
!1804 = !DILocation(line: 63, column: 10, scope: !1792)
!1805 = !{!"1006"}
!1806 = !DILocation(line: 63, column: 31, scope: !1792)
!1807 = !{!"1007"}
!1808 = !DILocation(line: 64, column: 21, scope: !1792)
!1809 = !{!"1008"}
!1810 = !DILocation(line: 64, column: 28, scope: !1792)
!1811 = !{!"1009"}
!1812 = !DILocation(line: 64, column: 16, scope: !1792)
!1813 = !{!"1010"}
!1814 = !{!"1011"}
!1815 = !{!"1012"}
!1816 = !DILocation(line: 64, column: 6, scope: !1792)
!1817 = !{!"1013"}
!1818 = !DILocation(line: 64, column: 36, scope: !1792)
!1819 = !{!"1014"}
!1820 = !DILocation(line: 64, column: 3, scope: !1792)
!1821 = !{!"1015"}
!1822 = !DILocation(line: 65, column: 21, scope: !1792)
!1823 = !{!"1016"}
!1824 = !DILocation(line: 65, column: 27, scope: !1792)
!1825 = !{!"1017"}
!1826 = !DILocation(line: 65, column: 16, scope: !1792)
!1827 = !{!"1018"}
!1828 = !{!"1019"}
!1829 = !{!"1020"}
!1830 = !DILocation(line: 65, column: 6, scope: !1792)
!1831 = !{!"1021"}
!1832 = !DILocation(line: 65, column: 35, scope: !1792)
!1833 = !{!"1022"}
!1834 = !DILocation(line: 65, column: 3, scope: !1792)
!1835 = !{!"1023"}
!1836 = !DILocation(line: 66, column: 19, scope: !1792)
!1837 = !{!"1024"}
!1838 = !DILocation(line: 66, column: 15, scope: !1792)
!1839 = !{!"1025"}
!1840 = !{!"1026"}
!1841 = !{!"1027"}
!1842 = !DILocation(line: 66, column: 5, scope: !1792)
!1843 = !{!"1028"}
!1844 = !DILocation(line: 66, column: 3, scope: !1792)
!1845 = !{!"1029"}
!1846 = !DILocation(line: 63, column: 2, scope: !1792)
!1847 = !{!"1030"}
!1848 = distinct !DISubprogram(name: "encrypt_wrapper", scope: !46, file: !46, line: 3, type: !299, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!1849 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !1848, file: !46, line: 3, type: !11)
!1850 = !DILocation(line: 0, scope: !1848)
!1851 = !{!"1031"}
!1852 = !DILocalVariable(name: "skey", arg: 2, scope: !1848, file: !46, line: 3, type: !301)
!1853 = !{!"1032"}
!1854 = !DILocalVariable(name: "data", arg: 3, scope: !1848, file: !46, line: 3, type: !302)
!1855 = !{!"1033"}
!1856 = !DILocation(line: 4, column: 12, scope: !1848)
!1857 = !{!"1034"}
!1858 = !DILocation(line: 4, column: 2, scope: !1848)
!1859 = !{!"1035"}
!1860 = !DILocation(line: 5, column: 12, scope: !1848)
!1861 = !{!"1036"}
!1862 = !DILocation(line: 5, column: 2, scope: !1848)
!1863 = !{!"1037"}
!1864 = !DILocation(line: 6, column: 12, scope: !1848)
!1865 = !{!"1038"}
!1866 = !DILocation(line: 6, column: 2, scope: !1848)
!1867 = !{!"1039"}
!1868 = !DILocation(line: 8, column: 12, scope: !1848)
!1869 = !{!"1040"}
!1870 = !DILocation(line: 8, column: 2, scope: !1848)
!1871 = !{!"1041"}
!1872 = !DILocation(line: 10, column: 2, scope: !1848)
!1873 = !{!"1042"}
!1874 = !DILocation(line: 11, column: 1, scope: !1848)
!1875 = !{!"1043"}
!1876 = distinct !DISubprogram(name: "encrypt_wrapper_t", scope: !46, file: !46, line: 18, type: !1877, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{null}
!1879 = !DILocation(line: 19, column: 24, scope: !1876)
!1880 = !{!"1044"}
!1881 = !DILocalVariable(name: "num_rounds", scope: !1876, file: !46, line: 19, type: !11)
!1882 = !DILocation(line: 0, scope: !1876)
!1883 = !{!"1045"}
!1884 = !DILocation(line: 20, column: 25, scope: !1876)
!1885 = !{!"1046"}
!1886 = !DILocalVariable(name: "skey", scope: !1876, file: !46, line: 20, type: !301)
!1887 = !{!"1047"}
!1888 = !DILocation(line: 21, column: 15, scope: !1876)
!1889 = !{!"1048"}
!1890 = !DILocalVariable(name: "data", scope: !1876, file: !46, line: 21, type: !302)
!1891 = !{!"1049"}
!1892 = !DILocation(line: 23, column: 2, scope: !1876)
!1893 = !{!"1050"}
!1894 = !DILocation(line: 24, column: 1, scope: !1876)
!1895 = !{!"1051"}
