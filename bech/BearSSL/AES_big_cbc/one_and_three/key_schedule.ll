; ModuleID = 'key_schedule.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.smack_value = type { i8* }

@iSsm0 = internal constant [256 x i32] [i32 1374988112, i32 2118214995, i32 437757123, i32 975658646, i32 1001089995, i32 530400753, i32 -1392879445, i32 1273168787, i32 540080725, i32 -1384747530, i32 -1999866223, i32 -184398811, i32 1340463100, i32 -987051049, i32 641025152, i32 -1251826801, i32 -558802359, i32 632953703, i32 1172967064, i32 1576976609, i32 -1020300030, i32 -2125664238, i32 -1924753501, i32 1809054150, i32 59727847, i32 361929877, i32 -1083344149, i32 -1789765158, i32 -725712083, i32 1484005843, i32 1239443753, i32 -1899378620, i32 1975683434, i32 -191989384, i32 -1722270101, i32 666464733, i32 -1092530250, i32 -259478249, i32 -920605594, i32 2110667444, i32 1675577880, i32 -451268222, i32 -1756286112, i32 1649639237, i32 -1318815776, i32 -1150570876, i32 -25059300, i32 -116905068, i32 1883793496, i32 -1891238631, i32 -1797362553, i32 1383856311, i32 -1418472669, i32 1917518562, i32 -484470953, i32 1716890410, i32 -1293211641, i32 800440835, i32 -2033878118, i32 -751368027, i32 807962610, i32 599762354, i32 33778362, i32 -317291940, i32 -1966138325, i32 -1485196142, i32 -217582864, i32 1315562145, i32 1708848333, i32 101039829, i32 -785096161, i32 -995688822, i32 875451293, i32 -1561111136, i32 92987698, i32 -1527321739, i32 193195065, i32 1080094634, i32 1584504582, i32 -1116860335, i32 1042385657, i32 -1763899843, i32 -583137874, i32 1306967366, i32 -1856729675, i32 1908694277, i32 67556463, i32 1615861247, i32 429456164, i32 -692196969, i32 -1992277044, i32 1742315127, i32 -1326955843, i32 126454664, i32 -417768648, i32 2043211483, i32 -1585706425, i32 2084704233, i32 -125559095, i32 0, i32 159417987, i32 841739592, i32 504459436, i32 1817866830, i32 -49348613, i32 260388950, i32 1034867998, i32 908933415, i32 168810852, i32 1750902305, i32 -1688513327, i32 607530554, i32 202008497, i32 -1822955761, i32 -1259432238, i32 463180190, i32 -2134850225, i32 1641816226, i32 1517767529, i32 470948374, i32 -493635062, i32 -1063245083, i32 1008918595, i32 303765277, i32 235474187, i32 -225720403, i32 766945465, i32 337553864, i32 1475418501, i32 -1351284916, i32 -291906117, i32 -1551933187, i32 -150919521, i32 1551037884, i32 1147550661, i32 1543208500, i32 -1958532746, i32 -886847780, i32 -1225917336, i32 -1192955549, i32 -684598070, i32 1113818384, i32 328671808, i32 -2067394272, i32 -2058738563, i32 -759480840, i32 -1359400431, i32 -953573011, i32 496906059, i32 -592301837, i32 226906860, i32 2009195472, i32 733156972, i32 -1452230247, i32 294930682, i32 1206477858, i32 -1459843900, i32 -1594867942, i32 1451044056, i32 573804783, i32 -2025238841, i32 -650587711, i32 -1932877058, i32 -1730933962, i32 -1493859889, i32 -1518674392, i32 -625504730, i32 1068351396, i32 742039012, i32 1350078989, i32 1784663195, i32 1417561698, i32 -158526526, i32 -1864845080, i32 775550814, i32 -2101104651, i32 -1621262146, i32 1775276924, i32 1876241833, i32 -819653965, i32 -928212677, i32 270040487, i32 -392404114, i32 -616842373, i32 -853116919, i32 1851332852, i32 -325404927, i32 -2091935064, i32 -426414491, i32 -1426069890, i32 566021896, i32 -283776794, i32 -1159226407, i32 1248802510, i32 -358676012, i32 699432150, i32 832877231, i32 708780849, i32 -962227152, i32 899835584, i32 1951317047, i32 -58537306, i32 -527380304, i32 866637845, i32 -251357110, i32 1106041591, i32 2144161806, i32 395441711, i32 1984812685, i32 1139781709, i32 -861254316, i32 -459930401, i32 -1630423581, i32 1282050075, i32 -1054072904, i32 1181045119, i32 -1654724092, i32 25965917, i32 -91786125, i32 -83148498, i32 -1285087910, i32 -1831087534, i32 -384805325, i32 1842759443, i32 -1697160820, i32 933301370, i32 1509430414, i32 -351060855, i32 -827774994, i32 -1218328267, i32 -518199827, i32 2051518780, i32 -1663901863, i32 1441952575, i32 404016761, i32 1942435775, i32 1408749034, i32 1610459739, i32 -549621996, i32 2017778566, i32 -894438527, i32 -1184316354, i32 941896748, i32 -1029488545, i32 371049330, i32 -1126030068, i32 675039627, i32 -15887039, i32 967311729, i32 135050206, i32 -659233636, i32 1683407248, i32 2076935265, i32 -718096784, i32 1215061108, i32 -793225406], align 16, !dbg !0
@iS = internal constant [256 x i8] c"R\09j\D506\A58\BF@\A3\9E\81\F3\D7\FB|\E39\82\9B/\FF\874\8ECD\C4\DE\E9\CBT{\942\A6\C2#=\EEL\95\0BB\FA\C3N\08.\A1f(\D9$\B2v[\A2Im\8B\D1%r\F8\F6d\86h\98\16\D4\A4\\\CC]e\B6\92lpHP\FD\ED\B9\DA^\15FW\A7\8D\9D\84\90\D8\AB\00\8C\BC\D3\0A\F7\E4X\05\B8\B3E\06\D0,\1E\8F\CA?\0F\02\C1\AF\BD\03\01\13\8Ak:\91\11AOg\DC\EA\97\F2\CF\CE\F0\B4\E6s\96\ACt\22\E7\AD5\85\E2\F97\E8\1Cu\DFnG\F1\1Aq\1D)\C5\89o\B7b\0E\AA\18\BE\1B\FCV>K\C6\D2y \9A\DB\C0\FEx\CDZ\F4\1F\DD\A83\88\07\C71\B1\12\10Y'\80\EC_`Q\7F\A9\19\B5J\0D-\E5z\9F\93\C9\9C\EF\A0\E0;M\AE*\F5\B0\C8\EB\BB<\83S\99a\17+\04~\BAw\D6&\E1i\14cU!\0C}", align 16, !dbg !14
@Ssm0 = internal constant [256 x i32] [i32 -966564955, i32 -126059388, i32 -294160487, i32 -159679603, i32 -855539, i32 -697603139, i32 -563122255, i32 -1849309868, i32 1613770832, i32 33620227, i32 -832084055, i32 1445669757, i32 -402719207, i32 -1244145822, i32 1303096294, i32 -327780710, i32 -1882535355, i32 528646813, i32 -1983264448, i32 -92439161, i32 -268764651, i32 -1302767125, i32 -1907931191, i32 -68095989, i32 1101901292, i32 -1277897625, i32 1604494077, i32 1169141738, i32 597466303, i32 1403299063, i32 -462261610, i32 -1681866661, i32 1974974402, i32 -503448292, i32 1033081774, i32 1277568618, i32 1815492186, i32 2118074177, i32 -168298750, i32 -2083730353, i32 1748251740, i32 1369810420, i32 -773462732, i32 -101584632, i32 -495881837, i32 -1411852173, i32 1647391059, i32 706024767, i32 134480908, i32 -1782069422, i32 1176707941, i32 -1648114850, i32 806885416, i32 932615841, i32 168101135, i32 798661301, i32 235341577, i32 605164086, i32 461406363, i32 -538779075, i32 -840176858, i32 1311188841, i32 2142417613, i32 -361400929, i32 302582043, i32 495158174, i32 1479289972, i32 874125870, i32 907746093, i32 -596742478, i32 -1269146898, i32 1537253627, i32 -1538108682, i32 1983593293, i32 -1210657183, i32 2108928974, i32 1378429307, i32 -572267714, i32 1580150641, i32 327451799, i32 -1504488459, i32 -1177431704, i32 0, i32 -1041371860, i32 1075847264, i32 -469959649, i32 2041688520, i32 -1235526675, i32 -731223362, i32 -1916023994, i32 1740553945, i32 1916352843, i32 -1807070498, i32 -1739830060, i32 -1336387352, i32 -2049978550, i32 -1143943061, i32 -974131414, i32 1336584933, i32 -302253290, i32 -2042412091, i32 -1706209833, i32 1714631509, i32 293963156, i32 -1975171633, i32 -369493744, i32 67240454, i32 -25198719, i32 -1605349136, i32 2017213508, i32 631218106, i32 1269344483, i32 -1571728909, i32 1571005438, i32 -2143272768, i32 93294474, i32 1066570413, i32 563977660, i32 1882732616, i32 -235539196, i32 1673313503, i32 2008463041, i32 -1344611723, i32 1109467491, i32 537923632, i32 -436207846, i32 -34344178, i32 -1076702611, i32 -2117218996, i32 403442708, i32 638784309, i32 -1007883217, i32 -1101045791, i32 899127202, i32 -2008791860, i32 773265209, i32 -1815821225, i32 1437050866, i32 -58818942, i32 2050833735, i32 -932944724, i32 -1168286233, i32 840505643, i32 -428641387, i32 -1067425632, i32 427917720, i32 -1638969391, i32 -1545806721, i32 1143087718, i32 1412049534, i32 999329963, i32 193497219, i32 -1941551414, i32 -940642775, i32 1807268051, i32 672404540, i32 -1478566279, i32 -1134666014, i32 369822493, i32 -1378100362, i32 -606019525, i32 1681011286, i32 1949973070, i32 336202270, i32 -1840690725, i32 201721354, i32 1210328172, i32 -1201906460, i32 -1614626211, i32 -1110191250, i32 1135389935, i32 -1000185178, i32 965841320, i32 831886756, i32 -739974089, i32 -226920053, i32 -706222286, i32 -1949775805, i32 1849112409, i32 -630362697, i32 26054028, i32 -1311386268, i32 -1672589614, i32 1235855840, i32 -663982924, i32 -1403627782, i32 -202050553, i32 -806688219, i32 -899324497, i32 -193299826, i32 1202630377, i32 268961816, i32 1874508501, i32 -260540280, i32 1243948399, i32 1546530418, i32 941366308, i32 1470539505, i32 1941222599, i32 -1748580783, i32 -873928669, i32 -1579295364, i32 -395021156, i32 1042226977, i32 -1773450275, i32 1639824860, i32 227249030, i32 260737669, i32 -529502064, i32 2084453954, i32 1907733956, i32 -865704278, i32 -1874310952, i32 100860677, i32 -134810111, i32 470683154, i32 -1033805405, i32 1781871967, i32 -1370007559, i32 1773779408, i32 394692241, i32 -1715355304, i32 974986535, i32 664706745, i32 -639508168, i32 -336005101, i32 731420851, i32 571543859, i32 -764843589, i32 -1445340816, i32 126783113, i32 865375399, i32 765172662, i32 1008606754, i32 361203602, i32 -907417312, i32 -2016489911, i32 -1437248001, i32 1344809080, i32 -1512054918, i32 59542671, i32 1503764984, i32 160008576, i32 437062935, i32 1707065306, i32 -672733647, i32 -2076032314, i32 -798463816, i32 -2109652541, i32 697932208, i32 1512910199, i32 504303377, i32 2075177163, i32 -1470868228, i32 1841019862, i32 739644986], align 16, !dbg !22
@br_aes_S = dso_local constant [256 x i8] c"c|w{\F2ko\C50\01g+\FE\D7\ABv\CA\82\C9}\FAYG\F0\AD\D4\A2\AF\9C\A4r\C0\B7\FD\93&6?\F7\CC4\A5\E5\F1q\D81\15\04\C7#\C3\18\96\05\9A\07\12\80\E2\EB'\B2u\09\83,\1A\1BnZ\A0R;\D6\B3)\E3/\84S\D1\00\ED \FC\B1[j\CB\BE9JLX\CF\D0\EF\AA\FBCM3\85E\F9\02\7FP<\9F\A8Q\A3@\8F\92\9D8\F5\BC\B6\DA!\10\FF\F3\D2\CD\0C\13\EC_\97D\17\C4\A7~=d]\19s`\81O\DC\22*\90\88F\EE\B8\14\DE^\0B\DB\E02:\0AI\06$\\\C2\D3\ACb\91\95\E4y\E7\C87m\8D\D5N\A9lV\F4\EAez\AE\08\BAx%.\1C\A6\B4\C6\E8\DDt\1FK\BD\8B\8Ap>\B5fH\03\F6\0Ea5W\B9\86\C1\1D\9E\E1\F8\98\11i\D9\8E\94\9B\1E\87\E9\CEU(\DF\8C\A1\89\0D\BF\E6BhA\99-\0F\B0T\BB\16", align 16, !dbg !28
@Rcon = internal constant [10 x i32] [i32 16777216, i32 33554432, i32 67108864, i32 134217728, i32 268435456, i32 536870912, i32 1073741824, i32 -2147483648, i32 452984832, i32 905969664], align 16, !dbg !35

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_big_keysched_inv(i32* %0, i8* %1, i64 %2) #0 !dbg !46 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i8* %1, metadata !57, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i64 %2, metadata !58, metadata !DIExpression()), !dbg !56
  %4 = call i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2), !dbg !59
  call void @llvm.dbg.value(metadata i32 %4, metadata !60, metadata !DIExpression()), !dbg !56
  %5 = shl i32 %4, 2, !dbg !61
  call void @llvm.dbg.value(metadata i32 %5, metadata !62, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.value(metadata i32 4, metadata !63, metadata !DIExpression()), !dbg !56
  br label %6, !dbg !64

6:                                                ; preds = %54, %3
  %.0 = phi i32 [ 4, %3 ], [ %55, %54 ], !dbg !66
  call void @llvm.dbg.value(metadata i32 %.0, metadata !63, metadata !DIExpression()), !dbg !56
  %7 = icmp slt i32 %.0, %5, !dbg !67
  br i1 %7, label %8, label %56, !dbg !69

8:                                                ; preds = %6
  %9 = sext i32 %.0 to i64, !dbg !70
  %10 = getelementptr inbounds i32, i32* %0, i64 %9, !dbg !70
  %11 = load i32, i32* %10, align 4, !dbg !70
  call void @llvm.dbg.value(metadata i32 %11, metadata !72, metadata !DIExpression()), !dbg !73
  %12 = lshr i32 %11, 24, !dbg !74
  call void @llvm.dbg.value(metadata i32 %12, metadata !75, metadata !DIExpression()), !dbg !73
  %13 = lshr i32 %11, 16, !dbg !76
  %14 = and i32 %13, 255, !dbg !77
  call void @llvm.dbg.value(metadata i32 %14, metadata !78, metadata !DIExpression()), !dbg !73
  %15 = lshr i32 %11, 8, !dbg !79
  %16 = and i32 %15, 255, !dbg !80
  call void @llvm.dbg.value(metadata i32 %16, metadata !81, metadata !DIExpression()), !dbg !73
  %17 = and i32 %11, 255, !dbg !82
  call void @llvm.dbg.value(metadata i32 %17, metadata !83, metadata !DIExpression()), !dbg !73
  %18 = call i32 @mule(i32 %12), !dbg !84
  %19 = call i32 @mulb(i32 %14), !dbg !85
  %20 = xor i32 %18, %19, !dbg !86
  %21 = call i32 @muld(i32 %16), !dbg !87
  %22 = xor i32 %20, %21, !dbg !88
  %23 = call i32 @mul9(i32 %17), !dbg !89
  %24 = xor i32 %22, %23, !dbg !90
  call void @llvm.dbg.value(metadata i32 %24, metadata !91, metadata !DIExpression()), !dbg !73
  %25 = call i32 @mul9(i32 %12), !dbg !92
  %26 = call i32 @mule(i32 %14), !dbg !93
  %27 = xor i32 %25, %26, !dbg !94
  %28 = call i32 @mulb(i32 %16), !dbg !95
  %29 = xor i32 %27, %28, !dbg !96
  %30 = call i32 @muld(i32 %17), !dbg !97
  %31 = xor i32 %29, %30, !dbg !98
  call void @llvm.dbg.value(metadata i32 %31, metadata !99, metadata !DIExpression()), !dbg !73
  %32 = call i32 @muld(i32 %12), !dbg !100
  %33 = call i32 @mul9(i32 %14), !dbg !101
  %34 = xor i32 %32, %33, !dbg !102
  %35 = call i32 @mule(i32 %16), !dbg !103
  %36 = xor i32 %34, %35, !dbg !104
  %37 = call i32 @mulb(i32 %17), !dbg !105
  %38 = xor i32 %36, %37, !dbg !106
  call void @llvm.dbg.value(metadata i32 %38, metadata !107, metadata !DIExpression()), !dbg !73
  %39 = call i32 @mulb(i32 %12), !dbg !108
  %40 = call i32 @muld(i32 %14), !dbg !109
  %41 = xor i32 %39, %40, !dbg !110
  %42 = call i32 @mul9(i32 %16), !dbg !111
  %43 = xor i32 %41, %42, !dbg !112
  %44 = call i32 @mule(i32 %17), !dbg !113
  %45 = xor i32 %43, %44, !dbg !114
  call void @llvm.dbg.value(metadata i32 %45, metadata !115, metadata !DIExpression()), !dbg !73
  %46 = shl i32 %24, 24, !dbg !116
  %47 = shl i32 %31, 16, !dbg !117
  %48 = or i32 %46, %47, !dbg !118
  %49 = shl i32 %38, 8, !dbg !119
  %50 = or i32 %48, %49, !dbg !120
  %51 = or i32 %50, %45, !dbg !121
  %52 = sext i32 %.0 to i64, !dbg !122
  %53 = getelementptr inbounds i32, i32* %0, i64 %52, !dbg !122
  store i32 %51, i32* %53, align 4, !dbg !123
  br label %54, !dbg !124

54:                                               ; preds = %8
  %55 = add nsw i32 %.0, 1, !dbg !125
  call void @llvm.dbg.value(metadata i32 %55, metadata !63, metadata !DIExpression()), !dbg !56
  br label %6, !dbg !126, !llvm.loop !127

56:                                               ; preds = %6
  ret i32 %4, !dbg !130
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @mule(i32 %0) #0 !dbg !131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !134, metadata !DIExpression()), !dbg !135
  %2 = call i32 @mul2(i32 %0), !dbg !136
  call void @llvm.dbg.value(metadata i32 %2, metadata !137, metadata !DIExpression()), !dbg !135
  %3 = call i32 @mul2(i32 %2), !dbg !138
  call void @llvm.dbg.value(metadata i32 %3, metadata !139, metadata !DIExpression()), !dbg !135
  %4 = xor i32 %2, %3, !dbg !140
  %5 = call i32 @mul2(i32 %3), !dbg !141
  %6 = xor i32 %4, %5, !dbg !142
  ret i32 %6, !dbg !143
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mulb(i32 %0) #0 !dbg !144 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !145, metadata !DIExpression()), !dbg !146
  %2 = call i32 @mul2(i32 %0), !dbg !147
  call void @llvm.dbg.value(metadata i32 %2, metadata !148, metadata !DIExpression()), !dbg !146
  %3 = xor i32 %0, %2, !dbg !149
  %4 = call i32 @mul2(i32 %2), !dbg !150
  %5 = call i32 @mul2(i32 %4), !dbg !151
  %6 = xor i32 %3, %5, !dbg !152
  ret i32 %6, !dbg !153
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @muld(i32 %0) #0 !dbg !154 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !155, metadata !DIExpression()), !dbg !156
  %2 = call i32 @mul2(i32 %0), !dbg !157
  %3 = call i32 @mul2(i32 %2), !dbg !158
  call void @llvm.dbg.value(metadata i32 %3, metadata !159, metadata !DIExpression()), !dbg !156
  %4 = xor i32 %0, %3, !dbg !160
  %5 = call i32 @mul2(i32 %3), !dbg !161
  %6 = xor i32 %4, %5, !dbg !162
  ret i32 %6, !dbg !163
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mul9(i32 %0) #0 !dbg !164 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression()), !dbg !166
  %2 = call i32 @mul2(i32 %0), !dbg !167
  %3 = call i32 @mul2(i32 %2), !dbg !168
  %4 = call i32 @mul2(i32 %3), !dbg !169
  %5 = xor i32 %0, %4, !dbg !170
  ret i32 %5, !dbg !171
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mul2(i32 %0) #0 !dbg !172 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !173, metadata !DIExpression()), !dbg !174
  %2 = shl i32 %0, 1, !dbg !175
  call void @llvm.dbg.value(metadata i32 %2, metadata !173, metadata !DIExpression()), !dbg !174
  %3 = lshr i32 %2, 8, !dbg !176
  %4 = sub nsw i32 0, %3, !dbg !177
  %5 = and i32 %4, 283, !dbg !178
  %6 = xor i32 %2, %5, !dbg !179
  ret i32 %6, !dbg !180
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_big_decrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !181 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32* %1, metadata !188, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i8* %2, metadata !189, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i8* %2, metadata !190, metadata !DIExpression()), !dbg !187
  %4 = call i32 @br_dec32be(i8* %2), !dbg !192
  call void @llvm.dbg.value(metadata i32 %4, metadata !193, metadata !DIExpression()), !dbg !187
  %5 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !194
  %6 = call i32 @br_dec32be(i8* %5), !dbg !195
  call void @llvm.dbg.value(metadata i32 %6, metadata !196, metadata !DIExpression()), !dbg !187
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !197
  %8 = call i32 @br_dec32be(i8* %7), !dbg !198
  call void @llvm.dbg.value(metadata i32 %8, metadata !199, metadata !DIExpression()), !dbg !187
  %9 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !200
  %10 = call i32 @br_dec32be(i8* %9), !dbg !201
  call void @llvm.dbg.value(metadata i32 %10, metadata !202, metadata !DIExpression()), !dbg !187
  %11 = shl i32 %0, 2, !dbg !203
  %12 = add i32 %11, 0, !dbg !204
  %13 = zext i32 %12 to i64, !dbg !205
  %14 = getelementptr inbounds i32, i32* %1, i64 %13, !dbg !205
  %15 = load i32, i32* %14, align 4, !dbg !205
  %16 = xor i32 %4, %15, !dbg !206
  call void @llvm.dbg.value(metadata i32 %16, metadata !193, metadata !DIExpression()), !dbg !187
  %17 = shl i32 %0, 2, !dbg !207
  %18 = add i32 %17, 1, !dbg !208
  %19 = zext i32 %18 to i64, !dbg !209
  %20 = getelementptr inbounds i32, i32* %1, i64 %19, !dbg !209
  %21 = load i32, i32* %20, align 4, !dbg !209
  %22 = xor i32 %6, %21, !dbg !210
  call void @llvm.dbg.value(metadata i32 %22, metadata !196, metadata !DIExpression()), !dbg !187
  %23 = shl i32 %0, 2, !dbg !211
  %24 = add i32 %23, 2, !dbg !212
  %25 = zext i32 %24 to i64, !dbg !213
  %26 = getelementptr inbounds i32, i32* %1, i64 %25, !dbg !213
  %27 = load i32, i32* %26, align 4, !dbg !213
  %28 = xor i32 %8, %27, !dbg !214
  call void @llvm.dbg.value(metadata i32 %28, metadata !199, metadata !DIExpression()), !dbg !187
  %29 = shl i32 %0, 2, !dbg !215
  %30 = add i32 %29, 3, !dbg !216
  %31 = zext i32 %30 to i64, !dbg !217
  %32 = getelementptr inbounds i32, i32* %1, i64 %31, !dbg !217
  %33 = load i32, i32* %32, align 4, !dbg !217
  %34 = xor i32 %10, %33, !dbg !218
  call void @llvm.dbg.value(metadata i32 %34, metadata !202, metadata !DIExpression()), !dbg !187
  %35 = sub i32 %0, 1, !dbg !219
  call void @llvm.dbg.value(metadata i32 %35, metadata !221, metadata !DIExpression()), !dbg !187
  br label %36, !dbg !222

36:                                               ; preds = %158, %3
  %.04 = phi i32 [ %16, %3 ], [ %139, %158 ], !dbg !187
  %.03 = phi i32 [ %22, %3 ], [ %145, %158 ], !dbg !187
  %.02 = phi i32 [ %28, %3 ], [ %151, %158 ], !dbg !187
  %.01 = phi i32 [ %34, %3 ], [ %157, %158 ], !dbg !187
  %.0 = phi i32 [ %35, %3 ], [ %159, %158 ], !dbg !223
  call void @llvm.dbg.value(metadata i32 %.0, metadata !221, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %.01, metadata !202, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %.02, metadata !199, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %.03, metadata !196, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %.04, metadata !193, metadata !DIExpression()), !dbg !187
  %37 = icmp ugt i32 %.0, 0, !dbg !224
  br i1 %37, label %38, label %160, !dbg !226

38:                                               ; preds = %36
  %39 = lshr i32 %.04, 24, !dbg !227
  %40 = zext i32 %39 to i64, !dbg !227
  %41 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %40, !dbg !227
  %42 = load i32, i32* %41, align 4, !dbg !227
  %43 = lshr i32 %.01, 16, !dbg !229
  %44 = and i32 %43, 255, !dbg !229
  %45 = zext i32 %44 to i64, !dbg !229
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %45, !dbg !229
  %47 = load i32, i32* %46, align 4, !dbg !229
  %48 = call i32 @rotr(i32 %47, i32 8), !dbg !229
  %49 = xor i32 %42, %48, !dbg !230
  %50 = lshr i32 %.02, 8, !dbg !231
  %51 = and i32 %50, 255, !dbg !231
  %52 = zext i32 %51 to i64, !dbg !231
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %52, !dbg !231
  %54 = load i32, i32* %53, align 4, !dbg !231
  %55 = call i32 @rotr(i32 %54, i32 16), !dbg !231
  %56 = xor i32 %49, %55, !dbg !232
  %57 = and i32 %.03, 255, !dbg !233
  %58 = zext i32 %57 to i64, !dbg !233
  %59 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %58, !dbg !233
  %60 = load i32, i32* %59, align 4, !dbg !233
  %61 = call i32 @rotr(i32 %60, i32 24), !dbg !233
  %62 = xor i32 %56, %61, !dbg !234
  call void @llvm.dbg.value(metadata i32 %62, metadata !235, metadata !DIExpression()), !dbg !236
  %63 = lshr i32 %.03, 24, !dbg !237
  %64 = zext i32 %63 to i64, !dbg !237
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %64, !dbg !237
  %66 = load i32, i32* %65, align 4, !dbg !237
  %67 = lshr i32 %.04, 16, !dbg !238
  %68 = and i32 %67, 255, !dbg !238
  %69 = zext i32 %68 to i64, !dbg !238
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %69, !dbg !238
  %71 = load i32, i32* %70, align 4, !dbg !238
  %72 = call i32 @rotr(i32 %71, i32 8), !dbg !238
  %73 = xor i32 %66, %72, !dbg !239
  %74 = lshr i32 %.01, 8, !dbg !240
  %75 = and i32 %74, 255, !dbg !240
  %76 = zext i32 %75 to i64, !dbg !240
  %77 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %76, !dbg !240
  %78 = load i32, i32* %77, align 4, !dbg !240
  %79 = call i32 @rotr(i32 %78, i32 16), !dbg !240
  %80 = xor i32 %73, %79, !dbg !241
  %81 = and i32 %.02, 255, !dbg !242
  %82 = zext i32 %81 to i64, !dbg !242
  %83 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %82, !dbg !242
  %84 = load i32, i32* %83, align 4, !dbg !242
  %85 = call i32 @rotr(i32 %84, i32 24), !dbg !242
  %86 = xor i32 %80, %85, !dbg !243
  call void @llvm.dbg.value(metadata i32 %86, metadata !244, metadata !DIExpression()), !dbg !236
  %87 = lshr i32 %.02, 24, !dbg !245
  %88 = zext i32 %87 to i64, !dbg !245
  %89 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %88, !dbg !245
  %90 = load i32, i32* %89, align 4, !dbg !245
  %91 = lshr i32 %.03, 16, !dbg !246
  %92 = and i32 %91, 255, !dbg !246
  %93 = zext i32 %92 to i64, !dbg !246
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %93, !dbg !246
  %95 = load i32, i32* %94, align 4, !dbg !246
  %96 = call i32 @rotr(i32 %95, i32 8), !dbg !246
  %97 = xor i32 %90, %96, !dbg !247
  %98 = lshr i32 %.04, 8, !dbg !248
  %99 = and i32 %98, 255, !dbg !248
  %100 = zext i32 %99 to i64, !dbg !248
  %101 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %100, !dbg !248
  %102 = load i32, i32* %101, align 4, !dbg !248
  %103 = call i32 @rotr(i32 %102, i32 16), !dbg !248
  %104 = xor i32 %97, %103, !dbg !249
  %105 = and i32 %.01, 255, !dbg !250
  %106 = zext i32 %105 to i64, !dbg !250
  %107 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %106, !dbg !250
  %108 = load i32, i32* %107, align 4, !dbg !250
  %109 = call i32 @rotr(i32 %108, i32 24), !dbg !250
  %110 = xor i32 %104, %109, !dbg !251
  call void @llvm.dbg.value(metadata i32 %110, metadata !252, metadata !DIExpression()), !dbg !236
  %111 = lshr i32 %.01, 24, !dbg !253
  %112 = zext i32 %111 to i64, !dbg !253
  %113 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %112, !dbg !253
  %114 = load i32, i32* %113, align 4, !dbg !253
  %115 = lshr i32 %.02, 16, !dbg !254
  %116 = and i32 %115, 255, !dbg !254
  %117 = zext i32 %116 to i64, !dbg !254
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %117, !dbg !254
  %119 = load i32, i32* %118, align 4, !dbg !254
  %120 = call i32 @rotr(i32 %119, i32 8), !dbg !254
  %121 = xor i32 %114, %120, !dbg !255
  %122 = lshr i32 %.03, 8, !dbg !256
  %123 = and i32 %122, 255, !dbg !256
  %124 = zext i32 %123 to i64, !dbg !256
  %125 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %124, !dbg !256
  %126 = load i32, i32* %125, align 4, !dbg !256
  %127 = call i32 @rotr(i32 %126, i32 16), !dbg !256
  %128 = xor i32 %121, %127, !dbg !257
  %129 = and i32 %.04, 255, !dbg !258
  %130 = zext i32 %129 to i64, !dbg !258
  %131 = getelementptr inbounds [256 x i32], [256 x i32]* @iSsm0, i64 0, i64 %130, !dbg !258
  %132 = load i32, i32* %131, align 4, !dbg !258
  %133 = call i32 @rotr(i32 %132, i32 24), !dbg !258
  %134 = xor i32 %128, %133, !dbg !259
  call void @llvm.dbg.value(metadata i32 %134, metadata !260, metadata !DIExpression()), !dbg !236
  call void @llvm.dbg.value(metadata i32 %62, metadata !193, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %86, metadata !196, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %110, metadata !199, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.value(metadata i32 %134, metadata !202, metadata !DIExpression()), !dbg !187
  %135 = shl i32 %.0, 2, !dbg !261
  %136 = zext i32 %135 to i64, !dbg !262
  %137 = getelementptr inbounds i32, i32* %1, i64 %136, !dbg !262
  %138 = load i32, i32* %137, align 4, !dbg !262
  %139 = xor i32 %62, %138, !dbg !263
  call void @llvm.dbg.value(metadata i32 %139, metadata !193, metadata !DIExpression()), !dbg !187
  %140 = shl i32 %.0, 2, !dbg !264
  %141 = add i32 %140, 1, !dbg !265
  %142 = zext i32 %141 to i64, !dbg !266
  %143 = getelementptr inbounds i32, i32* %1, i64 %142, !dbg !266
  %144 = load i32, i32* %143, align 4, !dbg !266
  %145 = xor i32 %86, %144, !dbg !267
  call void @llvm.dbg.value(metadata i32 %145, metadata !196, metadata !DIExpression()), !dbg !187
  %146 = shl i32 %.0, 2, !dbg !268
  %147 = add i32 %146, 2, !dbg !269
  %148 = zext i32 %147 to i64, !dbg !270
  %149 = getelementptr inbounds i32, i32* %1, i64 %148, !dbg !270
  %150 = load i32, i32* %149, align 4, !dbg !270
  %151 = xor i32 %110, %150, !dbg !271
  call void @llvm.dbg.value(metadata i32 %151, metadata !199, metadata !DIExpression()), !dbg !187
  %152 = shl i32 %.0, 2, !dbg !272
  %153 = add i32 %152, 3, !dbg !273
  %154 = zext i32 %153 to i64, !dbg !274
  %155 = getelementptr inbounds i32, i32* %1, i64 %154, !dbg !274
  %156 = load i32, i32* %155, align 4, !dbg !274
  %157 = xor i32 %134, %156, !dbg !275
  call void @llvm.dbg.value(metadata i32 %157, metadata !202, metadata !DIExpression()), !dbg !187
  br label %158, !dbg !276

158:                                              ; preds = %38
  %159 = add i32 %.0, -1, !dbg !277
  call void @llvm.dbg.value(metadata i32 %159, metadata !221, metadata !DIExpression()), !dbg !187
  br label %36, !dbg !278, !llvm.loop !279

160:                                              ; preds = %36
  %161 = lshr i32 %.04, 24, !dbg !281
  %162 = zext i32 %161 to i64, !dbg !282
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %162, !dbg !282
  %164 = load i8, i8* %163, align 1, !dbg !282
  %165 = zext i8 %164 to i32, !dbg !283
  %166 = shl i32 %165, 24, !dbg !284
  %167 = lshr i32 %.01, 16, !dbg !285
  %168 = and i32 %167, 255, !dbg !286
  %169 = zext i32 %168 to i64, !dbg !287
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %169, !dbg !287
  %171 = load i8, i8* %170, align 1, !dbg !287
  %172 = zext i8 %171 to i32, !dbg !288
  %173 = shl i32 %172, 16, !dbg !289
  %174 = or i32 %166, %173, !dbg !290
  %175 = lshr i32 %.02, 8, !dbg !291
  %176 = and i32 %175, 255, !dbg !292
  %177 = zext i32 %176 to i64, !dbg !293
  %178 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %177, !dbg !293
  %179 = load i8, i8* %178, align 1, !dbg !293
  %180 = zext i8 %179 to i32, !dbg !294
  %181 = shl i32 %180, 8, !dbg !295
  %182 = or i32 %174, %181, !dbg !296
  %183 = and i32 %.03, 255, !dbg !297
  %184 = zext i32 %183 to i64, !dbg !298
  %185 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %184, !dbg !298
  %186 = load i8, i8* %185, align 1, !dbg !298
  %187 = zext i8 %186 to i32, !dbg !299
  %188 = or i32 %182, %187, !dbg !300
  call void @llvm.dbg.value(metadata i32 %188, metadata !301, metadata !DIExpression()), !dbg !187
  %189 = lshr i32 %.03, 24, !dbg !302
  %190 = zext i32 %189 to i64, !dbg !303
  %191 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %190, !dbg !303
  %192 = load i8, i8* %191, align 1, !dbg !303
  %193 = zext i8 %192 to i32, !dbg !304
  %194 = shl i32 %193, 24, !dbg !305
  %195 = lshr i32 %.04, 16, !dbg !306
  %196 = and i32 %195, 255, !dbg !307
  %197 = zext i32 %196 to i64, !dbg !308
  %198 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %197, !dbg !308
  %199 = load i8, i8* %198, align 1, !dbg !308
  %200 = zext i8 %199 to i32, !dbg !309
  %201 = shl i32 %200, 16, !dbg !310
  %202 = or i32 %194, %201, !dbg !311
  %203 = lshr i32 %.01, 8, !dbg !312
  %204 = and i32 %203, 255, !dbg !313
  %205 = zext i32 %204 to i64, !dbg !314
  %206 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %205, !dbg !314
  %207 = load i8, i8* %206, align 1, !dbg !314
  %208 = zext i8 %207 to i32, !dbg !315
  %209 = shl i32 %208, 8, !dbg !316
  %210 = or i32 %202, %209, !dbg !317
  %211 = and i32 %.02, 255, !dbg !318
  %212 = zext i32 %211 to i64, !dbg !319
  %213 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %212, !dbg !319
  %214 = load i8, i8* %213, align 1, !dbg !319
  %215 = zext i8 %214 to i32, !dbg !320
  %216 = or i32 %210, %215, !dbg !321
  call void @llvm.dbg.value(metadata i32 %216, metadata !322, metadata !DIExpression()), !dbg !187
  %217 = lshr i32 %.02, 24, !dbg !323
  %218 = zext i32 %217 to i64, !dbg !324
  %219 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %218, !dbg !324
  %220 = load i8, i8* %219, align 1, !dbg !324
  %221 = zext i8 %220 to i32, !dbg !325
  %222 = shl i32 %221, 24, !dbg !326
  %223 = lshr i32 %.03, 16, !dbg !327
  %224 = and i32 %223, 255, !dbg !328
  %225 = zext i32 %224 to i64, !dbg !329
  %226 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %225, !dbg !329
  %227 = load i8, i8* %226, align 1, !dbg !329
  %228 = zext i8 %227 to i32, !dbg !330
  %229 = shl i32 %228, 16, !dbg !331
  %230 = or i32 %222, %229, !dbg !332
  %231 = lshr i32 %.04, 8, !dbg !333
  %232 = and i32 %231, 255, !dbg !334
  %233 = zext i32 %232 to i64, !dbg !335
  %234 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %233, !dbg !335
  %235 = load i8, i8* %234, align 1, !dbg !335
  %236 = zext i8 %235 to i32, !dbg !336
  %237 = shl i32 %236, 8, !dbg !337
  %238 = or i32 %230, %237, !dbg !338
  %239 = and i32 %.01, 255, !dbg !339
  %240 = zext i32 %239 to i64, !dbg !340
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %240, !dbg !340
  %242 = load i8, i8* %241, align 1, !dbg !340
  %243 = zext i8 %242 to i32, !dbg !341
  %244 = or i32 %238, %243, !dbg !342
  call void @llvm.dbg.value(metadata i32 %244, metadata !343, metadata !DIExpression()), !dbg !187
  %245 = lshr i32 %.01, 24, !dbg !344
  %246 = zext i32 %245 to i64, !dbg !345
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %246, !dbg !345
  %248 = load i8, i8* %247, align 1, !dbg !345
  %249 = zext i8 %248 to i32, !dbg !346
  %250 = shl i32 %249, 24, !dbg !347
  %251 = lshr i32 %.02, 16, !dbg !348
  %252 = and i32 %251, 255, !dbg !349
  %253 = zext i32 %252 to i64, !dbg !350
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %253, !dbg !350
  %255 = load i8, i8* %254, align 1, !dbg !350
  %256 = zext i8 %255 to i32, !dbg !351
  %257 = shl i32 %256, 16, !dbg !352
  %258 = or i32 %250, %257, !dbg !353
  %259 = lshr i32 %.03, 8, !dbg !354
  %260 = and i32 %259, 255, !dbg !355
  %261 = zext i32 %260 to i64, !dbg !356
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %261, !dbg !356
  %263 = load i8, i8* %262, align 1, !dbg !356
  %264 = zext i8 %263 to i32, !dbg !357
  %265 = shl i32 %264, 8, !dbg !358
  %266 = or i32 %258, %265, !dbg !359
  %267 = and i32 %.04, 255, !dbg !360
  %268 = zext i32 %267 to i64, !dbg !361
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* @iS, i64 0, i64 %268, !dbg !361
  %270 = load i8, i8* %269, align 1, !dbg !361
  %271 = zext i8 %270 to i32, !dbg !362
  %272 = or i32 %266, %271, !dbg !363
  call void @llvm.dbg.value(metadata i32 %272, metadata !364, metadata !DIExpression()), !dbg !187
  %273 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !365
  %274 = load i32, i32* %273, align 4, !dbg !365
  %275 = xor i32 %188, %274, !dbg !366
  call void @llvm.dbg.value(metadata i32 %275, metadata !193, metadata !DIExpression()), !dbg !187
  %276 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !367
  %277 = load i32, i32* %276, align 4, !dbg !367
  %278 = xor i32 %216, %277, !dbg !368
  call void @llvm.dbg.value(metadata i32 %278, metadata !196, metadata !DIExpression()), !dbg !187
  %279 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !369
  %280 = load i32, i32* %279, align 4, !dbg !369
  %281 = xor i32 %244, %280, !dbg !370
  call void @llvm.dbg.value(metadata i32 %281, metadata !199, metadata !DIExpression()), !dbg !187
  %282 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !371
  %283 = load i32, i32* %282, align 4, !dbg !371
  %284 = xor i32 %272, %283, !dbg !372
  call void @llvm.dbg.value(metadata i32 %284, metadata !202, metadata !DIExpression()), !dbg !187
  call void @br_enc32be(i8* %2, i32 %275), !dbg !373
  %285 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !374
  call void @br_enc32be(i8* %285, i32 %278), !dbg !375
  %286 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !376
  call void @br_enc32be(i8* %286, i32 %281), !dbg !377
  %287 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !378
  call void @br_enc32be(i8* %287, i32 %284), !dbg !379
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be(i8* %0) #0 !dbg !381 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !385, metadata !DIExpression()), !dbg !386
  call void @llvm.dbg.value(metadata i8* %0, metadata !387, metadata !DIExpression()), !dbg !386
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !388
  %3 = load i8, i8* %2, align 1, !dbg !388
  %4 = zext i8 %3 to i32, !dbg !389
  %5 = shl i32 %4, 24, !dbg !390
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !391
  %7 = load i8, i8* %6, align 1, !dbg !391
  %8 = zext i8 %7 to i32, !dbg !392
  %9 = shl i32 %8, 16, !dbg !393
  %10 = or i32 %5, %9, !dbg !394
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !395
  %12 = load i8, i8* %11, align 1, !dbg !395
  %13 = zext i8 %12 to i32, !dbg !396
  %14 = shl i32 %13, 8, !dbg !397
  %15 = or i32 %10, %14, !dbg !398
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !399
  %17 = load i8, i8* %16, align 1, !dbg !399
  %18 = zext i8 %17 to i32, !dbg !400
  %19 = or i32 %15, %18, !dbg !401
  ret i32 %19, !dbg !402
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr(i32 %0, i32 %1) #0 !dbg !403 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !406, metadata !DIExpression()), !dbg !407
  call void @llvm.dbg.value(metadata i32 %1, metadata !408, metadata !DIExpression()), !dbg !407
  %3 = sub nsw i32 32, %1, !dbg !409
  %4 = shl i32 %0, %3, !dbg !410
  %5 = lshr i32 %0, %1, !dbg !411
  %6 = or i32 %4, %5, !dbg !412
  ret i32 %6, !dbg !413
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be(i8* %0, i32 %1) #0 !dbg !414 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !417, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i32 %1, metadata !419, metadata !DIExpression()), !dbg !418
  call void @llvm.dbg.value(metadata i8* %0, metadata !420, metadata !DIExpression()), !dbg !418
  %3 = lshr i32 %1, 24, !dbg !421
  %4 = trunc i32 %3 to i8, !dbg !422
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !423
  store i8 %4, i8* %5, align 1, !dbg !424
  %6 = lshr i32 %1, 16, !dbg !425
  %7 = trunc i32 %6 to i8, !dbg !426
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !427
  store i8 %7, i8* %8, align 1, !dbg !428
  %9 = lshr i32 %1, 8, !dbg !429
  %10 = trunc i32 %9 to i8, !dbg !430
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !431
  store i8 %10, i8* %11, align 1, !dbg !432
  %12 = trunc i32 %1 to i8, !dbg !433
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !434
  store i8 %12, i8* %13, align 1, !dbg !435
  ret void, !dbg !436
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @br_aes_big_encrypt(i32 %0, i32* %1, i8* %2) #0 !dbg !437 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32* %1, metadata !440, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i8* %2, metadata !441, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i8* %2, metadata !442, metadata !DIExpression()), !dbg !439
  %4 = call i32 @br_dec32be.1(i8* %2), !dbg !443
  call void @llvm.dbg.value(metadata i32 %4, metadata !444, metadata !DIExpression()), !dbg !439
  %5 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !445
  %6 = call i32 @br_dec32be.1(i8* %5), !dbg !446
  call void @llvm.dbg.value(metadata i32 %6, metadata !447, metadata !DIExpression()), !dbg !439
  %7 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !448
  %8 = call i32 @br_dec32be.1(i8* %7), !dbg !449
  call void @llvm.dbg.value(metadata i32 %8, metadata !450, metadata !DIExpression()), !dbg !439
  %9 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !451
  %10 = call i32 @br_dec32be.1(i8* %9), !dbg !452
  call void @llvm.dbg.value(metadata i32 %10, metadata !453, metadata !DIExpression()), !dbg !439
  %11 = getelementptr inbounds i32, i32* %1, i64 0, !dbg !454
  %12 = load i32, i32* %11, align 4, !dbg !454
  %13 = xor i32 %4, %12, !dbg !455
  call void @llvm.dbg.value(metadata i32 %13, metadata !444, metadata !DIExpression()), !dbg !439
  %14 = getelementptr inbounds i32, i32* %1, i64 1, !dbg !456
  %15 = load i32, i32* %14, align 4, !dbg !456
  %16 = xor i32 %6, %15, !dbg !457
  call void @llvm.dbg.value(metadata i32 %16, metadata !447, metadata !DIExpression()), !dbg !439
  %17 = getelementptr inbounds i32, i32* %1, i64 2, !dbg !458
  %18 = load i32, i32* %17, align 4, !dbg !458
  %19 = xor i32 %8, %18, !dbg !459
  call void @llvm.dbg.value(metadata i32 %19, metadata !450, metadata !DIExpression()), !dbg !439
  %20 = getelementptr inbounds i32, i32* %1, i64 3, !dbg !460
  %21 = load i32, i32* %20, align 4, !dbg !460
  %22 = xor i32 %10, %21, !dbg !461
  call void @llvm.dbg.value(metadata i32 %22, metadata !453, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 1, metadata !462, metadata !DIExpression()), !dbg !439
  br label %23, !dbg !463

23:                                               ; preds = %145, %3
  %.04 = phi i32 [ %13, %3 ], [ %126, %145 ], !dbg !439
  %.03 = phi i32 [ %16, %3 ], [ %132, %145 ], !dbg !439
  %.02 = phi i32 [ %19, %3 ], [ %138, %145 ], !dbg !439
  %.01 = phi i32 [ %22, %3 ], [ %144, %145 ], !dbg !439
  %.0 = phi i32 [ 1, %3 ], [ %146, %145 ], !dbg !465
  call void @llvm.dbg.value(metadata i32 %.0, metadata !462, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %.01, metadata !453, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %.02, metadata !450, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %.03, metadata !447, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %.04, metadata !444, metadata !DIExpression()), !dbg !439
  %24 = icmp ult i32 %.0, %0, !dbg !466
  br i1 %24, label %25, label %147, !dbg !468

25:                                               ; preds = %23
  %26 = lshr i32 %.04, 24, !dbg !469
  %27 = zext i32 %26 to i64, !dbg !469
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %27, !dbg !469
  %29 = load i32, i32* %28, align 4, !dbg !469
  %30 = lshr i32 %.03, 16, !dbg !471
  %31 = and i32 %30, 255, !dbg !471
  %32 = zext i32 %31 to i64, !dbg !471
  %33 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %32, !dbg !471
  %34 = load i32, i32* %33, align 4, !dbg !471
  %35 = call i32 @rotr.2(i32 %34, i32 8), !dbg !471
  %36 = xor i32 %29, %35, !dbg !472
  %37 = lshr i32 %.02, 8, !dbg !473
  %38 = and i32 %37, 255, !dbg !473
  %39 = zext i32 %38 to i64, !dbg !473
  %40 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %39, !dbg !473
  %41 = load i32, i32* %40, align 4, !dbg !473
  %42 = call i32 @rotr.2(i32 %41, i32 16), !dbg !473
  %43 = xor i32 %36, %42, !dbg !474
  %44 = and i32 %.01, 255, !dbg !475
  %45 = zext i32 %44 to i64, !dbg !475
  %46 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %45, !dbg !475
  %47 = load i32, i32* %46, align 4, !dbg !475
  %48 = call i32 @rotr.2(i32 %47, i32 24), !dbg !475
  %49 = xor i32 %43, %48, !dbg !476
  call void @llvm.dbg.value(metadata i32 %49, metadata !477, metadata !DIExpression()), !dbg !478
  %50 = lshr i32 %.03, 24, !dbg !479
  %51 = zext i32 %50 to i64, !dbg !479
  %52 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %51, !dbg !479
  %53 = load i32, i32* %52, align 4, !dbg !479
  %54 = lshr i32 %.02, 16, !dbg !480
  %55 = and i32 %54, 255, !dbg !480
  %56 = zext i32 %55 to i64, !dbg !480
  %57 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %56, !dbg !480
  %58 = load i32, i32* %57, align 4, !dbg !480
  %59 = call i32 @rotr.2(i32 %58, i32 8), !dbg !480
  %60 = xor i32 %53, %59, !dbg !481
  %61 = lshr i32 %.01, 8, !dbg !482
  %62 = and i32 %61, 255, !dbg !482
  %63 = zext i32 %62 to i64, !dbg !482
  %64 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %63, !dbg !482
  %65 = load i32, i32* %64, align 4, !dbg !482
  %66 = call i32 @rotr.2(i32 %65, i32 16), !dbg !482
  %67 = xor i32 %60, %66, !dbg !483
  %68 = and i32 %.04, 255, !dbg !484
  %69 = zext i32 %68 to i64, !dbg !484
  %70 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %69, !dbg !484
  %71 = load i32, i32* %70, align 4, !dbg !484
  %72 = call i32 @rotr.2(i32 %71, i32 24), !dbg !484
  %73 = xor i32 %67, %72, !dbg !485
  call void @llvm.dbg.value(metadata i32 %73, metadata !486, metadata !DIExpression()), !dbg !478
  %74 = lshr i32 %.02, 24, !dbg !487
  %75 = zext i32 %74 to i64, !dbg !487
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %75, !dbg !487
  %77 = load i32, i32* %76, align 4, !dbg !487
  %78 = lshr i32 %.01, 16, !dbg !488
  %79 = and i32 %78, 255, !dbg !488
  %80 = zext i32 %79 to i64, !dbg !488
  %81 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %80, !dbg !488
  %82 = load i32, i32* %81, align 4, !dbg !488
  %83 = call i32 @rotr.2(i32 %82, i32 8), !dbg !488
  %84 = xor i32 %77, %83, !dbg !489
  %85 = lshr i32 %.04, 8, !dbg !490
  %86 = and i32 %85, 255, !dbg !490
  %87 = zext i32 %86 to i64, !dbg !490
  %88 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %87, !dbg !490
  %89 = load i32, i32* %88, align 4, !dbg !490
  %90 = call i32 @rotr.2(i32 %89, i32 16), !dbg !490
  %91 = xor i32 %84, %90, !dbg !491
  %92 = and i32 %.03, 255, !dbg !492
  %93 = zext i32 %92 to i64, !dbg !492
  %94 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %93, !dbg !492
  %95 = load i32, i32* %94, align 4, !dbg !492
  %96 = call i32 @rotr.2(i32 %95, i32 24), !dbg !492
  %97 = xor i32 %91, %96, !dbg !493
  call void @llvm.dbg.value(metadata i32 %97, metadata !494, metadata !DIExpression()), !dbg !478
  %98 = lshr i32 %.01, 24, !dbg !495
  %99 = zext i32 %98 to i64, !dbg !495
  %100 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %99, !dbg !495
  %101 = load i32, i32* %100, align 4, !dbg !495
  %102 = lshr i32 %.04, 16, !dbg !496
  %103 = and i32 %102, 255, !dbg !496
  %104 = zext i32 %103 to i64, !dbg !496
  %105 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %104, !dbg !496
  %106 = load i32, i32* %105, align 4, !dbg !496
  %107 = call i32 @rotr.2(i32 %106, i32 8), !dbg !496
  %108 = xor i32 %101, %107, !dbg !497
  %109 = lshr i32 %.03, 8, !dbg !498
  %110 = and i32 %109, 255, !dbg !498
  %111 = zext i32 %110 to i64, !dbg !498
  %112 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %111, !dbg !498
  %113 = load i32, i32* %112, align 4, !dbg !498
  %114 = call i32 @rotr.2(i32 %113, i32 16), !dbg !498
  %115 = xor i32 %108, %114, !dbg !499
  %116 = and i32 %.02, 255, !dbg !500
  %117 = zext i32 %116 to i64, !dbg !500
  %118 = getelementptr inbounds [256 x i32], [256 x i32]* @Ssm0, i64 0, i64 %117, !dbg !500
  %119 = load i32, i32* %118, align 4, !dbg !500
  %120 = call i32 @rotr.2(i32 %119, i32 24), !dbg !500
  %121 = xor i32 %115, %120, !dbg !501
  call void @llvm.dbg.value(metadata i32 %121, metadata !502, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata i32 %49, metadata !444, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %73, metadata !447, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %97, metadata !450, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.value(metadata i32 %121, metadata !453, metadata !DIExpression()), !dbg !439
  %122 = shl i32 %.0, 2, !dbg !503
  %123 = zext i32 %122 to i64, !dbg !504
  %124 = getelementptr inbounds i32, i32* %1, i64 %123, !dbg !504
  %125 = load i32, i32* %124, align 4, !dbg !504
  %126 = xor i32 %49, %125, !dbg !505
  call void @llvm.dbg.value(metadata i32 %126, metadata !444, metadata !DIExpression()), !dbg !439
  %127 = shl i32 %.0, 2, !dbg !506
  %128 = add i32 %127, 1, !dbg !507
  %129 = zext i32 %128 to i64, !dbg !508
  %130 = getelementptr inbounds i32, i32* %1, i64 %129, !dbg !508
  %131 = load i32, i32* %130, align 4, !dbg !508
  %132 = xor i32 %73, %131, !dbg !509
  call void @llvm.dbg.value(metadata i32 %132, metadata !447, metadata !DIExpression()), !dbg !439
  %133 = shl i32 %.0, 2, !dbg !510
  %134 = add i32 %133, 2, !dbg !511
  %135 = zext i32 %134 to i64, !dbg !512
  %136 = getelementptr inbounds i32, i32* %1, i64 %135, !dbg !512
  %137 = load i32, i32* %136, align 4, !dbg !512
  %138 = xor i32 %97, %137, !dbg !513
  call void @llvm.dbg.value(metadata i32 %138, metadata !450, metadata !DIExpression()), !dbg !439
  %139 = shl i32 %.0, 2, !dbg !514
  %140 = add i32 %139, 3, !dbg !515
  %141 = zext i32 %140 to i64, !dbg !516
  %142 = getelementptr inbounds i32, i32* %1, i64 %141, !dbg !516
  %143 = load i32, i32* %142, align 4, !dbg !516
  %144 = xor i32 %121, %143, !dbg !517
  call void @llvm.dbg.value(metadata i32 %144, metadata !453, metadata !DIExpression()), !dbg !439
  br label %145, !dbg !518

145:                                              ; preds = %25
  %146 = add i32 %.0, 1, !dbg !519
  call void @llvm.dbg.value(metadata i32 %146, metadata !462, metadata !DIExpression()), !dbg !439
  br label %23, !dbg !520, !llvm.loop !521

147:                                              ; preds = %23
  %148 = lshr i32 %.04, 24, !dbg !523
  %149 = zext i32 %148 to i64, !dbg !524
  %150 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %149, !dbg !524
  %151 = load i8, i8* %150, align 1, !dbg !524
  %152 = zext i8 %151 to i32, !dbg !525
  %153 = shl i32 %152, 24, !dbg !526
  %154 = lshr i32 %.03, 16, !dbg !527
  %155 = and i32 %154, 255, !dbg !528
  %156 = zext i32 %155 to i64, !dbg !529
  %157 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %156, !dbg !529
  %158 = load i8, i8* %157, align 1, !dbg !529
  %159 = zext i8 %158 to i32, !dbg !530
  %160 = shl i32 %159, 16, !dbg !531
  %161 = or i32 %153, %160, !dbg !532
  %162 = lshr i32 %.02, 8, !dbg !533
  %163 = and i32 %162, 255, !dbg !534
  %164 = zext i32 %163 to i64, !dbg !535
  %165 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %164, !dbg !535
  %166 = load i8, i8* %165, align 1, !dbg !535
  %167 = zext i8 %166 to i32, !dbg !536
  %168 = shl i32 %167, 8, !dbg !537
  %169 = or i32 %161, %168, !dbg !538
  %170 = and i32 %.01, 255, !dbg !539
  %171 = zext i32 %170 to i64, !dbg !540
  %172 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %171, !dbg !540
  %173 = load i8, i8* %172, align 1, !dbg !540
  %174 = zext i8 %173 to i32, !dbg !541
  %175 = or i32 %169, %174, !dbg !542
  call void @llvm.dbg.value(metadata i32 %175, metadata !543, metadata !DIExpression()), !dbg !439
  %176 = lshr i32 %.03, 24, !dbg !544
  %177 = zext i32 %176 to i64, !dbg !545
  %178 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %177, !dbg !545
  %179 = load i8, i8* %178, align 1, !dbg !545
  %180 = zext i8 %179 to i32, !dbg !546
  %181 = shl i32 %180, 24, !dbg !547
  %182 = lshr i32 %.02, 16, !dbg !548
  %183 = and i32 %182, 255, !dbg !549
  %184 = zext i32 %183 to i64, !dbg !550
  %185 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %184, !dbg !550
  %186 = load i8, i8* %185, align 1, !dbg !550
  %187 = zext i8 %186 to i32, !dbg !551
  %188 = shl i32 %187, 16, !dbg !552
  %189 = or i32 %181, %188, !dbg !553
  %190 = lshr i32 %.01, 8, !dbg !554
  %191 = and i32 %190, 255, !dbg !555
  %192 = zext i32 %191 to i64, !dbg !556
  %193 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %192, !dbg !556
  %194 = load i8, i8* %193, align 1, !dbg !556
  %195 = zext i8 %194 to i32, !dbg !557
  %196 = shl i32 %195, 8, !dbg !558
  %197 = or i32 %189, %196, !dbg !559
  %198 = and i32 %.04, 255, !dbg !560
  %199 = zext i32 %198 to i64, !dbg !561
  %200 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %199, !dbg !561
  %201 = load i8, i8* %200, align 1, !dbg !561
  %202 = zext i8 %201 to i32, !dbg !562
  %203 = or i32 %197, %202, !dbg !563
  call void @llvm.dbg.value(metadata i32 %203, metadata !564, metadata !DIExpression()), !dbg !439
  %204 = lshr i32 %.02, 24, !dbg !565
  %205 = zext i32 %204 to i64, !dbg !566
  %206 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %205, !dbg !566
  %207 = load i8, i8* %206, align 1, !dbg !566
  %208 = zext i8 %207 to i32, !dbg !567
  %209 = shl i32 %208, 24, !dbg !568
  %210 = lshr i32 %.01, 16, !dbg !569
  %211 = and i32 %210, 255, !dbg !570
  %212 = zext i32 %211 to i64, !dbg !571
  %213 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %212, !dbg !571
  %214 = load i8, i8* %213, align 1, !dbg !571
  %215 = zext i8 %214 to i32, !dbg !572
  %216 = shl i32 %215, 16, !dbg !573
  %217 = or i32 %209, %216, !dbg !574
  %218 = lshr i32 %.04, 8, !dbg !575
  %219 = and i32 %218, 255, !dbg !576
  %220 = zext i32 %219 to i64, !dbg !577
  %221 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %220, !dbg !577
  %222 = load i8, i8* %221, align 1, !dbg !577
  %223 = zext i8 %222 to i32, !dbg !578
  %224 = shl i32 %223, 8, !dbg !579
  %225 = or i32 %217, %224, !dbg !580
  %226 = and i32 %.03, 255, !dbg !581
  %227 = zext i32 %226 to i64, !dbg !582
  %228 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %227, !dbg !582
  %229 = load i8, i8* %228, align 1, !dbg !582
  %230 = zext i8 %229 to i32, !dbg !583
  %231 = or i32 %225, %230, !dbg !584
  call void @llvm.dbg.value(metadata i32 %231, metadata !585, metadata !DIExpression()), !dbg !439
  %232 = lshr i32 %.01, 24, !dbg !586
  %233 = zext i32 %232 to i64, !dbg !587
  %234 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %233, !dbg !587
  %235 = load i8, i8* %234, align 1, !dbg !587
  %236 = zext i8 %235 to i32, !dbg !588
  %237 = shl i32 %236, 24, !dbg !589
  %238 = lshr i32 %.04, 16, !dbg !590
  %239 = and i32 %238, 255, !dbg !591
  %240 = zext i32 %239 to i64, !dbg !592
  %241 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %240, !dbg !592
  %242 = load i8, i8* %241, align 1, !dbg !592
  %243 = zext i8 %242 to i32, !dbg !593
  %244 = shl i32 %243, 16, !dbg !594
  %245 = or i32 %237, %244, !dbg !595
  %246 = lshr i32 %.03, 8, !dbg !596
  %247 = and i32 %246, 255, !dbg !597
  %248 = zext i32 %247 to i64, !dbg !598
  %249 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %248, !dbg !598
  %250 = load i8, i8* %249, align 1, !dbg !598
  %251 = zext i8 %250 to i32, !dbg !599
  %252 = shl i32 %251, 8, !dbg !600
  %253 = or i32 %245, %252, !dbg !601
  %254 = and i32 %.02, 255, !dbg !602
  %255 = zext i32 %254 to i64, !dbg !603
  %256 = getelementptr inbounds [0 x i8], [0 x i8]* bitcast ([256 x i8]* @br_aes_S to [0 x i8]*), i64 0, i64 %255, !dbg !603
  %257 = load i8, i8* %256, align 1, !dbg !603
  %258 = zext i8 %257 to i32, !dbg !604
  %259 = or i32 %253, %258, !dbg !605
  call void @llvm.dbg.value(metadata i32 %259, metadata !606, metadata !DIExpression()), !dbg !439
  %260 = shl i32 %0, 2, !dbg !607
  %261 = zext i32 %260 to i64, !dbg !608
  %262 = getelementptr inbounds i32, i32* %1, i64 %261, !dbg !608
  %263 = load i32, i32* %262, align 4, !dbg !608
  %264 = xor i32 %175, %263, !dbg !609
  call void @llvm.dbg.value(metadata i32 %264, metadata !444, metadata !DIExpression()), !dbg !439
  %265 = shl i32 %0, 2, !dbg !610
  %266 = add i32 %265, 1, !dbg !611
  %267 = zext i32 %266 to i64, !dbg !612
  %268 = getelementptr inbounds i32, i32* %1, i64 %267, !dbg !612
  %269 = load i32, i32* %268, align 4, !dbg !612
  %270 = xor i32 %203, %269, !dbg !613
  call void @llvm.dbg.value(metadata i32 %270, metadata !447, metadata !DIExpression()), !dbg !439
  %271 = shl i32 %0, 2, !dbg !614
  %272 = add i32 %271, 2, !dbg !615
  %273 = zext i32 %272 to i64, !dbg !616
  %274 = getelementptr inbounds i32, i32* %1, i64 %273, !dbg !616
  %275 = load i32, i32* %274, align 4, !dbg !616
  %276 = xor i32 %231, %275, !dbg !617
  call void @llvm.dbg.value(metadata i32 %276, metadata !450, metadata !DIExpression()), !dbg !439
  %277 = shl i32 %0, 2, !dbg !618
  %278 = add i32 %277, 3, !dbg !619
  %279 = zext i32 %278 to i64, !dbg !620
  %280 = getelementptr inbounds i32, i32* %1, i64 %279, !dbg !620
  %281 = load i32, i32* %280, align 4, !dbg !620
  %282 = xor i32 %259, %281, !dbg !621
  call void @llvm.dbg.value(metadata i32 %282, metadata !453, metadata !DIExpression()), !dbg !439
  call void @br_enc32be.3(i8* %2, i32 %264), !dbg !622
  %283 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !623
  call void @br_enc32be.3(i8* %283, i32 %270), !dbg !624
  %284 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !625
  call void @br_enc32be.3(i8* %284, i32 %276), !dbg !626
  %285 = getelementptr inbounds i8, i8* %2, i64 12, !dbg !627
  call void @br_enc32be.3(i8* %285, i32 %282), !dbg !628
  ret void, !dbg !629
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.1(i8* %0) #0 !dbg !630 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.value(metadata i8* %0, metadata !633, metadata !DIExpression()), !dbg !632
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !634
  %3 = load i8, i8* %2, align 1, !dbg !634
  %4 = zext i8 %3 to i32, !dbg !635
  %5 = shl i32 %4, 24, !dbg !636
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !637
  %7 = load i8, i8* %6, align 1, !dbg !637
  %8 = zext i8 %7 to i32, !dbg !638
  %9 = shl i32 %8, 16, !dbg !639
  %10 = or i32 %5, %9, !dbg !640
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !641
  %12 = load i8, i8* %11, align 1, !dbg !641
  %13 = zext i8 %12 to i32, !dbg !642
  %14 = shl i32 %13, 8, !dbg !643
  %15 = or i32 %10, %14, !dbg !644
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !645
  %17 = load i8, i8* %16, align 1, !dbg !645
  %18 = zext i8 %17 to i32, !dbg !646
  %19 = or i32 %15, %18, !dbg !647
  ret i32 %19, !dbg !648
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @rotr.2(i32 %0, i32 %1) #0 !dbg !649 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.value(metadata i32 %1, metadata !652, metadata !DIExpression()), !dbg !651
  %3 = sub nsw i32 32, %1, !dbg !653
  %4 = shl i32 %0, %3, !dbg !654
  %5 = lshr i32 %0, %1, !dbg !655
  %6 = or i32 %4, %5, !dbg !656
  ret i32 %6, !dbg !657
}

; Function Attrs: noinline nounwind uwtable
define internal void @br_enc32be.3(i8* %0, i32 %1) #0 !dbg !658 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !659, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i32 %1, metadata !661, metadata !DIExpression()), !dbg !660
  call void @llvm.dbg.value(metadata i8* %0, metadata !662, metadata !DIExpression()), !dbg !660
  %3 = lshr i32 %1, 24, !dbg !663
  %4 = trunc i32 %3 to i8, !dbg !664
  %5 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !665
  store i8 %4, i8* %5, align 1, !dbg !666
  %6 = lshr i32 %1, 16, !dbg !667
  %7 = trunc i32 %6 to i8, !dbg !668
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !669
  store i8 %7, i8* %8, align 1, !dbg !670
  %9 = lshr i32 %1, 8, !dbg !671
  %10 = trunc i32 %9 to i8, !dbg !672
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !673
  store i8 %10, i8* %11, align 1, !dbg !674
  %12 = trunc i32 %1 to i8, !dbg !675
  %13 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !676
  store i8 %12, i8* %13, align 1, !dbg !677
  ret void, !dbg !678
}

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2) #0 !dbg !679 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !680, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i8* %1, metadata !682, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i64 %2, metadata !683, metadata !DIExpression()), !dbg !681
  switch i64 %2, label %7 [
    i64 16, label %4
    i64 24, label %5
    i64 32, label %6
  ], !dbg !684

4:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 10, metadata !685, metadata !DIExpression()), !dbg !681
  br label %8, !dbg !686

5:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 12, metadata !685, metadata !DIExpression()), !dbg !681
  br label %8, !dbg !688

6:                                                ; preds = %3
  call void @llvm.dbg.value(metadata i32 14, metadata !685, metadata !DIExpression()), !dbg !681
  br label %8, !dbg !689

7:                                                ; preds = %3
  br label %65, !dbg !690

8:                                                ; preds = %6, %5, %4
  %.06 = phi i32 [ 14, %6 ], [ 12, %5 ], [ 10, %4 ], !dbg !691
  call void @llvm.dbg.value(metadata i32 %.06, metadata !685, metadata !DIExpression()), !dbg !681
  %9 = lshr i64 %2, 2, !dbg !692
  %10 = trunc i64 %9 to i32, !dbg !693
  call void @llvm.dbg.value(metadata i32 %10, metadata !694, metadata !DIExpression()), !dbg !681
  %11 = add i32 %.06, 1, !dbg !695
  %12 = shl i32 %11, 2, !dbg !696
  call void @llvm.dbg.value(metadata i32 %12, metadata !697, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 0, metadata !698, metadata !DIExpression()), !dbg !681
  br label %13, !dbg !699

13:                                               ; preds = %22, %8
  %.07 = phi i32 [ 0, %8 ], [ %23, %22 ], !dbg !701
  call void @llvm.dbg.value(metadata i32 %.07, metadata !698, metadata !DIExpression()), !dbg !681
  %14 = icmp slt i32 %.07, %10, !dbg !702
  br i1 %14, label %15, label %24, !dbg !704

15:                                               ; preds = %13
  %16 = shl i32 %.07, 2, !dbg !705
  %17 = sext i32 %16 to i64, !dbg !707
  %18 = getelementptr inbounds i8, i8* %1, i64 %17, !dbg !707
  %19 = call i32 @br_dec32be.8(i8* %18), !dbg !708
  %20 = sext i32 %.07 to i64, !dbg !709
  %21 = getelementptr inbounds i32, i32* %0, i64 %20, !dbg !709
  store i32 %19, i32* %21, align 4, !dbg !710
  br label %22, !dbg !711

22:                                               ; preds = %15
  %23 = add nsw i32 %.07, 1, !dbg !712
  call void @llvm.dbg.value(metadata i32 %23, metadata !698, metadata !DIExpression()), !dbg !681
  br label %13, !dbg !713, !llvm.loop !714

24:                                               ; preds = %13
  call void @llvm.dbg.value(metadata i32 %10, metadata !698, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 0, metadata !717, metadata !DIExpression()), !dbg !681
  br label %25, !dbg !718

25:                                               ; preds = %62, %24
  %.18 = phi i32 [ %10, %24 ], [ %63, %62 ], !dbg !720
  %.04 = phi i32 [ 0, %24 ], [ %.15, %62 ], !dbg !720
  %.02 = phi i32 [ 0, %24 ], [ %.13, %62 ], !dbg !720
  call void @llvm.dbg.value(metadata i32 %.02, metadata !717, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %.04, metadata !716, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %.18, metadata !698, metadata !DIExpression()), !dbg !681
  %26 = icmp slt i32 %.18, %12, !dbg !721
  br i1 %26, label %27, label %64, !dbg !723

27:                                               ; preds = %25
  %28 = sub nsw i32 %.18, 1, !dbg !724
  %29 = sext i32 %28 to i64, !dbg !726
  %30 = getelementptr inbounds i32, i32* %0, i64 %29, !dbg !726
  %31 = load i32, i32* %30, align 4, !dbg !726
  call void @llvm.dbg.value(metadata i32 %31, metadata !727, metadata !DIExpression()), !dbg !728
  %32 = icmp eq i32 %.04, 0, !dbg !729
  br i1 %32, label %33, label %42, !dbg !731

33:                                               ; preds = %27
  %34 = shl i32 %31, 8, !dbg !732
  %35 = lshr i32 %31, 24, !dbg !734
  %36 = or i32 %34, %35, !dbg !735
  call void @llvm.dbg.value(metadata i32 %36, metadata !727, metadata !DIExpression()), !dbg !728
  %37 = call i32 @SubWord(i32 %36), !dbg !736
  %38 = sext i32 %.02 to i64, !dbg !737
  %39 = getelementptr inbounds [10 x i32], [10 x i32]* @Rcon, i64 0, i64 %38, !dbg !737
  %40 = load i32, i32* %39, align 4, !dbg !737
  %41 = xor i32 %37, %40, !dbg !738
  call void @llvm.dbg.value(metadata i32 %41, metadata !727, metadata !DIExpression()), !dbg !728
  br label %49, !dbg !739

42:                                               ; preds = %27
  %43 = icmp sgt i32 %10, 6, !dbg !740
  br i1 %43, label %44, label %48, !dbg !742

44:                                               ; preds = %42
  %45 = icmp eq i32 %.04, 4, !dbg !743
  br i1 %45, label %46, label %48, !dbg !744

46:                                               ; preds = %44
  %47 = call i32 @SubWord(i32 %31), !dbg !745
  call void @llvm.dbg.value(metadata i32 %47, metadata !727, metadata !DIExpression()), !dbg !728
  br label %48, !dbg !747

48:                                               ; preds = %46, %44, %42
  %.01 = phi i32 [ %47, %46 ], [ %31, %44 ], [ %31, %42 ], !dbg !728
  call void @llvm.dbg.value(metadata i32 %.01, metadata !727, metadata !DIExpression()), !dbg !728
  br label %49

49:                                               ; preds = %48, %33
  %.1 = phi i32 [ %41, %33 ], [ %.01, %48 ], !dbg !748
  call void @llvm.dbg.value(metadata i32 %.1, metadata !727, metadata !DIExpression()), !dbg !728
  %50 = sub nsw i32 %.18, %10, !dbg !749
  %51 = sext i32 %50 to i64, !dbg !750
  %52 = getelementptr inbounds i32, i32* %0, i64 %51, !dbg !750
  %53 = load i32, i32* %52, align 4, !dbg !750
  %54 = xor i32 %53, %.1, !dbg !751
  %55 = sext i32 %.18 to i64, !dbg !752
  %56 = getelementptr inbounds i32, i32* %0, i64 %55, !dbg !752
  store i32 %54, i32* %56, align 4, !dbg !753
  %57 = add nsw i32 %.04, 1, !dbg !754
  call void @llvm.dbg.value(metadata i32 %57, metadata !716, metadata !DIExpression()), !dbg !681
  %58 = icmp eq i32 %57, %10, !dbg !756
  br i1 %58, label %59, label %61, !dbg !757

59:                                               ; preds = %49
  call void @llvm.dbg.value(metadata i32 0, metadata !716, metadata !DIExpression()), !dbg !681
  %60 = add nsw i32 %.02, 1, !dbg !758
  call void @llvm.dbg.value(metadata i32 %60, metadata !717, metadata !DIExpression()), !dbg !681
  br label %61, !dbg !760

61:                                               ; preds = %59, %49
  %.15 = phi i32 [ 0, %59 ], [ %57, %49 ], !dbg !761
  %.13 = phi i32 [ %60, %59 ], [ %.02, %49 ], !dbg !720
  call void @llvm.dbg.value(metadata i32 %.13, metadata !717, metadata !DIExpression()), !dbg !681
  call void @llvm.dbg.value(metadata i32 %.15, metadata !716, metadata !DIExpression()), !dbg !681
  br label %62, !dbg !762

62:                                               ; preds = %61
  %63 = add nsw i32 %.18, 1, !dbg !763
  call void @llvm.dbg.value(metadata i32 %63, metadata !698, metadata !DIExpression()), !dbg !681
  br label %25, !dbg !764, !llvm.loop !765

64:                                               ; preds = %25
  br label %65, !dbg !767

65:                                               ; preds = %64, %7
  %.0 = phi i32 [ 0, %7 ], [ %.06, %64 ], !dbg !681
  ret i32 %.0, !dbg !768
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @br_dec32be.8(i8* %0) #0 !dbg !769 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !770, metadata !DIExpression()), !dbg !771
  call void @llvm.dbg.value(metadata i8* %0, metadata !772, metadata !DIExpression()), !dbg !771
  %2 = getelementptr inbounds i8, i8* %0, i64 0, !dbg !773
  %3 = load i8, i8* %2, align 1, !dbg !773
  %4 = zext i8 %3 to i32, !dbg !774
  %5 = shl i32 %4, 24, !dbg !775
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !776
  %7 = load i8, i8* %6, align 1, !dbg !776
  %8 = zext i8 %7 to i32, !dbg !777
  %9 = shl i32 %8, 16, !dbg !778
  %10 = or i32 %5, %9, !dbg !779
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !780
  %12 = load i8, i8* %11, align 1, !dbg !780
  %13 = zext i8 %12 to i32, !dbg !781
  %14 = shl i32 %13, 8, !dbg !782
  %15 = or i32 %10, %14, !dbg !783
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !784
  %17 = load i8, i8* %16, align 1, !dbg !784
  %18 = zext i8 %17 to i32, !dbg !785
  %19 = or i32 %15, %18, !dbg !786
  ret i32 %19, !dbg !787
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @SubWord(i32 %0) #0 !dbg !788 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !791, metadata !DIExpression()), !dbg !792
  %2 = lshr i32 %0, 24, !dbg !793
  %3 = zext i32 %2 to i64, !dbg !794
  %4 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %3, !dbg !794
  %5 = load i8, i8* %4, align 1, !dbg !794
  %6 = zext i8 %5 to i32, !dbg !795
  %7 = shl i32 %6, 24, !dbg !796
  %8 = lshr i32 %0, 16, !dbg !797
  %9 = and i32 %8, 255, !dbg !798
  %10 = zext i32 %9 to i64, !dbg !799
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %10, !dbg !799
  %12 = load i8, i8* %11, align 1, !dbg !799
  %13 = zext i8 %12 to i32, !dbg !800
  %14 = shl i32 %13, 16, !dbg !801
  %15 = or i32 %7, %14, !dbg !802
  %16 = lshr i32 %0, 8, !dbg !803
  %17 = and i32 %16, 255, !dbg !804
  %18 = zext i32 %17 to i64, !dbg !805
  %19 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %18, !dbg !805
  %20 = load i8, i8* %19, align 1, !dbg !805
  %21 = zext i8 %20 to i32, !dbg !806
  %22 = shl i32 %21, 8, !dbg !807
  %23 = or i32 %15, %22, !dbg !808
  %24 = and i32 %0, 255, !dbg !809
  %25 = zext i32 %24 to i64, !dbg !810
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* @br_aes_S, i64 0, i64 %25, !dbg !810
  %27 = load i8, i8* %26, align 1, !dbg !810
  %28 = zext i8 %27 to i32, !dbg !811
  %29 = or i32 %23, %28, !dbg !812
  ret i32 %29, !dbg !813
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_schedule_wrapper(i32* %0, i8* %1, i64 %2) #0 !dbg !814 {
  call void @llvm.dbg.value(metadata i32* %0, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i8* %1, metadata !819, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.value(metadata i64 %2, metadata !820, metadata !DIExpression()), !dbg !818
  %4 = call %struct.smack_value* (i32*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i32*, ...)*)(i32* %0), !dbg !821
  call void @public_in(%struct.smack_value* %4), !dbg !822
  %5 = call %struct.smack_value* (i8*, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i8*, ...)*)(i8* %1), !dbg !823
  call void @public_in(%struct.smack_value* %5), !dbg !824
  %6 = call %struct.smack_value* (i64, ...) bitcast (%struct.smack_value* (...)* @__SMACK_value to %struct.smack_value* (i64, ...)*)(i64 %2), !dbg !825
  call void @public_in(%struct.smack_value* %6), !dbg !826
  %7 = call i32 @br_aes_keysched(i32* %0, i8* %1, i64 %2), !dbg !827
  ret void, !dbg !828
}

declare dso_local %struct.smack_value* @__SMACK_value(...) #2

declare dso_local void @public_in(%struct.smack_value*) #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @key_schedule_wrapper_t() #0 !dbg !829 {
  %1 = call i8* (...) @getptv(), !dbg !832
  call void @llvm.dbg.value(metadata i8* %1, metadata !833, metadata !DIExpression()), !dbg !834
  %2 = call i32 (...) @getpt(), !dbg !835
  %3 = sext i32 %2 to i64, !dbg !835
  %4 = inttoptr i64 %3 to i32*, !dbg !835
  call void @llvm.dbg.value(metadata i32* %4, metadata !836, metadata !DIExpression()), !dbg !834
  %5 = call i64 (...) @getsize(), !dbg !837
  call void @llvm.dbg.value(metadata i64 %5, metadata !838, metadata !DIExpression()), !dbg !834
  %6 = call i32 @br_aes_keysched(i32* %4, i8* %1, i64 %5), !dbg !839
  ret void, !dbg !840
}

declare dso_local i8* @getptv(...) #2

declare dso_local i32 @getpt(...) #2

declare dso_local i64 @getsize(...) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind uwtable "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2, !24, !30, !40}
!llvm.ident = !{!42, !42, !42, !42}
!llvm.module.flags = !{!43, !44, !45}

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
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "Ssm0", scope: !24, file: !25, line: 29, type: !20, isLocal: true, isDefinition: true)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !26, globals: !27, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "../BearSSL/src/symcipher/aes_big_enc.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!26 = !{!7, !12}
!27 = !{!22}
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(name: "br_aes_S", scope: !30, file: !31, line: 35, type: !16, isLocal: false, isDefinition: true)
!30 = distinct !DICompileUnit(language: DW_LANG_C99, file: !31, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !34, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "../BearSSL/src/symcipher/aes_common.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!32 = !{!6, !33, !7}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!34 = !{!28, !35}
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "Rcon", scope: !30, file: !31, line: 27, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 320, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 10)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, splitDebugInlining: false, nameTableKind: None)
!41 = !DIFile(filename: "key_schedule.c", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!42 = !{!"Ubuntu clang version 12.0.1-++20211029101322+fed41342a82f-1~exp1~20211029221816.4"}
!43 = !{i32 7, !"Dwarf Version", i32 4}
!44 = !{i32 2, !"Debug Info Version", i32 3}
!45 = !{i32 1, !"wchar_size", i32 4}
!46 = distinct !DISubprogram(name: "br_aes_big_keysched_inv", scope: !3, file: !3, line: 144, type: !47, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!47 = !DISubroutineType(types: !48)
!48 = !{!11, !49, !50, !52}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !53, line: 46, baseType: !54)
!53 = !DIFile(filename: "/usr/lib/llvm-12/lib/clang/12.0.1/include/stddef.h", directory: "")
!54 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!55 = !DILocalVariable(name: "skey", arg: 1, scope: !46, file: !3, line: 144, type: !49)
!56 = !DILocation(line: 0, scope: !46)
!57 = !DILocalVariable(name: "key", arg: 2, scope: !46, file: !3, line: 144, type: !50)
!58 = !DILocalVariable(name: "key_len", arg: 3, scope: !46, file: !3, line: 144, type: !52)
!59 = !DILocation(line: 154, column: 15, scope: !46)
!60 = !DILocalVariable(name: "num_rounds", scope: !46, file: !3, line: 146, type: !11)
!61 = !DILocation(line: 155, column: 23, scope: !46)
!62 = !DILocalVariable(name: "m", scope: !46, file: !3, line: 147, type: !6)
!63 = !DILocalVariable(name: "i", scope: !46, file: !3, line: 147, type: !6)
!64 = !DILocation(line: 156, column: 7, scope: !65)
!65 = distinct !DILexicalBlock(scope: !46, file: !3, line: 156, column: 2)
!66 = !DILocation(line: 0, scope: !65)
!67 = !DILocation(line: 156, column: 16, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !3, line: 156, column: 2)
!69 = !DILocation(line: 156, column: 2, scope: !65)
!70 = !DILocation(line: 161, column: 7, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !3, line: 156, column: 27)
!72 = !DILocalVariable(name: "p", scope: !71, file: !3, line: 157, type: !7)
!73 = !DILocation(line: 0, scope: !71)
!74 = !DILocation(line: 162, column: 10, scope: !71)
!75 = !DILocalVariable(name: "p0", scope: !71, file: !3, line: 158, type: !11)
!76 = !DILocation(line: 163, column: 11, scope: !71)
!77 = !DILocation(line: 163, column: 18, scope: !71)
!78 = !DILocalVariable(name: "p1", scope: !71, file: !3, line: 158, type: !11)
!79 = !DILocation(line: 164, column: 11, scope: !71)
!80 = !DILocation(line: 164, column: 17, scope: !71)
!81 = !DILocalVariable(name: "p2", scope: !71, file: !3, line: 158, type: !11)
!82 = !DILocation(line: 165, column: 10, scope: !71)
!83 = !DILocalVariable(name: "p3", scope: !71, file: !3, line: 158, type: !11)
!84 = !DILocation(line: 166, column: 8, scope: !71)
!85 = !DILocation(line: 166, column: 19, scope: !71)
!86 = !DILocation(line: 166, column: 17, scope: !71)
!87 = !DILocation(line: 166, column: 30, scope: !71)
!88 = !DILocation(line: 166, column: 28, scope: !71)
!89 = !DILocation(line: 166, column: 41, scope: !71)
!90 = !DILocation(line: 166, column: 39, scope: !71)
!91 = !DILocalVariable(name: "q0", scope: !71, file: !3, line: 159, type: !7)
!92 = !DILocation(line: 167, column: 8, scope: !71)
!93 = !DILocation(line: 167, column: 19, scope: !71)
!94 = !DILocation(line: 167, column: 17, scope: !71)
!95 = !DILocation(line: 167, column: 30, scope: !71)
!96 = !DILocation(line: 167, column: 28, scope: !71)
!97 = !DILocation(line: 167, column: 41, scope: !71)
!98 = !DILocation(line: 167, column: 39, scope: !71)
!99 = !DILocalVariable(name: "q1", scope: !71, file: !3, line: 159, type: !7)
!100 = !DILocation(line: 168, column: 8, scope: !71)
!101 = !DILocation(line: 168, column: 19, scope: !71)
!102 = !DILocation(line: 168, column: 17, scope: !71)
!103 = !DILocation(line: 168, column: 30, scope: !71)
!104 = !DILocation(line: 168, column: 28, scope: !71)
!105 = !DILocation(line: 168, column: 41, scope: !71)
!106 = !DILocation(line: 168, column: 39, scope: !71)
!107 = !DILocalVariable(name: "q2", scope: !71, file: !3, line: 159, type: !7)
!108 = !DILocation(line: 169, column: 8, scope: !71)
!109 = !DILocation(line: 169, column: 19, scope: !71)
!110 = !DILocation(line: 169, column: 17, scope: !71)
!111 = !DILocation(line: 169, column: 30, scope: !71)
!112 = !DILocation(line: 169, column: 28, scope: !71)
!113 = !DILocation(line: 169, column: 41, scope: !71)
!114 = !DILocation(line: 169, column: 39, scope: !71)
!115 = !DILocalVariable(name: "q3", scope: !71, file: !3, line: 159, type: !7)
!116 = !DILocation(line: 170, column: 17, scope: !71)
!117 = !DILocation(line: 170, column: 30, scope: !71)
!118 = !DILocation(line: 170, column: 24, scope: !71)
!119 = !DILocation(line: 170, column: 43, scope: !71)
!120 = !DILocation(line: 170, column: 37, scope: !71)
!121 = !DILocation(line: 170, column: 49, scope: !71)
!122 = !DILocation(line: 170, column: 3, scope: !71)
!123 = !DILocation(line: 170, column: 11, scope: !71)
!124 = !DILocation(line: 171, column: 2, scope: !71)
!125 = !DILocation(line: 156, column: 23, scope: !68)
!126 = !DILocation(line: 156, column: 2, scope: !68)
!127 = distinct !{!127, !69, !128, !129}
!128 = !DILocation(line: 171, column: 2, scope: !65)
!129 = !{!"llvm.loop.mustprogress"}
!130 = !DILocation(line: 172, column: 2, scope: !46)
!131 = distinct !DISubprogram(name: "mule", scope: !3, file: !3, line: 133, type: !132, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!132 = !DISubroutineType(types: !133)
!133 = !{!11, !11}
!134 = !DILocalVariable(name: "x", arg: 1, scope: !131, file: !3, line: 133, type: !11)
!135 = !DILocation(line: 0, scope: !131)
!136 = !DILocation(line: 137, column: 7, scope: !131)
!137 = !DILocalVariable(name: "x2", scope: !131, file: !3, line: 135, type: !11)
!138 = !DILocation(line: 138, column: 7, scope: !131)
!139 = !DILocalVariable(name: "x4", scope: !131, file: !3, line: 135, type: !11)
!140 = !DILocation(line: 139, column: 12, scope: !131)
!141 = !DILocation(line: 139, column: 19, scope: !131)
!142 = !DILocation(line: 139, column: 17, scope: !131)
!143 = !DILocation(line: 139, column: 2, scope: !131)
!144 = distinct !DISubprogram(name: "mulb", scope: !3, file: !3, line: 115, type: !132, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!145 = !DILocalVariable(name: "x", arg: 1, scope: !144, file: !3, line: 115, type: !11)
!146 = !DILocation(line: 0, scope: !144)
!147 = !DILocation(line: 119, column: 7, scope: !144)
!148 = !DILocalVariable(name: "x2", scope: !144, file: !3, line: 117, type: !11)
!149 = !DILocation(line: 120, column: 11, scope: !144)
!150 = !DILocation(line: 120, column: 23, scope: !144)
!151 = !DILocation(line: 120, column: 18, scope: !144)
!152 = !DILocation(line: 120, column: 16, scope: !144)
!153 = !DILocation(line: 120, column: 2, scope: !144)
!154 = distinct !DISubprogram(name: "muld", scope: !3, file: !3, line: 124, type: !132, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!155 = !DILocalVariable(name: "x", arg: 1, scope: !154, file: !3, line: 124, type: !11)
!156 = !DILocation(line: 0, scope: !154)
!157 = !DILocation(line: 128, column: 12, scope: !154)
!158 = !DILocation(line: 128, column: 7, scope: !154)
!159 = !DILocalVariable(name: "x4", scope: !154, file: !3, line: 126, type: !11)
!160 = !DILocation(line: 129, column: 11, scope: !154)
!161 = !DILocation(line: 129, column: 18, scope: !154)
!162 = !DILocation(line: 129, column: 16, scope: !154)
!163 = !DILocation(line: 129, column: 2, scope: !154)
!164 = distinct !DISubprogram(name: "mul9", scope: !3, file: !3, line: 109, type: !132, scopeLine: 110, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!165 = !DILocalVariable(name: "x", arg: 1, scope: !164, file: !3, line: 109, type: !11)
!166 = !DILocation(line: 0, scope: !164)
!167 = !DILocation(line: 111, column: 23, scope: !164)
!168 = !DILocation(line: 111, column: 18, scope: !164)
!169 = !DILocation(line: 111, column: 13, scope: !164)
!170 = !DILocation(line: 111, column: 11, scope: !164)
!171 = !DILocation(line: 111, column: 2, scope: !164)
!172 = distinct !DISubprogram(name: "mul2", scope: !3, file: !3, line: 102, type: !132, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!173 = !DILocalVariable(name: "x", arg: 1, scope: !172, file: !3, line: 102, type: !11)
!174 = !DILocation(line: 0, scope: !172)
!175 = !DILocation(line: 104, column: 4, scope: !172)
!176 = !DILocation(line: 105, column: 34, scope: !172)
!177 = !DILocation(line: 105, column: 25, scope: !172)
!178 = !DILocation(line: 105, column: 41, scope: !172)
!179 = !DILocation(line: 105, column: 11, scope: !172)
!180 = !DILocation(line: 105, column: 2, scope: !172)
!181 = distinct !DISubprogram(name: "br_aes_big_decrypt", scope: !3, file: !3, line: 188, type: !182, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!182 = !DISubroutineType(types: !183)
!183 = !{null, !11, !184, !185}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!186 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !181, file: !3, line: 188, type: !11)
!187 = !DILocation(line: 0, scope: !181)
!188 = !DILocalVariable(name: "skey", arg: 2, scope: !181, file: !3, line: 188, type: !184)
!189 = !DILocalVariable(name: "data", arg: 3, scope: !181, file: !3, line: 188, type: !185)
!190 = !DILocalVariable(name: "buf", scope: !181, file: !3, line: 190, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!192 = !DILocation(line: 196, column: 7, scope: !181)
!193 = !DILocalVariable(name: "s0", scope: !181, file: !3, line: 191, type: !7)
!194 = !DILocation(line: 197, column: 22, scope: !181)
!195 = !DILocation(line: 197, column: 7, scope: !181)
!196 = !DILocalVariable(name: "s1", scope: !181, file: !3, line: 191, type: !7)
!197 = !DILocation(line: 198, column: 22, scope: !181)
!198 = !DILocation(line: 198, column: 7, scope: !181)
!199 = !DILocalVariable(name: "s2", scope: !181, file: !3, line: 191, type: !7)
!200 = !DILocation(line: 199, column: 22, scope: !181)
!201 = !DILocation(line: 199, column: 7, scope: !181)
!202 = !DILocalVariable(name: "s3", scope: !181, file: !3, line: 191, type: !7)
!203 = !DILocation(line: 200, column: 25, scope: !181)
!204 = !DILocation(line: 200, column: 31, scope: !181)
!205 = !DILocation(line: 200, column: 8, scope: !181)
!206 = !DILocation(line: 200, column: 5, scope: !181)
!207 = !DILocation(line: 201, column: 25, scope: !181)
!208 = !DILocation(line: 201, column: 31, scope: !181)
!209 = !DILocation(line: 201, column: 8, scope: !181)
!210 = !DILocation(line: 201, column: 5, scope: !181)
!211 = !DILocation(line: 202, column: 25, scope: !181)
!212 = !DILocation(line: 202, column: 31, scope: !181)
!213 = !DILocation(line: 202, column: 8, scope: !181)
!214 = !DILocation(line: 202, column: 5, scope: !181)
!215 = !DILocation(line: 203, column: 25, scope: !181)
!216 = !DILocation(line: 203, column: 31, scope: !181)
!217 = !DILocation(line: 203, column: 8, scope: !181)
!218 = !DILocation(line: 203, column: 5, scope: !181)
!219 = !DILocation(line: 204, column: 22, scope: !220)
!220 = distinct !DILexicalBlock(scope: !181, file: !3, line: 204, column: 2)
!221 = !DILocalVariable(name: "u", scope: !181, file: !3, line: 193, type: !11)
!222 = !DILocation(line: 204, column: 7, scope: !220)
!223 = !DILocation(line: 0, scope: !220)
!224 = !DILocation(line: 204, column: 29, scope: !225)
!225 = distinct !DILexicalBlock(scope: !220, file: !3, line: 204, column: 2)
!226 = !DILocation(line: 204, column: 2, scope: !220)
!227 = !DILocation(line: 205, column: 17, scope: !228)
!228 = distinct !DILexicalBlock(scope: !225, file: !3, line: 204, column: 40)
!229 = !DILocation(line: 206, column: 6, scope: !228)
!230 = !DILocation(line: 206, column: 4, scope: !228)
!231 = !DILocation(line: 207, column: 6, scope: !228)
!232 = !DILocation(line: 207, column: 4, scope: !228)
!233 = !DILocation(line: 208, column: 6, scope: !228)
!234 = !DILocation(line: 208, column: 4, scope: !228)
!235 = !DILocalVariable(name: "v0", scope: !228, file: !3, line: 205, type: !7)
!236 = !DILocation(line: 0, scope: !228)
!237 = !DILocation(line: 209, column: 17, scope: !228)
!238 = !DILocation(line: 210, column: 6, scope: !228)
!239 = !DILocation(line: 210, column: 4, scope: !228)
!240 = !DILocation(line: 211, column: 6, scope: !228)
!241 = !DILocation(line: 211, column: 4, scope: !228)
!242 = !DILocation(line: 212, column: 6, scope: !228)
!243 = !DILocation(line: 212, column: 4, scope: !228)
!244 = !DILocalVariable(name: "v1", scope: !228, file: !3, line: 209, type: !7)
!245 = !DILocation(line: 213, column: 17, scope: !228)
!246 = !DILocation(line: 214, column: 6, scope: !228)
!247 = !DILocation(line: 214, column: 4, scope: !228)
!248 = !DILocation(line: 215, column: 6, scope: !228)
!249 = !DILocation(line: 215, column: 4, scope: !228)
!250 = !DILocation(line: 216, column: 6, scope: !228)
!251 = !DILocation(line: 216, column: 4, scope: !228)
!252 = !DILocalVariable(name: "v2", scope: !228, file: !3, line: 213, type: !7)
!253 = !DILocation(line: 217, column: 17, scope: !228)
!254 = !DILocation(line: 218, column: 6, scope: !228)
!255 = !DILocation(line: 218, column: 4, scope: !228)
!256 = !DILocation(line: 219, column: 6, scope: !228)
!257 = !DILocation(line: 219, column: 4, scope: !228)
!258 = !DILocation(line: 220, column: 6, scope: !228)
!259 = !DILocation(line: 220, column: 4, scope: !228)
!260 = !DILocalVariable(name: "v3", scope: !228, file: !3, line: 217, type: !7)
!261 = !DILocation(line: 225, column: 16, scope: !228)
!262 = !DILocation(line: 225, column: 9, scope: !228)
!263 = !DILocation(line: 225, column: 6, scope: !228)
!264 = !DILocation(line: 226, column: 17, scope: !228)
!265 = !DILocation(line: 226, column: 23, scope: !228)
!266 = !DILocation(line: 226, column: 9, scope: !228)
!267 = !DILocation(line: 226, column: 6, scope: !228)
!268 = !DILocation(line: 227, column: 17, scope: !228)
!269 = !DILocation(line: 227, column: 23, scope: !228)
!270 = !DILocation(line: 227, column: 9, scope: !228)
!271 = !DILocation(line: 227, column: 6, scope: !228)
!272 = !DILocation(line: 228, column: 17, scope: !228)
!273 = !DILocation(line: 228, column: 23, scope: !228)
!274 = !DILocation(line: 228, column: 9, scope: !228)
!275 = !DILocation(line: 228, column: 6, scope: !228)
!276 = !DILocation(line: 229, column: 2, scope: !228)
!277 = !DILocation(line: 204, column: 36, scope: !225)
!278 = !DILocation(line: 204, column: 2, scope: !225)
!279 = distinct !{!279, !226, !280, !129}
!280 = !DILocation(line: 229, column: 2, scope: !220)
!281 = !DILocation(line: 230, column: 24, scope: !181)
!282 = !DILocation(line: 230, column: 18, scope: !181)
!283 = !DILocation(line: 230, column: 8, scope: !181)
!284 = !DILocation(line: 230, column: 31, scope: !181)
!285 = !DILocation(line: 231, column: 23, scope: !181)
!286 = !DILocation(line: 231, column: 30, scope: !181)
!287 = !DILocation(line: 231, column: 16, scope: !181)
!288 = !DILocation(line: 231, column: 6, scope: !181)
!289 = !DILocation(line: 231, column: 38, scope: !181)
!290 = !DILocation(line: 231, column: 3, scope: !181)
!291 = !DILocation(line: 232, column: 23, scope: !181)
!292 = !DILocation(line: 232, column: 29, scope: !181)
!293 = !DILocation(line: 232, column: 16, scope: !181)
!294 = !DILocation(line: 232, column: 6, scope: !181)
!295 = !DILocation(line: 232, column: 37, scope: !181)
!296 = !DILocation(line: 232, column: 3, scope: !181)
!297 = !DILocation(line: 233, column: 21, scope: !181)
!298 = !DILocation(line: 233, column: 15, scope: !181)
!299 = !DILocation(line: 233, column: 5, scope: !181)
!300 = !DILocation(line: 233, column: 3, scope: !181)
!301 = !DILocalVariable(name: "t0", scope: !181, file: !3, line: 192, type: !7)
!302 = !DILocation(line: 234, column: 24, scope: !181)
!303 = !DILocation(line: 234, column: 18, scope: !181)
!304 = !DILocation(line: 234, column: 8, scope: !181)
!305 = !DILocation(line: 234, column: 31, scope: !181)
!306 = !DILocation(line: 235, column: 23, scope: !181)
!307 = !DILocation(line: 235, column: 30, scope: !181)
!308 = !DILocation(line: 235, column: 16, scope: !181)
!309 = !DILocation(line: 235, column: 6, scope: !181)
!310 = !DILocation(line: 235, column: 38, scope: !181)
!311 = !DILocation(line: 235, column: 3, scope: !181)
!312 = !DILocation(line: 236, column: 23, scope: !181)
!313 = !DILocation(line: 236, column: 29, scope: !181)
!314 = !DILocation(line: 236, column: 16, scope: !181)
!315 = !DILocation(line: 236, column: 6, scope: !181)
!316 = !DILocation(line: 236, column: 37, scope: !181)
!317 = !DILocation(line: 236, column: 3, scope: !181)
!318 = !DILocation(line: 237, column: 21, scope: !181)
!319 = !DILocation(line: 237, column: 15, scope: !181)
!320 = !DILocation(line: 237, column: 5, scope: !181)
!321 = !DILocation(line: 237, column: 3, scope: !181)
!322 = !DILocalVariable(name: "t1", scope: !181, file: !3, line: 192, type: !7)
!323 = !DILocation(line: 238, column: 24, scope: !181)
!324 = !DILocation(line: 238, column: 18, scope: !181)
!325 = !DILocation(line: 238, column: 8, scope: !181)
!326 = !DILocation(line: 238, column: 31, scope: !181)
!327 = !DILocation(line: 239, column: 23, scope: !181)
!328 = !DILocation(line: 239, column: 30, scope: !181)
!329 = !DILocation(line: 239, column: 16, scope: !181)
!330 = !DILocation(line: 239, column: 6, scope: !181)
!331 = !DILocation(line: 239, column: 38, scope: !181)
!332 = !DILocation(line: 239, column: 3, scope: !181)
!333 = !DILocation(line: 240, column: 23, scope: !181)
!334 = !DILocation(line: 240, column: 29, scope: !181)
!335 = !DILocation(line: 240, column: 16, scope: !181)
!336 = !DILocation(line: 240, column: 6, scope: !181)
!337 = !DILocation(line: 240, column: 37, scope: !181)
!338 = !DILocation(line: 240, column: 3, scope: !181)
!339 = !DILocation(line: 241, column: 21, scope: !181)
!340 = !DILocation(line: 241, column: 15, scope: !181)
!341 = !DILocation(line: 241, column: 5, scope: !181)
!342 = !DILocation(line: 241, column: 3, scope: !181)
!343 = !DILocalVariable(name: "t2", scope: !181, file: !3, line: 192, type: !7)
!344 = !DILocation(line: 242, column: 24, scope: !181)
!345 = !DILocation(line: 242, column: 18, scope: !181)
!346 = !DILocation(line: 242, column: 8, scope: !181)
!347 = !DILocation(line: 242, column: 31, scope: !181)
!348 = !DILocation(line: 243, column: 23, scope: !181)
!349 = !DILocation(line: 243, column: 30, scope: !181)
!350 = !DILocation(line: 243, column: 16, scope: !181)
!351 = !DILocation(line: 243, column: 6, scope: !181)
!352 = !DILocation(line: 243, column: 38, scope: !181)
!353 = !DILocation(line: 243, column: 3, scope: !181)
!354 = !DILocation(line: 244, column: 23, scope: !181)
!355 = !DILocation(line: 244, column: 29, scope: !181)
!356 = !DILocation(line: 244, column: 16, scope: !181)
!357 = !DILocation(line: 244, column: 6, scope: !181)
!358 = !DILocation(line: 244, column: 37, scope: !181)
!359 = !DILocation(line: 244, column: 3, scope: !181)
!360 = !DILocation(line: 245, column: 21, scope: !181)
!361 = !DILocation(line: 245, column: 15, scope: !181)
!362 = !DILocation(line: 245, column: 5, scope: !181)
!363 = !DILocation(line: 245, column: 3, scope: !181)
!364 = !DILocalVariable(name: "t3", scope: !181, file: !3, line: 192, type: !7)
!365 = !DILocation(line: 246, column: 12, scope: !181)
!366 = !DILocation(line: 246, column: 10, scope: !181)
!367 = !DILocation(line: 247, column: 12, scope: !181)
!368 = !DILocation(line: 247, column: 10, scope: !181)
!369 = !DILocation(line: 248, column: 12, scope: !181)
!370 = !DILocation(line: 248, column: 10, scope: !181)
!371 = !DILocation(line: 249, column: 12, scope: !181)
!372 = !DILocation(line: 249, column: 10, scope: !181)
!373 = !DILocation(line: 250, column: 2, scope: !181)
!374 = !DILocation(line: 251, column: 17, scope: !181)
!375 = !DILocation(line: 251, column: 2, scope: !181)
!376 = !DILocation(line: 252, column: 17, scope: !181)
!377 = !DILocation(line: 252, column: 2, scope: !181)
!378 = !DILocation(line: 253, column: 17, scope: !181)
!379 = !DILocation(line: 253, column: 2, scope: !181)
!380 = !DILocation(line: 254, column: 1, scope: !181)
!381 = distinct !DISubprogram(name: "br_dec32be", scope: !382, file: !382, line: 590, type: !383, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DIFile(filename: "../BearSSL/src/inner.h", directory: "/home/luwei/bech-back/BearSSL/AES_big_cbc")
!383 = !DISubroutineType(types: !384)
!384 = !{!7, !50}
!385 = !DILocalVariable(name: "src", arg: 1, scope: !381, file: !382, line: 590, type: !50)
!386 = !DILocation(line: 0, scope: !381)
!387 = !DILocalVariable(name: "buf", scope: !381, file: !382, line: 595, type: !33)
!388 = !DILocation(line: 598, column: 20, scope: !381)
!389 = !DILocation(line: 598, column: 10, scope: !381)
!390 = !DILocation(line: 598, column: 27, scope: !381)
!391 = !DILocation(line: 599, column: 16, scope: !381)
!392 = !DILocation(line: 599, column: 6, scope: !381)
!393 = !DILocation(line: 599, column: 23, scope: !381)
!394 = !DILocation(line: 599, column: 3, scope: !381)
!395 = !DILocation(line: 600, column: 16, scope: !381)
!396 = !DILocation(line: 600, column: 6, scope: !381)
!397 = !DILocation(line: 600, column: 23, scope: !381)
!398 = !DILocation(line: 600, column: 3, scope: !381)
!399 = !DILocation(line: 601, column: 15, scope: !381)
!400 = !DILocation(line: 601, column: 5, scope: !381)
!401 = !DILocation(line: 601, column: 3, scope: !381)
!402 = !DILocation(line: 598, column: 2, scope: !381)
!403 = distinct !DISubprogram(name: "rotr", scope: !3, file: !3, line: 176, type: !404, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!404 = !DISubroutineType(types: !405)
!405 = !{!7, !7, !6}
!406 = !DILocalVariable(name: "x", arg: 1, scope: !403, file: !3, line: 176, type: !7)
!407 = !DILocation(line: 0, scope: !403)
!408 = !DILocalVariable(name: "n", arg: 2, scope: !403, file: !3, line: 176, type: !6)
!409 = !DILocation(line: 178, column: 19, scope: !403)
!410 = !DILocation(line: 178, column: 12, scope: !403)
!411 = !DILocation(line: 178, column: 30, scope: !403)
!412 = !DILocation(line: 178, column: 25, scope: !403)
!413 = !DILocation(line: 178, column: 2, scope: !403)
!414 = distinct !DISubprogram(name: "br_enc32be", scope: !382, file: !382, line: 558, type: !415, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !185, !7}
!417 = !DILocalVariable(name: "dst", arg: 1, scope: !414, file: !382, line: 558, type: !185)
!418 = !DILocation(line: 0, scope: !414)
!419 = !DILocalVariable(name: "x", arg: 2, scope: !414, file: !382, line: 558, type: !7)
!420 = !DILocalVariable(name: "buf", scope: !414, file: !382, line: 563, type: !191)
!421 = !DILocation(line: 566, column: 29, scope: !414)
!422 = !DILocation(line: 566, column: 11, scope: !414)
!423 = !DILocation(line: 566, column: 2, scope: !414)
!424 = !DILocation(line: 566, column: 9, scope: !414)
!425 = !DILocation(line: 567, column: 29, scope: !414)
!426 = !DILocation(line: 567, column: 11, scope: !414)
!427 = !DILocation(line: 567, column: 2, scope: !414)
!428 = !DILocation(line: 567, column: 9, scope: !414)
!429 = !DILocation(line: 568, column: 29, scope: !414)
!430 = !DILocation(line: 568, column: 11, scope: !414)
!431 = !DILocation(line: 568, column: 2, scope: !414)
!432 = !DILocation(line: 568, column: 9, scope: !414)
!433 = !DILocation(line: 569, column: 11, scope: !414)
!434 = !DILocation(line: 569, column: 2, scope: !414)
!435 = !DILocation(line: 569, column: 9, scope: !414)
!436 = !DILocation(line: 571, column: 1, scope: !414)
!437 = distinct !DISubprogram(name: "br_aes_big_encrypt", scope: !25, file: !25, line: 89, type: !182, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !4)
!438 = !DILocalVariable(name: "num_rounds", arg: 1, scope: !437, file: !25, line: 89, type: !11)
!439 = !DILocation(line: 0, scope: !437)
!440 = !DILocalVariable(name: "skey", arg: 2, scope: !437, file: !25, line: 89, type: !184)
!441 = !DILocalVariable(name: "data", arg: 3, scope: !437, file: !25, line: 89, type: !185)
!442 = !DILocalVariable(name: "buf", scope: !437, file: !25, line: 91, type: !191)
!443 = !DILocation(line: 97, column: 7, scope: !437)
!444 = !DILocalVariable(name: "s0", scope: !437, file: !25, line: 92, type: !7)
!445 = !DILocation(line: 98, column: 22, scope: !437)
!446 = !DILocation(line: 98, column: 7, scope: !437)
!447 = !DILocalVariable(name: "s1", scope: !437, file: !25, line: 92, type: !7)
!448 = !DILocation(line: 99, column: 22, scope: !437)
!449 = !DILocation(line: 99, column: 7, scope: !437)
!450 = !DILocalVariable(name: "s2", scope: !437, file: !25, line: 92, type: !7)
!451 = !DILocation(line: 100, column: 22, scope: !437)
!452 = !DILocation(line: 100, column: 7, scope: !437)
!453 = !DILocalVariable(name: "s3", scope: !437, file: !25, line: 92, type: !7)
!454 = !DILocation(line: 101, column: 8, scope: !437)
!455 = !DILocation(line: 101, column: 5, scope: !437)
!456 = !DILocation(line: 102, column: 8, scope: !437)
!457 = !DILocation(line: 102, column: 5, scope: !437)
!458 = !DILocation(line: 103, column: 8, scope: !437)
!459 = !DILocation(line: 103, column: 5, scope: !437)
!460 = !DILocation(line: 104, column: 8, scope: !437)
!461 = !DILocation(line: 104, column: 5, scope: !437)
!462 = !DILocalVariable(name: "u", scope: !437, file: !25, line: 94, type: !11)
!463 = !DILocation(line: 105, column: 7, scope: !464)
!464 = distinct !DILexicalBlock(scope: !437, file: !25, line: 105, column: 2)
!465 = !DILocation(line: 0, scope: !464)
!466 = !DILocation(line: 105, column: 16, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !25, line: 105, column: 2)
!468 = !DILocation(line: 105, column: 2, scope: !464)
!469 = !DILocation(line: 108, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !467, file: !25, line: 105, column: 36)
!471 = !DILocation(line: 109, column: 6, scope: !470)
!472 = !DILocation(line: 109, column: 4, scope: !470)
!473 = !DILocation(line: 110, column: 6, scope: !470)
!474 = !DILocation(line: 110, column: 4, scope: !470)
!475 = !DILocation(line: 111, column: 6, scope: !470)
!476 = !DILocation(line: 111, column: 4, scope: !470)
!477 = !DILocalVariable(name: "v0", scope: !470, file: !25, line: 106, type: !7)
!478 = !DILocation(line: 0, scope: !470)
!479 = !DILocation(line: 112, column: 8, scope: !470)
!480 = !DILocation(line: 113, column: 6, scope: !470)
!481 = !DILocation(line: 113, column: 4, scope: !470)
!482 = !DILocation(line: 114, column: 6, scope: !470)
!483 = !DILocation(line: 114, column: 4, scope: !470)
!484 = !DILocation(line: 115, column: 6, scope: !470)
!485 = !DILocation(line: 115, column: 4, scope: !470)
!486 = !DILocalVariable(name: "v1", scope: !470, file: !25, line: 106, type: !7)
!487 = !DILocation(line: 116, column: 8, scope: !470)
!488 = !DILocation(line: 117, column: 6, scope: !470)
!489 = !DILocation(line: 117, column: 4, scope: !470)
!490 = !DILocation(line: 118, column: 6, scope: !470)
!491 = !DILocation(line: 118, column: 4, scope: !470)
!492 = !DILocation(line: 119, column: 6, scope: !470)
!493 = !DILocation(line: 119, column: 4, scope: !470)
!494 = !DILocalVariable(name: "v2", scope: !470, file: !25, line: 106, type: !7)
!495 = !DILocation(line: 120, column: 8, scope: !470)
!496 = !DILocation(line: 121, column: 6, scope: !470)
!497 = !DILocation(line: 121, column: 4, scope: !470)
!498 = !DILocation(line: 122, column: 6, scope: !470)
!499 = !DILocation(line: 122, column: 4, scope: !470)
!500 = !DILocation(line: 123, column: 6, scope: !470)
!501 = !DILocation(line: 123, column: 4, scope: !470)
!502 = !DILocalVariable(name: "v3", scope: !470, file: !25, line: 106, type: !7)
!503 = !DILocation(line: 128, column: 16, scope: !470)
!504 = !DILocation(line: 128, column: 9, scope: !470)
!505 = !DILocation(line: 128, column: 6, scope: !470)
!506 = !DILocation(line: 129, column: 17, scope: !470)
!507 = !DILocation(line: 129, column: 23, scope: !470)
!508 = !DILocation(line: 129, column: 9, scope: !470)
!509 = !DILocation(line: 129, column: 6, scope: !470)
!510 = !DILocation(line: 130, column: 17, scope: !470)
!511 = !DILocation(line: 130, column: 23, scope: !470)
!512 = !DILocation(line: 130, column: 9, scope: !470)
!513 = !DILocation(line: 130, column: 6, scope: !470)
!514 = !DILocation(line: 131, column: 17, scope: !470)
!515 = !DILocation(line: 131, column: 23, scope: !470)
!516 = !DILocation(line: 131, column: 9, scope: !470)
!517 = !DILocation(line: 131, column: 6, scope: !470)
!518 = !DILocation(line: 132, column: 2, scope: !470)
!519 = !DILocation(line: 105, column: 32, scope: !467)
!520 = !DILocation(line: 105, column: 2, scope: !467)
!521 = distinct !{!521, !468, !522, !129}
!522 = !DILocation(line: 132, column: 2, scope: !464)
!523 = !DILocation(line: 133, column: 23, scope: !437)
!524 = !DILocation(line: 133, column: 18, scope: !437)
!525 = !DILocation(line: 133, column: 8, scope: !437)
!526 = !DILocation(line: 133, column: 30, scope: !437)
!527 = !DILocation(line: 134, column: 22, scope: !437)
!528 = !DILocation(line: 134, column: 29, scope: !437)
!529 = !DILocation(line: 134, column: 16, scope: !437)
!530 = !DILocation(line: 134, column: 6, scope: !437)
!531 = !DILocation(line: 134, column: 37, scope: !437)
!532 = !DILocation(line: 134, column: 3, scope: !437)
!533 = !DILocation(line: 135, column: 22, scope: !437)
!534 = !DILocation(line: 135, column: 28, scope: !437)
!535 = !DILocation(line: 135, column: 16, scope: !437)
!536 = !DILocation(line: 135, column: 6, scope: !437)
!537 = !DILocation(line: 135, column: 36, scope: !437)
!538 = !DILocation(line: 135, column: 3, scope: !437)
!539 = !DILocation(line: 136, column: 20, scope: !437)
!540 = !DILocation(line: 136, column: 15, scope: !437)
!541 = !DILocation(line: 136, column: 5, scope: !437)
!542 = !DILocation(line: 136, column: 3, scope: !437)
!543 = !DILocalVariable(name: "t0", scope: !437, file: !25, line: 93, type: !7)
!544 = !DILocation(line: 137, column: 23, scope: !437)
!545 = !DILocation(line: 137, column: 18, scope: !437)
!546 = !DILocation(line: 137, column: 8, scope: !437)
!547 = !DILocation(line: 137, column: 30, scope: !437)
!548 = !DILocation(line: 138, column: 22, scope: !437)
!549 = !DILocation(line: 138, column: 29, scope: !437)
!550 = !DILocation(line: 138, column: 16, scope: !437)
!551 = !DILocation(line: 138, column: 6, scope: !437)
!552 = !DILocation(line: 138, column: 37, scope: !437)
!553 = !DILocation(line: 138, column: 3, scope: !437)
!554 = !DILocation(line: 139, column: 22, scope: !437)
!555 = !DILocation(line: 139, column: 28, scope: !437)
!556 = !DILocation(line: 139, column: 16, scope: !437)
!557 = !DILocation(line: 139, column: 6, scope: !437)
!558 = !DILocation(line: 139, column: 36, scope: !437)
!559 = !DILocation(line: 139, column: 3, scope: !437)
!560 = !DILocation(line: 140, column: 20, scope: !437)
!561 = !DILocation(line: 140, column: 15, scope: !437)
!562 = !DILocation(line: 140, column: 5, scope: !437)
!563 = !DILocation(line: 140, column: 3, scope: !437)
!564 = !DILocalVariable(name: "t1", scope: !437, file: !25, line: 93, type: !7)
!565 = !DILocation(line: 141, column: 23, scope: !437)
!566 = !DILocation(line: 141, column: 18, scope: !437)
!567 = !DILocation(line: 141, column: 8, scope: !437)
!568 = !DILocation(line: 141, column: 30, scope: !437)
!569 = !DILocation(line: 142, column: 22, scope: !437)
!570 = !DILocation(line: 142, column: 29, scope: !437)
!571 = !DILocation(line: 142, column: 16, scope: !437)
!572 = !DILocation(line: 142, column: 6, scope: !437)
!573 = !DILocation(line: 142, column: 37, scope: !437)
!574 = !DILocation(line: 142, column: 3, scope: !437)
!575 = !DILocation(line: 143, column: 22, scope: !437)
!576 = !DILocation(line: 143, column: 28, scope: !437)
!577 = !DILocation(line: 143, column: 16, scope: !437)
!578 = !DILocation(line: 143, column: 6, scope: !437)
!579 = !DILocation(line: 143, column: 36, scope: !437)
!580 = !DILocation(line: 143, column: 3, scope: !437)
!581 = !DILocation(line: 144, column: 20, scope: !437)
!582 = !DILocation(line: 144, column: 15, scope: !437)
!583 = !DILocation(line: 144, column: 5, scope: !437)
!584 = !DILocation(line: 144, column: 3, scope: !437)
!585 = !DILocalVariable(name: "t2", scope: !437, file: !25, line: 93, type: !7)
!586 = !DILocation(line: 145, column: 23, scope: !437)
!587 = !DILocation(line: 145, column: 18, scope: !437)
!588 = !DILocation(line: 145, column: 8, scope: !437)
!589 = !DILocation(line: 145, column: 30, scope: !437)
!590 = !DILocation(line: 146, column: 22, scope: !437)
!591 = !DILocation(line: 146, column: 29, scope: !437)
!592 = !DILocation(line: 146, column: 16, scope: !437)
!593 = !DILocation(line: 146, column: 6, scope: !437)
!594 = !DILocation(line: 146, column: 37, scope: !437)
!595 = !DILocation(line: 146, column: 3, scope: !437)
!596 = !DILocation(line: 147, column: 22, scope: !437)
!597 = !DILocation(line: 147, column: 28, scope: !437)
!598 = !DILocation(line: 147, column: 16, scope: !437)
!599 = !DILocation(line: 147, column: 6, scope: !437)
!600 = !DILocation(line: 147, column: 36, scope: !437)
!601 = !DILocation(line: 147, column: 3, scope: !437)
!602 = !DILocation(line: 148, column: 20, scope: !437)
!603 = !DILocation(line: 148, column: 15, scope: !437)
!604 = !DILocation(line: 148, column: 5, scope: !437)
!605 = !DILocation(line: 148, column: 3, scope: !437)
!606 = !DILocalVariable(name: "t3", scope: !437, file: !25, line: 93, type: !7)
!607 = !DILocation(line: 149, column: 28, scope: !437)
!608 = !DILocation(line: 149, column: 12, scope: !437)
!609 = !DILocation(line: 149, column: 10, scope: !437)
!610 = !DILocation(line: 150, column: 29, scope: !437)
!611 = !DILocation(line: 150, column: 35, scope: !437)
!612 = !DILocation(line: 150, column: 12, scope: !437)
!613 = !DILocation(line: 150, column: 10, scope: !437)
!614 = !DILocation(line: 151, column: 29, scope: !437)
!615 = !DILocation(line: 151, column: 35, scope: !437)
!616 = !DILocation(line: 151, column: 12, scope: !437)
!617 = !DILocation(line: 151, column: 10, scope: !437)
!618 = !DILocation(line: 152, column: 29, scope: !437)
!619 = !DILocation(line: 152, column: 35, scope: !437)
!620 = !DILocation(line: 152, column: 12, scope: !437)
!621 = !DILocation(line: 152, column: 10, scope: !437)
!622 = !DILocation(line: 153, column: 2, scope: !437)
!623 = !DILocation(line: 154, column: 17, scope: !437)
!624 = !DILocation(line: 154, column: 2, scope: !437)
!625 = !DILocation(line: 155, column: 17, scope: !437)
!626 = !DILocation(line: 155, column: 2, scope: !437)
!627 = !DILocation(line: 156, column: 17, scope: !437)
!628 = !DILocation(line: 156, column: 2, scope: !437)
!629 = !DILocation(line: 157, column: 1, scope: !437)
!630 = distinct !DISubprogram(name: "br_dec32be", scope: !382, file: !382, line: 590, type: !383, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !4)
!631 = !DILocalVariable(name: "src", arg: 1, scope: !630, file: !382, line: 590, type: !50)
!632 = !DILocation(line: 0, scope: !630)
!633 = !DILocalVariable(name: "buf", scope: !630, file: !382, line: 595, type: !33)
!634 = !DILocation(line: 598, column: 20, scope: !630)
!635 = !DILocation(line: 598, column: 10, scope: !630)
!636 = !DILocation(line: 598, column: 27, scope: !630)
!637 = !DILocation(line: 599, column: 16, scope: !630)
!638 = !DILocation(line: 599, column: 6, scope: !630)
!639 = !DILocation(line: 599, column: 23, scope: !630)
!640 = !DILocation(line: 599, column: 3, scope: !630)
!641 = !DILocation(line: 600, column: 16, scope: !630)
!642 = !DILocation(line: 600, column: 6, scope: !630)
!643 = !DILocation(line: 600, column: 23, scope: !630)
!644 = !DILocation(line: 600, column: 3, scope: !630)
!645 = !DILocation(line: 601, column: 15, scope: !630)
!646 = !DILocation(line: 601, column: 5, scope: !630)
!647 = !DILocation(line: 601, column: 3, scope: !630)
!648 = !DILocation(line: 598, column: 2, scope: !630)
!649 = distinct !DISubprogram(name: "rotr", scope: !25, file: !25, line: 76, type: !404, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !4)
!650 = !DILocalVariable(name: "x", arg: 1, scope: !649, file: !25, line: 76, type: !7)
!651 = !DILocation(line: 0, scope: !649)
!652 = !DILocalVariable(name: "n", arg: 2, scope: !649, file: !25, line: 76, type: !6)
!653 = !DILocation(line: 78, column: 19, scope: !649)
!654 = !DILocation(line: 78, column: 12, scope: !649)
!655 = !DILocation(line: 78, column: 30, scope: !649)
!656 = !DILocation(line: 78, column: 25, scope: !649)
!657 = !DILocation(line: 78, column: 2, scope: !649)
!658 = distinct !DISubprogram(name: "br_enc32be", scope: !382, file: !382, line: 558, type: !415, scopeLine: 559, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !24, retainedNodes: !4)
!659 = !DILocalVariable(name: "dst", arg: 1, scope: !658, file: !382, line: 558, type: !185)
!660 = !DILocation(line: 0, scope: !658)
!661 = !DILocalVariable(name: "x", arg: 2, scope: !658, file: !382, line: 558, type: !7)
!662 = !DILocalVariable(name: "buf", scope: !658, file: !382, line: 563, type: !191)
!663 = !DILocation(line: 566, column: 29, scope: !658)
!664 = !DILocation(line: 566, column: 11, scope: !658)
!665 = !DILocation(line: 566, column: 2, scope: !658)
!666 = !DILocation(line: 566, column: 9, scope: !658)
!667 = !DILocation(line: 567, column: 29, scope: !658)
!668 = !DILocation(line: 567, column: 11, scope: !658)
!669 = !DILocation(line: 567, column: 2, scope: !658)
!670 = !DILocation(line: 567, column: 9, scope: !658)
!671 = !DILocation(line: 568, column: 29, scope: !658)
!672 = !DILocation(line: 568, column: 11, scope: !658)
!673 = !DILocation(line: 568, column: 2, scope: !658)
!674 = !DILocation(line: 568, column: 9, scope: !658)
!675 = !DILocation(line: 569, column: 11, scope: !658)
!676 = !DILocation(line: 569, column: 2, scope: !658)
!677 = !DILocation(line: 569, column: 9, scope: !658)
!678 = !DILocation(line: 571, column: 1, scope: !658)
!679 = distinct !DISubprogram(name: "br_aes_keysched", scope: !31, file: !31, line: 71, type: !47, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !4)
!680 = !DILocalVariable(name: "skey", arg: 1, scope: !679, file: !31, line: 71, type: !49)
!681 = !DILocation(line: 0, scope: !679)
!682 = !DILocalVariable(name: "key", arg: 2, scope: !679, file: !31, line: 71, type: !50)
!683 = !DILocalVariable(name: "key_len", arg: 3, scope: !679, file: !31, line: 71, type: !52)
!684 = !DILocation(line: 76, column: 2, scope: !679)
!685 = !DILocalVariable(name: "num_rounds", scope: !679, file: !31, line: 73, type: !11)
!686 = !DILocation(line: 79, column: 3, scope: !687)
!687 = distinct !DILexicalBlock(scope: !679, file: !31, line: 76, column: 19)
!688 = !DILocation(line: 82, column: 3, scope: !687)
!689 = !DILocation(line: 85, column: 3, scope: !687)
!690 = !DILocation(line: 88, column: 3, scope: !687)
!691 = !DILocation(line: 0, scope: !687)
!692 = !DILocation(line: 90, column: 21, scope: !679)
!693 = !DILocation(line: 90, column: 7, scope: !679)
!694 = !DILocalVariable(name: "nk", scope: !679, file: !31, line: 74, type: !6)
!695 = !DILocation(line: 91, column: 26, scope: !679)
!696 = !DILocation(line: 91, column: 31, scope: !679)
!697 = !DILocalVariable(name: "nkf", scope: !679, file: !31, line: 74, type: !6)
!698 = !DILocalVariable(name: "i", scope: !679, file: !31, line: 74, type: !6)
!699 = !DILocation(line: 92, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !679, file: !31, line: 92, column: 2)
!701 = !DILocation(line: 0, scope: !700)
!702 = !DILocation(line: 92, column: 16, scope: !703)
!703 = distinct !DILexicalBlock(scope: !700, file: !31, line: 92, column: 2)
!704 = !DILocation(line: 92, column: 2, scope: !700)
!705 = !DILocation(line: 93, column: 56, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !31, line: 92, column: 28)
!707 = !DILocation(line: 93, column: 51, scope: !706)
!708 = !DILocation(line: 93, column: 13, scope: !706)
!709 = !DILocation(line: 93, column: 3, scope: !706)
!710 = !DILocation(line: 93, column: 11, scope: !706)
!711 = !DILocation(line: 94, column: 2, scope: !706)
!712 = !DILocation(line: 92, column: 24, scope: !703)
!713 = !DILocation(line: 92, column: 2, scope: !703)
!714 = distinct !{!714, !704, !715, !129}
!715 = !DILocation(line: 94, column: 2, scope: !700)
!716 = !DILocalVariable(name: "j", scope: !679, file: !31, line: 74, type: !6)
!717 = !DILocalVariable(name: "k", scope: !679, file: !31, line: 74, type: !6)
!718 = !DILocation(line: 95, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !679, file: !31, line: 95, column: 2)
!720 = !DILocation(line: 0, scope: !719)
!721 = !DILocation(line: 95, column: 31, scope: !722)
!722 = distinct !DILexicalBlock(scope: !719, file: !31, line: 95, column: 2)
!723 = !DILocation(line: 95, column: 2, scope: !719)
!724 = !DILocation(line: 98, column: 16, scope: !725)
!725 = distinct !DILexicalBlock(scope: !722, file: !31, line: 95, column: 44)
!726 = !DILocation(line: 98, column: 9, scope: !725)
!727 = !DILocalVariable(name: "tmp", scope: !725, file: !31, line: 96, type: !7)
!728 = !DILocation(line: 0, scope: !725)
!729 = !DILocation(line: 99, column: 9, scope: !730)
!730 = distinct !DILexicalBlock(scope: !725, file: !31, line: 99, column: 7)
!731 = !DILocation(line: 99, column: 7, scope: !725)
!732 = !DILocation(line: 100, column: 15, scope: !733)
!733 = distinct !DILexicalBlock(scope: !730, file: !31, line: 99, column: 15)
!734 = !DILocation(line: 100, column: 28, scope: !733)
!735 = !DILocation(line: 100, column: 21, scope: !733)
!736 = !DILocation(line: 101, column: 10, scope: !733)
!737 = !DILocation(line: 101, column: 25, scope: !733)
!738 = !DILocation(line: 101, column: 23, scope: !733)
!739 = !DILocation(line: 102, column: 3, scope: !733)
!740 = !DILocation(line: 102, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !730, file: !31, line: 102, column: 14)
!742 = !DILocation(line: 102, column: 21, scope: !741)
!743 = !DILocation(line: 102, column: 26, scope: !741)
!744 = !DILocation(line: 102, column: 14, scope: !730)
!745 = !DILocation(line: 103, column: 10, scope: !746)
!746 = distinct !DILexicalBlock(scope: !741, file: !31, line: 102, column: 32)
!747 = !DILocation(line: 104, column: 3, scope: !746)
!748 = !DILocation(line: 0, scope: !730)
!749 = !DILocation(line: 105, column: 20, scope: !725)
!750 = !DILocation(line: 105, column: 13, scope: !725)
!751 = !DILocation(line: 105, column: 26, scope: !725)
!752 = !DILocation(line: 105, column: 3, scope: !725)
!753 = !DILocation(line: 105, column: 11, scope: !725)
!754 = !DILocation(line: 106, column: 7, scope: !755)
!755 = distinct !DILexicalBlock(scope: !725, file: !31, line: 106, column: 7)
!756 = !DILocation(line: 106, column: 12, scope: !755)
!757 = !DILocation(line: 106, column: 7, scope: !725)
!758 = !DILocation(line: 108, column: 6, scope: !759)
!759 = distinct !DILexicalBlock(scope: !755, file: !31, line: 106, column: 19)
!760 = !DILocation(line: 109, column: 3, scope: !759)
!761 = !DILocation(line: 0, scope: !755)
!762 = !DILocation(line: 110, column: 2, scope: !725)
!763 = !DILocation(line: 95, column: 40, scope: !722)
!764 = !DILocation(line: 95, column: 2, scope: !722)
!765 = distinct !{!765, !723, !766, !129}
!766 = !DILocation(line: 110, column: 2, scope: !719)
!767 = !DILocation(line: 111, column: 2, scope: !679)
!768 = !DILocation(line: 112, column: 1, scope: !679)
!769 = distinct !DISubprogram(name: "br_dec32be", scope: !382, file: !382, line: 590, type: !383, scopeLine: 591, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!770 = !DILocalVariable(name: "src", arg: 1, scope: !769, file: !382, line: 590, type: !50)
!771 = !DILocation(line: 0, scope: !769)
!772 = !DILocalVariable(name: "buf", scope: !769, file: !382, line: 595, type: !33)
!773 = !DILocation(line: 598, column: 20, scope: !769)
!774 = !DILocation(line: 598, column: 10, scope: !769)
!775 = !DILocation(line: 598, column: 27, scope: !769)
!776 = !DILocation(line: 599, column: 16, scope: !769)
!777 = !DILocation(line: 599, column: 6, scope: !769)
!778 = !DILocation(line: 599, column: 23, scope: !769)
!779 = !DILocation(line: 599, column: 3, scope: !769)
!780 = !DILocation(line: 600, column: 16, scope: !769)
!781 = !DILocation(line: 600, column: 6, scope: !769)
!782 = !DILocation(line: 600, column: 23, scope: !769)
!783 = !DILocation(line: 600, column: 3, scope: !769)
!784 = !DILocation(line: 601, column: 15, scope: !769)
!785 = !DILocation(line: 601, column: 5, scope: !769)
!786 = !DILocation(line: 601, column: 3, scope: !769)
!787 = !DILocation(line: 598, column: 2, scope: !769)
!788 = distinct !DISubprogram(name: "SubWord", scope: !31, file: !31, line: 61, type: !789, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !30, retainedNodes: !4)
!789 = !DISubroutineType(types: !790)
!790 = !{!7, !7}
!791 = !DILocalVariable(name: "x", arg: 1, scope: !788, file: !31, line: 61, type: !7)
!792 = !DILocation(line: 0, scope: !788)
!793 = !DILocation(line: 63, column: 24, scope: !788)
!794 = !DILocation(line: 63, column: 20, scope: !788)
!795 = !DILocation(line: 63, column: 10, scope: !788)
!796 = !DILocation(line: 63, column: 31, scope: !788)
!797 = !DILocation(line: 64, column: 21, scope: !788)
!798 = !DILocation(line: 64, column: 28, scope: !788)
!799 = !DILocation(line: 64, column: 16, scope: !788)
!800 = !DILocation(line: 64, column: 6, scope: !788)
!801 = !DILocation(line: 64, column: 36, scope: !788)
!802 = !DILocation(line: 64, column: 3, scope: !788)
!803 = !DILocation(line: 65, column: 21, scope: !788)
!804 = !DILocation(line: 65, column: 27, scope: !788)
!805 = !DILocation(line: 65, column: 16, scope: !788)
!806 = !DILocation(line: 65, column: 6, scope: !788)
!807 = !DILocation(line: 65, column: 35, scope: !788)
!808 = !DILocation(line: 65, column: 3, scope: !788)
!809 = !DILocation(line: 66, column: 19, scope: !788)
!810 = !DILocation(line: 66, column: 15, scope: !788)
!811 = !DILocation(line: 66, column: 5, scope: !788)
!812 = !DILocation(line: 66, column: 3, scope: !788)
!813 = !DILocation(line: 63, column: 2, scope: !788)
!814 = distinct !DISubprogram(name: "key_schedule_wrapper", scope: !41, file: !41, line: 4, type: !815, scopeLine: 4, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !4)
!815 = !DISubroutineType(types: !816)
!816 = !{null, !49, !50, !52}
!817 = !DILocalVariable(name: "skey", arg: 1, scope: !814, file: !41, line: 4, type: !49)
!818 = !DILocation(line: 0, scope: !814)
!819 = !DILocalVariable(name: "key", arg: 2, scope: !814, file: !41, line: 4, type: !50)
!820 = !DILocalVariable(name: "key_len", arg: 3, scope: !814, file: !41, line: 4, type: !52)
!821 = !DILocation(line: 5, column: 12, scope: !814)
!822 = !DILocation(line: 5, column: 2, scope: !814)
!823 = !DILocation(line: 6, column: 12, scope: !814)
!824 = !DILocation(line: 6, column: 2, scope: !814)
!825 = !DILocation(line: 7, column: 12, scope: !814)
!826 = !DILocation(line: 7, column: 2, scope: !814)
!827 = !DILocation(line: 10, column: 2, scope: !814)
!828 = !DILocation(line: 11, column: 1, scope: !814)
!829 = distinct !DISubprogram(name: "key_schedule_wrapper_t", scope: !41, file: !41, line: 16, type: !830, scopeLine: 16, spFlags: DISPFlagDefinition, unit: !40, retainedNodes: !4)
!830 = !DISubroutineType(types: !831)
!831 = !{null}
!832 = !DILocation(line: 17, column: 20, scope: !829)
!833 = !DILocalVariable(name: "key", scope: !829, file: !41, line: 17, type: !50)
!834 = !DILocation(line: 0, scope: !829)
!835 = !DILocation(line: 18, column: 25, scope: !829)
!836 = !DILocalVariable(name: "skey", scope: !829, file: !41, line: 18, type: !184)
!837 = !DILocation(line: 19, column: 19, scope: !829)
!838 = !DILocalVariable(name: "key_len", scope: !829, file: !41, line: 19, type: !52)
!839 = !DILocation(line: 21, column: 2, scope: !829)
!840 = !DILocation(line: 22, column: 1, scope: !829)
