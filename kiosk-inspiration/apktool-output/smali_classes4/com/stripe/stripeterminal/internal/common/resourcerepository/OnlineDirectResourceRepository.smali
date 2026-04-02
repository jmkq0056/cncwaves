.class public final Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;
.super Ljava/lang/Object;
.source "OnlineDirectResourceRepository.kt"

# interfaces
.implements Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnlineDirectResourceRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnlineDirectResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1232:1\n16#2:1233\n766#3:1234\n857#3,2:1235\n1360#3:1237\n1446#3,2:1238\n1549#3:1240\n1620#3,3:1241\n1448#3,3:1244\n1179#3,2:1247\n1253#3,4:1249\n1#4:1253\n*S KotlinDebug\n*F\n+ 1 OnlineDirectResourceRepository.kt\ncom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository\n*L\n130#1:1233\n1021#1:1234\n1021#1:1235,2\n1022#1:1237\n1022#1:1238,2\n1023#1:1240\n1023#1:1241,3\n1022#1:1244,3\n1027#1:1247,2\n1027#1:1249,4\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00d2\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u0000 \u00b5\u00012\u00020\u0001:\u0002\u00b5\u0001B\u008d\u0001\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\"\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0011j\u0002`\u0016\u0012\u0006\u0010\u0017\u001a\u00020\u0018\u0012\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u001a\u0012\u0006\u0010\u001b\u001a\u00020\u001c\u0012\u0006\u0010\u001d\u001a\u00020\u001e\u0012\u0006\u0010\u001f\u001a\u00020 \u00a2\u0006\u0002\u0010!JX\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032>\u00104\u001a:\u0012\u0015\u0012\u0013\u0018\u000106\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(9\u0012\u0015\u0012\u0013\u0018\u00010:\u00a2\u0006\u000c\u00087\u0012\u0008\u00088\u0012\u0004\u0008\u0008(;\u0012\u0004\u0012\u00020<05j\u0002`=H\u0016J \u0010>\u001a\u0008\u0012\u0004\u0012\u00020$0?2\u0006\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0016J\u0010\u0010C\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010F\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010G\u001a\u00020<2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010H\u001a\u00020$2\u0006\u0010I\u001a\u00020$H\u0016J\u0008\u0010J\u001a\u00020<H\u0016J\u0018\u0010K\u001a\u00020L2\u0006\u0010I\u001a\u00020L2\u0006\u0010M\u001a\u00020NH\u0016J\u001a\u0010O\u001a\u00020+2\u0006\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010AH\u0016Jq\u0010P\u001a\u00020$2\u0006\u0010Q\u001a\u00020$2\u000e\u0010R\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010T0S2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020Y0S2\u0006\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\2\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010AH\u0016\u00a2\u0006\u0002\u0010`J\u0085\u0001\u0010P\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010Q\u001a\u00020$2\u0006\u0010d\u001a\u00020T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0008\u0010e\u001a\u0004\u0018\u00010f2\u0008\u0010g\u001a\u0004\u0018\u00010+2\u0008\u0010]\u001a\u0004\u0018\u00010^2\u0008\u0010_\u001a\u0004\u0018\u00010A2\u0008\u0010h\u001a\u0004\u0018\u00010i2\u0006\u0010[\u001a\u00020\\2\u0006\u0010j\u001a\u00020kH\u0002\u00a2\u0006\u0002\u0010lJ<\u0010m\u001a\u00020n2\u0006\u0010o\u001a\u00020p2\u0008\u0010d\u001a\u0004\u0018\u00010T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\H\u0016JV\u0010q\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0006\u0010I\u001a\u00020L2\u0006\u0010s\u001a\u00020t2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010d\u001a\u00020T2\u0006\u0010[\u001a\u00020\\2\u0006\u0010j\u001a\u00020kH\u0002JR\u0010q\u001a\u00020L2\u0006\u0010I\u001a\u00020L2\u0008\u0010d\u001a\u0004\u0018\u00010T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u000c\u0010X\u001a\u0008\u0012\u0004\u0012\u00020Y0S2\u0006\u0010Z\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0016J\u0018\u0010u\u001a\u00020$2\u0006\u0010v\u001a\u00020w2\u0006\u0010x\u001a\u00020yH\u0016J\u0010\u0010z\u001a\u00020{2\u0006\u0010|\u001a\u00020YH\u0016J\u0018\u0010}\u001a\u00020L2\u0006\u0010~\u001a\u00020\u007f2\u0006\u0010x\u001a\u00020yH\u0016J(\u0010\u0080\u0001\u001a\u00030\u0081\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\t\u0010\u0084\u0001\u001a\u0004\u0018\u00010A2\u0007\u0010\u0085\u0001\u001a\u00020+H\u0002J\'\u0010\u0086\u0001\u001a\u0010\u0012\u0004\u0012\u00020A\u0012\u0005\u0012\u00030\u0088\u00010\u0087\u00012\u000e\u0010\u0089\u0001\u001a\t\u0012\u0004\u0012\u00020A0\u008a\u0001H\u0016J\u0014\u0010\u008b\u0001\u001a\u00030\u008c\u00012\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u0001H\u0002J>\u0010\u008d\u0001\u001a\u00020<2\u0006\u0010[\u001a\u00020\\2\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0007\u0010\u008e\u0001\u001a\u00020AH\u0002J\u001e\u0010\u008f\u0001\u001a\u00020+2\u0013\u0010\u0090\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0aH\u0002J\u001c\u0010\u0091\u0001\u001a\u00030\u0092\u00012\u0008\u0010\u0093\u0001\u001a\u00030\u0094\u00012\u0006\u0010|\u001a\u00020YH\u0016J`\u0010\u0095\u0001\u001a\u00020+\"\u0015\u0008\u0000\u0010\u0096\u0001*\u000e\u0012\u0005\u0012\u0003H\u0096\u0001\u0012\u0002\u0008\u00030\u0097\u0001\"\u0015\u0008\u0001\u0010\u0098\u0001*\u000e\u0012\u0005\u0012\u0003H\u0098\u0001\u0012\u0002\u0008\u00030\u0097\u00012\u0015\u0010\u0090\u0001\u001a\u0010\u0012\u0005\u0012\u0003H\u0096\u0001\u0012\u0005\u0012\u0003H\u0098\u00010a2\u0008\u0010\u0082\u0001\u001a\u00030\u0083\u00012\u0006\u0010Z\u001a\u00020+H\u0002JS\u0010\u0099\u0001\u001a\u000f\u0012\u0005\u0012\u00030\u009a\u0001\u0012\u0004\u0012\u00020c0a2\u0007\u0010o\u001a\u00030\u009b\u00012\u0006\u0010s\u001a\u00020t2\u0008\u0010\u009c\u0001\u001a\u00030\u009d\u00012\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\H\u0002Jp\u0010\u009e\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010Q\u001a\u00020$2\u0013\u0010\u009f\u0001\u001a\u000e\u0012\u0004\u0012\u00020b\u0012\u0004\u0012\u00020c0a2\u0006\u0010d\u001a\u00020T2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0006\u0010[\u001a\u00020\\2\n\u0010\u00a0\u0001\u001a\u0005\u0018\u00010\u00a1\u00012\u0006\u0010j\u001a\u00020kH\u0002JU\u0010\u00a2\u0001\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0013\u0010\u00a3\u0001\u001a\u000e\u0012\u0004\u0012\u00020r\u0012\u0004\u0012\u00020c0a2\u0018\u0010U\u001a\u0014\u0012\u0004\u0012\u00020A\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020W0?0V2\u0007\u0010\u00a4\u0001\u001a\u00020+2\u0006\u0010[\u001a\u00020\\H\u0002J\u0011\u0010\u00a5\u0001\u001a\u00020+2\u0006\u0010d\u001a\u00020TH\u0002J\u0018\u0010\u00a6\u0001\u001a\u00020+2\u0007\u0010\u00a7\u0001\u001a\u00020$H\u0001\u00a2\u0006\u0003\u0008\u00a8\u0001J%\u0010\u00a9\u0001\u001a\u00020+2\u0006\u0010@\u001a\u00020A2\u0008\u0010B\u001a\u0004\u0018\u00010A2\u0008\u0010\u00aa\u0001\u001a\u00030\u00ab\u0001H\u0002J$\u0010\u00ac\u0001\u001a\u00020$2\u0006\u0010Q\u001a\u00020$2\u0008\u0010d\u001a\u0004\u0018\u00010T2\u0007\u0010\u00ad\u0001\u001a\u00020+H\u0016J\u001e\u0010\u00ae\u0001\u001a\u00030\u009b\u00012\u0006\u0010o\u001a\u00020p2\n\u0010\u00af\u0001\u001a\u0005\u0018\u00010\u00b0\u0001H\u0002J\u001d\u0010\u00b1\u0001\u001a\u00020k*\u00020\u000f2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u000203H\u0002J\u0016\u0010\u00b2\u0001\u001a\u00020k*\u00020\u000f2\u0007\u0010\u00b3\u0001\u001a\u00020+H\u0002J\u000e\u0010\u00b4\u0001\u001a\u00020+*\u00030\u0083\u0001H\u0002R\u0016\u0010\"\u001a\n\u0012\u0004\u0012\u00020$\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010%\u001a\u0012\u0012\u0004\u0012\u00020\'\u0012\u0004\u0012\u00020(0&j\u0002`)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0010\u001a\u001e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00150\u0011j\u0002`\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001d\u001a\u00020\u001eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010*\u001a\u00020+8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010-R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b6\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "apiClient",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
        "chargeAttemptManager",
        "Lcom/stripe/transaction/ChargeAttemptManager;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "connectionTokenRepository",
        "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
        "apiRequestFactory",
        "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
        "offlineConfigHelper",
        "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
        "offlineDiscreteLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
        "Lcom/stripe/offlinemode/log/OfflineDiscreteLogger;",
        "logWriter",
        "Lcom/stripe/logwriter/LogWriter;",
        "dispatcher",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "paymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "actionRequiredPaymentIntentCompletion",
        "Lkotlinx/coroutines/CompletableDeferred;",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "shouldSendAuthResponseToDevice",
        "",
        "getShouldSendAuthResponseToDevice",
        "()Z",
        "activateReader",
        "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "setReconnectParams",
        "Lkotlin/Function2;",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
        "Lkotlin/ParameterName;",
        "name",
        "bluetoothConfig",
        "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
        "usbConfig",
        "",
        "Lcom/stripe/offlinemode/helpers/SetReconnectParams;",
        "awaitActionRequiredPaymentIntentCompletion",
        "Lkotlinx/coroutines/Deferred;",
        "paymentIntentId",
        "",
        "accountId",
        "cancelConfirmPaymentIntent",
        "callback",
        "Lcom/stripe/stripeterminal/external/callable/Callback;",
        "cancelConfirmRefund",
        "cancelConfirmSetupIntent",
        "cancelPaymentIntent",
        "intent",
        "cancelPaymentIntentActionRequired",
        "cancelSetupIntent",
        "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
        "params",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;",
        "completePaymentIntentActionRequired",
        "confirmPaymentIntent",
        "paymentIntent",
        "getCollectiblePayment",
        "Lkotlin/Function0;",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "handleAuthResponse",
        "Lkotlin/Function1;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "collectScaPaymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "immediateRecollectForSca",
        "authStateListener",
        "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
        "amountSurcharge",
        "",
        "returnUrl",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "Lcom/stripe/jvmcore/restclient/RestResponse;",
        "Lcom/stripe/proto/model/rest/PaymentIntent;",
        "Lcom/stripe/proto/model/rest/ErrorWrapper;",
        "collectiblePayment",
        "amountTip",
        "Lcom/stripe/currency/Amount;",
        "dynamicCurrencyConversionSelected",
        "allowRedisplay",
        "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
        "restConfig",
        "Lcom/stripe/jvmcore/restclient/RestConfig;",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;",
        "confirmRefund",
        "Lcom/stripe/stripeterminal/external/models/Refund;",
        "refundParams",
        "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
        "confirmSetupIntent",
        "Lcom/stripe/proto/model/rest/SetupIntent;",
        "paymentAsRest",
        "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
        "createPaymentIntent",
        "paymentIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;",
        "createConfiguration",
        "Lcom/stripe/stripeterminal/external/models/CreateConfiguration;",
        "createReaderCollectedData",
        "Lcom/stripe/stripeterminal/external/models/CollectedData;",
        "paymentMethodData",
        "createSetupIntent",
        "setupIntentParameters",
        "Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;",
        "getConfirmationResponseReceived",
        "Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "authResponse",
        "needSecondGenAc",
        "getReaderLocations",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "getSecondGenAcResponseReceived",
        "Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;",
        "handleConfirmationFailed",
        "authResponseTlv",
        "isNetworkError",
        "response",
        "readReusableCard",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "readReusableCardParams",
        "Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;",
        "recollectPaymentMethodNeeded",
        "S",
        "Lcom/squareup/wire/Message;",
        "E",
        "refundCharge",
        "Lcom/stripe/proto/model/rest/Refund;",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;",
        "interfaceType",
        "Lcom/stripe/hardware/emv/InterfaceType;",
        "sendPaymentIntentAuthResponseToDevice",
        "confirmResponse",
        "authIntegrationType",
        "Lcom/stripe/restclient/IntegrationType;",
        "sendSetupIntentAuthResponseToDevice",
        "restResponse",
        "allowExtendedTransaction",
        "shouldFetch2ndGenAc",
        "shouldHandleCotsPinRequest",
        "pi",
        "shouldHandleCotsPinRequest$resourcerepository_release",
        "updateActionRequiredPaymentIntentChargeAttemptIfCompleted",
        "completionMethod",
        "Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;",
        "updatePaymentIntent",
        "requestDynamicCurrencyConversion",
        "updateRefundParams",
        "confirmRefundParameters",
        "Lcom/stripe/core/transaction/ConfirmRefundParams;",
        "getRestConfigForActivate",
        "getRestConfigForPayments",
        "requireOnline",
        "isExpectedTerminalStateForNonCardTransaction",
        "Companion",
        "resourcerepository_release"
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
.field private static final ACTION_REQUIRED_INITIAL_POLLING_DELAY_MS:J = 0x1388L

.field private static final ACTION_REQUIRED_POLLING_INTERVAL_MS:J = 0x7d0L

.field private static final ACTION_REQUIRED_TIMEOUT_MS:J = 0x1b7740L

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

.field private static final serverProcessingErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CompletableDeferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

.field private final apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

.field private final chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

.field private final connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

.field private final dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final logWriter:Lcom/stripe/logwriter/LogWriter;

.field private final logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;"
        }
    .end annotation
.end field

.field private final offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

.field private final offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
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

.field private final paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    const/4 v0, 0x3

    .line 1209
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "processing_error"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "card_declined"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "expired_card"

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->serverProcessingErrors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/transaction/ChargeAttemptManager;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/logwriter/LogWriter;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 1
    .param p10    # Lkotlinx/coroutines/CoroutineDispatcher;
        .annotation runtime Lcom/stripe/jvmcore/dagger/IO;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiClient;",
            "Lcom/stripe/transaction/ChargeAttemptManager;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;",
            "Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;",
            "Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/OfflineDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/offline/DiscreteScope$Builder;",
            ">;",
            "Lcom/stripe/logwriter/LogWriter;",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "apiClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chargeAttemptManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionTokenRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiRequestFactory"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineConfigHelper"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineDiscreteLogger"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logWriter"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentIntentUpdater"

    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    invoke-static {p13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 117
    iput-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 118
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 119
    iput-object p4, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 120
    iput-object p5, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    .line 121
    iput-object p6, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 122
    iput-object p7, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 123
    iput-object p8, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 124
    iput-object p9, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    .line 125
    iput-object p10, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 126
    iput-object p11, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    .line 127
    iput-object p12, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    .line 1233
    const-class p1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-interface {p13, p1}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    .line 130
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method public static final synthetic access$awaitActionRequiredPaymentIntentCompletion$completeExceptionally(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-static {p0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->awaitActionRequiredPaymentIntentCompletion$completeExceptionally(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getActionRequiredPaymentIntentCompletion$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;)Lkotlinx/coroutines/CompletableDeferred;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    return-object p0
.end method

.method public static final synthetic access$getChargeAttemptManager$p(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;)Lcom/stripe/transaction/ChargeAttemptManager;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    return-object p0
.end method

.method public static final synthetic access$updateActionRequiredPaymentIntentChargeAttemptIfCompleted(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)Z
    .locals 0

    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->updateActionRequiredPaymentIntentChargeAttemptIfCompleted(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)Z

    move-result p0

    return p0
.end method

.method private static final awaitActionRequiredPaymentIntentCompletion$completeExceptionally(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Ljava/lang/String;)V
    .locals 8

    .line 1039
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    .line 1040
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 1039
    invoke-interface {v0, v1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z

    :cond_0
    const/4 p1, 0x0

    .line 1042
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method private final confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/currency/Amount;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AllowRedisplay;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    .line 506
    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 508
    instance-of v1, v0, Lcom/stripe/transaction/payment/ManualEntryPayment;

    if-eqz v1, :cond_0

    .line 509
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 511
    move-object v3, v0

    check-cast v3, Lcom/stripe/transaction/payment/ManualEntryPayment;

    .line 509
    invoke-virtual {v2, p1, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmManualEntryPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v2

    goto :goto_0

    .line 515
    :cond_0
    instance-of v2, v0, Lcom/stripe/transaction/payment/NonCardPayment;

    if-eqz v2, :cond_1

    .line 516
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 518
    move-object v5, v0

    check-cast v5, Lcom/stripe/transaction/payment/NonCardPayment;

    move-object v4, p1

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 516
    invoke-virtual/range {v3 .. v8}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmNonCardPaymentMethodPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/payment/NonCardPayment;Lcom/stripe/currency/Amount;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v2

    goto :goto_0

    .line 526
    :cond_1
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 528
    invoke-virtual {v0}, Lcom/stripe/transaction/payment/Payment;->asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v5

    move-object v4, p1

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p8

    .line 526
    invoke-virtual/range {v3 .. v9}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmCollectiblePayment(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v2

    .line 538
    :goto_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 539
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v3}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v9

    .line 540
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v3

    .line 541
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;

    .line 542
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v10, p10

    .line 540
    invoke-virtual {v3, v4, v2, v10}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->confirmPaymentIntent(Lcom/stripe/proto/api/rest/ConfirmPaymentIntentRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v5

    .line 547
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getShouldSendAuthResponseToDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 548
    instance-of v0, v0, Lcom/stripe/transaction/payment/NonCardPayment;

    if-nez v0, :cond_2

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p9

    .line 550
    invoke-direct/range {v3 .. v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->sendPaymentIntentAuthResponseToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v5

    goto :goto_1

    .line 560
    :cond_2
    sget-object p3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getTransactionSupportsSca()Z

    move-result p2

    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {p3, v5, p2, v0}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 562
    invoke-direct {p0, p2, p3, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object p2

    check-cast p2, Lcom/stripe/paymentcollection/OnlineAuthState;

    move-object/from16 v8, p9

    .line 561
    invoke-interface {v8, p2}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    :goto_1
    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    return-object v5

    .line 567
    :cond_4
    new-instance p1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 568
    sget-object p2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p3, 0xc

    const/4 v0, 0x0

    .line 567
    const-string v1, "Payment intent ID cannot be null."

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 p6, p3

    move-object/from16 p7, v0

    move-object p3, v1

    move-object p4, v2

    move-object/from16 p5, v4

    invoke-direct/range {p1 .. p7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p1

    .line 572
    :cond_5
    :goto_2
    move-object p2, p0

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    .line 574
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 575
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->retrievePaymentIntentWithPaymentIntentId(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    .line 576
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object p3

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object p2

    check-cast p2, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object/from16 p6, p1

    move-object p4, p2

    move/from16 p7, v0

    move-object/from16 p8, v1

    move-object/from16 p5, v2

    invoke-static/range {p3 .. p8}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrievePaymentIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    .line 577
    :cond_6
    new-instance p2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 578
    sget-object p3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 p1, 0xc

    const/4 v0, 0x0

    .line 577
    const-string v1, "Payment intent ID cannot be null."

    const/4 v2, 0x0

    const/4 v4, 0x0

    move/from16 p7, p1

    move-object/from16 p8, v0

    move-object p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, v4

    invoke-direct/range {p2 .. p8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw p2
.end method

.method private final confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lkotlin/jvm/functions/Function1;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p5

    .line 759
    invoke-virtual/range {p4 .. p4}, Lcom/stripe/transaction/CollectiblePayment;->getTransactionSupportsSca()Z

    move-result v1

    .line 760
    invoke-virtual/range {p4 .. p4}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v2

    .line 761
    instance-of v3, v2, Lcom/stripe/transaction/payment/ManualEntryPayment;

    if-eqz v3, :cond_0

    .line 762
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    check-cast v2, Lcom/stripe/transaction/payment/ManualEntryPayment;

    invoke-virtual {v3, p1, v2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->confirmManualEntrySetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/payment/ManualEntryPayment;)Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    move-result-object v2

    goto :goto_0

    .line 768
    :cond_0
    const-string v2, "latest_attempt"

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 769
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getId()Ljava/lang/String;

    move-result-object v9

    .line 767
    new-instance v3, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;

    const/16 v11, 0x5c

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;-><init>(Ljava/util/List;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/proto/api/rest/Mandate;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v2, v3

    .line 775
    :goto_0
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "confirmSetupIntent: Performing API call with setup intent ID("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, ".id)"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    new-array v5, v4, [Lkotlin/Pair;

    invoke-interface {v3, p1, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 777
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object p1

    move-object/from16 v3, p6

    invoke-virtual {p1, v2, v3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->confirmSetupIntent(Lcom/stripe/proto/api/rest/ConfirmSetupIntentRequest;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 778
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getShouldSendAuthResponseToDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p3

    .line 779
    invoke-direct {p0, p1, v2, v1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->sendSetupIntentAuthResponseToDevice(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function1;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    return-object p1

    .line 786
    :cond_1
    sget-object v2, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v2, p1, v1}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v1

    const/4 v2, 0x0

    .line 787
    invoke-direct {p0, v1, v2, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object v1

    check-cast v1, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v0, v1}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-object p1
.end method

.method private final getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;
    .locals 2

    .line 923
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 924
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 925
    :cond_1
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 926
    :cond_2
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    :goto_2
    if-eqz v0, :cond_3

    .line 928
    new-instance p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    .line 929
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 928
    invoke-direct {p3, v0, p2, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    return-object p3

    .line 935
    :cond_3
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 936
    :cond_4
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    .line 937
    :cond_5
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    .line 938
    :cond_6
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_6

    .line 939
    :cond_7
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;

    :goto_6
    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_7

    .line 940
    :cond_8
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    :goto_7
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_8

    .line 941
    :cond_9
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    :goto_8
    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_9

    .line 942
    :cond_a
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;

    :goto_9
    if-eqz v0, :cond_c

    if-eqz p3, :cond_b

    .line 945
    new-instance p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;

    invoke-direct {p3, p2, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$NeedSecondGenAc;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    return-object p3

    .line 950
    :cond_b
    new-instance p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;

    invoke-direct {p3, p2, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Success;-><init>(Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    return-object p3

    .line 957
    :cond_c
    sget-object p3, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    move p3, v1

    goto :goto_a

    .line 958
    :cond_d
    sget-object p3, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    :goto_a
    if-eqz p3, :cond_e

    goto :goto_b

    .line 959
    :cond_e
    sget-object p3, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :goto_b
    if-eqz v1, :cond_f

    .line 961
    new-instance p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    .line 962
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 961
    invoke-direct {p3, v0, p2, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    return-object p3

    .line 968
    :cond_f
    instance-of p3, p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz p3, :cond_10

    .line 969
    new-instance p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;

    .line 970
    sget-object v0, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 969
    invoke-direct {p3, v0, p2, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Ljava/lang/String;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    return-object p3

    :cond_10
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getRestConfigForActivate(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 0

    .line 1116
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/Reader;->getSerialNumber()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1117
    invoke-virtual {p3}, Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;->getLocationId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineEnabledForLocationAndReader(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 p3, 0x1

    .line 1121
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getHttpLowTimeoutMs()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1122
    sget-object p3, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    invoke-virtual {p3, p1, p2}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    return-object p1

    .line 1123
    :cond_2
    :goto_1
    sget-object p1, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object p1

    .line 1125
    :cond_3
    sget-object p1, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object p1
.end method

.method private final getRestConfigForPayments(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Z)Lcom/stripe/jvmcore/restclient/RestConfig;
    .locals 2

    .line 1131
    invoke-interface {p1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 1133
    sget-object p1, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    invoke-virtual {p1, v1}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    return-object p1

    :cond_0
    if-eqz p2, :cond_3

    .line 1138
    sget-object p2, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    invoke-virtual {p2, v1}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p2

    .line 1139
    invoke-interface {p1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getHttpHighTimeoutMs()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/stripe/jvmcore/restclient/RestConfig;->withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    return-object p2

    .line 1145
    :cond_3
    invoke-interface {p1}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->getHttpLowTimeoutMs()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_5

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    .line 1146
    sget-object v0, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withTimeoutMs(J)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    return-object p1

    .line 1147
    :cond_5
    :goto_1
    sget-object p1, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    check-cast p1, Lcom/stripe/jvmcore/restclient/RestConfig;

    return-object p1
.end method

.method private final getSecondGenAcResponseReceived(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;
    .locals 9

    .line 980
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 981
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedRefund;

    :goto_0
    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    .line 982
    :cond_1
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$AlreadyRefunded;

    :goto_1
    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    .line 983
    :cond_2
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    :goto_2
    if-eqz v0, :cond_3

    .line 985
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->DECLINED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-direct {v0, v1, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    return-object v0

    .line 988
    :cond_3
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCharge;

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_3

    .line 989
    :cond_4
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulRefund;

    :goto_3
    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_4

    .line 990
    :cond_5
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_4
    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_5

    .line 991
    :cond_6
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulSetupIntent;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_5
    if-eqz v0, :cond_7

    .line 993
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;

    invoke-direct {v0, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Success;-><init>(Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    return-object v0

    .line 996
    :cond_7
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_6

    .line 997
    :cond_8
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownRefundResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6
    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_7

    .line 998
    :cond_9
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_7
    if-eqz v0, :cond_a

    .line 1000
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    .line 1001
    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->UNKNOWN_NETWORK_FAILURE:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    .line 1000
    invoke-direct {v0, v1, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    return-object v0

    .line 1006
    :cond_a
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz v0, :cond_b

    .line 1007
    new-instance v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;

    sget-object v1, Lcom/stripe/paymentcollection/OnlineAuthFailureReason;->SCA_NEEDED:Lcom/stripe/paymentcollection/OnlineAuthFailureReason;

    invoke-direct {v0, v1, p1}, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived$Failed;-><init>(Lcom/stripe/paymentcollection/OnlineAuthFailureReason;Lcom/stripe/transaction/ChargeAttempt;)V

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    return-object v0

    .line 1010
    :cond_b
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$PendingNextActionAttempt;

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_8

    .line 1011
    :cond_c
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    :goto_8
    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_9

    .line 1012
    :cond_d
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    :goto_9
    if-eqz v0, :cond_e

    goto :goto_a

    .line 1013
    :cond_e
    instance-of v1, p1, Lcom/stripe/transaction/ChargeAttempt$IncompleteAttempt;

    :goto_a
    if-eqz v1, :cond_f

    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1014
    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    .line 1013
    const-string v4, "Attempted to send 2nd gen AC response for non-card payment method."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2

    :cond_f
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method private final getShouldSendAuthResponseToDevice()Z
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-eq v0, v1, :cond_1

    .line 141
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/makers/ReaderMaker;->toHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/core/hardware/Reader;->getQuickEmvAutoResponse()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private final handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Lcom/stripe/transaction/ChargeAttempt;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 902
    invoke-direct {p0, p2, p4, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object p2

    check-cast p2, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 901
    invoke-interface {p1, p2}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 910
    :try_start_0
    invoke-interface {p3, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private final isExpectedTerminalStateForNonCardTransaction(Lcom/stripe/transaction/ChargeAttempt;)Z
    .locals 2

    .line 1195
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulNonCardCharge;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 1196
    :cond_0
    instance-of v0, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$DeclinedCharge;

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 1197
    :cond_1
    instance-of v1, p1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownChargeResult;

    :goto_1
    return v1
.end method

.method private final isNetworkError(Lcom/stripe/jvmcore/restclient/RestResponse;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;)Z"
        }
    .end annotation

    .line 887
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz v0, :cond_1

    .line 888
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR:Lcom/stripe/proto/model/rest/StatusCode;

    if-eq v0, v1, :cond_0

    .line 889
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object p1

    sget-object v0, Lcom/stripe/proto/model/rest/StatusCode;->HTTP_ERROR_UNKNOWN_STATE:Lcom/stripe/proto/model/rest/StatusCode;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final recollectPaymentMethodNeeded(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/transaction/ChargeAttempt;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lcom/squareup/wire/Message<",
            "TS;*>;E:",
            "Lcom/squareup/wire/Message<",
            "TE;*>;>(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "TS;TE;>;",
            "Lcom/stripe/transaction/ChargeAttempt;",
            "Z)Z"
        }
    .end annotation

    .line 489
    instance-of p1, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    if-eqz p1, :cond_0

    .line 490
    instance-of p1, p2, Lcom/stripe/transaction/ChargeAttempt$ExtendedAttempt;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final refundCharge(Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/hardware/emv/InterfaceType;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;",
            "Lcom/stripe/proto/api/rest/RequestedPaymentMethod;",
            "Lcom/stripe/hardware/emv/InterfaceType;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/Refund;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    .line 264
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 265
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getChargeId()Ljava/lang/String;

    move-result-object v4

    .line 266
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getAmount()J

    move-result-wide v6

    .line 268
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getReverseTransfer()Z

    move-result v9

    .line 269
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getRefundApplicationFee()Z

    move-result v10

    .line 270
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getDefaultRefundReason()Ljava/lang/String;

    move-result-object v11

    .line 271
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getMetadata()Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v5

    :cond_0
    move-object v12, v5

    .line 272
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getStripeAccountId()Ljava/lang/String;

    move-result-object v13

    .line 273
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v8, p2

    .line 264
    invoke-virtual/range {v3 .. v13}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->refundChargeRequest(Ljava/lang/String;Ljava/lang/String;JLcom/stripe/proto/api/rest/RequestedPaymentMethod;ZZLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v3

    .line 276
    iget-object v4, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v4}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v4

    .line 277
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v5}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v5

    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v6

    check-cast v6, Lcom/stripe/proto/api/rest/RefundChargeRequest;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->refundCharge(Lcom/stripe/proto/api/rest/RefundChargeRequest;Ljava/util/Map;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v3

    .line 278
    sget-object v5, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    iget-object v6, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {v5, v3, v6}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForRefund(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v5

    .line 280
    instance-of v6, v3, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    const-string v7, "8A023035"

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    .line 281
    sget-object v6, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    move-object v9, v3

    check-cast v9, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {v9}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v10

    check-cast v10, Lcom/stripe/proto/model/rest/Refund;

    invoke-virtual {v6, v10}, Lcom/stripe/jvmcore/transaction/Extensions;->isSuccess(Lcom/stripe/proto/model/rest/Refund;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 284
    sget-object v6, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    invoke-virtual {v9}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v7

    check-cast v7, Lcom/stripe/proto/model/rest/Refund;

    iget-object v7, v7, Lcom/stripe/proto/model/rest/Refund;->payment_method_details:Lcom/stripe/proto/model/rest/PaymentMethodDetails;

    const-string v10, "8A023030"

    invoke-virtual {v6, v7, v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/PaymentMethodDetails;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 285
    sget-object v7, Lcom/stripe/hardware/emv/InterfaceType;->CONTACT:Lcom/stripe/hardware/emv/InterfaceType;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object/from16 v12, p3

    if-ne v12, v7, :cond_1

    .line 286
    sget-object v7, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->INTERAC_PRESENT:Lcom/stripe/stripeterminal/external/models/PaymentMethodType;

    invoke-virtual {v7}, Lcom/stripe/stripeterminal/external/models/PaymentMethodType;->getTypeName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v12, p2

    iget-object v12, v12, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->type:Ljava/lang/String;

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    move v7, v11

    .line 289
    :goto_0
    invoke-direct {v1, v5, v6, v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object v5

    check-cast v5, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 288
    invoke-interface {v2, v5}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 293
    :try_start_0
    new-instance v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$refundCharge$result$1;

    invoke-direct {v5, v0, v6, v8}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$refundCharge$result$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-static {v8, v5, v10, v8}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/emv/TransactionResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 297
    iget-object v5, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    new-array v6, v11, [Lkotlin/Pair;

    const-string v12, "Failed to handle auth response"

    invoke-interface {v5, v12, v0, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 298
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v5, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {v0, v5, v8}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    :goto_1
    move-object v14, v0

    if-eqz v7, :cond_8

    .line 302
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v0

    if-eq v4, v0, :cond_2

    .line 304
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v5, 0x2

    .line 306
    new-array v5, v5, [Lkotlin/Pair;

    const-string v6, "previous"

    invoke-static {v6, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v5, v11

    .line 307
    const-string v4, "current"

    invoke-static {v4, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v5, v10

    .line 304
    const-string v0, "Skipping Refund 2nd Gen AC: Integration type changed after refund charge"

    invoke-interface {v2, v0, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v3

    .line 313
    :cond_2
    iget-object v12, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    .line 314
    invoke-virtual {v9}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/Refund;

    iget-object v13, v0, Lcom/stripe/proto/model/rest/Refund;->id:Ljava/lang/String;

    .line 316
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getRefundApplicationFee()Z

    move-result v15

    .line 317
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getReverseTransfer()Z

    move-result v16

    .line 318
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;->getStripeAccountId()Ljava/lang/String;

    move-result-object v17

    .line 313
    invoke-virtual/range {v12 .. v17}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->emvSecondGenerationDataRefundRequest(Ljava/lang/String;Lcom/stripe/hardware/emv/TransactionResult;ZZLjava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v0

    .line 320
    sget-object v3, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;

    check-cast v3, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v2, v3}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 321
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v3

    .line 322
    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;

    .line 323
    invoke-virtual {v0}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 324
    sget-object v5, Lcom/stripe/jvmcore/restclient/RestConfig;->Companion:Lcom/stripe/jvmcore/restclient/RestConfig$Companion;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/stripe/jvmcore/restclient/RestConfig$Companion;->withMaxAttempts(I)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v5

    .line 321
    invoke-virtual {v3, v4, v0, v5}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->addEmvSecondGenerationRefundData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRefundRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v0

    .line 327
    sget-object v3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    iget-object v4, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {v3, v0, v4}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForRefund(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getSecondGenAcResponseReceived(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    move-result-object v3

    check-cast v3, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 326
    invoke-interface {v2, v3}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-object v0

    .line 334
    :cond_3
    invoke-direct {v1, v2, v5, v0, v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object v3

    .line 338
    :cond_4
    instance-of v4, v3, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const-string v6, "8A025A33"

    if-eqz v4, :cond_7

    .line 339
    sget-object v4, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->serverProcessingErrors:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    move-object v9, v3

    check-cast v9, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v9}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v9

    check-cast v9, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v9, v9, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v9, :cond_5

    iget-object v8, v9, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    :cond_5
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move-object v7, v6

    .line 346
    :goto_2
    invoke-direct {v1, v2, v5, v0, v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object v3

    .line 349
    :cond_7
    instance-of v4, v3, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v4, :cond_8

    .line 352
    invoke-direct {v1, v2, v5, v0, v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    :cond_8
    return-object v3
.end method

.method private final sendPaymentIntentAuthResponseToDevice(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/restclient/IntegrationType;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 49
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Lcom/stripe/restclient/IntegrationType;",
            "Lcom/stripe/jvmcore/restclient/RestConfig;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/PaymentIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 593
    invoke-virtual {v3}, Lcom/stripe/transaction/CollectiblePayment;->getTransactionSupportsSca()Z

    move-result v6

    .line 594
    sget-object v7, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    iget-object v8, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {v7, v2, v6, v8}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v7

    .line 596
    instance-of v8, v2, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    .line 600
    sget-object v8, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    move-object v10, v2

    check-cast v10, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {v10}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v11

    check-cast v11, Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v11, v11, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    const-string v12, "8A023030"

    invoke-virtual {v8, v11, v12}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 606
    invoke-direct {v1, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->shouldFetch2ndGenAc(Lcom/stripe/transaction/CollectiblePayment;)Z

    move-result v11

    .line 603
    invoke-direct {v1, v7, v8, v11}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object v7

    check-cast v7, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 602
    invoke-interface {v4, v7}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    const/4 v7, 0x1

    const/4 v11, 0x0

    .line 611
    :try_start_0
    new-instance v12, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$result$1;

    invoke-direct {v12, v0, v8, v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$result$1;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v12, Lkotlin/jvm/functions/Function2;

    invoke-static {v9, v12, v7, v9}, Lkotlinx/coroutines/BuildersKt;->runBlocking$default(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/hardware/emv/TransactionResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 615
    iget-object v8, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    check-cast v0, Ljava/lang/Throwable;

    new-array v12, v11, [Lkotlin/Pair;

    const-string v13, "Failed to handle auth response"

    invoke-interface {v8, v13, v0, v12}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Lkotlin/Pair;)V

    .line 616
    new-instance v0, Lcom/stripe/hardware/emv/TransactionResult;

    sget-object v8, Lcom/stripe/hardware/emv/TransactionResult$Result;->DEVICE_FAILURE:Lcom/stripe/hardware/emv/TransactionResult$Result;

    invoke-direct {v0, v8, v9}, Lcom/stripe/hardware/emv/TransactionResult;-><init>(Lcom/stripe/hardware/emv/TransactionResult$Result;Ljava/lang/String;)V

    .line 619
    :goto_0
    invoke-direct {v1, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->shouldFetch2ndGenAc(Lcom/stripe/transaction/CollectiblePayment;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 620
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v3}, Lcom/stripe/core/transaction/TransactionRepository;->getIntegrationType()Lcom/stripe/restclient/IntegrationType;

    move-result-object v3

    if-eq v5, v3, :cond_0

    .line 622
    iget-object v0, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v4, 0x2

    .line 624
    new-array v4, v4, [Lkotlin/Pair;

    const-string v6, "previous"

    invoke-static {v6, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v11

    .line 625
    const-string v5, "current"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v4, v7

    .line 622
    const-string v3, "Skipping Payment 2nd Gen AC: Integration type changed after payment confirm"

    invoke-interface {v0, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object v2

    .line 631
    :cond_0
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    move-object/from16 v3, p1

    invoke-virtual {v2, v3, v0}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->addEmvSecondGenerationData(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/hardware/emv/TransactionResult;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object v2

    .line 636
    sget-object v3, Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcStarted;

    check-cast v3, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v4, v3}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 637
    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v3

    .line 638
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;

    .line 639
    invoke-virtual {v2}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v2

    move-object/from16 v8, p7

    .line 637
    invoke-virtual {v3, v5, v2, v8}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->addEmvSecondGenerationData(Lcom/stripe/proto/api/rest/AddEmvSecondGenerationDataRequest;Ljava/util/Map;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v2

    .line 643
    sget-object v3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v3, v2}, Lcom/stripe/jvmcore/transaction/Extensions;->alreadyCompletedPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 645
    iget-object v0, v3, Lcom/stripe/proto/model/rest/PaymentIntent;->status:Ljava/lang/String;

    .line 646
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to forward 2nd gen data due to payment intent already "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v11, [Lkotlin/Pair;

    invoke-interface {v2, v0, v5}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 648
    move-object v11, v3

    check-cast v11, Lcom/squareup/wire/Message;

    const/16 v18, 0x7e

    const/16 v19, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v10 .. v19}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->copy$default(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Lcom/squareup/wire/Message;Ljava/util/TreeMap;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse;

    goto/16 :goto_3

    .line 649
    :cond_1
    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->isNetworkError(Lcom/stripe/jvmcore/restclient/RestResponse;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 650
    invoke-virtual {v0}, Lcom/stripe/hardware/emv/TransactionResult;->getResult()Lcom/stripe/hardware/emv/TransactionResult$Result;

    move-result-object v0

    sget-object v2, Lcom/stripe/hardware/emv/TransactionResult$Result;->APPROVED:Lcom/stripe/hardware/emv/TransactionResult$Result;

    if-ne v0, v2, :cond_2

    move v0, v7

    goto :goto_1

    :cond_2
    move v0, v11

    .line 652
    :goto_1
    iget-object v12, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineDiscreteLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    .line 654
    const-string v2, "card_approved_transaction"

    .line 655
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    .line 654
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 653
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v14

    .line 652
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$paymentConfirmationResponse$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$sendPaymentIntentAuthResponseToDevice$paymentConfirmationResponse$1;

    move-object/from16 v16, v2

    check-cast v16, Lkotlin/jvm/functions/Function2;

    const/16 v17, 0x5

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v12 .. v18}, Lcom/stripe/jvmcore/logging/HealthLogger;->incrementCounter$default(Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/loggingmodels/Outcome;Ljava/util/Map;Ljava/lang/Throwable;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 659
    iget-object v2, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 661
    new-array v3, v7, [Lkotlin/Pair;

    new-instance v5, Lkotlin/Pair;

    const-string v7, "cardApprovedTransaction"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v5, v7, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v3, v11

    .line 659
    const-string v0, "Failed to forward 2nd gen data due to network error. "

    invoke-interface {v2, v0, v3}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 665
    invoke-virtual {v10}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    check-cast v0, Lcom/stripe/proto/model/rest/PaymentIntent;

    iget-object v0, v0, Lcom/stripe/proto/model/rest/PaymentIntent;->capture_method:Lcom/stripe/proto/model/rest/Method;

    sget-object v2, Lcom/stripe/proto/model/rest/Method;->automatic:Lcom/stripe/proto/model/rest/Method;

    const-string v3, "toLowerCase(...)"

    if-ne v0, v2, :cond_3

    .line 666
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->SUCCEEDED:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 668
    :cond_3
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CAPTURE:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v14, v0

    .line 671
    invoke-virtual {v10}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/stripe/proto/model/rest/PaymentIntent;

    const/16 v47, 0x3

    const/16 v48, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

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

    const/16 v46, -0x5

    invoke-static/range {v11 .. v48}, Lcom/stripe/proto/model/rest/PaymentIntent;->copy$default(Lcom/stripe/proto/model/rest/PaymentIntent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/stripe/proto/model/rest/ErrorResponse;Ljava/util/Map;Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Lcom/stripe/proto/model/rest/Method;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentIntent$AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/proto/model/rest/PaymentMethodOptions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/util/List;Lcom/stripe/proto/model/rest/PaymentIntent$NextAction;Ljava/lang/Long;Lokio/ByteString;IILjava/lang/Object;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/squareup/wire/Message;

    const/16 v18, 0x7e

    const/4 v14, 0x0

    invoke-static/range {v10 .. v19}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->copy$default(Lcom/stripe/jvmcore/restclient/RestResponse$Success;Lcom/squareup/wire/Message;Ljava/util/TreeMap;Lcom/stripe/proto/model/rest/StatusCode;Ljava/lang/String;Ljava/lang/Long;Lcom/squareup/moshi/Moshi;Lcom/stripe/jvmcore/redaction/CustomMessageRedactor;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/stripe/jvmcore/restclient/RestResponse;

    .line 678
    :cond_4
    :goto_3
    sget-object v0, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {v0, v2, v6, v3}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v0

    .line 677
    invoke-direct {v1, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getSecondGenAcResponseReceived(Lcom/stripe/transaction/ChargeAttempt;)Lcom/stripe/paymentcollection/OnlineAuthState$SecondGenAcResponseReceived;

    move-result-object v0

    check-cast v0, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 676
    invoke-interface {v4, v0}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-object v2

    .line 685
    :cond_5
    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const-string v5, "8A025A33"

    if-eqz v3, :cond_b

    .line 688
    invoke-direct {v1, v2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->isNetworkError(Lcom/stripe/jvmcore/restclient/RestResponse;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v3}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_5

    .line 691
    :cond_6
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->serverProcessingErrors:Ljava/util/List;

    check-cast v3, Ljava/lang/Iterable;

    move-object v6, v2

    check-cast v6, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v6}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v8

    check-cast v8, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v8, v8, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v8, v9

    :goto_4
    invoke-static {v3, v8}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 692
    sget-object v3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v3, v2}, Lcom/stripe/jvmcore/transaction/Extensions;->requiresExtendedActionForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 696
    :cond_8
    sget-object v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    invoke-virtual {v6}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v5, v5, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v5, :cond_9

    iget-object v5, v5, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v5, :cond_9

    iget-object v9, v5, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    :cond_9
    const-string v5, "8A023035"

    invoke-virtual {v3, v9, v5}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 701
    :cond_a
    invoke-direct {v1, v4, v7, v0, v5}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object v2

    .line 704
    :cond_b
    instance-of v3, v2, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v3, :cond_c

    .line 707
    invoke-direct {v1, v4, v7, v0, v5}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    :cond_c
    :goto_5
    return-object v2
.end method

.method private final sendSetupIntentAuthResponseToDevice(Lcom/stripe/jvmcore/restclient/RestResponse;Lkotlin/jvm/functions/Function1;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/jvmcore/restclient/RestResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/jvmcore/restclient/RestResponse<",
            "Lcom/stripe/proto/model/rest/SetupIntent;",
            "Lcom/stripe/proto/model/rest/ErrorWrapper;",
            ">;"
        }
    .end annotation

    .line 799
    sget-object v0, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v0, p1, p3}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p3

    .line 801
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "confirmSetupIntent: card approved"

    new-array v4, v2, [Lkotlin/Pair;

    invoke-interface {v0, v3, v4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 807
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    .line 806
    move-object v3, p1

    check-cast v3, Lcom/stripe/jvmcore/restclient/RestResponse$Success;

    invoke-virtual {v3}, Lcom/stripe/jvmcore/restclient/RestResponse$Success;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v3

    check-cast v3, Lcom/stripe/proto/model/rest/SetupIntent;

    iget-object v3, v3, Lcom/stripe/proto/model/rest/SetupIntent;->latest_attempt:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;

    if-eqz v3, :cond_0

    iget-object v1, v3, Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt;->payment_method_details:Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;

    .line 807
    :cond_0
    const-string v3, "8A023030"

    invoke-virtual {v0, v1, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/SetupIntent$SetupAttempt$PaymentMethodDetails;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 810
    invoke-direct {p0, p3, v0, v2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getConfirmationResponseReceived(Lcom/stripe/transaction/ChargeAttempt;Ljava/lang/String;Z)Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationResponseReceived;

    move-result-object p3

    check-cast p3, Lcom/stripe/paymentcollection/OnlineAuthState;

    .line 809
    invoke-interface {p4, p3}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    .line 819
    :try_start_0
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p4, "confirmSetupIntent: passing data back to card"

    new-array v1, v2, [Lkotlin/Pair;

    invoke-interface {p3, p4, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 820
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 822
    :catch_0
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string p3, "confirmSetupIntent: card declined the data"

    new-array p4, v2, [Lkotlin/Pair;

    invoke-interface {p2, p3, p4}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    return-object p1

    .line 827
    :cond_1
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    const-string v3, "8A025A33"

    if-eqz v0, :cond_7

    .line 828
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->serverProcessingErrors:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    move-object v4, p1

    check-cast v4, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v4}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v5

    check-cast v5, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v5, v5, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v5, :cond_2

    iget-object v5, v5, Lcom/stripe/proto/model/rest/ErrorResponse;->code:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v5, v1

    :goto_0
    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 829
    sget-object v0, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v0, p1}, Lcom/stripe/jvmcore/transaction/Extensions;->requiresExtendedActionForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 839
    :cond_3
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 840
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "confirmSetupIntent: unknown server error response "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestResponse;->getStatusCode()Lcom/stripe/proto/model/rest/StatusCode;

    move-result-object v6

    .line 840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 841
    const-string v6, ": "

    .line 840
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 841
    invoke-virtual {v4}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v4

    check-cast v4, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v4, v4, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v4, :cond_4

    iget-object v1, v4, Lcom/stripe/proto/model/rest/ErrorResponse;->message:Ljava/lang/String;

    .line 840
    :cond_4
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Lkotlin/Pair;

    .line 839
    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_2

    .line 832
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "confirmSetupIntent: card decline or SCA"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 836
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->Companion:Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;

    .line 835
    invoke-virtual {v4}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v2

    check-cast v2, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v2, :cond_6

    iget-object v2, v2, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v2, :cond_6

    iget-object v1, v2, Lcom/stripe/proto/model/rest/PaymentIntent;->charges:Lcom/stripe/proto/model/rest/Charges;

    .line 836
    :cond_6
    const-string v2, "8A023035"

    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$Companion;->authData(Lcom/stripe/proto/model/rest/Charges;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 845
    :goto_2
    invoke-direct {p0, p4, p3, p2, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object p1

    .line 848
    :cond_7
    instance-of v0, p1, Lcom/stripe/jvmcore/restclient/RestResponse$ParseError;

    if-eqz v0, :cond_8

    .line 850
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v1, "confirmSetupIntent: unknown parse error"

    new-array v2, v2, [Lkotlin/Pair;

    invoke-interface {v0, v1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 852
    invoke-direct {p0, p4, p3, p2, v3}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->handleConfirmationFailed(Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/transaction/ChargeAttempt;Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method private final shouldFetch2ndGenAc(Lcom/stripe/transaction/CollectiblePayment;)Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/transaction/Settings;->getEmvTransactionType()Lcom/stripe/hardware/emv/EmvTransactionType;

    move-result-object v0

    sget-object v1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    if-ne v0, v1, :cond_0

    .line 149
    invoke-virtual {p1}, Lcom/stripe/transaction/CollectiblePayment;->getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object p1

    sget-object v0, Lcom/stripe/hardware/emv/InterfaceType;->CONTACT:Lcom/stripe/hardware/emv/InterfaceType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final updateActionRequiredPaymentIntentChargeAttemptIfCompleted(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)Z
    .locals 7

    const-string v0, "Unexpected charge attempt type for non-card PaymentIntent: "

    .line 1157
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiRequestFactory:Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;

    invoke-virtual {v1, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiRequestFactory;->retrievePaymentIntentWithPaymentIntentId(Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/jvmcore/restclient/RestRequest;

    move-result-object p1

    .line 1158
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->getRestClient()Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;

    move-result-object v1

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getBody()Lcom/squareup/wire/Message;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/restclient/RestRequest;->getHeaders()Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;->retrievePaymentIntent$default(Lcom/stripe/jvmcore/restclient/AuthenticatedRestClient;Lcom/stripe/proto/api/rest/RetrievePaymentIntentRequest;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 1159
    sget-object p2, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    .line 1161
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    const/4 v2, 0x0

    .line 1159
    invoke-virtual {p2, p1, v2, v1}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p2

    .line 1163
    instance-of v1, p2, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;

    if-eqz v1, :cond_0

    .line 1164
    move-object v1, p2

    check-cast v1, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;

    invoke-interface {v1, p3}, Lcom/stripe/transaction/NonCardPaymentMethodCompletedAttempt;->setCompletionMethod(Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)V

    .line 1167
    :cond_0
    instance-of p3, p2, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt;

    if-eqz p3, :cond_3

    const/4 p3, 0x0

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    invoke-virtual {v1, p2}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 1172
    invoke-direct {p0, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->isExpectedTerminalStateForNonCardTransaction(Lcom/stripe/transaction/ChargeAttempt;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1180
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->decodeConfirmPaymentResponseCatchingLastPaymentError(Lcom/stripe/jvmcore/restclient/RestResponse;)Lcom/stripe/proto/model/rest/PaymentIntent;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    .line 1181
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_2

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableDeferred;->complete(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 1173
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 1174
    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    .line 1175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ". This should never happen."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1173
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 1183
    :try_start_1
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz p2, :cond_2

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {p2, p1}, Lkotlinx/coroutines/CompletableDeferred;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1185
    :cond_2
    :goto_0
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    const/4 p1, 0x1

    return p1

    :goto_1
    iput-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    throw p1

    :cond_3
    return v2
.end method

.method private final updateRefundParams(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/core/transaction/ConfirmRefundParams;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;
    .locals 11

    if-eqz p2, :cond_0

    .line 237
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getChargeId()Ljava/lang/String;

    move-result-object v2

    .line 238
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getAmount()J

    move-result-wide v3

    .line 239
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getCurrency()Ljava/lang/String;

    move-result-object v5

    .line 240
    invoke-virtual {p2}, Lcom/stripe/core/transaction/ConfirmRefundParams;->getMetadata()Ljava/util/Map;

    move-result-object v6

    .line 241
    invoke-virtual {p2}, Lcom/stripe/core/transaction/ConfirmRefundParams;->getReverseTransfer()Z

    move-result v7

    .line 242
    invoke-virtual {p2}, Lcom/stripe/core/transaction/ConfirmRefundParams;->getRefundApplicationFee()Z

    move-result v8

    .line 243
    invoke-virtual {p2}, Lcom/stripe/core/transaction/ConfirmRefundParams;->getStripeAccountId()Ljava/lang/String;

    move-result-object v9

    .line 244
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v1

    .line 236
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;

    invoke-direct/range {v0 .. v9}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;ZZLjava/lang/String;)V

    return-object v0

    .line 247
    :cond_0
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getChargeId()Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getAmount()J

    move-result-wide v4

    .line 249
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getCurrency()Ljava/lang/String;

    move-result-object v6

    .line 250
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getMetadata()Ljava/util/Map;

    move-result-object v7

    .line 251
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getReverseTransfer()Z

    move-result v8

    .line 252
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getRefundApplicationFee()Z

    move-result v9

    .line 254
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/RefundParameters;->getPaymentIntentId()Ljava/lang/String;

    move-result-object v2

    .line 246
    new-instance v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/Map;ZZLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function2;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/BluetoothAutoReconnectConfigPb;",
            "-",
            "Lcom/stripe/proto/terminal/terminal/pub/message/config/UsbAutoReconnectConfigPb;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "connectionConfiguration"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "setReconnectParams"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v2, 0x2

    .line 159
    new-array v2, v2, [Lkotlin/Pair;

    const/4 v3, 0x0

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 160
    invoke-static {v1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v2, v0

    .line 157
    const-string v0, "activateReader"

    invoke-interface {p3, v0, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 162
    iget-object p3, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {p3}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getTokenAndRefresh()Ljava/lang/String;

    move-result-object p3

    .line 163
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 167
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-direct {p0, v1, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getRestConfigForActivate(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v1

    .line 163
    invoke-virtual {v0, p1, p3, p2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->activateReader(Lcom/stripe/stripeterminal/external/models/Reader;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/terminal/api/ActivateReaderResponse;

    move-result-object p1

    return-object p1
.end method

.method public awaitActionRequiredPaymentIntentCompletion(Ljava/lang/String;Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            ">;"
        }
    .end annotation

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1034
    invoke-static {v1, v0, v1}, Lkotlinx/coroutines/CompletableDeferredKt;->CompletableDeferred$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableDeferred;

    move-result-object v0

    .line 1035
    iput-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    .line 1045
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->dispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    check-cast v2, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v2}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v3

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$awaitActionRequiredPaymentIntentCompletion$1;-><init>(Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v6, v2

    check-cast v6, Lkotlin/jvm/functions/Function2;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 1066
    check-cast v0, Lkotlinx/coroutines/Deferred;

    return-object v0
.end method

.method public cancelConfirmPaymentIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1099
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelConfirmRefund(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelConfirmSetupIntent(Lcom/stripe/stripeterminal/external/callable/Callback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1104
    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/callable/Callback;->onSuccess()V

    return-void
.end method

.method public cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 879
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->cancelPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public cancelPaymentIntentActionRequired()V
    .locals 3

    .line 1080
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/Job;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 1081
    :cond_0
    iput-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    return-void
.end method

.method public cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->cancelSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/SetupIntentCancellationParameters;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public completePaymentIntentActionRequired(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "paymentIntentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->actionRequiredPaymentIntentCompletion:Lkotlinx/coroutines/CompletableDeferred;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/CompletableDeferred;->isActive()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1072
    sget-object v0, Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;->IOT_MESSAGE:Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;

    .line 1071
    invoke-direct {p0, p1, p2, v0}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->updateActionRequiredPaymentIntentChargeAttemptIfCompleted(Ljava/lang/String;Ljava/lang/String;Lcom/stripe/transaction/NonCardPaymentMethodCompletionMethod;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 59
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/transaction/CollectiblePayment;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p6

    const-string v1, "paymentIntent"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "getCollectiblePayment"

    move-object/from16 v11, p2

    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "handleAuthResponse"

    move-object/from16 v3, p3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "collectScaPaymentMethodData"

    move-object/from16 v12, p4

    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "authStateListener"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 377
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAmountTip()Lcom/stripe/currency/Amount;

    move-result-object v4

    .line 378
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getDynamicCurrencyConversionSelected()Ljava/lang/Boolean;

    move-result-object v5

    .line 379
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 380
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v6

    sget-object v7, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    const/4 v8, 0x0

    if-ne v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v8

    .line 379
    :goto_0
    invoke-direct {v0, v1, v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getRestConfigForPayments(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Z)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v10

    .line 382
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v1}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v7

    .line 384
    invoke-interface {v11}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/transaction/CollectiblePayment;

    if-nez v1, :cond_2

    .line 385
    move-object v1, v0

    check-cast v1, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;

    .line 386
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const-string v3, "Collectible payment is null in confirmPaymentIntent!"

    new-array v6, v8, [Lkotlin/Pair;

    invoke-interface {v1, v3, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 387
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 389
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v3

    const/16 v9, 0x10

    move-object v8, v10

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 387
    invoke-static/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    .line 395
    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->shouldHandleCotsPinRequest$resourcerepository_release(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 398
    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 399
    iget-object v1, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 401
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v3

    const/16 v9, 0x10

    const/4 v10, 0x0

    const/4 v6, 0x0

    .line 399
    invoke-static/range {v1 .. v10}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->confirmPaymentIntent$default(Lcom/stripe/stripeterminal/internal/common/api/ApiClient;Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;ILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    move-object v8, v10

    .line 411
    sget-object v2, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    check-cast v2, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v9, v2}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    move-object/from16 v6, p7

    move-object v2, v1

    move-object/from16 v1, p1

    move-object v8, v7

    move-object/from16 v7, p8

    .line 412
    invoke-direct/range {v0 .. v10}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/currency/Amount;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v4

    .line 424
    sget-object v1, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual {v2}, Lcom/stripe/transaction/CollectiblePayment;->getTransactionSupportsSca()Z

    move-result v2

    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {v1, v4, v2, v3}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForPaymentIntent(Lcom/stripe/jvmcore/restclient/RestResponse;ZLcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v1

    .line 428
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    invoke-interface {v2}, Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;->isOfflineModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {v0, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->isNetworkError(Lcom/stripe/jvmcore/restclient/RestResponse;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 429
    :cond_3
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    invoke-virtual {v2, v1}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    :cond_4
    move/from16 v5, p5

    .line 432
    invoke-direct {v0, v4, v1, v5}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->recollectPaymentMethodNeeded(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/transaction/ChargeAttempt;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 434
    const-string v1, "null cannot be cast to non-null type com.stripe.jvmcore.restclient.RestResponse.ServerError<com.stripe.proto.model.rest.PaymentIntent, com.stripe.proto.model.rest.ErrorWrapper>"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;

    invoke-virtual {v4}, Lcom/stripe/jvmcore/restclient/RestResponse$ServerError;->getResponse()Lcom/squareup/wire/Message;

    move-result-object v1

    check-cast v1, Lcom/stripe/proto/model/rest/ErrorWrapper;

    iget-object v1, v1, Lcom/stripe/proto/model/rest/ErrorWrapper;->error:Lcom/stripe/proto/model/rest/ErrorResponse;

    if-eqz v1, :cond_5

    iget-object v1, v1, Lcom/stripe/proto/model/rest/ErrorResponse;->payment_intent:Lcom/stripe/proto/model/rest/PaymentIntent;

    if-eqz v1, :cond_5

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;

    invoke-virtual {v2, v1}, Lcom/stripe/stripeterminal/internal/common/proto/ProtoConverter;->toSdkPaymentIntent(Lcom/stripe/proto/model/rest/PaymentIntent;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v13

    if-eqz v13, :cond_5

    .line 435
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getStripeAccountId()Ljava/lang/String;

    move-result-object v52

    const/16 v57, 0xe

    const/16 v58, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const-wide/16 v31, 0x0

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

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    const/16 v56, -0x1

    invoke-static/range {v13 .. v58}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object v1, v2

    goto :goto_1

    :cond_5
    move-object/from16 v1, p1

    .line 438
    :goto_1
    invoke-interface {v12}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V

    .line 439
    invoke-virtual/range {p1 .. p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V

    move-object/from16 v3, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v2, v11

    move-object v4, v12

    .line 441
    invoke-virtual/range {v0 .. v8}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->confirmPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;Ljava/lang/Long;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v1

    return-object v1

    .line 452
    :cond_6
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CONFIRM:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v2, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->PAYMENT_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v3, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmPaymentIntent$1;

    invoke-direct {v3, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmPaymentIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v3, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1, v2, v3}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    return-object v0
.end method

.method public confirmRefund(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/Refund;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/RefundParameters;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/Refund;"
        }
    .end annotation

    const-string v0, "refundParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleAuthResponse"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authStateListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 203
    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/transaction/payment/Payment;->asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v1

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    if-eqz p2, :cond_1

    .line 204
    invoke-virtual {p2}, Lcom/stripe/transaction/CollectiblePayment;->getInterfaceType()Lcom/stripe/hardware/emv/InterfaceType;

    move-result-object v0

    :cond_1
    move-object v5, v0

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    .line 212
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {p2}, Lcom/stripe/core/transaction/TransactionRepository;->getRefundParams()Lcom/stripe/core/transaction/ConfirmRefundParams;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->updateRefundParams(Lcom/stripe/stripeterminal/external/models/RefundParameters;Lcom/stripe/core/transaction/ConfirmRefundParams;)Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;

    move-result-object v3

    .line 214
    sget-object p1, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    check-cast p1, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {p4, p1}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    move-object v2, p0

    move-object v6, p3

    move-object v7, p4

    .line 217
    invoke-direct/range {v2 .. v7}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->refundCharge(Lcom/stripe/stripeterminal/internal/common/resourcerepository/CombinedRefundParams;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lcom/stripe/hardware/emv/InterfaceType;Lkotlin/jvm/functions/Function1;Lcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object p1

    .line 218
    iget-object p2, v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    sget-object p3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    iget-object p4, v2, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logWriter:Lcom/stripe/logwriter/LogWriter;

    invoke-virtual {p3, p1, p4}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForRefund(Lcom/stripe/jvmcore/restclient/RestResponse;Lcom/stripe/logwriter/LogWriter;)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 220
    sget-object p2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object p3, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CONFIRM:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object p4, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->REFUND:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;

    invoke-direct {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmRefund$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p2, p3, p4, v0}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Refund;

    return-object p1

    :cond_2
    move-object v2, p0

    .line 206
    new-instance v3, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 207
    sget-object v4, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v8, 0xc

    const/4 v9, 0x0

    .line 206
    const-string v5, "Failed to retrieve payment method data"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v3
.end method

.method public confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/transaction/CollectiblePayment;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ZLcom/stripe/paymentcollection/OnlineAuthStateListener;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;",
            "Lcom/stripe/transaction/CollectiblePayment;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
            ">;Z",
            "Lcom/stripe/paymentcollection/OnlineAuthStateListener;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/SetupIntent;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p6

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "handleAuthResponse"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "collectScaPaymentMethodData"

    move-object/from16 v4, p4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authStateListener"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 723
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/SetupIntent;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object v4

    sget-object v6, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne v4, v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 722
    :goto_0
    invoke-direct {v0, v2, v4}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getRestConfigForPayments(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Z)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object v6

    .line 725
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v2}, Lcom/stripe/core/transaction/TransactionRepository;->getAllowRedisplay()Lcom/stripe/stripeterminal/external/models/AllowRedisplay;

    move-result-object v2

    if-nez p2, :cond_1

    .line 728
    iget-object v3, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v3, v1, v2, v6}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/stripeterminal/external/models/AllowRedisplay;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object v1

    return-object v1

    .line 731
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/stripe/transaction/CollectiblePayment;->getPayment()Lcom/stripe/transaction/payment/Payment;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/stripe/transaction/payment/Payment;->asRest()Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AllowRedisplay;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    move-object v13, v2

    const/16 v15, 0x5f

    const/16 v16, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    invoke-static/range {v7 .. v16}, Lcom/stripe/proto/api/rest/RequestedPaymentMethod;->copy$default(Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Ljava/lang/String;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCardPresent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$RequestedCard;Lcom/stripe/proto/api/rest/RequestedPaymentMethod$BillingDetails;Ljava/lang/String;Lokio/ByteString;ILjava/lang/Object;)Lcom/stripe/proto/api/rest/RequestedPaymentMethod;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 734
    sget-object v4, Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;->INSTANCE:Lcom/stripe/paymentcollection/OnlineAuthState$ConfirmationStarted;

    check-cast v4, Lcom/stripe/paymentcollection/OnlineAuthState;

    invoke-interface {v5, v4}, Lcom/stripe/paymentcollection/OnlineAuthStateListener;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    move-object/from16 v4, p2

    .line 736
    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->confirmSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntent;Lcom/stripe/proto/api/rest/RequestedPaymentMethod;Lkotlin/jvm/functions/Function1;Lcom/stripe/transaction/CollectiblePayment;Lcom/stripe/paymentcollection/OnlineAuthStateListener;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/jvmcore/restclient/RestResponse;

    move-result-object v1

    .line 744
    iget-object v2, v0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    sget-object v3, Lcom/stripe/jvmcore/transaction/Extensions;->INSTANCE:Lcom/stripe/jvmcore/transaction/Extensions;

    invoke-virtual/range {p2 .. p2}, Lcom/stripe/transaction/CollectiblePayment;->getTransactionSupportsSca()Z

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/stripe/jvmcore/transaction/Extensions;->toChargeAttemptForSetupIntent(Lcom/stripe/jvmcore/restclient/RestResponse;Z)Lcom/stripe/transaction/ChargeAttempt;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 746
    sget-object v2, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->Companion:Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;

    sget-object v3, Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;->CONFIRM:Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;

    sget-object v4, Lcom/stripe/stripeterminal/internal/common/api/ApiResource;->SETUP_INTENT:Lcom/stripe/stripeterminal/internal/common/api/ApiResource;

    new-instance v5, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmSetupIntent$1;

    invoke-direct {v5, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository$confirmSetupIntent$1;-><init>(Lcom/stripe/jvmcore/restclient/RestResponse;)V

    check-cast v5, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v2, v3, v4, v5}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient$Companion;->withDetailedConnectionError(Lcom/stripe/stripeterminal/internal/common/api/ApiOperation;Lcom/stripe/stripeterminal/internal/common/api/ApiResource;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stripe/stripeterminal/external/models/SetupIntent;

    return-object v1

    .line 732
    :cond_3
    new-instance v2, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v3, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->STRIPE_API_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const-string v4, "Failed to confirm SetupIntent. Payment object is malformed."

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v2
.end method

.method public createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 4

    const-string v0, "paymentIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "createPaymentIntent"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 176
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 178
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 179
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne p2, v3, :cond_0

    const/4 v1, 0x1

    .line 178
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getRestConfigForPayments(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Z)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p2

    .line 176
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->createPaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntentParameters;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method

.method public createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;
    .locals 2

    const-string v0, "paymentMethodData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1086
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->createReaderCollectedData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/CollectedData;

    move-result-object p1

    .line 1087
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 1088
    sget-object v1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulCollectedData;

    check-cast v1, Lcom/stripe/transaction/ChargeAttempt;

    .line 1087
    invoke-virtual {v0, v1}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1091
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 1092
    sget-object v1, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$InvalidCollectedData;

    check-cast v1, Lcom/stripe/transaction/ChargeAttempt;

    .line 1091
    invoke-virtual {v0, v1}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 1093
    throw p1
.end method

.method public createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/stripeterminal/external/models/CreateConfiguration;)Lcom/stripe/stripeterminal/external/models/SetupIntent;
    .locals 4

    const-string v0, "setupIntentParameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    const-string v3, "createSetupIntent"

    invoke-interface {v0, v3, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 189
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 191
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->offlineConfigHelper:Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;

    .line 192
    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/CreateConfiguration;->getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    move-result-object p2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->REQUIRE_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    if-ne p2, v3, :cond_0

    const/4 v1, 0x1

    .line 191
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->getRestConfigForPayments(Lcom/stripe/offlinemode/helpers/OfflineConfigHelper;Z)Lcom/stripe/jvmcore/restclient/RestConfig;

    move-result-object p2

    .line 189
    invoke-virtual {v0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->createSetupIntent(Lcom/stripe/stripeterminal/external/models/SetupIntentParameters;Lcom/stripe/jvmcore/restclient/RestConfig;)Lcom/stripe/stripeterminal/external/models/SetupIntent;

    move-result-object p1

    return-object p1
.end method

.method public getReaderLocations(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/Location;",
            ">;"
        }
    .end annotation

    const-string v0, "deviceSerials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->connectionTokenRepository:Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/tokenrepositories/ConnectionTokenRepository;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->discoverLocations(Ljava/util/List;Ljava/lang/String;)Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;

    move-result-object p1

    .line 1020
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse;->getReaders()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 1234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1235
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;

    .line 1021
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1235
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    :cond_1
    check-cast v0, Ljava/util/List;

    .line 1234
    check-cast v0, Ljava/lang/Iterable;

    .line 1237
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 1238
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/16 v2, 0xa

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1239
    check-cast v1, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;

    .line 1023
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->getSerialNumbers()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .line 1240
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 1241
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1242
    check-cast v3, Ljava/lang/String;

    .line 1024
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/api/DiscoverLocationsResponse$ReaderLocationPair;->getLocation()Lcom/stripe/stripeterminal/external/models/Location;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-static {v3, v5}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    .line 1242
    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1024
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Required value was null."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1243
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 1239
    check-cast v4, Ljava/lang/Iterable;

    .line 1244
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 1246
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 1237
    check-cast p1, Ljava/lang/Iterable;

    .line 1247
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v0

    .line 1248
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 1249
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1250
    check-cast v0, Lkotlin/Pair;

    .line 1027
    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stripe/stripeterminal/external/models/Location;

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 1250
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    return-object v1
.end method

.method public readReusableCard(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 2

    const-string v0, "readReusableCardParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethodData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->apiClient:Lcom/stripe/stripeterminal/internal/common/api/ApiClient;

    .line 866
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v1

    .line 863
    invoke-virtual {v0, p1, p2, v1}, Lcom/stripe/stripeterminal/internal/common/api/ApiClient;->createCardPaymentMethod(Lcom/stripe/stripeterminal/external/models/ReadReusableCardParameters;Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    .line 868
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 869
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$SuccessfulReusableCard;

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt;

    .line 868
    invoke-virtual {p2, v0}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V
    :try_end_0
    .catch Lcom/stripe/stripeterminal/external/models/TerminalException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 872
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->chargeAttemptManager:Lcom/stripe/transaction/ChargeAttemptManager;

    .line 873
    sget-object v0, Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;->INSTANCE:Lcom/stripe/transaction/ChargeAttempt$CompletedAttempt$UnknownReusableCardResult;

    check-cast v0, Lcom/stripe/transaction/ChargeAttempt;

    .line 872
    invoke-virtual {p2, v0}, Lcom/stripe/transaction/ChargeAttemptManager;->setChargeAttempt(Lcom/stripe/transaction/ChargeAttempt;)V

    .line 874
    throw p1
.end method

.method public final shouldHandleCotsPinRequest$resourcerepository_release(Lcom/stripe/stripeterminal/external/models/PaymentIntent;)Z
    .locals 11

    const-string v0, "pi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/Reader;->getDeviceType()Lcom/stripe/stripeterminal/external/models/DeviceType;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    sget-object v2, Lcom/stripe/stripeterminal/external/models/DeviceType;->TAP_TO_PAY_DEVICE:Lcom/stripe/stripeterminal/external/models/DeviceType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v4

    .line 471
    :goto_1
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getNextAction()Lcom/stripe/stripeterminal/external/models/NextAction;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/NextAction;->getType()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    const-string v5, "use_stripe_sdk"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->getNextAction()Lcom/stripe/stripeterminal/external/models/NextAction;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/NextAction;->getUseStripeSdk()Lcom/stripe/stripeterminal/external/models/UseStripeSdk;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/UseStripeSdk;->getType()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const-string p1, "android_tap_to_pay_pin_capture"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    .line 474
    :goto_4
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    invoke-virtual {p1}, Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;->getTtpaPinEntryEnabled()Z

    move-result p1

    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_5

    .line 476
    :cond_6
    new-instance v4, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 477
    sget-object v5, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->FEATURE_NOT_ENABLED_ON_ACCOUNT:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v9, 0xc

    const/4 v10, 0x0

    .line 476
    const-string v6, "Tap to Pay PIN entry is not enabled. Contact Stripe support to enable this feature."

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v4 .. v10}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v4

    :cond_7
    :goto_5
    return v3
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/resourcerepository/OnlineDirectResourceRepository;->paymentIntentUpdater:Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;->invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
