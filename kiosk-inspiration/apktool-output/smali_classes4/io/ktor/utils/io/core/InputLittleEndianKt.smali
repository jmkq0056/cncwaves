.class public final Lio/ktor/utils/io/core/InputLittleEndianKt;
.super Ljava/lang/Object;
.source "InputLittleEndian.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputLittleEndian.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n+ 2 ByteOrderJvm.kt\nio/ktor/utils/io/bits/ByteOrderJVMKt\n*L\n1#1,349:1\n344#1,3:350\n344#1,3:354\n344#1,3:358\n344#1,3:362\n344#1,3:372\n336#1:382\n336#1:384\n336#1:386\n336#1:388\n336#1:396\n336#1:404\n336#1:406\n336#1:408\n336#1:410\n336#1:418\n9#2:353\n15#2:357\n21#2:361\n30#2:365\n29#2:366\n28#2,5:367\n41#2:375\n40#2:376\n39#2,5:377\n9#2:383\n15#2:385\n21#2:387\n30#2:389\n29#2:390\n28#2,5:391\n41#2:397\n40#2:398\n39#2,5:399\n9#2:405\n15#2:407\n21#2:409\n30#2:411\n29#2:412\n28#2,5:413\n41#2:419\n40#2:420\n39#2,5:421\n9#2:426\n15#2:427\n21#2:428\n30#2:429\n29#2:430\n28#2,5:431\n41#2:436\n40#2:437\n39#2,5:438\n9#2:443\n15#2:444\n21#2:445\n30#2:446\n29#2:447\n28#2,5:448\n41#2:453\n40#2:454\n39#2,5:455\n9#2:460\n15#2:461\n21#2:462\n30#2:463\n29#2:464\n28#2,5:465\n41#2:470\n40#2:471\n39#2,5:472\n9#2:477\n15#2:478\n21#2:479\n30#2:480\n29#2:481\n28#2,5:482\n41#2:487\n40#2:488\n39#2,5:489\n*S KotlinDebug\n*F\n+ 1 InputLittleEndian.kt\nio/ktor/utils/io/core/InputLittleEndianKt\n*L\n9#1:350,3\n13#1:354,3\n17#1:358,3\n21#1:362,3\n25#1:372,3\n28#1:382\n31#1:384\n34#1:386\n37#1:388\n40#1:396\n43#1:404\n46#1:406\n49#1:408\n52#1:410\n55#1:418\n9#1:353\n13#1:357\n17#1:361\n21#1:365\n21#1:366\n21#1:367,5\n25#1:375\n25#1:376\n25#1:377,5\n28#1:383\n31#1:385\n34#1:387\n37#1:389\n37#1:390\n37#1:391,5\n40#1:397\n40#1:398\n40#1:399,5\n43#1:405\n46#1:407\n49#1:409\n52#1:411\n52#1:412\n52#1:413,5\n55#1:419\n55#1:420\n55#1:421,5\n68#1:426\n83#1:427\n98#1:428\n107#1:429\n107#1:430\n107#1:431,5\n116#1:436\n116#1:437\n116#1:438,5\n132#1:443\n150#1:444\n168#1:445\n180#1:446\n180#1:447\n180#1:448,5\n192#1:453\n192#1:454\n192#1:455,5\n209#1:460\n224#1:461\n239#1:462\n248#1:463\n248#1:464\n248#1:465,5\n257#1:470\n257#1:471\n257#1:472,5\n272#1:477\n288#1:478\n305#1:479\n317#1:480\n317#1:481\n317#1:482,5\n329#1:487\n329#1:488\n329#1:489,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0013\n\u0002\u0008\u0002\n\u0002\u0010\u0014\n\u0002\u0010\u0015\n\u0002\u0010\u0016\n\u0002\u0010\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000c\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\n\n\u0002\u0008\u0002\u001a?\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0082\u0008\u00a2\u0006\u0002\u0010\u0008\u001aG\u0010\u0000\u001a\u0002H\u0001\"\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u0006\u0010\t\u001a\u00020\n2\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u0002H\u00010\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u0002H\u0001\u0012\u0004\u0012\u0002H\u00010\u0006\u00a2\u0006\u0002\u0008\u0007H\u0082\u0008\u00a2\u0006\u0002\u0010\u000b\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\u001c\u001a3\u0010\u000c\u001a\u00020\r*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010\u001f\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u0018\u0010!\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001b\u0010\"\u001a3\u0010\u000c\u001a\u00020\r*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008\u001e\u0010#\u001a\u0012\u0010$\u001a\u00020%*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010&\u001a\u00020%*\u00020\u000e\u001a\n\u0010&\u001a\u00020%*\u00020 \u001a\u0012\u0010\'\u001a\u00020(*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010)\u001a\u00020(*\u00020\u000e\u001a\n\u0010)\u001a\u00020(*\u00020 \u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u0010-\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u0010/\u001a3\u0010*\u001a\u00020+*\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00101\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00142\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00152\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a&\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008,\u00102\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001a2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u0008.\u00103\u001a3\u0010*\u001a\u00020+*\u00020 2\u0006\u0010\u000f\u001a\u00020\u001d2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0012\u001a\u00020\r\u00f8\u0001\u0000\u00f8\u0001\u0001\u00a2\u0006\u0004\u00080\u00104\u001a\u0012\u00105\u001a\u00020\r*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u00106\u001a\u00020\r*\u00020\u000e\u001a\n\u00106\u001a\u00020\r*\u00020 \u001a\u0012\u00107\u001a\u000208*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u00109\u001a\u000208*\u00020\u000e\u001a\n\u00109\u001a\u000208*\u00020 \u001a\u0012\u0010:\u001a\u00020;*\u00020 2\u0006\u0010\t\u001a\u00020\n\u001a\n\u0010<\u001a\u00020;*\u00020\u000e\u001a\n\u0010<\u001a\u00020;*\u00020 \u0082\u0002\u000b\n\u0005\u0008\u00a1\u001e0\u0001\n\u0002\u0008\u0019\u00a8\u0006="
    }
    d2 = {
        "readPrimitiveTemplate",
        "T",
        "",
        "read",
        "Lkotlin/Function0;",
        "reverse",
        "Lkotlin/Function1;",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "byteOrder",
        "Lio/ktor/utils/io/core/ByteOrder;",
        "(Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;",
        "readAvailableLittleEndian",
        "",
        "Lio/ktor/utils/io/core/Buffer;",
        "dst",
        "",
        "offset",
        "length",
        "",
        "",
        "",
        "",
        "Lkotlin/UIntArray;",
        "readAvailableLittleEndian-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)I",
        "Lkotlin/ULongArray;",
        "readAvailableLittleEndian-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)I",
        "Lkotlin/UShortArray;",
        "readAvailableLittleEndian-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)I",
        "Lio/ktor/utils/io/core/Input;",
        "(Lio/ktor/utils/io/core/Input;[III)I",
        "(Lio/ktor/utils/io/core/Input;[JII)I",
        "(Lio/ktor/utils/io/core/Input;[SII)I",
        "readDouble",
        "",
        "readDoubleLittleEndian",
        "readFloat",
        "",
        "readFloatLittleEndian",
        "readFullyLittleEndian",
        "",
        "readFullyLittleEndian-o2ZM2JE",
        "(Lio/ktor/utils/io/core/Buffer;[III)V",
        "readFullyLittleEndian-pqYNikA",
        "(Lio/ktor/utils/io/core/Buffer;[JII)V",
        "readFullyLittleEndian-Wt3Bwxc",
        "(Lio/ktor/utils/io/core/Buffer;[SII)V",
        "(Lio/ktor/utils/io/core/Input;[III)V",
        "(Lio/ktor/utils/io/core/Input;[JII)V",
        "(Lio/ktor/utils/io/core/Input;[SII)V",
        "readInt",
        "readIntLittleEndian",
        "readLong",
        "",
        "readLongLittleEndian",
        "readShort",
        "",
        "readShortLittleEndian",
        "ktor-io"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[DII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 329
    :goto_0
    aget-wide v0, p1, p2

    .line 487
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 488
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 489
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 493
    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[FII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 317
    :goto_0
    aget v0, p1, p2

    .line 480
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 481
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 482
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 486
    aput v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 288
    :goto_0
    aget v0, p1, p2

    .line 478
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    aput v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 305
    :goto_0
    aget-wide v0, p1, p2

    .line 479
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readAvailable(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 272
    :goto_0
    aget-short v0, p1, p2

    .line 477
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    aput-short v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[DII)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[DII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 192
    :goto_0
    aget-wide v0, p1, p2

    .line 453
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 454
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 455
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 459
    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[FII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[FII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 180
    :goto_0
    aget v0, p1, p2

    .line 446
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    .line 447
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    .line 448
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 452
    aput v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 150
    :goto_0
    aget v0, p1, p2

    .line 444
    invoke-static {v0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    aput v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 168
    :goto_0
    aget-wide v0, p1, p2

    .line 445
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static final readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readAvailable(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    if-lez p0, :cond_0

    add-int p3, p2, p0

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 132
    :goto_0
    aget-short v0, p1, p2

    .line 443
    invoke-static {v0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v0

    aput-short v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 324
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 312
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 284
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 300
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 268
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 187
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[DII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 175
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[FII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 145
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 163
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 127
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 263
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 122
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 279
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 140
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 296
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static final readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)I
    .locals 1

    const-string v0, "$this$readAvailableLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 295
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)I

    move-result p0

    return p0
.end method

.method public static synthetic readAvailableLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 158
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readAvailableLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)I

    move-result p0

    return p0
.end method

.method public static final readDouble(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)D
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 25
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide p0

    .line 375
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p0

    .line 376
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    .line 377
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final readDoubleLittleEndian(Lio/ktor/utils/io/core/Buffer;)D
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Buffer;)D

    move-result-wide v0

    .line 419
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 420
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 421
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final readDoubleLittleEndian(Lio/ktor/utils/io/core/Input;)D
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readDouble(Lio/ktor/utils/io/core/Input;)D

    move-result-wide v0

    .line 397
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 398
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 399
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final readFloat(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 21
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result p0

    .line 365
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 366
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 367
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final readFloatLittleEndian(Lio/ktor/utils/io/core/Buffer;)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Buffer;)F

    move-result p0

    .line 411
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 412
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 413
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final readFloatLittleEndian(Lio/ktor/utils/io/core/Input;)F
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readFloat(Lio/ktor/utils/io/core/Input;)F

    move-result p0

    .line 389
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 390
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 391
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 254
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[DII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 257
    :goto_0
    aget-wide v0, p1, p2

    .line 470
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 471
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 472
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 476
    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[FII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 248
    :goto_0
    aget p0, p1, p2

    .line 463
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 464
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 465
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 469
    aput p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[III)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 224
    :goto_0
    aget p0, p1, p2

    .line 461
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    aput p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[JII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 239
    :goto_0
    aget-wide v0, p1, p2

    .line 462
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readFully(Lio/ktor/utils/io/core/Buffer;[SII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 209
    :goto_0
    aget-short p0, p1, p2

    .line 460
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    aput-short p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[DII)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[DII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 116
    :goto_0
    aget-wide v0, p1, p2

    .line 436
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    .line 437
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    .line 438
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    .line 442
    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[FII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[FII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 107
    :goto_0
    aget p0, p1, p2

    .line 429
    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    .line 430
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    .line 431
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 435
    aput p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[III)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 83
    :goto_0
    aget p0, p1, p2

    .line 427
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    aput p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[JII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 98
    :goto_0
    aget-wide v0, p1, p2

    .line 428
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    aput-wide v0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputArraysKt;->readFully(Lio/ktor/utils/io/core/Input;[SII)V

    add-int/2addr p3, p2

    add-int/lit8 p3, p3, -0x1

    if-gt p2, p3, :cond_0

    .line 68
    :goto_0
    aget-short p0, p1, p2

    .line 426
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    aput-short p0, p1, p2

    if-eq p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[DIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 253
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[DII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[FIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 244
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[FII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 220
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 235
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 205
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[DIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 112
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[DII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[FIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 103
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[FII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 79
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 94
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 64
    array-length p3, p1

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static final readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Buffer;[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 200
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Buffer;[SII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-Wt3Bwxc$default(Lio/ktor/utils/io/core/Input;[SIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 59
    invoke-static {p1}, Lkotlin/UShortArray;->getSize-impl([S)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-Wt3Bwxc(Lio/ktor/utils/io/core/Input;[SII)V

    return-void
.end method

.method public static final readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static final readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Buffer;[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 215
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Buffer;[III)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-o2ZM2JE$default(Lio/ktor/utils/io/core/Input;[IIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 74
    invoke-static {p1}, Lkotlin/UIntArray;->getSize-impl([I)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-o2ZM2JE(Lio/ktor/utils/io/core/Input;[III)V

    return-void
.end method

.method public static final readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static final readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)V
    .locals 1

    const-string v0, "$this$readFullyLittleEndian"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Buffer;[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 230
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Buffer;[JII)V

    return-void
.end method

.method public static synthetic readFullyLittleEndian-pqYNikA$default(Lio/ktor/utils/io/core/Input;[JIIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 89
    invoke-static {p1}, Lkotlin/ULongArray;->getSize-impl([J)I

    move-result p3

    sub-int/2addr p3, p2

    :cond_1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/core/InputLittleEndianKt;->readFullyLittleEndian-pqYNikA(Lio/ktor/utils/io/core/Input;[JII)V

    return-void
.end method

.method public static final readInt(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 13
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result p0

    .line 357
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static final readIntLittleEndian(Lio/ktor/utils/io/core/Buffer;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Buffer;)I

    move-result p0

    .line 407
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static final readIntLittleEndian(Lio/ktor/utils/io/core/Input;)I
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readInt(Lio/ktor/utils/io/core/Input;)I

    move-result p0

    .line 385
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result p0

    return p0
.end method

.method public static final readLong(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)J
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide p0

    .line 361
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/core/Buffer;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Buffer;)J

    move-result-wide v0

    .line 409
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final readLongLittleEndian(Lio/ktor/utils/io/core/Input;)J
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readLong(Lio/ktor/utils/io/core/Input;)J

    move-result-wide v0

    .line 387
    invoke-static {v0, v1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final readPrimitiveTemplate(Lio/ktor/utils/io/core/ByteOrder;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/core/ByteOrder;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    .line 344
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 345
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 346
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static final readPrimitiveTemplate(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)TT;"
        }
    .end annotation

    .line 336
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final readShort(Lio/ktor/utils/io/core/Input;Lio/ktor/utils/io/core/ByteOrder;)S
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "byteOrder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lio/ktor/utils/io/core/InputLittleEndianKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lio/ktor/utils/io/core/ByteOrder;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 9
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result p0

    return p0

    :cond_0
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result p0

    .line 353
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    return p0
.end method

.method public static final readShortLittleEndian(Lio/ktor/utils/io/core/Buffer;)S
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {p0}, Lio/ktor/utils/io/core/BufferPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Buffer;)S

    move-result p0

    .line 405
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    return p0
.end method

.method public static final readShortLittleEndian(Lio/ktor/utils/io/core/Input;)S
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {p0}, Lio/ktor/utils/io/core/InputPrimitivesKt;->readShort(Lio/ktor/utils/io/core/Input;)S

    move-result p0

    .line 383
    invoke-static {p0}, Ljava/lang/Short;->reverseBytes(S)S

    move-result p0

    return p0
.end method
