.class public final Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;
.super Ljava/lang/Object;
.source "DefaultOfflineRepository.kt"

# interfaces
.implements Lcom/stripe/offlinemode/storage/OfflineRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$Companion;,
        Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;,
        Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultOfflineRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository\n+ 2 Merge.kt\nkotlinx/coroutines/flow/FlowKt__MergeKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository$wrapErrorsAsTerminalException$1\n+ 5 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 6 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 7 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 8 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 9 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,1085:1\n1016#1,7:1087\n1036#1:1095\n1037#1:1097\n1023#1,11:1098\n1016#1,7:1120\n1036#1:1160\n1037#1:1162\n1023#1,11:1163\n1016#1,7:1174\n1036#1:1181\n1037#1:1183\n1023#1,11:1184\n1016#1,7:1195\n1036#1:1202\n1037#1:1204\n1023#1,11:1205\n1016#1,7:1216\n1036#1:1223\n1037#1:1225\n1023#1,11:1226\n1016#1,7:1237\n1036#1:1249\n1037#1:1251\n1023#1,11:1252\n1016#1,7:1263\n1036#1:1275\n1037#1:1277\n1023#1,11:1278\n1016#1,7:1289\n1036#1:1301\n1037#1:1303\n1023#1,11:1304\n1016#1,7:1315\n1036#1:1327\n1037#1:1329\n1023#1,11:1330\n1016#1,7:1341\n1036#1:1348\n1037#1:1350\n1023#1,11:1351\n1016#1,7:1362\n1036#1:1369\n1037#1:1371\n1023#1,11:1372\n1016#1,7:1383\n1036#1:1390\n1037#1:1392\n1023#1,11:1393\n1016#1,7:1404\n1036#1:1411\n1037#1:1413\n1023#1,11:1414\n1016#1,7:1425\n1036#1:1432\n1037#1:1434\n1023#1,11:1435\n1016#1,7:1446\n1036#1:1453\n1037#1:1455\n1023#1,11:1456\n1021#1,2:1467\n1036#1,2:1469\n1023#1,11:1471\n1016#1,7:1482\n1036#1:1489\n1037#1:1491\n1023#1,11:1492\n1016#1,7:1503\n1036#1:1510\n1037#1:1512\n1023#1,11:1513\n1016#1,7:1524\n1036#1:1531\n1037#1:1533\n1023#1,11:1534\n1016#1,7:1545\n1036#1:1552\n1037#1:1554\n1023#1,11:1555\n1016#1,7:1566\n1036#1:1573\n1037#1:1575\n1023#1,11:1576\n1016#1,7:1587\n1036#1:1594\n1037#1:1596\n1023#1,11:1597\n1016#1,7:1608\n1036#1:1615\n1037#1:1617\n1023#1,11:1618\n189#2:1086\n1#3:1094\n1#3:1137\n1018#4:1096\n1018#4:1161\n1018#4:1182\n1018#4:1203\n1018#4:1224\n1018#4:1250\n1018#4:1276\n1018#4:1302\n1018#4:1328\n1018#4:1349\n1018#4:1370\n1018#4:1391\n1018#4:1412\n1018#4:1433\n1018#4:1454\n1018#4:1490\n1018#4:1511\n1018#4:1532\n1018#4:1553\n1018#4:1574\n1018#4:1595\n1018#4:1616\n49#5:1109\n51#5:1113\n49#5:1244\n51#5:1248\n49#5:1270\n51#5:1274\n49#5:1296\n51#5:1300\n49#5:1322\n51#5:1326\n49#5:1629\n51#5:1633\n46#6:1110\n51#6:1112\n46#6:1245\n51#6:1247\n46#6:1271\n51#6:1273\n46#6:1297\n51#6:1299\n46#6:1323\n51#6:1325\n46#6:1630\n51#6:1632\n105#7:1111\n105#7:1246\n105#7:1272\n105#7:1298\n105#7:1324\n105#7:1631\n766#8:1114\n857#8,2:1115\n766#8:1117\n857#8,2:1118\n1603#8,9:1127\n1855#8:1136\n1856#8:1138\n1612#8:1139\n1490#8:1140\n1520#8,3:1141\n1523#8,3:1151\n1238#8,4:1156\n372#9,7:1144\n453#9:1154\n403#9:1155\n*S KotlinDebug\n*F\n+ 1 DefaultOfflineRepository.kt\ncom/stripe/offlinemode/storage/DefaultOfflineRepository\n*L\n158#1:1087,7\n158#1:1095\n158#1:1097\n158#1:1098,11\n262#1:1120,7\n262#1:1160\n262#1:1162\n262#1:1163,11\n278#1:1174,7\n278#1:1181\n278#1:1183\n278#1:1184,11\n350#1:1195,7\n350#1:1202\n350#1:1204\n350#1:1205,11\n392#1:1216,7\n392#1:1223\n392#1:1225\n392#1:1226,11\n418#1:1237,7\n418#1:1249\n418#1:1251\n418#1:1252,11\n436#1:1263,7\n436#1:1275\n436#1:1277\n436#1:1278,11\n451#1:1289,7\n451#1:1301\n451#1:1303\n451#1:1304,11\n466#1:1315,7\n466#1:1327\n466#1:1329\n466#1:1330,11\n480#1:1341,7\n480#1:1348\n480#1:1350\n480#1:1351,11\n498#1:1362,7\n498#1:1369\n498#1:1371\n498#1:1372,11\n521#1:1383,7\n521#1:1390\n521#1:1392\n521#1:1393,11\n531#1:1404,7\n531#1:1411\n531#1:1413\n531#1:1414,11\n554#1:1425,7\n554#1:1432\n554#1:1434\n554#1:1435,11\n568#1:1446,7\n568#1:1453\n568#1:1455\n568#1:1456,11\n591#1:1467,2\n591#1:1469,2\n591#1:1471,11\n645#1:1482,7\n645#1:1489\n645#1:1491\n645#1:1492,11\n687#1:1503,7\n687#1:1510\n687#1:1512\n687#1:1513,11\n725#1:1524,7\n725#1:1531\n725#1:1533\n725#1:1534,11\n785#1:1545,7\n785#1:1552\n785#1:1554\n785#1:1555,11\n814#1:1566,7\n814#1:1573\n814#1:1575\n814#1:1576,11\n856#1:1587,7\n856#1:1594\n856#1:1596\n856#1:1597,11\n873#1:1608,7\n873#1:1615\n873#1:1617\n873#1:1618,11\n100#1:1086\n263#1:1137\n158#1:1096\n262#1:1161\n278#1:1182\n350#1:1203\n392#1:1224\n418#1:1250\n436#1:1276\n451#1:1302\n466#1:1328\n480#1:1349\n498#1:1370\n521#1:1391\n531#1:1412\n554#1:1433\n568#1:1454\n645#1:1490\n687#1:1511\n725#1:1532\n785#1:1553\n814#1:1574\n856#1:1595\n873#1:1616\n232#1:1109\n232#1:1113\n423#1:1244\n423#1:1248\n441#1:1270\n441#1:1274\n456#1:1296\n456#1:1300\n471#1:1322\n471#1:1326\n910#1:1629\n910#1:1633\n232#1:1110\n232#1:1112\n423#1:1245\n423#1:1247\n441#1:1271\n441#1:1273\n456#1:1297\n456#1:1299\n471#1:1323\n471#1:1325\n910#1:1630\n910#1:1632\n232#1:1111\n423#1:1246\n441#1:1272\n456#1:1298\n471#1:1324\n910#1:1631\n250#1:1114\n250#1:1115,2\n253#1:1117\n253#1:1118,2\n263#1:1127,9\n263#1:1136\n263#1:1138\n263#1:1139\n264#1:1140\n264#1:1141,3\n264#1:1151,3\n268#1:1156,4\n264#1:1144,7\n268#1:1154\n268#1:1155\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 \u00b5\u00012\u00020\u0001:\u0004\u00b5\u0001\u00b6\u0001B\u00a9\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\"\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u001fj\u0002`$\u0012\u000e\u0010%\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030&\u00a2\u0006\u0002\u0010\'J\u000e\u00106\u001a\u0008\u0012\u0004\u0012\u00020807H\u0016J\u0008\u0010Z\u001a\u00020[H\u0016J\u0016\u0010\\\u001a\u00020[2\u0006\u0010]\u001a\u00020^H\u0096@\u00a2\u0006\u0002\u0010_J\u0016\u0010`\u001a\u00020[2\u0006\u0010a\u001a\u000200H\u0096@\u00a2\u0006\u0002\u0010bJ\u0016\u0010c\u001a\u0008\u0012\u0004\u0012\u00020d0G2\u0006\u0010a\u001a\u000200H\u0016J\u001a\u0010e\u001a\u0004\u0018\u00010f2\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020jH\u0002J\u001c\u0010k\u001a\u0008\u0012\u0004\u0012\u00020l0L2\u0006\u0010a\u001a\u000200H\u0096@\u00a2\u0006\u0002\u0010bJ\n\u0010m\u001a\u0004\u0018\u00010MH\u0016J\u0012\u0010,\u001a\u00020)2\u0008\u0010a\u001a\u0004\u0018\u000100H\u0002J\u0010\u0010n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010007H\u0016J\u001e\u0010o\u001a\u0008\u0012\u0004\u0012\u0002080L2\u0008\u0010p\u001a\u0004\u0018\u000109H\u0082@\u00a2\u0006\u0002\u0010qJ\u0010\u0010r\u001a\u00020f2\u0006\u0010s\u001a\u000200H\u0016J\u0010\u0010t\u001a\u00020j2\u0006\u0010u\u001a\u000209H\u0016J\u001e\u0010v\u001a\u00020l2\u0006\u0010w\u001a\u00020H2\u0006\u0010x\u001a\u000209H\u0082@\u00a2\u0006\u0002\u0010yJ,\u0010z\u001a\u0016\u0012\u0004\u0012\u00020h\u0012\u0004\u0012\u00020j\u0012\u0004\u0012\u00020f\u0018\u00010{2\u0006\u0010|\u001a\u00020d2\u0006\u0010a\u001a\u000200H\u0016J\u0012\u0010}\u001a\u0004\u0018\u00010f2\u0006\u0010~\u001a\u000200H\u0016J\u0012\u0010\u007f\u001a\u0004\u0018\u00010f2\u0006\u0010i\u001a\u00020jH\u0016J \u0010\u0080\u0001\u001a\u00020f2\u0006\u0010s\u001a\u0002002\u0006\u0010a\u001a\u000200H\u0082@\u00a2\u0006\u0003\u0010\u0081\u0001J\u0018\u0010\u0082\u0001\u001a\u00020M2\r\u0010\u0083\u0001\u001a\u0008\u0012\u0004\u0012\u00020H0GH\u0002J.\u0010\u0084\u0001\u001a\u0010\u0012\u0004\u0012\u000200\u0012\u0005\u0012\u00030\u0086\u00010\u0085\u00012\u0006\u0010a\u001a\u0002002\r\u0010\u0087\u0001\u001a\u0008\u0012\u0004\u0012\u0002000GH\u0016J%\u0010\u0088\u0001\u001a\u000f\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u0002090\u0085\u00012\r\u0010\u0089\u0001\u001a\u0008\u0012\u0004\u0012\u00020H0GH\u0002J\u0013\u0010\u008a\u0001\u001a\u0002082\u0008\u0010\u008b\u0001\u001a\u00030\u008c\u0001H\u0002J\u0013\u0010\u008a\u0001\u001a\u0002082\u0008\u0010\u008d\u0001\u001a\u00030\u008e\u0001H\u0002J%\u0010\u008f\u0001\u001a\u0002082\t\u0010\u0090\u0001\u001a\u0004\u0018\u0001002\u0007\u0010\u0091\u0001\u001a\u0002002\u0006\u0010a\u001a\u000200H\u0016J\u001c\u0010\u0092\u0001\u001a\u00020[2\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0007\u0010\u0095\u0001\u001a\u000200H\u0002J\u001d\u0010\u0096\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020j0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u001d\u0010\u0097\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020f0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u0018\u0010\u0098\u0001\u001a\t\u0012\u0005\u0012\u00030\u0099\u00010L2\u0006\u0010a\u001a\u000200H\u0016J\u001d\u0010\u009a\u0001\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020h0G0L2\u0006\u0010a\u001a\u000200H\u0016J\u0011\u0010\u009b\u0001\u001a\u00020[2\u0006\u0010a\u001a\u000200H\u0016J\u0012\u0010\u009c\u0001\u001a\u00020[2\u0007\u0010\u009d\u0001\u001a\u00020^H\u0016J\"\u0010\u009e\u0001\u001a\u0002092\u0006\u0010g\u001a\u00020h2\u0006\u0010i\u001a\u00020j2\u0007\u0010\u009f\u0001\u001a\u00020fH\u0017J\u0019\u0010\u00a0\u0001\u001a\u00030\u00a1\u00012\u0007\u0010\u00a2\u0001\u001a\u00020^H\u0096@\u00a2\u0006\u0002\u0010_J#\u0010\u00a3\u0001\u001a\u00020[2\u0008\u0010\u00a4\u0001\u001a\u00030\u00a5\u00012\u0007\u0010\u00a6\u0001\u001a\u00020^H\u0097@\u00a2\u0006\u0003\u0010\u00a7\u0001J\"\u0010\u00a8\u0001\u001a\u00020[2\u0006\u0010~\u001a\u0002002\u0008\u0010\u00a9\u0001\u001a\u00030\u00aa\u0001H\u0096@\u00a2\u0006\u0003\u0010\u00ab\u0001JF\u0010\u00ac\u0001\u001a\u0003H\u00ad\u0001\"\u0007\u0008\u0000\u0010\u00ad\u0001\u0018\u00012\u0007\u0010\u0095\u0001\u001a\u0002002\u0010\u0008\u0002\u0010\u00ae\u0001\u001a\t\u0012\u0004\u0012\u00020[0\u00af\u00012\u000f\u0010\u00b0\u0001\u001a\n\u0012\u0005\u0012\u0003H\u00ad\u00010\u00af\u0001H\u0082\u0008\u00a2\u0006\u0003\u0010\u00b1\u0001J\u0014\u0010\u00b2\u0001\u001a\u000208*\u00020HH\u0082@\u00a2\u0006\u0003\u0010\u00b3\u0001J\u0013\u0010\u00b4\u0001\u001a\u000208*\u00020^H\u0082@\u00a2\u0006\u0002\u0010_R\u0010\u0010(\u001a\u0004\u0018\u00010)X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010+\u001a\u00020)2\u0006\u0010*\u001a\u00020)8V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008,\u0010-\"\u0004\u0008.\u0010/R$\u00101\u001a\u0002002\u0006\u0010*\u001a\u0002008V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u00082\u00103\"\u0004\u00084\u00105R\u0014\u00106\u001a\u0008\u0012\u0004\u0012\u00020807X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010:\u001a\u0002092\u0006\u0010*\u001a\u0002098V@VX\u0096\u000e\u00a2\u0006\u000c\u001a\u0004\u0008;\u0010<\"\u0004\u0008=\u0010>R\u001a\u0010?\u001a\u000208X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR*\u0010\u001e\u001a\u001e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\"\u0012\u0004\u0012\u00020#0\u001fj\u0002`$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010D\u001a\u000208X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010AR\u0016\u0010%\u001a\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030&X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010E\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020H0G0FX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010I\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001090JX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010K\u001a\u0008\u0012\u0004\u0012\u00020M0L8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008N\u0010OR\u0010\u0010P\u001a\u0004\u0018\u00010QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010R\u001a\u0008\u0012\u0004\u0012\u00020)078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008U\u0010V\u001a\u0004\u0008S\u0010TR\'\u0010W\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020H0G078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008Y\u0010V\u001a\u0004\u0008X\u0010T\u00a8\u0006\u00b7\u0001"
    }
    d2 = {
        "Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;",
        "Lcom/stripe/offlinemode/storage/OfflineRepository;",
        "offlineReaderDao",
        "Lcom/stripe/offlinemode/storage/OfflineReaderDao;",
        "offlineConnectionDao",
        "Lcom/stripe/offlinemode/storage/OfflineConnectionDao;",
        "offlineLocationDao",
        "Lcom/stripe/offlinemode/storage/OfflineLocationDao;",
        "offlineApiRequestDao",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;",
        "offlineAccountConfigDao",
        "Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;",
        "offlineReaderCipher",
        "Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;",
        "offlineConnectionCipher",
        "Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;",
        "offlineLocationCipher",
        "Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;",
        "offlineApiRequestCipher",
        "Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;",
        "offlineAccountConfigCipher",
        "Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;",
        "offlineRequestHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "offlineKeyValueStore",
        "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
        "clock",
        "Lcom/stripe/time/Clock;",
        "discreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;",
        "(Lcom/stripe/offlinemode/storage/OfflineReaderDao;Lcom/stripe/offlinemode/storage/OfflineConnectionDao;Lcom/stripe/offlinemode/storage/OfflineLocationDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V",
        "_accountOfflineConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "value",
        "accountOfflineConfig",
        "getAccountOfflineConfig",
        "()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
        "setAccountOfflineConfig",
        "(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V",
        "",
        "activeAccountId",
        "getActiveAccountId",
        "()Ljava/lang/String;",
        "setActiveAccountId",
        "(Ljava/lang/String;)V",
        "activeReaderOfflineEnabledFlow",
        "Lkotlinx/coroutines/flow/StateFlow;",
        "",
        "",
        "currentConnectionId",
        "getCurrentConnectionId",
        "()J",
        "setCurrentConnectionId",
        "(J)V",
        "currentConnectionSupportsOfflineSetupIntents",
        "getCurrentConnectionSupportsOfflineSetupIntents",
        "()Z",
        "setCurrentConnectionSupportsOfflineSetupIntents",
        "(Z)V",
        "isSupported",
        "manuallyFetchedUnprocessedOfflinePaymentsFlow",
        "Lkotlinx/coroutines/flow/MutableSharedFlow;",
        "",
        "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
        "offlineConnectionIdFlow",
        "Lkotlinx/coroutines/flow/MutableStateFlow;",
        "offlineRequestStatsFlow",
        "Lkotlinx/coroutines/flow/Flow;",
        "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
        "getOfflineRequestStatsFlow",
        "()Lkotlinx/coroutines/flow/Flow;",
        "saveAccountOfflineConfigJob",
        "Lkotlinx/coroutines/Job;",
        "savedAccountOfflineConfigFlow",
        "getSavedAccountOfflineConfigFlow",
        "()Lkotlinx/coroutines/flow/StateFlow;",
        "savedAccountOfflineConfigFlow$delegate",
        "Lkotlin/Lazy;",
        "unprocessedApiRequestsFlow",
        "getUnprocessedApiRequestsFlow",
        "unprocessedApiRequestsFlow$delegate",
        "clearCache",
        "",
        "delete",
        "toDelete",
        "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
        "(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "deleteExpiredEntities",
        "accountId",
        "(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "discoverOfflineReaderList",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "extractEmbeddedOfflineLocation",
        "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
        "offlineReader",
        "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
        "offlineConnection",
        "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
        "fetchNextToForward",
        "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
        "forceBlockingUpdateOfflinePaymentStats",
        "getActiveAccountFlow",
        "getActiveReaderOfflineEnabledFlow",
        "offlineConnectionId",
        "(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getLatestOfflineLocationForReader",
        "serialNumber",
        "getOfflineConnection",
        "connectionId",
        "getOfflineConnectionAndReaderForPaymentRequest",
        "offlinePIREntity",
        "mostRecentRowId",
        "(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOfflineConnectionEntitiesIfSaved",
        "Lkotlin/Triple;",
        "reader",
        "getOfflineLocationByStripeId",
        "stripeLocationId",
        "getOfflineLocationForConnection",
        "getOfflineLocationForReader",
        "(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "getOfflineRequestStats",
        "offlineApiRequests",
        "getSavedLocationsMap",
        "",
        "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
        "serials",
        "groupOfflinePaymentAmountsByCurrency",
        "offlinePaymentRequests",
        "isExpired",
        "offlineLocationEntity",
        "Lcom/stripe/offlinemode/storage/OfflineLocationEntity;",
        "offlineReaderEntity",
        "Lcom/stripe/offlinemode/storage/OfflineReaderEntity;",
        "isOfflineEnabledForLocationAndReader",
        "locationId",
        "readerSerial",
        "logError",
        "error",
        "",
        "errorMessage",
        "offlineConnections",
        "offlineLocations",
        "offlinePaymentRequestsToSync",
        "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
        "offlineReaders",
        "restoreSoftDeletedPayments",
        "saveOfflineApiRequest",
        "offlineApiRequest",
        "saveOfflineConnectionEntities",
        "offlineLocation",
        "softDelete",
        "",
        "toSoftDelete",
        "updateOfflineConfirmRequestWithOnlineEntity",
        "forwardedEntity",
        "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
        "createRequest",
        "(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "updateOfflineLocationWithConfig",
        "config",
        "Lcom/stripe/device/OfflineLocationConfigs;",
        "(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "wrapErrorsAsTerminalException",
        "T",
        "doFinally",
        "Lkotlin/Function0;",
        "block",
        "(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "hasMoreRelatedRequests",
        "(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "validatePendingCreateRequirement",
        "Companion",
        "ForwardedEntityDetails",
        "offlinemode_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$Companion;

.field private static final SIMULATED_READER_SERIAL_NUMBER_SUFFIX:Ljava/lang/String; = "SIMULATOR"


# instance fields
.field private _accountOfflineConfig:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

.field private final activeReaderOfflineEnabledFlow:Lkotlinx/coroutines/flow/StateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final clock:Lcom/stripe/time/Clock;

.field private currentConnectionSupportsOfflineSetupIntents:Z

.field private final discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final isSupported:Z

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;"
        }
    .end annotation
.end field

.field private final manuallyFetchedUnprocessedOfflinePaymentsFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableSharedFlow<",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final offlineAccountConfigCipher:Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

.field private final offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

.field private final offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

.field private final offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

.field private final offlineConnectionCipher:Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

.field private final offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

.field private final offlineConnectionIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

.field private final offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

.field private final offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

.field private final offlineReaderCipher:Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

.field private final offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

.field private final offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

.field private saveAccountOfflineConfigJob:Lkotlinx/coroutines/Job;

.field private final savedAccountOfflineConfigFlow$delegate:Lkotlin/Lazy;

.field private final unprocessedApiRequestsFlow$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->Companion:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/offlinemode/storage/OfflineReaderDao;Lcom/stripe/offlinemode/storage/OfflineConnectionDao;Lcom/stripe/offlinemode/storage/OfflineLocationDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;Lcom/stripe/time/Clock;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineReaderDao;",
            "Lcom/stripe/offlinemode/storage/OfflineConnectionDao;",
            "Lcom/stripe/offlinemode/storage/OfflineLocationDao;",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;",
            "Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;",
            "Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;",
            "Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;",
            "Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;",
            "Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;",
            "Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;",
            "Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;",
            "Lcom/stripe/time/Clock;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/contracts/Logger<",
            "**>;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v15, p15

    const-string v0, "offlineReaderDao"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnectionDao"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocationDao"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineApiRequestDao"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAccountConfigDao"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineReaderCipher"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnectionCipher"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocationCipher"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineApiRequestCipher"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineAccountConfigCipher"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineRequestHelper"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineKeyValueStore"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discreteLogger"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    .line 80
    iput-object v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    .line 81
    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    .line 82
    iput-object v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    .line 83
    iput-object v4, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 84
    iput-object v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    .line 85
    iput-object v6, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderCipher:Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    .line 86
    iput-object v7, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionCipher:Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    .line 87
    iput-object v8, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    .line 88
    iput-object v9, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    .line 89
    iput-object v10, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigCipher:Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    .line 90
    iput-object v11, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    .line 91
    iput-object v12, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 92
    iput-object v13, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    .line 93
    iput-object v14, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->clock:Lcom/stripe/time/Clock;

    move-object/from16 v1, p15

    .line 94
    iput-object v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 95
    iput-object v15, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/MutableStateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 99
    check-cast v2, Lkotlinx/coroutines/flow/Flow;

    .line 1086
    new-instance v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$special$$inlined$flatMapLatest$1;

    invoke-direct {v3, v1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v3, Lkotlin/jvm/functions/Function3;

    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v2

    .line 101
    move-object v3, v12

    check-cast v3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v3}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/flow/SharingStarted;->Companion:Lkotlinx/coroutines/flow/SharingStarted$Companion;

    invoke-virtual {v4}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->getEagerly()Lkotlinx/coroutines/flow/SharingStarted;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v2, v3, v4, v6}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->activeReaderOfflineEnabledFlow:Lkotlinx/coroutines/flow/StateFlow;

    const/4 v2, 0x6

    .line 104
    invoke-static {v5, v5, v1, v2, v1}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkotlinx/coroutines/flow/MutableSharedFlow;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->manuallyFetchedUnprocessedOfflinePaymentsFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    .line 121
    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;

    invoke-direct {v1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$unprocessedApiRequestsFlow$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->unprocessedApiRequestsFlow$delegate:Lkotlin/Lazy;

    const/4 v1, 0x1

    .line 141
    iput-boolean v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->isSupported:Z

    .line 165
    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$savedAccountOfflineConfigFlow$2;

    invoke-direct {v1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$savedAccountOfflineConfigFlow$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->savedAccountOfflineConfigFlow$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$extractEmbeddedOfflineLocation(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->extractEmbeddedOfflineLocation(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAccountOfflineConfig(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getAccountOfflineConfig(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getActiveReaderOfflineEnabledFlow(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getActiveReaderOfflineEnabledFlow(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDispatcher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/CoroutineDispatcher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    return-object p0
.end method

.method public static final synthetic access$getLogger$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    return-object p0
.end method

.method public static final synthetic access$getManuallyFetchedUnprocessedOfflinePaymentsFlow$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/flow/MutableSharedFlow;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->manuallyFetchedUnprocessedOfflinePaymentsFlow:Lkotlinx/coroutines/flow/MutableSharedFlow;

    return-object p0
.end method

.method public static final synthetic access$getOfflineAccountConfigCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigCipher:Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    return-object p0
.end method

.method public static final synthetic access$getOfflineAccountConfigDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    return-object p0
.end method

.method public static final synthetic access$getOfflineApiRequestCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    return-object p0
.end method

.method public static final synthetic access$getOfflineApiRequestDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    return-object p0
.end method

.method public static final synthetic access$getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOfflineConnectionCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionCipher:Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    return-object p0
.end method

.method public static final synthetic access$getOfflineConnectionDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineConnectionDao;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    return-object p0
.end method

.method public static final synthetic access$getOfflineKeyValueStore$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    return-object p0
.end method

.method public static final synthetic access$getOfflineLocationCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    return-object p0
.end method

.method public static final synthetic access$getOfflineLocationDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineLocationDao;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    return-object p0
.end method

.method public static final synthetic access$getOfflineLocationForReader(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getOfflineLocationForReader(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOfflineReaderCipher$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderCipher:Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    return-object p0
.end method

.method public static final synthetic access$getOfflineReaderDao$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lcom/stripe/offlinemode/storage/OfflineReaderDao;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    return-object p0
.end method

.method public static final synthetic access$getOfflineRequestStats(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/util/List;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getOfflineRequestStats(Ljava/util/List;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSaveAccountOfflineConfigJob$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->saveAccountOfflineConfigJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$hasMoreRelatedRequests(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->hasMoreRelatedRequests(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$isExpired(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->isExpired(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isExpired(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)Z
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->isExpired(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setSaveAccountOfflineConfigJob$p(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->saveAccountOfflineConfigJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$validatePendingCreateRequirement(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->validatePendingCreateRequirement(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final extractEmbeddedOfflineLocation(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 999
    iget-object v11, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location:Lcom/stripe/proto/model/merchant/ApiLocationPb;

    if-eqz v11, :cond_1

    .line 1002
    iget-object v2, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;->enabled:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v12, v2

    .line 1006
    iget-object v3, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->account_id:Ljava/lang/String;

    .line 1007
    iget-wide v4, v1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->created_at:J

    .line 1008
    iget-wide v6, v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;->last_activated_at:J

    .line 1000
    new-instance v0, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    const/16 v14, 0x201

    const/4 v15, 0x0

    const-wide/16 v1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v0 .. v15}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;-><init>(JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private final getAccountOfflineConfig(Ljava/lang/String;)Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 33

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    .line 180
    :try_start_0
    new-instance v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    const v30, 0x7ffffff

    const/16 v31, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v31}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v2

    .line 182
    :cond_0
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigDao:Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;

    invoke-interface {v2, v0}, Lcom/stripe/offlinemode/storage/OfflineAccountConfigDao;->getForAccountId(Ljava/lang/String;)Lcom/stripe/offlinemode/storage/OfflineAccountConfigEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 183
    iget-object v2, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineAccountConfigCipher:Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v2, v0}, Lcom/stripe/offlinemode/cipher/OfflineAccountConfigCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;

    iget-object v0, v0, Lcom/stripe/proto/model/offline_mode/OfflineAccountConfig;->account_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    .line 184
    :cond_2
    :goto_0
    new-instance v2, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    const v30, 0x7ffffff

    const/16 v31, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    invoke-direct/range {v2 .. v31}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception v0

    .line 187
    const-string v2, "Failed to get stored offline account config"

    invoke-direct {v1, v0, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 189
    new-instance v3, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    const v31, 0x7ffffff

    const/16 v32, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v3 .. v32}, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;-><init>(ILjava/util/Map;IIIILjava/util/List;ZZLjava/util/Map;Ljava/lang/String;ZLjava/util/List;Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;Ljava/util/List;IZLjava/util/List;Ljava/util/List;ZZLjava/util/Map;ZLokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v3
.end method

.method private final getActiveReaderOfflineEnabledFlow(Ljava/lang/Long;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/lang/Boolean;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 904
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    if-eqz p1, :cond_4

    .line 906
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    iput-object p0, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$1;->label:I

    invoke-interface {v2, p1, p2, v0}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    :goto_1
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz p2, :cond_4

    .line 907
    iget-object v0, p1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getByIdFlow(J)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 908
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1631
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1;

    invoke-direct {v0, p2, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 922
    new-instance p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5;

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getActiveReaderOfflineEnabledFlow$5;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    check-cast p2, Lkotlin/jvm/functions/Function3;

    invoke-static {v0, p2}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    .line 926
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->flowOf(Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    return-object p1
.end method

.method private final getOfflineConnectionAndReaderForPaymentRequest(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "J",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    const-string v2, "Couldn\'t find an offline location for this request "

    const-string v3, "Couldn\'t find an offline reader for this request "

    const-string v4, "Couldn\'t find an offline connection for this request "

    instance-of v5, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;

    iget v6, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    const/high16 v7, -0x80000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_0

    iget v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    sub-int/2addr v0, v7

    iput v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;

    invoke-direct {v5, v1, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v6

    .line 641
    iget v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eqz v7, :cond_5

    if-eq v7, v11, :cond_4

    if-eq v7, v10, :cond_3

    if-eq v7, v9, :cond_2

    if-ne v7, v8, :cond_1

    iget-wide v2, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    iget-object v4, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v6, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    iget-object v8, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    iget-object v5, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v5

    move-object v11, v9

    move-object v5, v4

    goto/16 :goto_a

    :catchall_0
    move-exception v0

    move-object v11, v0

    :goto_1
    move-object v10, v9

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v3, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    iget-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    iget-object v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v12, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    iget-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_1
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide/from16 v18, v3

    move-object v4, v9

    move-object v3, v10

    move-object v9, v12

    move-object v10, v13

    move-wide/from16 v12, v18

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object v11, v0

    move-object v10, v12

    :goto_2
    move-object v5, v14

    goto/16 :goto_c

    :cond_3
    iget-wide v12, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    iget-object v4, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    iget-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    check-cast v14, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    iget-object v15, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_2
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v9, v10

    :goto_3
    move-object v10, v7

    goto/16 :goto_6

    :catchall_2
    move-exception v0

    move-object v11, v0

    :goto_4
    move-object v5, v15

    goto/16 :goto_c

    :cond_4
    iget-wide v12, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    iget-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    check-cast v15, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    iget-object v8, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_3
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v9, v14

    move-object v14, v15

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v11, v0

    move-object v5, v8

    move-object v10, v14

    goto/16 :goto_c

    :cond_5
    invoke-static {v0}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 646
    const-string v7, "Failed to fetch the next offline entity to forward"

    .line 648
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEntityId()Ljava/lang/String;

    move-result-object v0

    .line 650
    iget-object v8, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    invoke-virtual/range {p1 .. p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getConnectionId()J

    move-result-wide v12

    iput-object v1, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    move-object/from16 v14, p1

    iput-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    iput-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    iput-object v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    move-wide/from16 v9, p2

    iput-wide v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    iput v11, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    invoke-interface {v8, v12, v13, v5}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    if-ne v8, v6, :cond_6

    goto/16 :goto_9

    :cond_6
    move-wide v12, v9

    move-object v9, v7

    move-object v7, v0

    move-object v0, v8

    move-object v8, v1

    :goto_5
    if-eqz v0, :cond_e

    .line 653
    :try_start_5
    iget-object v4, v8, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionCipher:Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v4, v0}, Lcom/stripe/offlinemode/cipher/OfflineConnectionCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;

    .line 656
    iget-object v0, v8, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    move-wide/from16 p1, v12

    iget-wide v11, v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->reader_id:J

    iput-object v8, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    iput-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    iput-object v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    iput-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    iput-object v4, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    move-wide/from16 v16, v11

    move-wide/from16 v10, p1

    iput-wide v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    const/4 v15, 0x2

    iput v15, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    move-wide/from16 v12, v16

    invoke-interface {v0, v12, v13, v5}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getByReaderId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-ne v0, v6, :cond_7

    goto/16 :goto_9

    :cond_7
    move-object v15, v8

    move-wide v12, v10

    goto/16 :goto_3

    :goto_6
    if-eqz v0, :cond_d

    .line 658
    :try_start_6
    iget-object v3, v15, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderCipher:Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v3, v0}, Lcom/stripe/offlinemode/cipher/OfflineReaderCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineReader;

    .line 660
    iget-object v3, v15, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    iget-wide v7, v4, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->location_id:J

    iput-object v15, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    iput-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    iput-object v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    iput-object v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    iput-object v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$5:Ljava/lang/Object;

    iput-wide v12, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    const/4 v11, 0x3

    iput v11, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    invoke-interface {v3, v7, v8, v5}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ne v3, v6, :cond_8

    goto :goto_9

    :cond_8
    move-object v7, v4

    move-object v4, v0

    move-object v0, v3

    move-object v3, v10

    move-object v10, v14

    move-object v14, v15

    .line 641
    :goto_7
    :try_start_7
    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz v0, :cond_9

    .line 662
    iget-object v8, v14, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v8, v0}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz v0, :cond_9

    goto :goto_8

    .line 663
    :cond_9
    invoke-direct {v14, v4, v7}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->extractEmbeddedOfflineLocation(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_c

    .line 676
    iget-object v2, v14, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    move-object v3, v10

    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v2, v3}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    .line 677
    iput-object v14, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$0:Ljava/lang/Object;

    iput-object v10, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$1:Ljava/lang/Object;

    iput-object v9, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$2:Ljava/lang/Object;

    iput-object v8, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$3:Ljava/lang/Object;

    iput-object v0, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$4:Ljava/lang/Object;

    iput-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$5:Ljava/lang/Object;

    iput-object v4, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->L$6:Ljava/lang/Object;

    iput-wide v12, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->J$0:J

    const/4 v2, 0x4

    iput v2, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionAndReaderForPaymentRequest$1;->label:I

    invoke-direct {v14, v10, v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->hasMoreRelatedRequests(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ne v2, v6, :cond_a

    :goto_9
    return-object v6

    :cond_a
    move-object v6, v7

    move-object v7, v0

    move-object v0, v2

    move-wide v2, v12

    move-object v5, v4

    move-object v11, v9

    :goto_a
    :try_start_8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 678
    invoke-virtual {v10}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v12

    cmp-long v0, v12, v2

    if-gez v0, :cond_b

    const/4 v10, 0x1

    goto :goto_b

    :cond_b
    const/4 v0, 0x0

    move v10, v0

    .line 672
    :goto_b
    new-instance v4, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;

    invoke-direct/range {v4 .. v10}, Lcom/stripe/offlinemode/models/OfflineForwardingRequest;-><init>(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;ZZ)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    return-object v4

    :catchall_4
    move-exception v0

    move-object v10, v11

    move-object v5, v14

    move-object v11, v0

    goto :goto_c

    .line 669
    :cond_c
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    move-object v11, v0

    move-object v10, v9

    goto/16 :goto_2

    :catchall_6
    move-exception v0

    move-object v11, v0

    move-object v10, v9

    goto/16 :goto_4

    .line 657
    :cond_d
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 656
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :catchall_7
    move-exception v0

    move-object v11, v0

    move-object v5, v8

    goto/16 :goto_1

    .line 652
    :cond_e
    :try_start_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 649
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_8
    move-exception v0

    move-object v11, v0

    move-object v5, v1

    move-object v10, v7

    .line 1493
    :goto_c
    invoke-static {v5, v11, v10}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1495
    instance-of v0, v11, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez v0, :cond_10

    .line 1496
    instance-of v0, v11, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_d

    .line 1497
    :cond_f
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_d
    move-object v9, v0

    .line 1499
    new-instance v8, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v8 .. v14}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v8

    .line 1495
    :cond_10
    throw v11
.end method

.method private final getOfflineLocationForReader(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;

    iget v4, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;

    invoke-direct {v3, v0, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 929
    iget v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/16 v9, 0x2e

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v3, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 930
    iget-object v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    iput-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    iput v8, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    move-object/from16 v5, p2

    invoke-interface {v2, v1, v5, v3}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getBySerialAndAccount(Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v5, v0

    :goto_1
    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;

    if-eqz v2, :cond_a

    .line 936
    iget-object v8, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    invoke-virtual {v2}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getId()J

    move-result-wide v10

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    iput v7, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    invoke-interface {v8, v10, v11, v3}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionForReader(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;

    if-eqz v2, :cond_9

    .line 942
    iget-object v7, v5, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    invoke-virtual {v2}, Lcom/stripe/offlinemode/storage/OfflineConnectionEntity;->getLocationId()J

    move-result-wide v10

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->L$1:Ljava/lang/Object;

    iput v6, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForReader$1;->label:I

    invoke-interface {v7, v10, v11, v3}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getById(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    :goto_3
    return-object v4

    :cond_7
    move-object v3, v5

    :goto_4
    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    if-eqz v2, :cond_8

    iget-object v3, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v3, v2}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    if-eqz v2, :cond_8

    return-object v2

    .line 943
    :cond_8
    new-instance v10, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 944
    sget-object v11, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 945
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to find location record for saved reader "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v15, 0xc

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 943
    invoke-direct/range {v10 .. v16}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v10

    .line 937
    :cond_9
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    move-object v3, v2

    .line 938
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 939
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to find connection record for saved reader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v1, v17

    .line 937
    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 931
    :cond_a
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 932
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 933
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to fetch saved reader "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 931
    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method private final getOfflineRequestStats(Ljava/util/List;)Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;)",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;"
        }
    .end annotation

    .line 250
    check-cast p1, Ljava/lang/Iterable;

    .line 1114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 250
    invoke-virtual {v3}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v3

    sget-object v4, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne v3, v4, :cond_0

    .line 1115
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1116
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 251
    invoke-direct {p0, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->groupOfflinePaymentAmountsByCurrency(Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 1117
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 253
    invoke-virtual {v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v4

    sget-object v5, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne v4, v5, :cond_2

    .line 1118
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1119
    :cond_3
    check-cast v2, Ljava/util/List;

    .line 253
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    .line 254
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    new-instance v2, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    invoke-direct {v2, p1, v0, v1}, Lcom/stripe/offlinemode/storage/OfflineEntityStats;-><init>(IILjava/util/Map;)V

    return-object v2
.end method

.method private final getSavedAccountOfflineConfigFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;",
            ">;"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->savedAccountOfflineConfigFlow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method private final getUnprocessedApiRequestsFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;>;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->unprocessedApiRequestsFlow$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method private final groupOfflinePaymentAmountsByCurrency(Ljava/util/List;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 262
    const-string v2, "Failed to fetch offline payments by currency"

    .line 263
    :try_start_0
    check-cast p1, Ljava/lang/Iterable;

    .line 1127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1136
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1135
    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    .line 263
    iget-object v3, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    check-cast v1, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v3, v1}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v1, v1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_0

    .line 1135
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1139
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 1127
    check-cast v0, Ljava/lang/Iterable;

    .line 1140
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p1, Ljava/util/Map;

    .line 1141
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1142
    move-object v3, v1

    check-cast v3, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 265
    iget-object v3, v3, Lcom/stripe/proto/model/rest/PaymentIntent;->currency:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 1144
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1143
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;

    .line 1147
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    :cond_2
    check-cast v4, Ljava/util/List;

    .line 1151
    check-cast v1, Lcom/stripe/proto/model/rest/PaymentIntent;

    .line 266
    iget-object v1, v1, Lcom/stripe/proto/model/rest/PaymentIntent;->amount:Ljava/lang/Long;

    if-eqz v1, :cond_3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1151
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 266
    :cond_3
    const-string p1, "Payment intent must have an amount"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    :cond_4
    const-string p1, "Payment intent must have a currency"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    .line 1155
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1157
    move-object v3, v1

    check-cast v3, Ljava/util/Map$Entry;

    .line 1155
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 1157
    check-cast v1, Ljava/util/Map$Entry;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->sumOfLong(Ljava/lang/Iterable;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1157
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_6
    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 1164
    invoke-static {p0, v3, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1166
    instance-of p1, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_8

    .line 1167
    instance-of p1, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_3

    .line 1168
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_3
    move-object v1, p1

    .line 1170
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1166
    :cond_8
    throw v3
.end method

.method private final hasMoreRelatedRequests(Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 968
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getType()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v0

    sget-object v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 974
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 975
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getEntityId()Ljava/lang/String;

    move-result-object v3

    .line 976
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getId()J

    move-result-wide v4

    .line 977
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getAccountId()Ljava/lang/String;

    move-result-object v6

    move-object v7, p2

    .line 974
    invoke-interface/range {v2 .. v7}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->hasMoreRequestsAfter(Ljava/lang/String;JLjava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 980
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final isExpired(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;)Z
    .locals 5

    .line 963
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x39ef8b000L

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 964
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;->getLastActivatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method private final isExpired(Lcom/stripe/offlinemode/storage/OfflineReaderEntity;)Z
    .locals 5

    .line 954
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v1}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x9a7ec800L

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 955
    invoke-virtual {p1}, Lcom/stripe/offlinemode/storage/OfflineReaderEntity;->getLastActivatedAt()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method private final logError(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 9

    .line 1055
    instance-of v0, p1, Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;

    const-string v1, "Table"

    if-eqz v0, :cond_0

    .line 1056
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object v0, p1

    check-cast v0, Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/cipher/OfflineDataMismatchException;->getTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    sget-object v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$1;->INSTANCE:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$1;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    goto :goto_0

    .line 1061
    :cond_0
    instance-of v0, p1, Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;

    if-eqz v0, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object v0, p1

    check-cast v0, Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/cipher/OfflineDecryptionException;->getTable()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    sget-object v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$2;->INSTANCE:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$2;

    move-object v6, v0

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x5

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    goto :goto_0

    .line 1067
    :cond_1
    instance-of v0, p1, Landroid/database/SQLException;

    if-eqz v0, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->discreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    sget-object v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$3;->INSTANCE:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$logError$3;

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v7}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 1071
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DefaultOfflineRepository Error:: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {v0, p2, p1, v1}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    return-void
.end method

.method private final validatePendingCreateRequirement(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 986
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 987
    iget-object p2, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_6

    :cond_3
    iget-object p2, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    check-cast p2, Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4

    goto :goto_2

    .line 988
    :cond_4
    iget-object p2, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->type:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    sget-object v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    if-ne p2, v2, :cond_6

    .line 989
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 990
    iget-object p1, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 991
    sget-object v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CREATE_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 989
    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$validatePendingCreateRequirement$1;->label:I

    invoke-interface {p2, p1, v2, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->getByOfflineIdAndType(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_5

    return-object v1

    .line 986
    :cond_5
    :goto_1
    check-cast p2, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    if-eqz p2, :cond_7

    .line 992
    invoke-virtual {p2}, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;->getDeleted()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    :goto_2
    const/4 v3, 0x0

    .line 989
    :cond_7
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private final synthetic wrapErrorsAsTerminalException(Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 1022
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1024
    :try_start_1
    invoke-static {p0, v3, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1026
    instance-of p3, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p3, :cond_1

    .line 1027
    instance-of p3, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p3, :cond_0

    sget-object p3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1028
    :cond_0
    sget-object p3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v1, p3

    .line 1030
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1026
    :cond_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    .line 1036
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p1
.end method

.method static synthetic wrapErrorsAsTerminalException$default(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1018
    sget-object p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$wrapErrorsAsTerminalException$1;->INSTANCE:Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$wrapErrorsAsTerminalException$1;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    .line 1022
    :cond_0
    :try_start_0
    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1036
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-object p0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1024
    :try_start_1
    invoke-static {p0, v3, p1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1026
    instance-of p0, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p0, :cond_2

    .line 1027
    instance-of p0, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p0, :cond_1

    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1028
    :cond_1
    sget-object p0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v1, p0

    .line 1030
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1026
    :cond_2
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 1036
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    throw p0
.end method


# virtual methods
.method public activeReaderOfflineEnabledFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 852
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->activeReaderOfflineEnabledFlow:Lkotlinx/coroutines/flow/StateFlow;

    return-object v0
.end method

.method public clearCache()V
    .locals 2

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->_accountOfflineConfig:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 238
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    invoke-interface {v1}, Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;->clear()V

    .line 239
    iget-object v1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v1, v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public delete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 553
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    move-object v3, p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 555
    const-string p2, "Failed to delete offline payment intent request."

    .line 557
    :try_start_1
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 559
    iget-object v4, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    if-nez v4, :cond_4

    iget-object v4, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v4, :cond_3

    move-object v5, v4

    check-cast v5, Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, p1

    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    .line 557
    iput-object p0, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$delete$1;->label:I

    invoke-interface {v2, v4, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->deleteByOfflineOrPaymentIntentId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p0

    move-object p1, p2

    .line 564
    :goto_2
    :try_start_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 565
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 561
    :cond_6
    :try_start_3
    const-string p1, "One of offline or payment intent id must not be null."

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    .line 1436
    :goto_3
    invoke-static {v1, v3, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1438
    instance-of p1, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_8

    .line 1439
    instance-of p1, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_4

    .line 1440
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_4
    move-object v1, p1

    .line 1442
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1438
    :cond_8
    throw v3
.end method

.method public deleteExpiredEntities(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;

    iget v4, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;

    invoke-direct {v3, v1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 872
    iget v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v5, v4

    goto/16 :goto_7

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$4:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v7, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v5, v7

    goto :goto_1

    :cond_3
    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$5:Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    iget-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/Set;

    iget-object v8, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/util/Set;

    iget-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v11, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_2
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v16, v11

    move-object v11, v8

    move-object v8, v9

    move-object v9, v12

    move-object/from16 v12, v16

    goto/16 :goto_3

    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object v5, v9

    move-object v3, v12

    goto/16 :goto_7

    :cond_4
    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    iget-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v2, v5

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v6, v0

    :goto_1
    move-object v3, v9

    goto/16 :goto_7

    :cond_5
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 874
    const-string v2, "Failed to delete expired entities"

    .line 877
    :try_start_4
    iget-object v5, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 879
    new-instance v11, Ljava/util/Date;

    iget-object v12, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->clock:Lcom/stripe/time/Clock;

    invoke-interface {v12}, Lcom/stripe/time/Clock;->currentTimeMillis()J

    move-result-wide v12

    const-wide v14, 0x9a7ec800L

    sub-long/2addr v12, v14

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 877
    iput-object v1, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    iput v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    invoke-interface {v5, v0, v11, v3}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->deleteOrphanedPayments(Ljava/lang/String;Ljava/util/Date;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-ne v5, v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v9, v1

    .line 885
    :goto_2
    :try_start_5
    new-instance v5, Ljava/util/LinkedHashSet;

    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v5, Ljava/util/Set;

    .line 887
    iget-object v11, v9, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    iput-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    iput-object v0, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    iput-object v2, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$4:Ljava/lang/Object;

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$5:Ljava/lang/Object;

    iput v8, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    invoke-interface {v11, v0, v3}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->getConnectionIds(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ne v8, v4, :cond_7

    goto :goto_5

    :cond_7
    move-object v11, v8

    move-object v8, v2

    move-object v2, v11

    move-object v12, v0

    move-object v0, v5

    move-object v11, v0

    :goto_3
    :try_start_6
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 889
    iget-object v0, v9, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    iput-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    iput-object v12, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$3:Ljava/lang/Object;

    iput-object v5, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$4:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$5:Ljava/lang/Object;

    iput v7, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    invoke-interface {v0, v12, v3}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getMostRecentConnectionIdForEachReader(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-ne v2, v4, :cond_8

    goto :goto_5

    :cond_8
    move-object v0, v5

    move-object v7, v8

    move-object v5, v11

    move-object v8, v12

    :goto_4
    :try_start_7
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 892
    iget-object v0, v9, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    iput-object v9, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$0:Ljava/lang/Object;

    iput-object v7, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$1:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$2:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$3:Ljava/lang/Object;

    iput-object v10, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->L$4:Ljava/lang/Object;

    iput v6, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$deleteExpiredEntities$1;->label:I

    invoke-interface {v0, v8, v5, v3}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->retainByIds(Ljava/lang/String;Ljava/util/Set;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-ne v0, v4, :cond_9

    :goto_5
    return-object v4

    :cond_9
    move-object v4, v7

    move-object v3, v9

    .line 893
    :goto_6
    :try_start_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 894
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_4
    move-exception v0

    move-object v6, v0

    move-object v5, v8

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v6, v0

    move-object v5, v2

    goto/16 :goto_1

    :catchall_6
    move-exception v0

    move-object v6, v0

    move-object v3, v1

    move-object v5, v2

    .line 1619
    :goto_7
    invoke-static {v3, v6, v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1621
    instance-of v0, v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez v0, :cond_b

    .line 1622
    instance-of v0, v6, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_8

    .line 1623
    :cond_a
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_8
    move-object v4, v0

    .line 1625
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 1621
    :cond_b
    throw v6
.end method

.method public discoverOfflineReaderList(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    const-string v3, "Failed to fetch offline reader list"

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$discoverOfflineReaderList$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1206
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1208
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1209
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1210
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1212
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1208
    :cond_1
    throw v4
.end method

.method public fetchNextToForward(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/models/OfflineForwardingRequest;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 532
    const-string v2, "Failed to fetch the next offline entity to forward"

    .line 534
    :try_start_0
    iget-object p2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    invoke-interface {p2, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->fetchNextPaymentToForward(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 535
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 536
    invoke-static {p2}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p2

    .line 538
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->getMostRecentRowId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 539
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->filterNotNull(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 540
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 541
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$fetchNextToForward$2$1;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$fetchNextToForward$2$1;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    .line 537
    invoke-static {p2, p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->flowCombine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v3, p1

    .line 1415
    invoke-static {p0, v3, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1417
    instance-of p1, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1418
    instance-of p1, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1419
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v1, p1

    .line 1421
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1417
    :cond_1
    throw v3
.end method

.method public forceBlockingUpdateOfflinePaymentStats()Lcom/stripe/offlinemode/storage/OfflineEntityStats;
    .locals 3

    .line 897
    invoke-virtual {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 898
    new-instance v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$forceBlockingUpdateOfflinePaymentStats$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$forceBlockingUpdateOfflinePaymentStats$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x1

    invoke-static {v1, v2, v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineEntityStats;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getAccountOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->_accountOfflineConfig:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getSavedAccountOfflineConfigFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    :cond_0
    return-object v0
.end method

.method public getActiveAccountFlow()Lkotlinx/coroutines/flow/StateFlow;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/StateFlow<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    invoke-interface {v0}, Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;->getSavedAccountIdStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    return-object v0
.end method

.method public getActiveAccountId()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    invoke-interface {v0}, Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;->getSavedAccountIdStateFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 149
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->NO_LAST_SEEN_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 148
    const-string v3, "Account id must not be null, connect to reader while online."

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public getCurrentConnectionId()J
    .locals 7

    .line 158
    const-string v2, "Missing connection id"

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-interface {v0}, Lkotlinx/coroutines/flow/MutableStateFlow;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-string v0, "Connection id is null"

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 1099
    invoke-static {p0, v3, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1101
    instance-of v0, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez v0, :cond_2

    .line 1102
    instance-of v0, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1103
    :cond_1
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v1, v0

    .line 1105
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1101
    :cond_2
    throw v3
.end method

.method public getCurrentConnectionSupportsOfflineSetupIntents()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->currentConnectionSupportsOfflineSetupIntents:Z

    return v0
.end method

.method public getLatestOfflineLocationForReader(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 3

    const-string v0, "serialNumber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getLatestOfflineLocationForReader$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getLatestOfflineLocationForReader$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    return-object p1
.end method

.method public getOfflineConnection(J)Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    .locals 8

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch offline connection with ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnection$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnection$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;JLkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1352
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1354
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1355
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1356
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1358
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1354
    :cond_1
    throw v4
.end method

.method public getOfflineConnectionEntitiesIfSaved(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;)Lkotlin/Triple;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Triple<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 726
    const-string v3, "Failed to get offline reader and connection pair"

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineConnectionEntitiesIfSaved$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/Reader;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Triple;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1535
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1537
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1538
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1539
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1541
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1537
    :cond_1
    throw v4
.end method

.method public getOfflineLocationByStripeId(Ljava/lang/String;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 8

    const-string v0, "stripeLocationId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch offline location with Stripe ID "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationByStripeId$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationByStripeId$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1394
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1396
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1397
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1398
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1400
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1396
    :cond_1
    throw v4
.end method

.method public getOfflineLocationForConnection(Lcom/stripe/proto/model/offline_mode/OfflineConnection;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    .locals 8

    const-string v0, "offlineConnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Failed to fetch offline location for connection "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p1, Lcom/stripe/proto/model/offline_mode/OfflineConnection;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getOfflineLocationForConnection$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/proto/model/offline_mode/OfflineLocation;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1373
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1375
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1376
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1377
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1379
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1375
    :cond_1
    throw v4
.end method

.method public getOfflineRequestStatsFlow()Lkotlinx/coroutines/flow/Flow;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/storage/OfflineEntityStats;",
            ">;"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->getUnprocessedApiRequestsFlow()Lkotlinx/coroutines/flow/StateFlow;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/flow/Flow;

    .line 1111
    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$special$$inlined$map$1;

    invoke-direct {v1, v0, p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;)V

    check-cast v1, Lkotlinx/coroutines/flow/Flow;

    .line 234
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineRequestStatsFlow$2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineRequestStatsFlow$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function3;

    invoke-static {v1, v0}, Lkotlinx/coroutines/flow/FlowKt;->catch(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    return-object v0
.end method

.method public getSavedLocationsMap(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/proto/model/merchant/ApiLocationPb;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serials"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 786
    const-string v3, "Failed to get saved locations for account"

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$getSavedLocationsMap$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/util/List;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1556
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1558
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1559
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1560
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1562
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1558
    :cond_1
    throw v4
.end method

.method public isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const-string v0, "readerSerial"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 815
    const-string v3, "Failed to get offline reader."

    .line 817
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v9, 0x0

    move-object v6, p0

    move-object v5, p1

    move-object v7, p2

    move-object v8, p3

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$isOfflineEnabledForLocationAndReader$1$1;-><init>(Ljava/lang/String;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v6

    :try_start_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v6

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    move-object v4, p2

    .line 1577
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1579
    instance-of p2, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p2, :cond_1

    .line 1580
    instance-of p2, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 1581
    :cond_0
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_1
    move-object v2, p2

    .line 1583
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1579
    :cond_1
    throw v4
.end method

.method public isSupported()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->isSupported:Z

    return v0
.end method

.method public offlineConnections(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineConnection;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    const-string v3, "Failed to fetch offline connections"

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionDao:Lcom/stripe/offlinemode/storage/OfflineConnectionDao;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineConnectionDao;->getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 455
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 1298
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1;

    invoke-direct {v0, p1, p0, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineConnections$lambda$31$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1305
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1307
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1308
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1309
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1311
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1307
    :cond_1
    throw v4
.end method

.method public offlineLocations(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineLocation;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    const-string v3, "Failed to fetch offline connections"

    .line 469
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 470
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 1324
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1;

    invoke-direct {v0, p1, p0, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineLocations$lambda$35$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1331
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1333
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1334
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1335
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1337
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1333
    :cond_1
    throw v4
.end method

.method public offlinePaymentRequestsToSync(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Lcom/stripe/offlinemode/models/OfflineRequestsToSync;",
            ">;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    const-string v3, "Failed to fetch offline payment intent requests"

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 422
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 1246
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1;

    invoke-direct {v0, p1, p0, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlinePaymentRequestsToSync$lambda$23$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1253
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1255
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1256
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1257
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1259
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1255
    :cond_1
    throw v4
.end method

.method public offlineReaders(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/flow/Flow<",
            "Ljava/util/List<",
            "Lcom/stripe/proto/model/offline_mode/OfflineReader;",
            ">;>;"
        }
    .end annotation

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    const-string v3, "Failed to fetch offline readers"

    .line 439
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineReaderDao:Lcom/stripe/offlinemode/storage/OfflineReaderDao;

    invoke-interface {v0, p1}, Lcom/stripe/offlinemode/storage/OfflineReaderDao;->getByAccountId(Ljava/lang/String;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 440
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 1272
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1;

    invoke-direct {v0, p1, p0, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$offlineReaders$lambda$27$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;)V

    check-cast v0, Lkotlinx/coroutines/flow/Flow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1279
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1281
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1282
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1283
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1285
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1281
    :cond_1
    throw v4
.end method

.method public restoreSoftDeletedPayments(Ljava/lang/String;)V
    .locals 8

    const-string v0, "accountId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 857
    const-string v3, "Failed to restore deleted payments"

    .line 859
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$restoreSoftDeletedPayments$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$restoreSoftDeletedPayments$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 862
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1598
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1600
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1601
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1602
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1604
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1600
    :cond_1
    throw v4
.end method

.method public saveOfflineApiRequest(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;)V
    .locals 8

    const-string v0, "offlineApiRequest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    const-string v3, "Failed to save offline payment intent requests"

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineApiRequest$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)V

    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v1}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    move-object v4, p1

    .line 1227
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1229
    instance-of p1, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_1

    .line 1230
    instance-of p1, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_0

    .line 1231
    :cond_0
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_0
    move-object v2, p1

    .line 1233
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1229
    :cond_1
    throw v4
.end method

.method public saveOfflineConnectionEntities(Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lcom/stripe/proto/model/offline_mode/OfflineLocation;)J
    .locals 10

    const-string v0, "offlineReader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConnection"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLocation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    const-string v3, "Failed to save offline reader and connection"

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    new-instance v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p2

    move-object v7, p3

    :try_start_1
    invoke-direct/range {v4 .. v9}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$saveOfflineConnectionEntities$1$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/model/offline_mode/OfflineReader;Lcom/stripe/proto/model/offline_mode/OfflineLocation;Lcom/stripe/proto/model/offline_mode/OfflineConnection;Lkotlin/coroutines/Continuation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p1, v5

    :try_start_2
    check-cast v4, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v4}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide p2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p1, v5

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object p1, p0

    :goto_0
    move-object p2, v0

    move-object v4, p2

    .line 1185
    invoke-static {p0, v4, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1187
    instance-of p2, v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p2, :cond_1

    .line 1188
    instance-of p2, v4, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_1

    .line 1189
    :cond_0
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_1
    move-object v2, p2

    .line 1191
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1

    .line 1187
    :cond_1
    throw v4
.end method

.method public setAccountOfflineConfig(Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;)V
    .locals 8

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iput-object p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->_accountOfflineConfig:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;

    .line 200
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->saveAccountOfflineConfigJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Received new account offline config. Canceling previously queued write to DB."

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3, v1}, Lkotlinx/coroutines/JobKt;->cancel$default(Lkotlinx/coroutines/Job;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;

    invoke-direct {v0, p0, p1, v1}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$2;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$AccountOfflineConfigPb;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object p1

    .line 226
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$4;

    invoke-direct {v0, p0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$accountOfflineConfig$4;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/KMutableProperty0;

    invoke-interface {v0, p1}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public setActiveAccountId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineKeyValueStore:Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/offlinemode/storage/OfflineKeyValueStore;->saveAccountId(Ljava/lang/String;)V

    return-void
.end method

.method public setCurrentConnectionId(J)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineConnectionIdFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentConnectionSupportsOfflineSetupIntents(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->currentConnectionSupportsOfflineSetupIntents:Z

    return-void
.end method

.method public softDelete(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;

    iget v1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;

    invoke-direct {v0, p0, p2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 567
    iget v2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object v0, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->L$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p2, v0

    move-object v2, p1

    move-object v3, p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 569
    const-string p2, "Failed to soft delete offline payment intent request."

    .line 571
    :try_start_1
    iget-object v2, p0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    .line 572
    new-array v4, v3, [Ljava/lang/String;

    .line 573
    iget-object v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    if-nez v5, :cond_4

    .line 574
    iget-object v5, p1, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->stripe_entity_id:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz v5, :cond_3

    move-object v6, v5

    check-cast v6, Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, p1

    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    const/4 p1, 0x0

    .line 572
    aput-object v5, v4, p1

    .line 571
    iput-object p0, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$softDelete$1;->label:I

    invoke-interface {v2, v4, v0}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->softDeleteByIntentId([Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, p2

    move-object p2, p1

    move-object p1, v1

    move-object v1, p0

    :goto_2
    :try_start_2
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxInt(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    .line 576
    :cond_6
    :try_start_3
    const-string p1, "One of offline or payment intent id must not be null."

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p1, v0

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    .line 1457
    :goto_3
    invoke-static {v1, v3, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1459
    instance-of p1, v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez p1, :cond_8

    .line 1460
    instance-of p1, v3, Landroid/database/sqlite/SQLiteFullException;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_4

    .line 1461
    :cond_7
    sget-object p1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_4
    move-object v1, p1

    .line 1463
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 1459
    :cond_8
    throw v3
.end method

.method public updateOfflineConfirmRequestWithOnlineEntity(Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 64
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/offlinemode/models/OfflineForwardingResponse$Success;",
            "Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v3, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;

    iget v5, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    sub-int/2addr v3, v6

    iput v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;

    invoke-direct {v4, v1, v3}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 587
    iget v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v6, :cond_5

    if-eq v6, v10, :cond_4

    if-eq v6, v9, :cond_3

    if-eq v6, v8, :cond_2

    if-eq v6, v7, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_c

    :cond_2
    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/Unit;

    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_3
    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v9

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v15, v0

    move-object v14, v2

    move-object v2, v9

    goto/16 :goto_9

    :cond_4
    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$6:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v12, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    iget-object v13, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    iget-object v14, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_1
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v25, v0

    move-object/from16 v28, v2

    move-object/from16 v27, v6

    move-object v2, v10

    move-object v6, v12

    move-object v10, v14

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v14

    move-object v14, v10

    move-object v10, v2

    move-object v15, v0

    move-object v6, v12

    :goto_1
    move-object v2, v13

    goto/16 :goto_9

    :cond_5
    invoke-static {v3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 592
    const-string v3, "Failed to update offline payment intent request."

    .line 596
    :try_start_2
    instance-of v6, v0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    if-eqz v6, :cond_6

    new-instance v6, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;

    .line 597
    move-object v12, v0

    check-cast v12, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-virtual {v12}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;->getPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    .line 598
    move-object v13, v0

    check-cast v13, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-virtual {v13}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;->getPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v13

    iget-object v13, v13, Lcom/stripe/proto/model/rest/PaymentIntent;->client_secret:Ljava/lang/String;

    .line 599
    sget-object v14, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->PROCESS_PAYMENT_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 600
    iget-object v15, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    new-instance v16, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    check-cast v0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$PaymentIntentSuccess;->getPaymentIntent()Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->id:Ljava/lang/String;

    const/16 v28, 0x7ef

    const/16 v29, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, v0

    invoke-direct/range {v16 .. v29}, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/api/rest/PaymentMethodOptions;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest$RedirectPreferences;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v15, v0}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;)Ljava/lang/String;

    move-result-object v0

    .line 596
    invoke-direct {v6, v12, v13, v14, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V

    goto :goto_2

    .line 602
    :cond_6
    instance-of v6, v0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    if-eqz v6, :cond_e

    new-instance v6, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;

    .line 603
    move-object v12, v0

    check-cast v12, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-virtual {v12}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;->getSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v12

    iget-object v12, v12, Lcom/stripe/proto/model/rest/SetupIntent;->id:Ljava/lang/String;

    .line 604
    move-object v13, v0

    check-cast v13, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-virtual {v13}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;->getSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v13

    iget-object v13, v13, Lcom/stripe/proto/model/rest/SetupIntent;->client_secret:Ljava/lang/String;

    .line 605
    sget-object v14, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;->CONFIRM_SETUP_INTENT:Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    .line 606
    iget-object v15, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineRequestHelper:Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;

    new-instance v16, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    check-cast v0, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;

    invoke-virtual {v0}, Lcom/stripe/offlinemode/models/OfflineForwardingResponse$SetupIntentSuccess;->getSetupIntent()Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v0

    iget-object v0, v0, Lcom/stripe/proto/model/rest/SetupIntent;->id:Ljava/lang/String;

    const/16 v24, 0x5f

    const/16 v25, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    move-object/from16 v22, v0

    invoke-direct/range {v16 .. v25}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, v16

    invoke-interface {v15, v0}, Lcom/stripe/offlinemode/helpers/OfflineRequestHelper;->getUrl(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;)Ljava/lang/String;

    move-result-object v0

    .line 602
    invoke-direct {v6, v12, v13, v14, v0}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;)V

    .line 595
    :goto_2
    invoke-virtual {v6}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;->component1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;->component2()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;->component3()Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;

    move-result-object v13

    invoke-virtual {v6}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$ForwardedEntityDetails;->component4()Ljava/lang/String;

    move-result-object v6

    .line 611
    iget-object v14, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->offline_id:Ljava/lang/String;

    if-eqz v14, :cond_b

    .line 613
    iget-object v15, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    iput-object v1, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    iput-object v1, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$4:Ljava/lang/Object;

    iput-object v12, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$6:Ljava/lang/Object;

    iput v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    invoke-interface {v15, v14, v13, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->getByOfflineIdAndType(Ljava/lang/String;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v10, v5, :cond_7

    goto/16 :goto_b

    :cond_7
    move-object/from16 v27, v0

    move-object v13, v2

    move-object v2, v3

    move-object/from16 v25, v6

    move-object v3, v10

    move-object/from16 v28, v12

    move-object v6, v1

    move-object v10, v6

    :goto_3
    :try_start_3
    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    if-eqz v3, :cond_c

    .line 618
    iget-object v0, v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    check-cast v3, Lcom/stripe/offlinemode/storage/OfflineEntity;

    invoke-virtual {v0, v3}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    if-eqz v14, :cond_c

    .line 625
    iget-object v0, v14, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v0, :cond_8

    const/16 v62, 0x3

    const/16 v63, 0x0

    move-object/from16 v46, v28

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const v61, -0x80002

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v63}, Lcom/stripe/proto/model/rest/PaymentIntent;->copy$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    goto :goto_4

    :cond_8
    move-object/from16 v46, v28

    move-object v0, v11

    .line 629
    :goto_4
    iget-object v3, v14, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->setup_intent:Lcom/stripe/proto/model/rest/SetupIntent;

    if-eqz v3, :cond_9

    const v48, 0x1ffffc

    const/16 v49, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v28, v46

    const/16 v46, 0x0

    const/16 v47, 0x0

    move-object/from16 v26, v3

    invoke-static/range {v26 .. v49}, Lcom/stripe/proto/model/rest/SetupIntent;->copy$default(Lcom/stripe/proto/model/rest/SetupIntent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/LastSetupError;Ljava/util/Map;Lcom/stripe/proto/model/rest/SetupIntent$NextAction;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/rest/SetupIntent;

    move-result-object v3

    move-object/from16 v29, v3

    goto :goto_5

    :cond_9
    move-object/from16 v29, v11

    :goto_5
    const/16 v31, 0x14f7

    const/16 v32, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v18, v27

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move-object/from16 v26, v0

    .line 621
    invoke-static/range {v14 .. v32}, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;Lcom/stripe/proto/model/offline_mode/OfflineApiRequest$ApiRequestType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent;JLcom/stripe/proto/model/rest/SetupIntent;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 636
    iget-object v3, v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestCipher:Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;

    check-cast v0, Lcom/squareup/wire/Message;

    invoke-virtual {v3, v0}, Lcom/stripe/offlinemode/cipher/OfflineApiRequestCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;

    if-eqz v0, :cond_c

    .line 637
    iget-object v3, v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    iput-object v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    iput-object v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$4:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$5:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$6:Ljava/lang/Object;

    iput v9, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    invoke-static {v3, v0, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDaoKt;->update(Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;Lcom/stripe/offlinemode/storage/OfflineApiRequestEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_a

    goto/16 :goto_b

    :cond_a
    :goto_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v15, v0

    move-object v14, v2

    goto/16 :goto_1

    :cond_b
    move-object v10, v1

    move-object v13, v2

    :cond_c
    move-object v0, v11

    .line 593
    :goto_7
    iget-object v2, v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    iget-wide v6, v13, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    iput-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$4:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$5:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$6:Ljava/lang/Object;

    iput v8, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    invoke-interface {v2, v6, v7, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->deleteByRowId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_d

    goto :goto_b

    .line 639
    :cond_d
    :goto_8
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 602
    :cond_e
    :try_start_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v15, v0

    move-object v6, v1

    move-object v10, v6

    move-object v14, v3

    .line 1472
    :goto_9
    :try_start_5
    invoke-static {v6, v15, v14}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1474
    instance-of v0, v15, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez v0, :cond_10

    .line 1475
    instance-of v0, v15, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_a

    .line 1476
    :cond_f
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_a
    move-object v13, v0

    .line 1478
    new-instance v12, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v17, 0x8

    const/16 v18, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v18}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v12

    .line 1474
    :cond_10
    throw v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    .line 593
    iget-object v3, v10, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineApiRequestDao:Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;

    iget-wide v8, v2, Lcom/stripe/proto/model/offline_mode/OfflineApiRequest;->id:J

    iput-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$0:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$1:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$3:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$4:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$5:Ljava/lang/Object;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->L$6:Ljava/lang/Object;

    iput v7, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineConfirmRequestWithOnlineEntity$1;->label:I

    invoke-interface {v3, v8, v9, v4}, Lcom/stripe/offlinemode/storage/OfflineApiRequestDao;->deleteByRowId(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_11

    :goto_b
    return-object v5

    .line 1469
    :cond_11
    :goto_c
    throw v0
.end method

.method public updateOfflineLocationWithConfig(Ljava/lang/String;Lcom/stripe/device/OfflineLocationConfigs;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/stripe/device/OfflineLocationConfigs;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    const-string v3, "Couldn\'t find location for specified ID "

    instance-of v4, v2, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;

    iget v5, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    const/high16 v6, -0x80000000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    iget v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    sub-int/2addr v2, v6

    iput v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;

    invoke-direct {v4, v1, v2}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;-><init>(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v5

    .line 682
    iget v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    if-eq v6, v8, :cond_2

    if-ne v6, v7, :cond_1

    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$1:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$0:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_0
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    move-object v6, v0

    move-object v5, v3

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$4:Ljava/lang/Object;

    check-cast v0, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    iget-object v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v9, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lcom/stripe/device/OfflineLocationConfigs;

    iget-object v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$1:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;

    :try_start_1
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v33, v6

    move-object v6, v0

    move-object v0, v10

    move-object/from16 v10, v33

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v5, v6

    move-object v4, v11

    move-object v6, v0

    goto/16 :goto_9

    :cond_3
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 686
    const-string v2, "Failed to update offline location with configurations."

    .line 690
    :try_start_2
    iget-object v6, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    .line 691
    iget-object v9, v1, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    iput-object v1, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$0:Ljava/lang/Object;

    iput-object v0, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$1:Ljava/lang/Object;

    move-object/from16 v10, p2

    iput-object v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$2:Ljava/lang/Object;

    iput-object v2, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$4:Ljava/lang/Object;

    iput v8, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    invoke-interface {v9, v0, v4}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->getByStripeLocationId(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v9, v5, :cond_4

    goto/16 :goto_7

    :cond_4
    move-object v11, v10

    move-object v10, v2

    move-object v2, v9

    move-object v9, v11

    move-object v11, v1

    :goto_1
    if-eqz v2, :cond_b

    :try_start_3
    check-cast v2, Lcom/stripe/offlinemode/storage/OfflineEntity;

    .line 690
    invoke-virtual {v6, v2}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->decrypt(Lcom/stripe/offlinemode/storage/OfflineEntity;)Lcom/squareup/wire/Message;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    .line 696
    iget-object v2, v11, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;

    .line 697
    const-string v3, "Updating OfflineLocation with config."

    const/4 v6, 0x6

    .line 698
    new-array v6, v6, [Lkotlin/Pair;

    new-instance v13, Lkotlin/Pair;

    const-string v14, "offlineEnabled"

    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v15

    move/from16 p3, v8

    if-eqz v15, :cond_5

    iget-object v15, v15, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v15, :cond_5

    iget-boolean v15, v15, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;->enabled:Z

    invoke-static {v15}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v15

    goto :goto_2

    :cond_5
    const/4 v15, 0x0

    :goto_2
    invoke-direct {v13, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x0

    aput-object v13, v6, v14

    .line 699
    new-instance v13, Lkotlin/Pair;

    const-string v15, "tippingConfig"

    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v14

    invoke-direct {v13, v15, v14}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, p3

    .line 700
    new-instance v13, Lkotlin/Pair;

    const-string v14, "bluetoothAutoReconnectConfig"

    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getBluetoothAutoReconnectConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v7

    .line 701
    new-instance v13, Lkotlin/Pair;

    const-string v14, "usbAutoReconnectConfig"

    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getUsbAutoReconnectConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v14, 0x3

    aput-object v13, v6, v14

    .line 702
    new-instance v13, Lkotlin/Pair;

    const-string v15, "locationDatabaseId"

    iget-wide v7, v12, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->id:J

    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/Boxing;->boxLong(J)Ljava/lang/Long;

    move-result-object v7

    invoke-direct {v13, v15, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x4

    aput-object v13, v6, v7

    .line 703
    new-instance v7, Lkotlin/Pair;

    const-string v8, "locationStripeId"

    invoke-direct {v7, v8, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x5

    aput-object v7, v6, v0

    .line 696
    invoke-interface {v2, v3, v6}, Lcom/stripe/jvmcore/logging/terminal/contracts/Logger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 707
    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getOfflineConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb;->reader_offline_config:Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Lcom/stripe/proto/terminal/terminal/pub/message/config/OfflineConfigPb$ReaderOfflineConfigPb;->enabled:Z

    move/from16 v24, v0

    goto :goto_3

    :cond_6
    const/16 v24, 0x0

    .line 708
    :goto_3
    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getTippingConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v14, v2}, Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Ljava/util/Map;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_4

    :cond_7
    const/16 v20, 0x0

    .line 709
    :goto_4
    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getBluetoothAutoReconnectConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-result-object v13

    if-eqz v13, :cond_8

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;IILokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;

    move-result-object v2

    move-object/from16 v21, v2

    goto :goto_5

    :cond_8
    const/16 v21, 0x0

    .line 710
    :goto_5
    invoke-virtual {v9}, Lcom/stripe/device/OfflineLocationConfigs;->getUsbAutoReconnectConfig()Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-result-object v25

    if-eqz v25, :cond_9

    const/16 v31, 0xf

    const/16 v32, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    invoke-static/range {v25 .. v32}, Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;->copy$default(Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;IIJLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;

    move-result-object v2

    move-object/from16 v22, v2

    goto :goto_6

    :cond_9
    const/16 v22, 0x0

    :goto_6
    const/16 v26, 0x28f

    const/16 v27, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    .line 706
    invoke-static/range {v12 .. v27}, Lcom/stripe/proto/model/offline_mode/OfflineLocation;->copy$default(Lcom/stripe/proto/model/offline_mode/OfflineLocation;JLjava/lang/String;JJLcom/stripe/proto/terminal/terminal/pub/message/config/TippingConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;Lcom/stripe/proto/model/merchant/ApiLocationPb;ZLokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/model/offline_mode/OfflineLocation;

    move-result-object v0

    .line 713
    iget-object v2, v11, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationDao:Lcom/stripe/offlinemode/storage/OfflineLocationDao;

    iget-object v3, v11, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->offlineLocationCipher:Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;

    check-cast v0, Lcom/squareup/wire/Message;

    invoke-virtual {v3, v0}, Lcom/stripe/offlinemode/cipher/OfflineLocationCipher;->encrypt(Lcom/squareup/wire/Message;)Lcom/stripe/offlinemode/storage/OfflineEntity;

    move-result-object v0

    check-cast v0, Lcom/stripe/offlinemode/storage/OfflineLocationEntity;

    iput-object v11, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$0:Ljava/lang/Object;

    iput-object v10, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x0

    iput-object v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$2:Ljava/lang/Object;

    iput-object v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$3:Ljava/lang/Object;

    iput-object v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x2

    iput v3, v4, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository$updateOfflineLocationWithConfig$1;->label:I

    invoke-interface {v2, v0, v4}, Lcom/stripe/offlinemode/storage/OfflineLocationDao;->update(Lcom/stripe/offlinemode/storage/OfflineLocationEntity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v5, :cond_a

    :goto_7
    return-object v5

    :cond_a
    move-object v3, v10

    move-object v4, v11

    .line 714
    :goto_8
    :try_start_4
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 715
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :catchall_2
    move-exception v0

    move-object v6, v0

    move-object v5, v10

    move-object v4, v11

    goto :goto_9

    .line 692
    :cond_b
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_3
    move-exception v0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v2

    .line 1514
    :goto_9
    invoke-static {v4, v6, v5}, Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;->access$logError(Lcom/stripe/offlinemode/storage/DefaultOfflineRepository;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1516
    instance-of v0, v6, Lcom/stripe/stripeterminal/external/models/TerminalException;

    if-nez v0, :cond_d

    .line 1517
    instance-of v0, v6, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->OFFLINE_PAYMENTS_DATABASE_TOO_LARGE:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    goto :goto_a

    .line 1518
    :cond_c
    sget-object v0, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    :goto_a
    move-object v4, v0

    .line 1520
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    const/16 v8, 0x8

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3

    .line 1516
    :cond_d
    throw v6
.end method
