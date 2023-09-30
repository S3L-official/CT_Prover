; ModuleID = 'key_schedule-k.ll'
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
  %11 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !966, !psr.id !967
  %12 = load i32, i32* %11, align 4, !dbg !966, !psr.id !968
  %13 = xor i32 %4, %12, !dbg !969, !psr.id !970
  call void @llvm.dbg.value(metadata i32 %13, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !971
  %14 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !972, !psr.id !973
  %15 = load i32, i32* %14, align 4, !dbg !972, !psr.id !974
  %16 = xor i32 %6, %15, !dbg !975, !psr.id !976
  call void @llvm.dbg.value(metadata i32 %16, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !977
  %17 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !978, !psr.id !979
  %18 = load i32, i32* %17, align 4, !dbg !978, !psr.id !980
  %19 = xor i32 %8, %18, !dbg !981, !psr.id !982
  call void @llvm.dbg.value(metadata i32 %19, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !983
  %20 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !984, !psr.id !985
  %21 = load i32, i32* %20, align 4, !dbg !984, !psr.id !986
  %22 = xor i32 %10, %21, !dbg !987, !psr.id !988
  call void @llvm.dbg.value(metadata i32 %22, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !989
  call void @llvm.dbg.value(metadata i32 1, metadata !990, metadata !DIExpression()), !dbg !936, !psr.id !991
  br label %23, !dbg !992, !psr.id !994

23:                                               ; preds = %145, %3
  %.04 = phi i32 [ %13, %3 ], [ %126, %145 ], !dbg !936, !psr.id !995
  %.03 = phi i32 [ %16, %3 ], [ %132, %145 ], !dbg !936, !psr.id !996
  %.02 = phi i32 [ %19, %3 ], [ %138, %145 ], !dbg !936, !psr.id !997
  %.01 = phi i32 [ %22, %3 ], [ %144, %145 ], !dbg !936, !psr.id !998
  %.0 = phi i32 [ 1, %3 ], [ %146, %145 ], !dbg !999, !psr.id !1000
  call void @llvm.dbg.value(metadata i32 %.0, metadata !990, metadata !DIExpression()), !dbg !936, !psr.id !1001
  call void @llvm.dbg.value(metadata i32 %.01, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1002
  call void @llvm.dbg.value(metadata i32 %.02, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1003
  call void @llvm.dbg.value(metadata i32 %.03, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1004
  call void @llvm.dbg.value(metadata i32 %.04, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1005
  %24 = icmp ult i32 %.0, %0, !dbg !1006, !psr.id !1008
  br i1 %24, label %25, label %147, !dbg !1009, !psr.id !1010

25:                                               ; preds = %23
  %26 = lshr i32 %.04, 24, !dbg !1011, !psr.id !1013
  %27 = zext i32 %26 to i64, !dbg !1011, !psr.id !1014
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %27, !dbg !1011, !psr.id !1015
  %29 = load i32, i32* %28, align 4, !dbg !1011, !psr.id !1016
  %30 = lshr i32 %.03, 16, !dbg !1017, !psr.id !1018
  %31 = and i32 %30, 255, !dbg !1017, !psr.id !1019
  %32 = zext i32 %31 to i64, !dbg !1017, !psr.id !1020
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %32, !dbg !1017, !psr.id !1021
  %34 = load i32, i32* %33, align 4, !dbg !1017, !psr.id !1022
  %35 = call i32 @rotr.2(i32 %34, i32 8), !dbg !1017, !psr.id !1023
  %36 = xor i32 %29, %35, !dbg !1024, !psr.id !1025
  %37 = lshr i32 %.02, 8, !dbg !1026, !psr.id !1027
  %38 = and i32 %37, 255, !dbg !1026, !psr.id !1028
  %39 = zext i32 %38 to i64, !dbg !1026, !psr.id !1029
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %39, !dbg !1026, !psr.id !1030
  %41 = load i32, i32* %40, align 4, !dbg !1026, !psr.id !1031
  %42 = call i32 @rotr.2(i32 %41, i32 16), !dbg !1026, !psr.id !1032
  %43 = xor i32 %36, %42, !dbg !1033, !psr.id !1034
  %44 = and i32 %.01, 255, !dbg !1035, !psr.id !1036
  %45 = zext i32 %44 to i64, !dbg !1035, !psr.id !1037
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %45, !dbg !1035, !psr.id !1038
  %47 = load i32, i32* %46, align 4, !dbg !1035, !psr.id !1039
  %48 = call i32 @rotr.2(i32 %47, i32 24), !dbg !1035, !psr.id !1040
  %49 = xor i32 %43, %48, !dbg !1041, !psr.id !1042
  call void @llvm.dbg.value(metadata i32 %49, metadata !1043, metadata !DIExpression()), !dbg !1044, !psr.id !1045
  %50 = lshr i32 %.03, 24, !dbg !1046, !psr.id !1047
  %51 = zext i32 %50 to i64, !dbg !1046, !psr.id !1048
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %51, !dbg !1046, !psr.id !1049
  %53 = load i32, i32* %52, align 4, !dbg !1046, !psr.id !1050
  %54 = lshr i32 %.02, 16, !dbg !1051, !psr.id !1052
  %55 = and i32 %54, 255, !dbg !1051, !psr.id !1053
  %56 = zext i32 %55 to i64, !dbg !1051, !psr.id !1054
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %56, !dbg !1051, !psr.id !1055
  %58 = load i32, i32* %57, align 4, !dbg !1051, !psr.id !1056
  %59 = call i32 @rotr.2(i32 %58, i32 8), !dbg !1051, !psr.id !1057
  %60 = xor i32 %53, %59, !dbg !1058, !psr.id !1059
  %61 = lshr i32 %.01, 8, !dbg !1060, !psr.id !1061
  %62 = and i32 %61, 255, !dbg !1060, !psr.id !1062
  %63 = zext i32 %62 to i64, !dbg !1060, !psr.id !1063
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %63, !dbg !1060, !psr.id !1064
  %65 = load i32, i32* %64, align 4, !dbg !1060, !psr.id !1065
  %66 = call i32 @rotr.2(i32 %65, i32 16), !dbg !1060, !psr.id !1066
  %67 = xor i32 %60, %66, !dbg !1067, !psr.id !1068
  %68 = and i32 %.04, 255, !dbg !1069, !psr.id !1070
  %69 = zext i32 %68 to i64, !dbg !1069, !psr.id !1071
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %69, !dbg !1069, !psr.id !1072
  %71 = load i32, i32* %70, align 4, !dbg !1069, !psr.id !1073
  %72 = call i32 @rotr.2(i32 %71, i32 24), !dbg !1069, !psr.id !1074
  %73 = xor i32 %67, %72, !dbg !1075, !psr.id !1076
  call void @llvm.dbg.value(metadata i32 %73, metadata !1077, metadata !DIExpression()), !dbg !1044, !psr.id !1078
  %74 = lshr i32 %.02, 24, !dbg !1079, !psr.id !1080
  %75 = zext i32 %74 to i64, !dbg !1079, !psr.id !1081
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %75, !dbg !1079, !psr.id !1082
  %77 = load i32, i32* %76, align 4, !dbg !1079, !psr.id !1083
  %78 = lshr i32 %.01, 16, !dbg !1084, !psr.id !1085
  %79 = and i32 %78, 255, !dbg !1084, !psr.id !1086
  %80 = zext i32 %79 to i64, !dbg !1084, !psr.id !1087
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %80, !dbg !1084, !psr.id !1088
  %82 = load i32, i32* %81, align 4, !dbg !1084, !psr.id !1089
  %83 = call i32 @rotr.2(i32 %82, i32 8), !dbg !1084, !psr.id !1090
  %84 = xor i32 %77, %83, !dbg !1091, !psr.id !1092
  %85 = lshr i32 %.04, 8, !dbg !1093, !psr.id !1094
  %86 = and i32 %85, 255, !dbg !1093, !psr.id !1095
  %87 = zext i32 %86 to i64, !dbg !1093, !psr.id !1096
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %87, !dbg !1093, !psr.id !1097
  %89 = load i32, i32* %88, align 4, !dbg !1093, !psr.id !1098
  %90 = call i32 @rotr.2(i32 %89, i32 16), !dbg !1093, !psr.id !1099
  %91 = xor i32 %84, %90, !dbg !1100, !psr.id !1101
  %92 = and i32 %.03, 255, !dbg !1102, !psr.id !1103
  %93 = zext i32 %92 to i64, !dbg !1102, !psr.id !1104
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %93, !dbg !1102, !psr.id !1105
  %95 = load i32, i32* %94, align 4, !dbg !1102, !psr.id !1106
  %96 = call i32 @rotr.2(i32 %95, i32 24), !dbg !1102, !psr.id !1107
  %97 = xor i32 %91, %96, !dbg !1108, !psr.id !1109
  call void @llvm.dbg.value(metadata i32 %97, metadata !1110, metadata !DIExpression()), !dbg !1044, !psr.id !1111
  %98 = lshr i32 %.01, 24, !dbg !1112, !psr.id !1113
  %99 = zext i32 %98 to i64, !dbg !1112, !psr.id !1114
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %99, !dbg !1112, !psr.id !1115
  %101 = load i32, i32* %100, align 4, !dbg !1112, !psr.id !1116
  %102 = lshr i32 %.04, 16, !dbg !1117, !psr.id !1118
  %103 = and i32 %102, 255, !dbg !1117, !psr.id !1119
  %104 = zext i32 %103 to i64, !dbg !1117, !psr.id !1120
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %104, !dbg !1117, !psr.id !1121
  %106 = load i32, i32* %105, align 4, !dbg !1117, !psr.id !1122
  %107 = call i32 @rotr.2(i32 %106, i32 8), !dbg !1117, !psr.id !1123
  %108 = xor i32 %101, %107, !dbg !1124, !psr.id !1125
  %109 = lshr i32 %.03, 8, !dbg !1126, !psr.id !1127
  %110 = and i32 %109, 255, !dbg !1126, !psr.id !1128
  %111 = zext i32 %110 to i64, !dbg !1126, !psr.id !1129
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %111, !dbg !1126, !psr.id !1130
  %113 = load i32, i32* %112, align 4, !dbg !1126, !psr.id !1131
  %114 = call i32 @rotr.2(i32 %113, i32 16), !dbg !1126, !psr.id !1132
  %115 = xor i32 %108, %114, !dbg !1133, !psr.id !1134
  %116 = and i32 %.02, 255, !dbg !1135, !psr.id !1136
  %117 = zext i32 %116 to i64, !dbg !1135, !psr.id !1137
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %117, !dbg !1135, !psr.id !1138
  %119 = load i32, i32* %118, align 4, !dbg !1135, !psr.id !1139
  %120 = call i32 @rotr.2(i32 %119, i32 24), !dbg !1135, !psr.id !1140
  %121 = xor i32 %115, %120, !dbg !1141, !psr.id !1142
  call void @llvm.dbg.value(metadata i32 %121, metadata !1143, metadata !DIExpression()), !dbg !1044, !psr.id !1144
  call void @llvm.dbg.value(metadata i32 %49, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1145
  call void @llvm.dbg.value(metadata i32 %73, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1146
  call void @llvm.dbg.value(metadata i32 %97, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1147
  call void @llvm.dbg.value(metadata i32 %121, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1148
  %122 = shl i32 %.0, 2, !dbg !1149, !psr.id !1150
  %123 = zext i32 %122 to i64, !dbg !1151, !psr.id !1152
  %124 = getelementptr inbounds i32, i32* %1, i64 %123, !dbg !1151, !psr.id !1153
  %125 = load i32, i32* %124, align 4, !dbg !1151, !psr.id !1154
  %126 = xor i32 %49, %125, !dbg !1155, !psr.id !1156
  call void @llvm.dbg.value(metadata i32 %126, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1157
  %127 = shl i32 %.0, 2, !dbg !1158, !psr.id !1159
  %128 = add i32 %127, 1, !dbg !1160, !psr.id !1161
  %129 = zext i32 %128 to i64, !dbg !1162, !psr.id !1163
  %130 = getelementptr inbounds i32, i32* %1, i64 %129, !dbg !1162, !psr.id !1164
  %131 = load i32, i32* %130, align 4, !dbg !1162, !psr.id !1165
  %132 = xor i32 %73, %131, !dbg !1166, !psr.id !1167
  call void @llvm.dbg.value(metadata i32 %132, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1168
  %133 = shl i32 %.0, 2, !dbg !1169, !psr.id !1170
  %134 = add i32 %133, 2, !dbg !1171, !psr.id !1172
  %135 = zext i32 %134 to i64, !dbg !1173, !psr.id !1174
  %136 = getelementptr inbounds i32, i32* %1, i64 %135, !dbg !1173, !psr.id !1175
  %137 = load i32, i32* %136, align 4, !dbg !1173, !psr.id !1176
  %138 = xor i32 %97, %137, !dbg !1177, !psr.id !1178
  call void @llvm.dbg.value(metadata i32 %138, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1179
  %139 = shl i32 %.0, 2, !dbg !1180, !psr.id !1181
  %140 = add i32 %139, 3, !dbg !1182, !psr.id !1183
  %141 = zext i32 %140 to i64, !dbg !1184, !psr.id !1185
  %142 = getelementptr inbounds i32, i32* %1, i64 %141, !dbg !1184, !psr.id !1186
  %143 = load i32, i32* %142, align 4, !dbg !1184, !psr.id !1187
  %144 = xor i32 %121, %143, !dbg !1188, !psr.id !1189
  call void @llvm.dbg.value(metadata i32 %144, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1190
  br label %145, !dbg !1191, !psr.id !1192

145:                                              ; preds = %25
  %146 = add i32 %.0, 1, !dbg !1193, !psr.id !1194
  call void @llvm.dbg.value(metadata i32 %146, metadata !990, metadata !DIExpression()), !dbg !936, !psr.id !1195
  br label %23, !dbg !1196, !llvm.loop !1197, !psr.id !1199

147:                                              ; preds = %23
  %148 = lshr i32 %.04, 24, !dbg !1200, !psr.id !1201
  %149 = zext i32 %148 to i64, !dbg !1202, !psr.id !1203
  %150 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %149, !dbg !1202, !psr.id !1204
  %151 = load i8, i8* %150, align 1, !dbg !1202, !psr.id !1205
  %152 = zext i8 %151 to i32, !dbg !1206, !psr.id !1207
  %153 = shl i32 %152, 24, !dbg !1208, !psr.id !1209
  %154 = lshr i32 %.03, 16, !dbg !1210, !psr.id !1211
  %155 = and i32 %154, 255, !dbg !1212, !psr.id !1213
  %156 = zext i32 %155 to i64, !dbg !1214, !psr.id !1215
  %157 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %156, !dbg !1214, !psr.id !1216
  %158 = load i8, i8* %157, align 1, !dbg !1214, !psr.id !1217
  %159 = zext i8 %158 to i32, !dbg !1218, !psr.id !1219
  %160 = shl i32 %159, 16, !dbg !1220, !psr.id !1221
  %161 = or i32 %153, %160, !dbg !1222, !psr.id !1223
  %162 = lshr i32 %.02, 8, !dbg !1224, !psr.id !1225
  %163 = and i32 %162, 255, !dbg !1226, !psr.id !1227
  %164 = zext i32 %163 to i64, !dbg !1228, !psr.id !1229
  %165 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %164, !dbg !1228, !psr.id !1230
  %166 = load i8, i8* %165, align 1, !dbg !1228, !psr.id !1231
  %167 = zext i8 %166 to i32, !dbg !1232, !psr.id !1233
  %168 = shl i32 %167, 8, !dbg !1234, !psr.id !1235
  %169 = or i32 %161, %168, !dbg !1236, !psr.id !1237
  %170 = and i32 %.01, 255, !dbg !1238, !psr.id !1239
  %171 = zext i32 %170 to i64, !dbg !1240, !psr.id !1241
  %172 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %171, !dbg !1240, !psr.id !1242
  %173 = load i8, i8* %172, align 1, !dbg !1240, !psr.id !1243
  %174 = zext i8 %173 to i32, !dbg !1244, !psr.id !1245
  %175 = or i32 %169, %174, !dbg !1246, !psr.id !1247
  call void @llvm.dbg.value(metadata i32 %175, metadata !1248, metadata !DIExpression()), !dbg !936, !psr.id !1249
  %176 = lshr i32 %.03, 24, !dbg !1250, !psr.id !1251
  %177 = zext i32 %176 to i64, !dbg !1252, !psr.id !1253
  %178 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %177, !dbg !1252, !psr.id !1254
  %179 = load i8, i8* %178, align 1, !dbg !1252, !psr.id !1255
  %180 = zext i8 %179 to i32, !dbg !1256, !psr.id !1257
  %181 = shl i32 %180, 24, !dbg !1258, !psr.id !1259
  %182 = lshr i32 %.02, 16, !dbg !1260, !psr.id !1261
  %183 = and i32 %182, 255, !dbg !1262, !psr.id !1263
  %184 = zext i32 %183 to i64, !dbg !1264, !psr.id !1265
  %185 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %184, !dbg !1264, !psr.id !1266
  %186 = load i8, i8* %185, align 1, !dbg !1264, !psr.id !1267
  %187 = zext i8 %186 to i32, !dbg !1268, !psr.id !1269
  %188 = shl i32 %187, 16, !dbg !1270, !psr.id !1271
  %189 = or i32 %181, %188, !dbg !1272, !psr.id !1273
  %190 = lshr i32 %.01, 8, !dbg !1274, !psr.id !1275
  %191 = and i32 %190, 255, !dbg !1276, !psr.id !1277
  %192 = zext i32 %191 to i64, !dbg !1278, !psr.id !1279
  %193 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %192, !dbg !1278, !psr.id !1280
  %194 = load i8, i8* %193, align 1, !dbg !1278, !psr.id !1281
  %195 = zext i8 %194 to i32, !dbg !1282, !psr.id !1283
  %196 = shl i32 %195, 8, !dbg !1284, !psr.id !1285
  %197 = or i32 %189, %196, !dbg !1286, !psr.id !1287
  %198 = and i32 %.04, 255, !dbg !1288, !psr.id !1289
  %199 = zext i32 %198 to i64, !dbg !1290, !psr.id !1291
  %200 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %199, !dbg !1290, !psr.id !1292
  %201 = load i8, i8* %200, align 1, !dbg !1290, !psr.id !1293
  %202 = zext i8 %201 to i32, !dbg !1294, !psr.id !1295
  %203 = or i32 %197, %202, !dbg !1296, !psr.id !1297
  call void @llvm.dbg.value(metadata i32 %203, metadata !1298, metadata !DIExpression()), !dbg !936, !psr.id !1299
  %204 = lshr i32 %.02, 24, !dbg !1300, !psr.id !1301
  %205 = zext i32 %204 to i64, !dbg !1302, !psr.id !1303
  %206 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %205, !dbg !1302, !psr.id !1304
  %207 = load i8, i8* %206, align 1, !dbg !1302, !psr.id !1305
  %208 = zext i8 %207 to i32, !dbg !1306, !psr.id !1307
  %209 = shl i32 %208, 24, !dbg !1308, !psr.id !1309
  %210 = lshr i32 %.01, 16, !dbg !1310, !psr.id !1311
  %211 = and i32 %210, 255, !dbg !1312, !psr.id !1313
  %212 = zext i32 %211 to i64, !dbg !1314, !psr.id !1315
  %213 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %212, !dbg !1314, !psr.id !1316
  %214 = load i8, i8* %213, align 1, !dbg !1314, !psr.id !1317
  %215 = zext i8 %214 to i32, !dbg !1318, !psr.id !1319
  %216 = shl i32 %215, 16, !dbg !1320, !psr.id !1321
  %217 = or i32 %209, %216, !dbg !1322, !psr.id !1323
  %218 = lshr i32 %.04, 8, !dbg !1324, !psr.id !1325
  %219 = and i32 %218, 255, !dbg !1326, !psr.id !1327
  %220 = zext i32 %219 to i64, !dbg !1328, !psr.id !1329
  %221 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %220, !dbg !1328, !psr.id !1330
  %222 = load i8, i8* %221, align 1, !dbg !1328, !psr.id !1331
  %223 = zext i8 %222 to i32, !dbg !1332, !psr.id !1333
  %224 = shl i32 %223, 8, !dbg !1334, !psr.id !1335
  %225 = or i32 %217, %224, !dbg !1336, !psr.id !1337
  %226 = and i32 %.03, 255, !dbg !1338, !psr.id !1339
  %227 = zext i32 %226 to i64, !dbg !1340, !psr.id !1341
  %228 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %227, !dbg !1340, !psr.id !1342
  %229 = load i8, i8* %228, align 1, !dbg !1340, !psr.id !1343
  %230 = zext i8 %229 to i32, !dbg !1344, !psr.id !1345
  %231 = or i32 %225, %230, !dbg !1346, !psr.id !1347
  call void @llvm.dbg.value(metadata i32 %231, metadata !1348, metadata !DIExpression()), !dbg !936, !psr.id !1349
  %232 = lshr i32 %.01, 24, !dbg !1350, !psr.id !1351
  %233 = zext i32 %232 to i64, !dbg !1352, !psr.id !1353
  %234 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %233, !dbg !1352, !psr.id !1354
  %235 = load i8, i8* %234, align 1, !dbg !1352, !psr.id !1355
  %236 = zext i8 %235 to i32, !dbg !1356, !psr.id !1357
  %237 = shl i32 %236, 24, !dbg !1358, !psr.id !1359
  %238 = lshr i32 %.04, 16, !dbg !1360, !psr.id !1361
  %239 = and i32 %238, 255, !dbg !1362, !psr.id !1363
  %240 = zext i32 %239 to i64, !dbg !1364, !psr.id !1365
  %241 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %240, !dbg !1364, !psr.id !1366
  %242 = load i8, i8* %241, align 1, !dbg !1364, !psr.id !1367
  %243 = zext i8 %242 to i32, !dbg !1368, !psr.id !1369
  %244 = shl i32 %243, 16, !dbg !1370, !psr.id !1371
  %245 = or i32 %237, %244, !dbg !1372, !psr.id !1373
  %246 = lshr i32 %.03, 8, !dbg !1374, !psr.id !1375
  %247 = and i32 %246, 255, !dbg !1376, !psr.id !1377
  %248 = zext i32 %247 to i64, !dbg !1378, !psr.id !1379
  %249 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %248, !dbg !1378, !psr.id !1380
  %250 = load i8, i8* %249, align 1, !dbg !1378, !psr.id !1381
  %251 = zext i8 %250 to i32, !dbg !1382, !psr.id !1383
  %252 = shl i32 %251, 8, !dbg !1384, !psr.id !1385
  %253 = or i32 %245, %252, !dbg !1386, !psr.id !1387
  %254 = and i32 %.02, 255, !dbg !1388, !psr.id !1389
  %255 = zext i32 %254 to i64, !dbg !1390, !psr.id !1391
  %256 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %255, !dbg !1390, !psr.id !1392
  %257 = load i8, i8* %256, align 1, !dbg !1390, !psr.id !1393
  %258 = zext i8 %257 to i32, !dbg !1394, !psr.id !1395
  %259 = or i32 %253, %258, !dbg !1396, !psr.id !1397
  call void @llvm.dbg.value(metadata i32 %259, metadata !1398, metadata !DIExpression()), !dbg !936, !psr.id !1399
  %260 = shl i32 %0, 2, !dbg !1400, !psr.id !1401
  %261 = zext i32 %260 to i64, !dbg !1402, !psr.id !1403
  %262 = getelementptr inbounds i32, i32* %1, i64 %261, !dbg !1402, !psr.id !1404
  %263 = load i32, i32* %262, align 4, !dbg !1402, !psr.id !1405
  %264 = xor i32 %175, %263, !dbg !1406, !psr.id !1407
  call void @llvm.dbg.value(metadata i32 %264, metadata !946, metadata !DIExpression()), !dbg !936, !psr.id !1408
  %265 = shl i32 %0, 2, !dbg !1409, !psr.id !1410
  %266 = add i32 %265, 1, !dbg !1411, !psr.id !1412
  %267 = zext i32 %266 to i64, !dbg !1413, !psr.id !1414
  %268 = getelementptr inbounds i32, i32* %1, i64 %267, !dbg !1413, !psr.id !1415
  %269 = load i32, i32* %268, align 4, !dbg !1413, !psr.id !1416
  %270 = xor i32 %203, %269, !dbg !1417, !psr.id !1418
  call void @llvm.dbg.value(metadata i32 %270, metadata !952, metadata !DIExpression()), !dbg !936, !psr.id !1419
  %271 = shl i32 %0, 2, !dbg !1420, !psr.id !1421
  %272 = add i32 %271, 2, !dbg !1422, !psr.id !1423
  %273 = zext i32 %272 to i64, !dbg !1424, !psr.id !1425
  %274 = getelementptr inbounds i32, i32* %1, i64 %273, !dbg !1424, !psr.id !1426
  %275 = load i32, i32* %274, align 4, !dbg !1424, !psr.id !1427
  %276 = xor i32 %231, %275, !dbg !1428, !psr.id !1429
  call void @llvm.dbg.value(metadata i32 %276, metadata !958, metadata !DIExpression()), !dbg !936, !psr.id !1430
  %277 = shl i32 %0, 2, !dbg !1431, !psr.id !1432
  %278 = add i32 %277, 3, !dbg !1433, !psr.id !1434
  %279 = zext i32 %278 to i64, !dbg !1435, !psr.id !1436
  %280 = getelementptr inbounds i32, i32* %1, i64 %279, !dbg !1435, !psr.id !1437
  %281 = load i32, i32* %280, align 4, !dbg !1435, !psr.id !1438
  %282 = xor i32 %259, %281, !dbg !1439, !psr.id !1440
  call void @llvm.dbg.value(metadata i32 %282, metadata !964, metadata !DIExpression()), !dbg !936, !psr.id !1441
  call void @br_enc32be.3(i8* %2, i32 %264), !dbg !1442, !psr.id !1443
  %283 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !1444, !psr.id !1445
  call void @br_enc32be.3(i8* %283, i32 %270), !dbg !1446, !psr.id !1447
  %284 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !1448, !psr.id !1449
  call void @br_enc32be.3(i8* %284, i32 %276), !dbg !1450, !psr.id !1451
  %285 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !1452, !psr.id !1453
  call void @br_enc32be.3(i8* %285, i32 %282), !dbg !1454, !psr.id !1455
  ret void, !dbg !1456, !psr.id !1457
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.1(i8* %0) #0 !dbg !1458 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1459, metadata !DIExpression()), !dbg !1460, !psr.id !1461
  call void @llvm.dbg.value(metadata i8* %0, metadata !1462, metadata !DIExpression()), !dbg !1460, !psr.id !1463
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1464, !psr.id !1465
  %3 = load i8, i8* %2, align 1, !dbg !1464, !psr.id !1466
  %4 = zext i8 %3 to i32, !dbg !1467, !psr.id !1468
  %5 = shl i32 %4, 24, !dbg !1469, !psr.id !1470
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1471, !psr.id !1472
  %7 = load i8, i8* %6, align 1, !dbg !1471, !psr.id !1473
  %8 = zext i8 %7 to i32, !dbg !1474, !psr.id !1475
  %9 = shl i32 %8, 16, !dbg !1476, !psr.id !1477
  %10 = or i32 %5, %9, !dbg !1478, !psr.id !1479
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1480, !psr.id !1481
  %12 = load i8, i8* %11, align 1, !dbg !1480, !psr.id !1482
  %13 = zext i8 %12 to i32, !dbg !1483, !psr.id !1484
  %14 = shl i32 %13, 8, !dbg !1485, !psr.id !1486
  %15 = or i32 %10, %14, !dbg !1487, !psr.id !1488
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1489, !psr.id !1490
  %17 = load i8, i8* %16, align 1, !dbg !1489, !psr.id !1491
  %18 = zext i8 %17 to i32, !dbg !1492, !psr.id !1493
  %19 = or i32 %15, %18, !dbg !1494, !psr.id !1495
  ret i32 %19, !dbg !1496, !psr.id !1497
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr.2(i32 %0, i32 %1) #0 !dbg !1498 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1499, metadata !DIExpression()), !dbg !1500, !psr.id !1501
  call void @llvm.dbg.value(metadata i32 %1, metadata !1502, metadata !DIExpression()), !dbg !1500, !psr.id !1503
  %3 = sub nsw i32 32, %1, !dbg !1504, !psr.id !1505
  %4 = shl i32 %0, %3, !dbg !1506, !psr.id !1507
  %5 = lshr i32 %0, %1, !dbg !1508, !psr.id !1509
  %6 = or i32 %4, %5, !dbg !1510, !psr.id !1511
  ret i32 %6, !dbg !1512, !psr.id !1513
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be.3(i8* %0, i32 %1) #0 !dbg !1514 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1515, metadata !DIExpression()), !dbg !1516, !psr.id !1517
  call void @llvm.dbg.value(metadata i32 %1, metadata !1518, metadata !DIExpression()), !dbg !1516, !psr.id !1519
  call void @llvm.dbg.value(metadata i8* %0, metadata !1520, metadata !DIExpression()), !dbg !1516, !psr.id !1521
  %3 = lshr i32 %1, 24, !dbg !1522, !psr.id !1523
  %4 = trunc i32 %3 to i8, !dbg !1524, !psr.id !1525
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1526, !psr.id !1527
  store i8 %4, i8* %5, align 1, !dbg !1528, !psr.id !1529
  %6 = lshr i32 %1, 16, !dbg !1530, !psr.id !1531
  %7 = trunc i32 %6 to i8, !dbg !1532, !psr.id !1533
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1534, !psr.id !1535
  store i8 %7, i8* %8, align 1, !dbg !1536, !psr.id !1537
  %9 = lshr i32 %1, 8, !dbg !1538, !psr.id !1539
  %10 = trunc i32 %9 to i8, !dbg !1540, !psr.id !1541
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1542, !psr.id !1543
  store i8 %10, i8* %11, align 1, !dbg !1544, !psr.id !1545
  %12 = trunc i32 %1 to i8, !dbg !1546, !psr.id !1547
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1548, !psr.id !1549
  store i8 %12, i8* %13, align 1, !dbg !1550, !psr.id !1551
  ret void, !dbg !1552, !psr.id !1553
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !1554 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1555, metadata !DIExpression()), !dbg !1556, !psr.id !1557
  call void @llvm.dbg.value(metadata i8* %1, metadata !1558, metadata !DIExpression()), !dbg !1556, !psr.id !1559
  call void @llvm.dbg.value(metadata i64 %2, metadata !1560, metadata !DIExpression()), !dbg !1556, !psr.id !1561
  switch i64 %2, label %7 [
    i64 16, label %4
    i64 24, label %5
    i64 32, label %6
  ], !dbg !1562, !psr.id !1563

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !1564, metadata !DIExpression()), !dbg !1556, !psr.id !1565
  br label %8, !dbg !1566, !psr.id !1568

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !1564, metadata !DIExpression()), !dbg !1556, !psr.id !1569
  br label %8, !dbg !1570, !psr.id !1571

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !1564, metadata !DIExpression()), !dbg !1556, !psr.id !1572
  br label %8, !dbg !1573, !psr.id !1574

7:                                                ; preds = %3
  br label %65, !dbg !1575, !psr.id !1576

8:                                                ; preds = %6, %5, %4
  %.06 = phi i32 [ 14, %6 ], [ 12, %5 ], [ 10, %4 ], !dbg !1577, !psr.id !1578
  call void @llvm.dbg.value(metadata i32 %.06, metadata !1564, metadata !DIExpression()), !dbg !1556, !psr.id !1579
  %9 = lshr i64 %2, 2, !dbg !1580, !psr.id !1581
  %10 = trunc i64 %9 to i32, !dbg !1582, !psr.id !1583
  call void @llvm.dbg.value(metadata i32 %10, metadata !1584, metadata !DIExpression()), !dbg !1556, !psr.id !1585
  %11 = add i32 %.06, 1, !dbg !1586, !psr.id !1587
  %12 = shl i32 %11, 2, !dbg !1588, !psr.id !1589
  call void @llvm.dbg.value(metadata i32 %12, metadata !1590, metadata !DIExpression()), !dbg !1556, !psr.id !1591
  call void @llvm.dbg.value(metadata i32 0, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1593
  br label %13, !dbg !1594, !psr.id !1596

13:                                               ; preds = %22, %8
  %.07 = phi i32 [ 0, %8 ], [ %23, %22 ], !dbg !1597, !psr.id !1598
  call void @llvm.dbg.value(metadata i32 %.07, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1599
  %14 = icmp slt i32 %.07, %10, !dbg !1600, !psr.id !1602
  br i1 %14, label %15, label %24, !dbg !1603, !psr.id !1604

15:                                               ; preds = %13
  %16 = shl i32 %.07, 2, !dbg !1605, !psr.id !1607
  %17 = sext i32 %16 to i64, !dbg !1608, !psr.id !1609
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !1608, !psr.id !1610, !PointTainted !1611
  %19 = call i32 @br_dec32be.8(i8* %18), !dbg !1612, !psr.id !1613, !ValueTainted !1614
  %20 = sext i32 %.07 to i64, !dbg !1615, !psr.id !1616
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !1615, !psr.id !1617, !PointTainted !1611
  store i32 %19, i32* %21, align 4, !dbg !1618, !psr.id !1619
  br label %22, !dbg !1620, !psr.id !1621

22:                                               ; preds = %15
  %23 = add nsw i32 %.07, 1, !dbg !1622, !psr.id !1623
  call void @llvm.dbg.value(metadata i32 %23, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1624
  br label %13, !dbg !1625, !llvm.loop !1626, !psr.id !1628

24:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 %10, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1629
  call void @llvm.dbg.value(metadata i32 0, metadata !1630, metadata !DIExpression()), !dbg !1556, !psr.id !1631
  call void @llvm.dbg.value(metadata i32 0, metadata !1632, metadata !DIExpression()), !dbg !1556, !psr.id !1633
  br label %25, !dbg !1634, !psr.id !1636

25:                                               ; preds = %62, %24
  %.18 = phi i32 [ %10, %24 ], [ %63, %62 ], !dbg !1637, !psr.id !1638
  %.04 = phi i32 [ 0, %24 ], [ %.15, %62 ], !dbg !1637, !psr.id !1639
  %.02 = phi i32 [ 0, %24 ], [ %.13, %62 ], !dbg !1637, !psr.id !1640
  call void @llvm.dbg.value(metadata i32 %.02, metadata !1632, metadata !DIExpression()), !dbg !1556, !psr.id !1641
  call void @llvm.dbg.value(metadata i32 %.04, metadata !1630, metadata !DIExpression()), !dbg !1556, !psr.id !1642
  call void @llvm.dbg.value(metadata i32 %.18, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1643
  %26 = icmp slt i32 %.18, %12, !dbg !1644, !psr.id !1646
  br i1 %26, label %27, label %64, !dbg !1647, !psr.id !1648

27:                                               ; preds = %25
  %28 = sub nsw i32 %.18, 1, !dbg !1649, !psr.id !1651
  %29 = sext i32 %28 to i64, !dbg !1652, !psr.id !1653
  %30 = getelementptr inbounds i32, i32* %0, i64 %29, !dbg !1652, !psr.id !1654, !PointTainted !1611
  %31 = load i32, i32* %30, align 4, !dbg !1652, !psr.id !1655, !ValueTainted !1614
  call void @llvm.dbg.value(metadata i32 %31, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1658
  %32 = icmp eq i32 %.04, 0, !dbg !1659, !psr.id !1661
  br i1 %32, label %33, label %42, !dbg !1662, !psr.id !1663

33:                                               ; preds = %27
  %34 = shl i32 %31, 8, !dbg !1664, !psr.id !1666, !ValueTainted !1614
  %35 = lshr i32 %31, 24, !dbg !1667, !psr.id !1668, !ValueTainted !1614
  %36 = or i32 %34, %35, !dbg !1669, !psr.id !1670, !ValueTainted !1614
  call void @llvm.dbg.value(metadata i32 %36, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1671
  %37 = call i32 @SubWord(i32 %36), !dbg !1672, !psr.id !1673
  %38 = sext i32 %.02 to i64, !dbg !1674, !psr.id !1675
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* @Rcon, i64 0, i64 %38, !dbg !1674, !psr.id !1676
  %40 = load i32, i32* %39, align 4, !dbg !1674, !psr.id !1677
  %41 = xor i32 %37, %40, !dbg !1678, !psr.id !1679
  call void @llvm.dbg.value(metadata i32 %41, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1680
  br label %49, !dbg !1681, !psr.id !1682

42:                                               ; preds = %27
  %43 = icmp sgt i32 %10, 6, !dbg !1683, !psr.id !1685
  br i1 %43, label %44, label %48, !dbg !1686, !psr.id !1687

44:                                               ; preds = %42
  %45 = icmp eq i32 %.04, 4, !dbg !1688, !psr.id !1689
  br i1 %45, label %46, label %48, !dbg !1690, !psr.id !1691

46:                                               ; preds = %44
  %47 = call i32 @SubWord(i32 %31), !dbg !1692, !psr.id !1694
  call void @llvm.dbg.value(metadata i32 %47, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1695
  br label %48, !dbg !1696, !psr.id !1697

48:                                               ; preds = %46, %44, %42
  %.01 = phi i32 [ %47, %46 ], [ %31, %44 ], [ %31, %42 ], !dbg !1657, !psr.id !1698, !ValueTainted !1614
  call void @llvm.dbg.value(metadata i32 %.01, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1699
  br label %49, !psr.id !1700

49:                                               ; preds = %48, %33
  %.1 = phi i32 [ %41, %33 ], [ %.01, %48 ], !dbg !1701, !psr.id !1702, !ValueTainted !1614
  call void @llvm.dbg.value(metadata i32 %.1, metadata !1656, metadata !DIExpression()), !dbg !1657, !psr.id !1703
  %50 = sub nsw i32 %.18, %10, !dbg !1704, !psr.id !1705
  %51 = sext i32 %50 to i64, !dbg !1706, !psr.id !1707
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !1706, !psr.id !1708, !PointTainted !1611
  %53 = load i32, i32* %52, align 4, !dbg !1706, !psr.id !1709, !ValueTainted !1614
  %54 = xor i32 %53, %.1, !dbg !1710, !psr.id !1711, !ValueTainted !1614
  %55 = sext i32 %.18 to i64, !dbg !1712, !psr.id !1713
  %56 = getelementptr inbounds i32, i32* %0, i64 %55, !dbg !1712, !psr.id !1714, !PointTainted !1611
  store i32 %54, i32* %56, align 4, !dbg !1715, !psr.id !1716
  %57 = add nsw i32 %.04, 1, !dbg !1717, !psr.id !1719
  call void @llvm.dbg.value(metadata i32 %57, metadata !1630, metadata !DIExpression()), !dbg !1556, !psr.id !1720
  %58 = icmp eq i32 %57, %10, !dbg !1721, !psr.id !1722
  br i1 %58, label %59, label %61, !dbg !1723, !psr.id !1724

59:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 0, metadata !1630, metadata !DIExpression()), !dbg !1556, !psr.id !1725
  %60 = add nsw i32 %.02, 1, !dbg !1726, !psr.id !1728
  call void @llvm.dbg.value(metadata i32 %60, metadata !1632, metadata !DIExpression()), !dbg !1556, !psr.id !1729
  br label %61, !dbg !1730, !psr.id !1731

61:                                               ; preds = %59, %49
  %.15 = phi i32 [ 0, %59 ], [ %57, %49 ], !dbg !1732, !psr.id !1733
  %.13 = phi i32 [ %60, %59 ], [ %.02, %49 ], !dbg !1637, !psr.id !1734
  call void @llvm.dbg.value(metadata i32 %.13, metadata !1632, metadata !DIExpression()), !dbg !1556, !psr.id !1735
  call void @llvm.dbg.value(metadata i32 %.15, metadata !1630, metadata !DIExpression()), !dbg !1556, !psr.id !1736
  br label %62, !dbg !1737, !psr.id !1738

62:                                               ; preds = %61
  %63 = add nsw i32 %.18, 1, !dbg !1739, !psr.id !1740
  call void @llvm.dbg.value(metadata i32 %63, metadata !1592, metadata !DIExpression()), !dbg !1556, !psr.id !1741
  br label %25, !dbg !1742, !llvm.loop !1743, !psr.id !1745

64:                                               ; preds = %25
  br label %65, !dbg !1746, !psr.id !1747

65:                                               ; preds = %64, %7
  %.0 = phi i32 [ 0, %7 ], [ %.06, %64 ], !dbg !1556, !psr.id !1748
  ret i32 %.0, !dbg !1749, !psr.id !1750
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.8(i8* %0) #0 !dbg !1751 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1752, metadata !DIExpression()), !dbg !1753, !psr.id !1754
  call void @llvm.dbg.value(metadata i8* %0, metadata !1755, metadata !DIExpression()), !dbg !1753, !psr.id !1756
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !1757, !psr.id !1758, !PointTainted !1611
  %3 = load i8, i8* %2, align 1, !dbg !1757, !psr.id !1759, !ValueTainted !1614
  %4 = zext i8 %3 to i32, !dbg !1760, !psr.id !1761, !ValueTainted !1614
  %5 = shl i32 %4, 24, !dbg !1762, !psr.id !1763, !ValueTainted !1614
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1764, !psr.id !1765, !PointTainted !1611
  %7 = load i8, i8* %6, align 1, !dbg !1764, !psr.id !1766, !ValueTainted !1614
  %8 = zext i8 %7 to i32, !dbg !1767, !psr.id !1768, !ValueTainted !1614
  %9 = shl i32 %8, 16, !dbg !1769, !psr.id !1770, !ValueTainted !1614
  %10 = or i32 %5, %9, !dbg !1771, !psr.id !1772, !ValueTainted !1614
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1773, !psr.id !1774, !PointTainted !1611
  %12 = load i8, i8* %11, align 1, !dbg !1773, !psr.id !1775, !ValueTainted !1614
  %13 = zext i8 %12 to i32, !dbg !1776, !psr.id !1777, !ValueTainted !1614
  %14 = shl i32 %13, 8, !dbg !1778, !psr.id !1779, !ValueTainted !1614
  %15 = or i32 %10, %14, !dbg !1780, !psr.id !1781, !ValueTainted !1614
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1782, !psr.id !1783, !PointTainted !1611
  %17 = load i8, i8* %16, align 1, !dbg !1782, !psr.id !1784, !ValueTainted !1614
  %18 = zext i8 %17 to i32, !dbg !1785, !psr.id !1786, !ValueTainted !1614
  %19 = or i32 %15, %18, !dbg !1787, !psr.id !1788, !ValueTainted !1614
  ret i32 %19, !dbg !1789, !psr.id !1790
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SubWord(i32 %0) #0 !dbg !1791 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1794, metadata !DIExpression()), !dbg !1795, !psr.id !1796
  %2 = lshr i32 %0, 24, !dbg !1797, !psr.id !1798, !ValueTainted !1614
  %3 = zext i32 %2 to i64, !dbg !1799, !psr.id !1800, !ValueTainted !1614
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %3, !dbg !1799, !psr.id !1801, !ValueTainted !1614
  %5 = load i8, i8* %4, align 1, !dbg !1799, !psr.id !1802, !Tainted !1803
  %6 = zext i8 %5 to i32, !dbg !1804, !psr.id !1805
  %7 = shl i32 %6, 24, !dbg !1806, !psr.id !1807
  %8 = lshr i32 %0, 16, !dbg !1808, !psr.id !1809, !ValueTainted !1614
  %9 = and i32 %8, 255, !dbg !1810, !psr.id !1811, !ValueTainted !1614
  %10 = zext i32 %9 to i64, !dbg !1812, !psr.id !1813, !ValueTainted !1614
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %10, !dbg !1812, !psr.id !1814, !ValueTainted !1614
  %12 = load i8, i8* %11, align 1, !dbg !1812, !psr.id !1815, !Tainted !1803
  %13 = zext i8 %12 to i32, !dbg !1816, !psr.id !1817
  %14 = shl i32 %13, 16, !dbg !1818, !psr.id !1819
  %15 = or i32 %7, %14, !dbg !1820, !psr.id !1821
  %16 = lshr i32 %0, 8, !dbg !1822, !psr.id !1823, !ValueTainted !1614
  %17 = and i32 %16, 255, !dbg !1824, !psr.id !1825, !ValueTainted !1614
  %18 = zext i32 %17 to i64, !dbg !1826, !psr.id !1827, !ValueTainted !1614
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %18, !dbg !1826, !psr.id !1828, !ValueTainted !1614
  %20 = load i8, i8* %19, align 1, !dbg !1826, !psr.id !1829, !Tainted !1803
  %21 = zext i8 %20 to i32, !dbg !1830, !psr.id !1831
  %22 = shl i32 %21, 8, !dbg !1832, !psr.id !1833
  %23 = or i32 %15, %22, !dbg !1834, !psr.id !1835
  %24 = and i32 %0, 255, !dbg !1836, !psr.id !1837, !ValueTainted !1614
  %25 = zext i32 %24 to i64, !dbg !1838, !psr.id !1839, !ValueTainted !1614
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %25, !dbg !1838, !psr.id !1840, !ValueTainted !1614
  %27 = load i8, i8* %26, align 1, !dbg !1838, !psr.id !1841, !Tainted !1803
  %28 = zext i8 %27 to i32, !dbg !1842, !psr.id !1843
  %29 = or i32 %23, %28, !dbg !1844, !psr.id !1845
  ret i32 %29, !dbg !1846, !psr.id !1847
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_schedule_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !1848 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !1851, metadata !DIExpression()), !dbg !1852, !psr.id !1853
  call void @llvm.dbg.value(metadata i8* %1, metadata !1854, metadata !DIExpression()), !dbg !1852, !psr.id !1855
  call void @llvm.dbg.value(metadata i64 %2, metadata !1856, metadata !DIExpression()), !dbg !1852, !psr.id !1857
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !1858, !psr.id !1859
  call void @public_in(%struct.smack_value* %4), !dbg !1860, !psr.id !1861
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !1862, !psr.id !1863
  call void @public_in(%struct.smack_value* %5), !dbg !1864, !psr.id !1865
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !1866, !psr.id !1867
  call void @public_in(%struct.smack_value* %6), !dbg !1868, !psr.id !1869
  %7 = call i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2), !dbg !1870, !psr.id !1871
  ret void, !dbg !1872, !psr.id !1873
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_schedule_wrapper_t() #0 !dbg !1874 {
  %1 = call i8* (...) @getptv(), !dbg !1877, !psr.id !1878
  call void @llvm.dbg.value(metadata i8* %1, metadata !1879, metadata !DIExpression()), !dbg !1880, !psr.id !1881
  %2 = call i32 (...) @getpt(), !dbg !1882, !psr.id !1883
  %3 = sext i32 %2 to i64, !dbg !1882, !psr.id !1884
  %4 = inttoptr i64 %3 to i32*, !dbg !1882, !psr.id !1885
  call void @llvm.dbg.value(metadata i32* %4, metadata !1886, metadata !DIExpression()), !dbg !1880, !psr.id !1887
  %5 = call i64 (...) @getsize(), !dbg !1888, !psr.id !1889
  call void @llvm.dbg.value(metadata i64 %5, metadata !1890, metadata !DIExpression()), !dbg !1880, !psr.id !1891
  %6 = call i32 @br_aes_keysched(i32* %4, i8* %1, i64 %5), !dbg !1892, !psr.id !1893
  ret void, !dbg !1894, !psr.id !1895
}

declare dso_local i8* @getptv(...) #2

declare dso_local i32 @getpt(...) #2

declare dso_local i64 @getsize(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

define void @__psrCRuntimeGlobalDtorsModel() {
entry:
  ret void
}

define void @__psrCRuntimeGlobalCtorsModel(i32 %0, i8** %1) {
entry:
  call void @key_schedule_wrapper_t()
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
!46 = !DIFile(filename: "key_schedule.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
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
!968 = !{!"513"}
!969 = !DILocation(line: 101, column: 5, scope: !934)
!970 = !{!"514"}
!971 = !{!"515"}
!972 = !DILocation(line: 102, column: 8, scope: !934)
!973 = !{!"516"}
!974 = !{!"517"}
!975 = !DILocation(line: 102, column: 5, scope: !934)
!976 = !{!"518"}
!977 = !{!"519"}
!978 = !DILocation(line: 103, column: 8, scope: !934)
!979 = !{!"520"}
!980 = !{!"521"}
!981 = !DILocation(line: 103, column: 5, scope: !934)
!982 = !{!"522"}
!983 = !{!"523"}
!984 = !DILocation(line: 104, column: 8, scope: !934)
!985 = !{!"524"}
!986 = !{!"525"}
!987 = !DILocation(line: 104, column: 5, scope: !934)
!988 = !{!"526"}
!989 = !{!"527"}
!990 = !DILocalVariable(name: "u", scope: !934, file: !27, line: 94, type: !11)
!991 = !{!"528"}
!992 = !DILocation(line: 105, column: 7, scope: !993)
!993 = distinct !DILexicalBlock(scope: !934, file: !27, line: 105, column: 2)
!994 = !{!"529"}
!995 = !{!"530"}
!996 = !{!"531"}
!997 = !{!"532"}
!998 = !{!"533"}
!999 = !DILocation(line: 0, scope: !993)
!1000 = !{!"534"}
!1001 = !{!"535"}
!1002 = !{!"536"}
!1003 = !{!"537"}
!1004 = !{!"538"}
!1005 = !{!"539"}
!1006 = !DILocation(line: 105, column: 16, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !993, file: !27, line: 105, column: 2)
!1008 = !{!"540"}
!1009 = !DILocation(line: 105, column: 2, scope: !993)
!1010 = !{!"541"}
!1011 = !DILocation(line: 108, column: 8, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1007, file: !27, line: 105, column: 36)
!1013 = !{!"542"}
!1014 = !{!"543"}
!1015 = !{!"544"}
!1016 = !{!"545"}
!1017 = !DILocation(line: 109, column: 6, scope: !1012)
!1018 = !{!"546"}
!1019 = !{!"547"}
!1020 = !{!"548"}
!1021 = !{!"549"}
!1022 = !{!"550"}
!1023 = !{!"551"}
!1024 = !DILocation(line: 109, column: 4, scope: !1012)
!1025 = !{!"552"}
!1026 = !DILocation(line: 110, column: 6, scope: !1012)
!1027 = !{!"553"}
!1028 = !{!"554"}
!1029 = !{!"555"}
!1030 = !{!"556"}
!1031 = !{!"557"}
!1032 = !{!"558"}
!1033 = !DILocation(line: 110, column: 4, scope: !1012)
!1034 = !{!"559"}
!1035 = !DILocation(line: 111, column: 6, scope: !1012)
!1036 = !{!"560"}
!1037 = !{!"561"}
!1038 = !{!"562"}
!1039 = !{!"563"}
!1040 = !{!"564"}
!1041 = !DILocation(line: 111, column: 4, scope: !1012)
!1042 = !{!"565"}
!1043 = !DILocalVariable(name: "v0", scope: !1012, file: !27, line: 106, type: !7)
!1044 = !DILocation(line: 0, scope: !1012)
!1045 = !{!"566"}
!1046 = !DILocation(line: 112, column: 8, scope: !1012)
!1047 = !{!"567"}
!1048 = !{!"568"}
!1049 = !{!"569"}
!1050 = !{!"570"}
!1051 = !DILocation(line: 113, column: 6, scope: !1012)
!1052 = !{!"571"}
!1053 = !{!"572"}
!1054 = !{!"573"}
!1055 = !{!"574"}
!1056 = !{!"575"}
!1057 = !{!"576"}
!1058 = !DILocation(line: 113, column: 4, scope: !1012)
!1059 = !{!"577"}
!1060 = !DILocation(line: 114, column: 6, scope: !1012)
!1061 = !{!"578"}
!1062 = !{!"579"}
!1063 = !{!"580"}
!1064 = !{!"581"}
!1065 = !{!"582"}
!1066 = !{!"583"}
!1067 = !DILocation(line: 114, column: 4, scope: !1012)
!1068 = !{!"584"}
!1069 = !DILocation(line: 115, column: 6, scope: !1012)
!1070 = !{!"585"}
!1071 = !{!"586"}
!1072 = !{!"587"}
!1073 = !{!"588"}
!1074 = !{!"589"}
!1075 = !DILocation(line: 115, column: 4, scope: !1012)
!1076 = !{!"590"}
!1077 = !DILocalVariable(name: "v1", scope: !1012, file: !27, line: 106, type: !7)
!1078 = !{!"591"}
!1079 = !DILocation(line: 116, column: 8, scope: !1012)
!1080 = !{!"592"}
!1081 = !{!"593"}
!1082 = !{!"594"}
!1083 = !{!"595"}
!1084 = !DILocation(line: 117, column: 6, scope: !1012)
!1085 = !{!"596"}
!1086 = !{!"597"}
!1087 = !{!"598"}
!1088 = !{!"599"}
!1089 = !{!"600"}
!1090 = !{!"601"}
!1091 = !DILocation(line: 117, column: 4, scope: !1012)
!1092 = !{!"602"}
!1093 = !DILocation(line: 118, column: 6, scope: !1012)
!1094 = !{!"603"}
!1095 = !{!"604"}
!1096 = !{!"605"}
!1097 = !{!"606"}
!1098 = !{!"607"}
!1099 = !{!"608"}
!1100 = !DILocation(line: 118, column: 4, scope: !1012)
!1101 = !{!"609"}
!1102 = !DILocation(line: 119, column: 6, scope: !1012)
!1103 = !{!"610"}
!1104 = !{!"611"}
!1105 = !{!"612"}
!1106 = !{!"613"}
!1107 = !{!"614"}
!1108 = !DILocation(line: 119, column: 4, scope: !1012)
!1109 = !{!"615"}
!1110 = !DILocalVariable(name: "v2", scope: !1012, file: !27, line: 106, type: !7)
!1111 = !{!"616"}
!1112 = !DILocation(line: 120, column: 8, scope: !1012)
!1113 = !{!"617"}
!1114 = !{!"618"}
!1115 = !{!"619"}
!1116 = !{!"620"}
!1117 = !DILocation(line: 121, column: 6, scope: !1012)
!1118 = !{!"621"}
!1119 = !{!"622"}
!1120 = !{!"623"}
!1121 = !{!"624"}
!1122 = !{!"625"}
!1123 = !{!"626"}
!1124 = !DILocation(line: 121, column: 4, scope: !1012)
!1125 = !{!"627"}
!1126 = !DILocation(line: 122, column: 6, scope: !1012)
!1127 = !{!"628"}
!1128 = !{!"629"}
!1129 = !{!"630"}
!1130 = !{!"631"}
!1131 = !{!"632"}
!1132 = !{!"633"}
!1133 = !DILocation(line: 122, column: 4, scope: !1012)
!1134 = !{!"634"}
!1135 = !DILocation(line: 123, column: 6, scope: !1012)
!1136 = !{!"635"}
!1137 = !{!"636"}
!1138 = !{!"637"}
!1139 = !{!"638"}
!1140 = !{!"639"}
!1141 = !DILocation(line: 123, column: 4, scope: !1012)
!1142 = !{!"640"}
!1143 = !DILocalVariable(name: "v3", scope: !1012, file: !27, line: 106, type: !7)
!1144 = !{!"641"}
!1145 = !{!"642"}
!1146 = !{!"643"}
!1147 = !{!"644"}
!1148 = !{!"645"}
!1149 = !DILocation(line: 128, column: 16, scope: !1012)
!1150 = !{!"646"}
!1151 = !DILocation(line: 128, column: 9, scope: !1012)
!1152 = !{!"647"}
!1153 = !{!"648"}
!1154 = !{!"649"}
!1155 = !DILocation(line: 128, column: 6, scope: !1012)
!1156 = !{!"650"}
!1157 = !{!"651"}
!1158 = !DILocation(line: 129, column: 17, scope: !1012)
!1159 = !{!"652"}
!1160 = !DILocation(line: 129, column: 23, scope: !1012)
!1161 = !{!"653"}
!1162 = !DILocation(line: 129, column: 9, scope: !1012)
!1163 = !{!"654"}
!1164 = !{!"655"}
!1165 = !{!"656"}
!1166 = !DILocation(line: 129, column: 6, scope: !1012)
!1167 = !{!"657"}
!1168 = !{!"658"}
!1169 = !DILocation(line: 130, column: 17, scope: !1012)
!1170 = !{!"659"}
!1171 = !DILocation(line: 130, column: 23, scope: !1012)
!1172 = !{!"660"}
!1173 = !DILocation(line: 130, column: 9, scope: !1012)
!1174 = !{!"661"}
!1175 = !{!"662"}
!1176 = !{!"663"}
!1177 = !DILocation(line: 130, column: 6, scope: !1012)
!1178 = !{!"664"}
!1179 = !{!"665"}
!1180 = !DILocation(line: 131, column: 17, scope: !1012)
!1181 = !{!"666"}
!1182 = !DILocation(line: 131, column: 23, scope: !1012)
!1183 = !{!"667"}
!1184 = !DILocation(line: 131, column: 9, scope: !1012)
!1185 = !{!"668"}
!1186 = !{!"669"}
!1187 = !{!"670"}
!1188 = !DILocation(line: 131, column: 6, scope: !1012)
!1189 = !{!"671"}
!1190 = !{!"672"}
!1191 = !DILocation(line: 132, column: 2, scope: !1012)
!1192 = !{!"673"}
!1193 = !DILocation(line: 105, column: 32, scope: !1007)
!1194 = !{!"674"}
!1195 = !{!"675"}
!1196 = !DILocation(line: 105, column: 2, scope: !1007)
!1197 = distinct !{!1197, !1009, !1198, !205}
!1198 = !DILocation(line: 132, column: 2, scope: !993)
!1199 = !{!"676"}
!1200 = !DILocation(line: 133, column: 23, scope: !934)
!1201 = !{!"677"}
!1202 = !DILocation(line: 133, column: 18, scope: !934)
!1203 = !{!"678"}
!1204 = !{!"679"}
!1205 = !{!"680"}
!1206 = !DILocation(line: 133, column: 8, scope: !934)
!1207 = !{!"681"}
!1208 = !DILocation(line: 133, column: 30, scope: !934)
!1209 = !{!"682"}
!1210 = !DILocation(line: 134, column: 22, scope: !934)
!1211 = !{!"683"}
!1212 = !DILocation(line: 134, column: 29, scope: !934)
!1213 = !{!"684"}
!1214 = !DILocation(line: 134, column: 16, scope: !934)
!1215 = !{!"685"}
!1216 = !{!"686"}
!1217 = !{!"687"}
!1218 = !DILocation(line: 134, column: 6, scope: !934)
!1219 = !{!"688"}
!1220 = !DILocation(line: 134, column: 37, scope: !934)
!1221 = !{!"689"}
!1222 = !DILocation(line: 134, column: 3, scope: !934)
!1223 = !{!"690"}
!1224 = !DILocation(line: 135, column: 22, scope: !934)
!1225 = !{!"691"}
!1226 = !DILocation(line: 135, column: 28, scope: !934)
!1227 = !{!"692"}
!1228 = !DILocation(line: 135, column: 16, scope: !934)
!1229 = !{!"693"}
!1230 = !{!"694"}
!1231 = !{!"695"}
!1232 = !DILocation(line: 135, column: 6, scope: !934)
!1233 = !{!"696"}
!1234 = !DILocation(line: 135, column: 36, scope: !934)
!1235 = !{!"697"}
!1236 = !DILocation(line: 135, column: 3, scope: !934)
!1237 = !{!"698"}
!1238 = !DILocation(line: 136, column: 20, scope: !934)
!1239 = !{!"699"}
!1240 = !DILocation(line: 136, column: 15, scope: !934)
!1241 = !{!"700"}
!1242 = !{!"701"}
!1243 = !{!"702"}
!1244 = !DILocation(line: 136, column: 5, scope: !934)
!1245 = !{!"703"}
!1246 = !DILocation(line: 136, column: 3, scope: !934)
!1247 = !{!"704"}
!1248 = !DILocalVariable(name: "t0", scope: !934, file: !27, line: 93, type: !7)
!1249 = !{!"705"}
!1250 = !DILocation(line: 137, column: 23, scope: !934)
!1251 = !{!"706"}
!1252 = !DILocation(line: 137, column: 18, scope: !934)
!1253 = !{!"707"}
!1254 = !{!"708"}
!1255 = !{!"709"}
!1256 = !DILocation(line: 137, column: 8, scope: !934)
!1257 = !{!"710"}
!1258 = !DILocation(line: 137, column: 30, scope: !934)
!1259 = !{!"711"}
!1260 = !DILocation(line: 138, column: 22, scope: !934)
!1261 = !{!"712"}
!1262 = !DILocation(line: 138, column: 29, scope: !934)
!1263 = !{!"713"}
!1264 = !DILocation(line: 138, column: 16, scope: !934)
!1265 = !{!"714"}
!1266 = !{!"715"}
!1267 = !{!"716"}
!1268 = !DILocation(line: 138, column: 6, scope: !934)
!1269 = !{!"717"}
!1270 = !DILocation(line: 138, column: 37, scope: !934)
!1271 = !{!"718"}
!1272 = !DILocation(line: 138, column: 3, scope: !934)
!1273 = !{!"719"}
!1274 = !DILocation(line: 139, column: 22, scope: !934)
!1275 = !{!"720"}
!1276 = !DILocation(line: 139, column: 28, scope: !934)
!1277 = !{!"721"}
!1278 = !DILocation(line: 139, column: 16, scope: !934)
!1279 = !{!"722"}
!1280 = !{!"723"}
!1281 = !{!"724"}
!1282 = !DILocation(line: 139, column: 6, scope: !934)
!1283 = !{!"725"}
!1284 = !DILocation(line: 139, column: 36, scope: !934)
!1285 = !{!"726"}
!1286 = !DILocation(line: 139, column: 3, scope: !934)
!1287 = !{!"727"}
!1288 = !DILocation(line: 140, column: 20, scope: !934)
!1289 = !{!"728"}
!1290 = !DILocation(line: 140, column: 15, scope: !934)
!1291 = !{!"729"}
!1292 = !{!"730"}
!1293 = !{!"731"}
!1294 = !DILocation(line: 140, column: 5, scope: !934)
!1295 = !{!"732"}
!1296 = !DILocation(line: 140, column: 3, scope: !934)
!1297 = !{!"733"}
!1298 = !DILocalVariable(name: "t1", scope: !934, file: !27, line: 93, type: !7)
!1299 = !{!"734"}
!1300 = !DILocation(line: 141, column: 23, scope: !934)
!1301 = !{!"735"}
!1302 = !DILocation(line: 141, column: 18, scope: !934)
!1303 = !{!"736"}
!1304 = !{!"737"}
!1305 = !{!"738"}
!1306 = !DILocation(line: 141, column: 8, scope: !934)
!1307 = !{!"739"}
!1308 = !DILocation(line: 141, column: 30, scope: !934)
!1309 = !{!"740"}
!1310 = !DILocation(line: 142, column: 22, scope: !934)
!1311 = !{!"741"}
!1312 = !DILocation(line: 142, column: 29, scope: !934)
!1313 = !{!"742"}
!1314 = !DILocation(line: 142, column: 16, scope: !934)
!1315 = !{!"743"}
!1316 = !{!"744"}
!1317 = !{!"745"}
!1318 = !DILocation(line: 142, column: 6, scope: !934)
!1319 = !{!"746"}
!1320 = !DILocation(line: 142, column: 37, scope: !934)
!1321 = !{!"747"}
!1322 = !DILocation(line: 142, column: 3, scope: !934)
!1323 = !{!"748"}
!1324 = !DILocation(line: 143, column: 22, scope: !934)
!1325 = !{!"749"}
!1326 = !DILocation(line: 143, column: 28, scope: !934)
!1327 = !{!"750"}
!1328 = !DILocation(line: 143, column: 16, scope: !934)
!1329 = !{!"751"}
!1330 = !{!"752"}
!1331 = !{!"753"}
!1332 = !DILocation(line: 143, column: 6, scope: !934)
!1333 = !{!"754"}
!1334 = !DILocation(line: 143, column: 36, scope: !934)
!1335 = !{!"755"}
!1336 = !DILocation(line: 143, column: 3, scope: !934)
!1337 = !{!"756"}
!1338 = !DILocation(line: 144, column: 20, scope: !934)
!1339 = !{!"757"}
!1340 = !DILocation(line: 144, column: 15, scope: !934)
!1341 = !{!"758"}
!1342 = !{!"759"}
!1343 = !{!"760"}
!1344 = !DILocation(line: 144, column: 5, scope: !934)
!1345 = !{!"761"}
!1346 = !DILocation(line: 144, column: 3, scope: !934)
!1347 = !{!"762"}
!1348 = !DILocalVariable(name: "t2", scope: !934, file: !27, line: 93, type: !7)
!1349 = !{!"763"}
!1350 = !DILocation(line: 145, column: 23, scope: !934)
!1351 = !{!"764"}
!1352 = !DILocation(line: 145, column: 18, scope: !934)
!1353 = !{!"765"}
!1354 = !{!"766"}
!1355 = !{!"767"}
!1356 = !DILocation(line: 145, column: 8, scope: !934)
!1357 = !{!"768"}
!1358 = !DILocation(line: 145, column: 30, scope: !934)
!1359 = !{!"769"}
!1360 = !DILocation(line: 146, column: 22, scope: !934)
!1361 = !{!"770"}
!1362 = !DILocation(line: 146, column: 29, scope: !934)
!1363 = !{!"771"}
!1364 = !DILocation(line: 146, column: 16, scope: !934)
!1365 = !{!"772"}
!1366 = !{!"773"}
!1367 = !{!"774"}
!1368 = !DILocation(line: 146, column: 6, scope: !934)
!1369 = !{!"775"}
!1370 = !DILocation(line: 146, column: 37, scope: !934)
!1371 = !{!"776"}
!1372 = !DILocation(line: 146, column: 3, scope: !934)
!1373 = !{!"777"}
!1374 = !DILocation(line: 147, column: 22, scope: !934)
!1375 = !{!"778"}
!1376 = !DILocation(line: 147, column: 28, scope: !934)
!1377 = !{!"779"}
!1378 = !DILocation(line: 147, column: 16, scope: !934)
!1379 = !{!"780"}
!1380 = !{!"781"}
!1381 = !{!"782"}
!1382 = !DILocation(line: 147, column: 6, scope: !934)
!1383 = !{!"783"}
!1384 = !DILocation(line: 147, column: 36, scope: !934)
!1385 = !{!"784"}
!1386 = !DILocation(line: 147, column: 3, scope: !934)
!1387 = !{!"785"}
!1388 = !DILocation(line: 148, column: 20, scope: !934)
!1389 = !{!"786"}
!1390 = !DILocation(line: 148, column: 15, scope: !934)
!1391 = !{!"787"}
!1392 = !{!"788"}
!1393 = !{!"789"}
!1394 = !DILocation(line: 148, column: 5, scope: !934)
!1395 = !{!"790"}
!1396 = !DILocation(line: 148, column: 3, scope: !934)
!1397 = !{!"791"}
!1398 = !DILocalVariable(name: "t3", scope: !934, file: !27, line: 93, type: !7)
!1399 = !{!"792"}
!1400 = !DILocation(line: 149, column: 28, scope: !934)
!1401 = !{!"793"}
!1402 = !DILocation(line: 149, column: 12, scope: !934)
!1403 = !{!"794"}
!1404 = !{!"795"}
!1405 = !{!"796"}
!1406 = !DILocation(line: 149, column: 10, scope: !934)
!1407 = !{!"797"}
!1408 = !{!"798"}
!1409 = !DILocation(line: 150, column: 29, scope: !934)
!1410 = !{!"799"}
!1411 = !DILocation(line: 150, column: 35, scope: !934)
!1412 = !{!"800"}
!1413 = !DILocation(line: 150, column: 12, scope: !934)
!1414 = !{!"801"}
!1415 = !{!"802"}
!1416 = !{!"803"}
!1417 = !DILocation(line: 150, column: 10, scope: !934)
!1418 = !{!"804"}
!1419 = !{!"805"}
!1420 = !DILocation(line: 151, column: 29, scope: !934)
!1421 = !{!"806"}
!1422 = !DILocation(line: 151, column: 35, scope: !934)
!1423 = !{!"807"}
!1424 = !DILocation(line: 151, column: 12, scope: !934)
!1425 = !{!"808"}
!1426 = !{!"809"}
!1427 = !{!"810"}
!1428 = !DILocation(line: 151, column: 10, scope: !934)
!1429 = !{!"811"}
!1430 = !{!"812"}
!1431 = !DILocation(line: 152, column: 29, scope: !934)
!1432 = !{!"813"}
!1433 = !DILocation(line: 152, column: 35, scope: !934)
!1434 = !{!"814"}
!1435 = !DILocation(line: 152, column: 12, scope: !934)
!1436 = !{!"815"}
!1437 = !{!"816"}
!1438 = !{!"817"}
!1439 = !DILocation(line: 152, column: 10, scope: !934)
!1440 = !{!"818"}
!1441 = !{!"819"}
!1442 = !DILocation(line: 153, column: 2, scope: !934)
!1443 = !{!"820"}
!1444 = !DILocation(line: 154, column: 17, scope: !934)
!1445 = !{!"821"}
!1446 = !DILocation(line: 154, column: 2, scope: !934)
!1447 = !{!"822"}
!1448 = !DILocation(line: 155, column: 17, scope: !934)
!1449 = !{!"823"}
!1450 = !DILocation(line: 155, column: 2, scope: !934)
!1451 = !{!"824"}
!1452 = !DILocation(line: 156, column: 17, scope: !934)
!1453 = !{!"825"}
!1454 = !DILocation(line: 156, column: 2, scope: !934)
!1455 = !{!"826"}
!1456 = !DILocation(line: 157, column: 1, scope: !934)
!1457 = !{!"827"}
!1458 = distinct !DISubprogram(name: "br_dec32be", scope: !832, file: !832, line: 590, type: !833, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1459 = !DILocalVariable(name: "src", arg: 1, scope: !1458, file: !832, line: 590, type: !55)
!1460 = !DILocation(line: 0, scope: !1458)
!1461 = !{!"828"}
!1462 = !DILocalVariable(name: "buf", scope: !1458, file: !832, line: 595, type: !36)
!1463 = !{!"829"}
!1464 = !DILocation(line: 598, column: 20, scope: !1458)
!1465 = !{!"830"}
!1466 = !{!"831"}
!1467 = !DILocation(line: 598, column: 10, scope: !1458)
!1468 = !{!"832"}
!1469 = !DILocation(line: 598, column: 27, scope: !1458)
!1470 = !{!"833"}
!1471 = !DILocation(line: 599, column: 16, scope: !1458)
!1472 = !{!"834"}
!1473 = !{!"835"}
!1474 = !DILocation(line: 599, column: 6, scope: !1458)
!1475 = !{!"836"}
!1476 = !DILocation(line: 599, column: 23, scope: !1458)
!1477 = !{!"837"}
!1478 = !DILocation(line: 599, column: 3, scope: !1458)
!1479 = !{!"838"}
!1480 = !DILocation(line: 600, column: 16, scope: !1458)
!1481 = !{!"839"}
!1482 = !{!"840"}
!1483 = !DILocation(line: 600, column: 6, scope: !1458)
!1484 = !{!"841"}
!1485 = !DILocation(line: 600, column: 23, scope: !1458)
!1486 = !{!"842"}
!1487 = !DILocation(line: 600, column: 3, scope: !1458)
!1488 = !{!"843"}
!1489 = !DILocation(line: 601, column: 15, scope: !1458)
!1490 = !{!"844"}
!1491 = !{!"845"}
!1492 = !DILocation(line: 601, column: 5, scope: !1458)
!1493 = !{!"846"}
!1494 = !DILocation(line: 601, column: 3, scope: !1458)
!1495 = !{!"847"}
!1496 = !DILocation(line: 598, column: 2, scope: !1458)
!1497 = !{!"848"}
!1498 = distinct !DISubprogram(name: "rotr", scope: !27, file: !27, line: 76, type: !875, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1499 = !DILocalVariable(name: "x", arg: 1, scope: !1498, file: !27, line: 76, type: !7)
!1500 = !DILocation(line: 0, scope: !1498)
!1501 = !{!"849"}
!1502 = !DILocalVariable(name: "n", arg: 2, scope: !1498, file: !27, line: 76, type: !6)
!1503 = !{!"850"}
!1504 = !DILocation(line: 78, column: 19, scope: !1498)
!1505 = !{!"851"}
!1506 = !DILocation(line: 78, column: 12, scope: !1498)
!1507 = !{!"852"}
!1508 = !DILocation(line: 78, column: 30, scope: !1498)
!1509 = !{!"853"}
!1510 = !DILocation(line: 78, column: 25, scope: !1498)
!1511 = !{!"854"}
!1512 = !DILocation(line: 78, column: 2, scope: !1498)
!1513 = !{!"855"}
!1514 = distinct !DISubprogram(name: "br_enc32be", scope: !832, file: !832, line: 558, type: !893, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !4)
!1515 = !DILocalVariable(name: "dst", arg: 1, scope: !1514, file: !832, line: 558, type: !302)
!1516 = !DILocation(line: 0, scope: !1514)
!1517 = !{!"856"}
!1518 = !DILocalVariable(name: "x", arg: 2, scope: !1514, file: !832, line: 558, type: !7)
!1519 = !{!"857"}
!1520 = !DILocalVariable(name: "buf", scope: !1514, file: !832, line: 563, type: !311)
!1521 = !{!"858"}
!1522 = !DILocation(line: 566, column: 29, scope: !1514)
!1523 = !{!"859"}
!1524 = !DILocation(line: 566, column: 11, scope: !1514)
!1525 = !{!"860"}
!1526 = !DILocation(line: 566, column: 2, scope: !1514)
!1527 = !{!"861"}
!1528 = !DILocation(line: 566, column: 9, scope: !1514)
!1529 = !{!"862"}
!1530 = !DILocation(line: 567, column: 29, scope: !1514)
!1531 = !{!"863"}
!1532 = !DILocation(line: 567, column: 11, scope: !1514)
!1533 = !{!"864"}
!1534 = !DILocation(line: 567, column: 2, scope: !1514)
!1535 = !{!"865"}
!1536 = !DILocation(line: 567, column: 9, scope: !1514)
!1537 = !{!"866"}
!1538 = !DILocation(line: 568, column: 29, scope: !1514)
!1539 = !{!"867"}
!1540 = !DILocation(line: 568, column: 11, scope: !1514)
!1541 = !{!"868"}
!1542 = !DILocation(line: 568, column: 2, scope: !1514)
!1543 = !{!"869"}
!1544 = !DILocation(line: 568, column: 9, scope: !1514)
!1545 = !{!"870"}
!1546 = !DILocation(line: 569, column: 11, scope: !1514)
!1547 = !{!"871"}
!1548 = !DILocation(line: 569, column: 2, scope: !1514)
!1549 = !{!"872"}
!1550 = !DILocation(line: 569, column: 9, scope: !1514)
!1551 = !{!"873"}
!1552 = !DILocation(line: 571, column: 1, scope: !1514)
!1553 = !{!"874"}
!1554 = distinct !DISubprogram(name: "br_aes_keysched", scope: !34, file: !34, line: 71, type: !52, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1555 = !DILocalVariable(name: "skey", arg: 1, scope: !1554, file: !34, line: 71, type: !54)
!1556 = !DILocation(line: 0, scope: !1554)
!1557 = !{!"875"}
!1558 = !DILocalVariable(name: "key", arg: 2, scope: !1554, file: !34, line: 71, type: !55)
!1559 = !{!"876"}
!1560 = !DILocalVariable(name: "key_len", arg: 3, scope: !1554, file: !34, line: 71, type: !57)
!1561 = !{!"877"}
!1562 = !DILocation(line: 76, column: 2, scope: !1554)
!1563 = !{!"878"}
!1564 = !DILocalVariable(name: "num_rounds", scope: !1554, file: !34, line: 73, type: !11)
!1565 = !{!"879"}
!1566 = !DILocation(line: 79, column: 3, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1554, file: !34, line: 76, column: 19)
!1568 = !{!"880"}
!1569 = !{!"881"}
!1570 = !DILocation(line: 82, column: 3, scope: !1567)
!1571 = !{!"882"}
!1572 = !{!"883"}
!1573 = !DILocation(line: 85, column: 3, scope: !1567)
!1574 = !{!"884"}
!1575 = !DILocation(line: 88, column: 3, scope: !1567)
!1576 = !{!"885"}
!1577 = !DILocation(line: 0, scope: !1567)
!1578 = !{!"886"}
!1579 = !{!"887"}
!1580 = !DILocation(line: 90, column: 21, scope: !1554)
!1581 = !{!"888"}
!1582 = !DILocation(line: 90, column: 7, scope: !1554)
!1583 = !{!"889"}
!1584 = !DILocalVariable(name: "nk", scope: !1554, file: !34, line: 74, type: !6)
!1585 = !{!"890"}
!1586 = !DILocation(line: 91, column: 26, scope: !1554)
!1587 = !{!"891"}
!1588 = !DILocation(line: 91, column: 31, scope: !1554)
!1589 = !{!"892"}
!1590 = !DILocalVariable(name: "nkf", scope: !1554, file: !34, line: 74, type: !6)
!1591 = !{!"893"}
!1592 = !DILocalVariable(name: "i", scope: !1554, file: !34, line: 74, type: !6)
!1593 = !{!"894"}
!1594 = !DILocation(line: 92, column: 7, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1554, file: !34, line: 92, column: 2)
!1596 = !{!"895"}
!1597 = !DILocation(line: 0, scope: !1595)
!1598 = !{!"896"}
!1599 = !{!"897"}
!1600 = !DILocation(line: 92, column: 16, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1595, file: !34, line: 92, column: 2)
!1602 = !{!"898"}
!1603 = !DILocation(line: 92, column: 2, scope: !1595)
!1604 = !{!"899"}
!1605 = !DILocation(line: 93, column: 56, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1601, file: !34, line: 92, column: 28)
!1607 = !{!"900"}
!1608 = !DILocation(line: 93, column: 51, scope: !1606)
!1609 = !{!"901"}
!1610 = !{!"902"}
!1611 = !{!"PointTainted"}
!1612 = !DILocation(line: 93, column: 13, scope: !1606)
!1613 = !{!"903"}
!1614 = !{!"ValueTainted"}
!1615 = !DILocation(line: 93, column: 3, scope: !1606)
!1616 = !{!"904"}
!1617 = !{!"905"}
!1618 = !DILocation(line: 93, column: 11, scope: !1606)
!1619 = !{!"906"}
!1620 = !DILocation(line: 94, column: 2, scope: !1606)
!1621 = !{!"907"}
!1622 = !DILocation(line: 92, column: 24, scope: !1601)
!1623 = !{!"908"}
!1624 = !{!"909"}
!1625 = !DILocation(line: 92, column: 2, scope: !1601)
!1626 = distinct !{!1626, !1603, !1627, !205}
!1627 = !DILocation(line: 94, column: 2, scope: !1595)
!1628 = !{!"910"}
!1629 = !{!"911"}
!1630 = !DILocalVariable(name: "j", scope: !1554, file: !34, line: 74, type: !6)
!1631 = !{!"912"}
!1632 = !DILocalVariable(name: "k", scope: !1554, file: !34, line: 74, type: !6)
!1633 = !{!"913"}
!1634 = !DILocation(line: 95, column: 7, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1554, file: !34, line: 95, column: 2)
!1636 = !{!"914"}
!1637 = !DILocation(line: 0, scope: !1635)
!1638 = !{!"915"}
!1639 = !{!"916"}
!1640 = !{!"917"}
!1641 = !{!"918"}
!1642 = !{!"919"}
!1643 = !{!"920"}
!1644 = !DILocation(line: 95, column: 31, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1635, file: !34, line: 95, column: 2)
!1646 = !{!"921"}
!1647 = !DILocation(line: 95, column: 2, scope: !1635)
!1648 = !{!"922"}
!1649 = !DILocation(line: 98, column: 16, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !34, line: 95, column: 44)
!1651 = !{!"923"}
!1652 = !DILocation(line: 98, column: 9, scope: !1650)
!1653 = !{!"924"}
!1654 = !{!"925"}
!1655 = !{!"926"}
!1656 = !DILocalVariable(name: "tmp", scope: !1650, file: !34, line: 96, type: !7)
!1657 = !DILocation(line: 0, scope: !1650)
!1658 = !{!"927"}
!1659 = !DILocation(line: 99, column: 9, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1650, file: !34, line: 99, column: 7)
!1661 = !{!"928"}
!1662 = !DILocation(line: 99, column: 7, scope: !1650)
!1663 = !{!"929"}
!1664 = !DILocation(line: 100, column: 15, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1660, file: !34, line: 99, column: 15)
!1666 = !{!"930"}
!1667 = !DILocation(line: 100, column: 28, scope: !1665)
!1668 = !{!"931"}
!1669 = !DILocation(line: 100, column: 21, scope: !1665)
!1670 = !{!"932"}
!1671 = !{!"933"}
!1672 = !DILocation(line: 101, column: 10, scope: !1665)
!1673 = !{!"934"}
!1674 = !DILocation(line: 101, column: 25, scope: !1665)
!1675 = !{!"935"}
!1676 = !{!"936"}
!1677 = !{!"937"}
!1678 = !DILocation(line: 101, column: 23, scope: !1665)
!1679 = !{!"938"}
!1680 = !{!"939"}
!1681 = !DILocation(line: 102, column: 3, scope: !1665)
!1682 = !{!"940"}
!1683 = !DILocation(line: 102, column: 17, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1660, file: !34, line: 102, column: 14)
!1685 = !{!"941"}
!1686 = !DILocation(line: 102, column: 21, scope: !1684)
!1687 = !{!"942"}
!1688 = !DILocation(line: 102, column: 26, scope: !1684)
!1689 = !{!"943"}
!1690 = !DILocation(line: 102, column: 14, scope: !1660)
!1691 = !{!"944"}
!1692 = !DILocation(line: 103, column: 10, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1684, file: !34, line: 102, column: 32)
!1694 = !{!"945"}
!1695 = !{!"946"}
!1696 = !DILocation(line: 104, column: 3, scope: !1693)
!1697 = !{!"947"}
!1698 = !{!"948"}
!1699 = !{!"949"}
!1700 = !{!"950"}
!1701 = !DILocation(line: 0, scope: !1660)
!1702 = !{!"951"}
!1703 = !{!"952"}
!1704 = !DILocation(line: 105, column: 20, scope: !1650)
!1705 = !{!"953"}
!1706 = !DILocation(line: 105, column: 13, scope: !1650)
!1707 = !{!"954"}
!1708 = !{!"955"}
!1709 = !{!"956"}
!1710 = !DILocation(line: 105, column: 26, scope: !1650)
!1711 = !{!"957"}
!1712 = !DILocation(line: 105, column: 3, scope: !1650)
!1713 = !{!"958"}
!1714 = !{!"959"}
!1715 = !DILocation(line: 105, column: 11, scope: !1650)
!1716 = !{!"960"}
!1717 = !DILocation(line: 106, column: 7, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !1650, file: !34, line: 106, column: 7)
!1719 = !{!"961"}
!1720 = !{!"962"}
!1721 = !DILocation(line: 106, column: 12, scope: !1718)
!1722 = !{!"963"}
!1723 = !DILocation(line: 106, column: 7, scope: !1650)
!1724 = !{!"964"}
!1725 = !{!"965"}
!1726 = !DILocation(line: 108, column: 6, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1718, file: !34, line: 106, column: 19)
!1728 = !{!"966"}
!1729 = !{!"967"}
!1730 = !DILocation(line: 109, column: 3, scope: !1727)
!1731 = !{!"968"}
!1732 = !DILocation(line: 0, scope: !1718)
!1733 = !{!"969"}
!1734 = !{!"970"}
!1735 = !{!"971"}
!1736 = !{!"972"}
!1737 = !DILocation(line: 110, column: 2, scope: !1650)
!1738 = !{!"973"}
!1739 = !DILocation(line: 95, column: 40, scope: !1645)
!1740 = !{!"974"}
!1741 = !{!"975"}
!1742 = !DILocation(line: 95, column: 2, scope: !1645)
!1743 = distinct !{!1743, !1647, !1744, !205}
!1744 = !DILocation(line: 110, column: 2, scope: !1635)
!1745 = !{!"976"}
!1746 = !DILocation(line: 111, column: 2, scope: !1554)
!1747 = !{!"977"}
!1748 = !{!"978"}
!1749 = !DILocation(line: 112, column: 1, scope: !1554)
!1750 = !{!"979"}
!1751 = distinct !DISubprogram(name: "br_dec32be", scope: !832, file: !832, line: 590, type: !833, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1752 = !DILocalVariable(name: "src", arg: 1, scope: !1751, file: !832, line: 590, type: !55)
!1753 = !DILocation(line: 0, scope: !1751)
!1754 = !{!"980"}
!1755 = !DILocalVariable(name: "buf", scope: !1751, file: !832, line: 595, type: !36)
!1756 = !{!"981"}
!1757 = !DILocation(line: 598, column: 20, scope: !1751)
!1758 = !{!"982"}
!1759 = !{!"983"}
!1760 = !DILocation(line: 598, column: 10, scope: !1751)
!1761 = !{!"984"}
!1762 = !DILocation(line: 598, column: 27, scope: !1751)
!1763 = !{!"985"}
!1764 = !DILocation(line: 599, column: 16, scope: !1751)
!1765 = !{!"986"}
!1766 = !{!"987"}
!1767 = !DILocation(line: 599, column: 6, scope: !1751)
!1768 = !{!"988"}
!1769 = !DILocation(line: 599, column: 23, scope: !1751)
!1770 = !{!"989"}
!1771 = !DILocation(line: 599, column: 3, scope: !1751)
!1772 = !{!"990"}
!1773 = !DILocation(line: 600, column: 16, scope: !1751)
!1774 = !{!"991"}
!1775 = !{!"992"}
!1776 = !DILocation(line: 600, column: 6, scope: !1751)
!1777 = !{!"993"}
!1778 = !DILocation(line: 600, column: 23, scope: !1751)
!1779 = !{!"994"}
!1780 = !DILocation(line: 600, column: 3, scope: !1751)
!1781 = !{!"995"}
!1782 = !DILocation(line: 601, column: 15, scope: !1751)
!1783 = !{!"996"}
!1784 = !{!"997"}
!1785 = !DILocation(line: 601, column: 5, scope: !1751)
!1786 = !{!"998"}
!1787 = !DILocation(line: 601, column: 3, scope: !1751)
!1788 = !{!"999"}
!1789 = !DILocation(line: 598, column: 2, scope: !1751)
!1790 = !{!"1000"}
!1791 = distinct !DISubprogram(name: "SubWord", scope: !34, file: !34, line: 61, type: !1792, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !33, retainedNodes: !4)
!1792 = !DISubroutineType(types: !1793)
!1793 = !{!7, !7}
!1794 = !DILocalVariable(name: "x", arg: 1, scope: !1791, file: !34, line: 61, type: !7)
!1795 = !DILocation(line: 0, scope: !1791)
!1796 = !{!"1001"}
!1797 = !DILocation(line: 63, column: 24, scope: !1791)
!1798 = !{!"1002"}
!1799 = !DILocation(line: 63, column: 20, scope: !1791)
!1800 = !{!"1003"}
!1801 = !{!"1004"}
!1802 = !{!"1005"}
!1803 = !{!"Tainted"}
!1804 = !DILocation(line: 63, column: 10, scope: !1791)
!1805 = !{!"1006"}
!1806 = !DILocation(line: 63, column: 31, scope: !1791)
!1807 = !{!"1007"}
!1808 = !DILocation(line: 64, column: 21, scope: !1791)
!1809 = !{!"1008"}
!1810 = !DILocation(line: 64, column: 28, scope: !1791)
!1811 = !{!"1009"}
!1812 = !DILocation(line: 64, column: 16, scope: !1791)
!1813 = !{!"1010"}
!1814 = !{!"1011"}
!1815 = !{!"1012"}
!1816 = !DILocation(line: 64, column: 6, scope: !1791)
!1817 = !{!"1013"}
!1818 = !DILocation(line: 64, column: 36, scope: !1791)
!1819 = !{!"1014"}
!1820 = !DILocation(line: 64, column: 3, scope: !1791)
!1821 = !{!"1015"}
!1822 = !DILocation(line: 65, column: 21, scope: !1791)
!1823 = !{!"1016"}
!1824 = !DILocation(line: 65, column: 27, scope: !1791)
!1825 = !{!"1017"}
!1826 = !DILocation(line: 65, column: 16, scope: !1791)
!1827 = !{!"1018"}
!1828 = !{!"1019"}
!1829 = !{!"1020"}
!1830 = !DILocation(line: 65, column: 6, scope: !1791)
!1831 = !{!"1021"}
!1832 = !DILocation(line: 65, column: 35, scope: !1791)
!1833 = !{!"1022"}
!1834 = !DILocation(line: 65, column: 3, scope: !1791)
!1835 = !{!"1023"}
!1836 = !DILocation(line: 66, column: 19, scope: !1791)
!1837 = !{!"1024"}
!1838 = !DILocation(line: 66, column: 15, scope: !1791)
!1839 = !{!"1025"}
!1840 = !{!"1026"}
!1841 = !{!"1027"}
!1842 = !DILocation(line: 66, column: 5, scope: !1791)
!1843 = !{!"1028"}
!1844 = !DILocation(line: 66, column: 3, scope: !1791)
!1845 = !{!"1029"}
!1846 = !DILocation(line: 63, column: 2, scope: !1791)
!1847 = !{!"1030"}
!1848 = distinct !DISubprogram(name: "key_schedule_wrapper", scope: !46, file: !46, line: 4, type: !1849, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !54, !55, !57}
!1851 = !DILocalVariable(name: "skey", arg: 1, scope: !1848, file: !46, line: 4, type: !54)
!1852 = !DILocation(line: 0, scope: !1848)
!1853 = !{!"1031"}
!1854 = !DILocalVariable(name: "key", arg: 2, scope: !1848, file: !46, line: 4, type: !55)
!1855 = !{!"1032"}
!1856 = !DILocalVariable(name: "key_len", arg: 3, scope: !1848, file: !46, line: 4, type: !57)
!1857 = !{!"1033"}
!1858 = !DILocation(line: 5, column: 12, scope: !1848)
!1859 = !{!"1034"}
!1860 = !DILocation(line: 5, column: 2, scope: !1848)
!1861 = !{!"1035"}
!1862 = !DILocation(line: 6, column: 12, scope: !1848)
!1863 = !{!"1036"}
!1864 = !DILocation(line: 6, column: 2, scope: !1848)
!1865 = !{!"1037"}
!1866 = !DILocation(line: 7, column: 12, scope: !1848)
!1867 = !{!"1038"}
!1868 = !DILocation(line: 7, column: 2, scope: !1848)
!1869 = !{!"1039"}
!1870 = !DILocation(line: 10, column: 2, scope: !1848)
!1871 = !{!"1040"}
!1872 = !DILocation(line: 11, column: 1, scope: !1848)
!1873 = !{!"1041"}
!1874 = distinct !DISubprogram(name: "key_schedule_wrapper_t", scope: !46, file: !46, line: 16, type: !1875, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !45, retainedNodes: !4)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{null}
!1877 = !DILocation(line: 17, column: 20, scope: !1874)
!1878 = !{!"1042"}
!1879 = !DILocalVariable(name: "key", scope: !1874, file: !46, line: 17, type: !55)
!1880 = !DILocation(line: 0, scope: !1874)
!1881 = !{!"1043"}
!1882 = !DILocation(line: 18, column: 25, scope: !1874)
!1883 = !{!"1044"}
!1884 = !{!"1045"}
!1885 = !{!"1046"}
!1886 = !DILocalVariable(name: "skey", scope: !1874, file: !46, line: 18, type: !301)
!1887 = !{!"1047"}
!1888 = !DILocation(line: 19, column: 19, scope: !1874)
!1889 = !{!"1048"}
!1890 = !DILocalVariable(name: "key_len", scope: !1874, file: !46, line: 19, type: !57)
!1891 = !{!"1049"}
!1892 = !DILocation(line: 21, column: 2, scope: !1874)
!1893 = !{!"1050"}
!1894 = !DILocation(line: 22, column: 1, scope: !1874)
!1895 = !{!"1051"}
