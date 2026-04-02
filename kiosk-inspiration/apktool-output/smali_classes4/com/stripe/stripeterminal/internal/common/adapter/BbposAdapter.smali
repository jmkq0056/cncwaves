.class public abstract Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;
.super Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;
.source "BbposAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$Companion;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoveryResult;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$UpdateOperation;,
        Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter\n+ 2 LoggerFactory.kt\ncom/stripe/jvmcore/logging/terminal/log/LoggerFactoryKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1324:1\n16#2:1325\n1#3:1326\n*S KotlinDebug\n*F\n+ 1 BbposAdapter.kt\ncom/stripe/stripeterminal/internal/common/adapter/BbposAdapter\n*L\n186#1:1325\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0003\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000f\u0008\'\u0018\u0000 \u00c8\u00012\u00020\u0001:\u001c\u00c7\u0001\u00c8\u0001\u00c9\u0001\u00ca\u0001\u00cb\u0001\u00cc\u0001\u00cd\u0001\u00ce\u0001\u00cf\u0001\u00d0\u0001\u00d1\u0001\u00d2\u0001\u00d3\u0001\u00d4\u0001B\u009b\u0002\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u0012\u0006\u0010\u0012\u001a\u00020\u0013\u0012\u0006\u0010\u0014\u001a\u00020\u0015\u0012\u0006\u0010\u0016\u001a\u00020\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0019\u0012\u0006\u0010\u001a\u001a\u00020\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0006\u0010\u001e\u001a\u00020\u001f\u0012\u0006\u0010 \u001a\u00020!\u0012\u0006\u0010\"\u001a\u00020#\u0012\u0006\u0010$\u001a\u00020%\u0012\u0006\u0010&\u001a\u00020\'\u0012\u0006\u0010(\u001a\u00020)\u0012\u0006\u0010*\u001a\u00020+\u0012\u0006\u0010,\u001a\u00020-\u0012\u0006\u0010.\u001a\u00020/\u0012\u0006\u00100\u001a\u000201\u0012\"\u00102\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020703j\u0002`8\u0012\u0006\u00109\u001a\u00020:\u0012\u0006\u0010;\u001a\u00020<\u0012\u0016\u0010=\u001a\u0012\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020@0>j\u0002`A\u0012\u0006\u0010B\u001a\u00020C\u00a2\u0006\u0002\u0010DJ\u0008\u0010[\u001a\u00020\\H\u0016J\u0008\u0010]\u001a\u00020RH\u0016J\u0010\u0010^\u001a\u00020R2\u0006\u0010_\u001a\u00020`H\u0016J\u0008\u0010a\u001a\u00020RH\u0016J\u0008\u0010b\u001a\u00020RH\u0016J\u001a\u0010c\u001a\u0004\u0018\u00010d2\u0006\u0010e\u001a\u00020f2\u0006\u0010g\u001a\u00020hH\u0016J\u0010\u0010i\u001a\u00020j2\u0006\u0010k\u001a\u00020lH\u0016J\u0008\u0010G\u001a\u00020FH\u0016J\u0010\u0010m\u001a\u00020R2\u0006\u0010n\u001a\u00020oH\u0016J\u0018\u0010p\u001a\u00020R2\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tH\u0016J\u0008\u0010u\u001a\u00020RH\u0016J>\u0010v\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002Hx0w\"\u0008\u0008\u0000\u0010x*\u00020y2\u000e\u0008\u0008\u0010z\u001a\u0008\u0012\u0004\u0012\u00020R0Q2\u000c\u0010{\u001a\u0008\u0012\u0004\u0012\u0002Hx0|H\u0082H\u00a2\u0006\u0002\u0010}J\u0012\u0010~\u001a\u00020\u007f2\u0008\u0010\u0080\u0001\u001a\u00030\u0081\u0001H\u0004J)\u0010\u0082\u0001\u001a\u0011\u0012\u0005\u0012\u00030\u0084\u0001\u0012\u0005\u0012\u00030\u0085\u00010\u0083\u00012\u000f\u0010\u0086\u0001\u001a\n\u0012\u0005\u0012\u00030\u0084\u00010\u0087\u0001H\u0014J\u0014\u0010\u0088\u0001\u001a\u0005\u0018\u00010\u0089\u00012\u0006\u0010e\u001a\u00020fH\u0016J\u001b\u0010\u008a\u0001\u001a\n\u0012\u0005\u0012\u00030\u008c\u00010\u008b\u00012\u0008\u0010\u008d\u0001\u001a\u00030\u0084\u0001H\u0016J\t\u0010\u008e\u0001\u001a\u00020RH\u0016J\u0012\u0010\u008f\u0001\u001a\u00020R2\u0007\u0010\u0090\u0001\u001a\u00020dH\u0016J\u0016\u0010\u0091\u0001\u001a\u00070\u0092\u0001R\u00020\u00002\u0006\u0010e\u001a\u00020fH$J\u001e\u0010\u0093\u0001\u001a\u00070\u0094\u0001R\u00020\u00002\u0006\u0010q\u001a\u00020r2\u0006\u0010s\u001a\u00020tH$J\u0014\u0010\u0095\u0001\u001a\u0005\u0018\u00010\u0096\u00012\u0006\u0010e\u001a\u00020fH$J\u0016\u0010\u0097\u0001\u001a\u00070\u0098\u0001R\u00020\u00002\u0006\u0010e\u001a\u00020fH$J\u0015\u0010\u0099\u0001\u001a\u00020R2\n\u0010\u009a\u0001\u001a\u0005\u0018\u00010\u009b\u0001H\u0016J3\u0010\u009c\u0001\u001a\u00020f2\u0006\u0010e\u001a\u00020f2\u0008\u0010\u009d\u0001\u001a\u00030\u009e\u00012\u0016\u0010\u009f\u0001\u001a\u0011\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020R\u0018\u00010\u00a0\u0001H\u0014J\u0013\u0010\u00a1\u0001\u001a\u00020R2\u0008\u0010\u00a2\u0001\u001a\u00030\u00a3\u0001H\u0014J\u0013\u0010\u00a4\u0001\u001a\u00020R2\u0008\u0010\u00a5\u0001\u001a\u00030\u00a6\u0001H\u0014J\u0013\u0010\u00a7\u0001\u001a\u00020R2\u0008\u0010\u00a8\u0001\u001a\u00030\u00a9\u0001H\u0016J\t\u0010\u00aa\u0001\u001a\u00020RH\u0016J\u0013\u0010\u00ab\u0001\u001a\u00020R2\u0008\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001H\u0004J\t\u0010\u00ae\u0001\u001a\u00020jH\u0016J\u0011\u0010\u00af\u0001\u001a\u00020R2\u0006\u0010e\u001a\u00020fH\u0016J\u0011\u0010\u00b0\u0001\u001a\u00020f2\u0006\u0010e\u001a\u00020fH\u0016J\u0011\u0010\u00b1\u0001\u001a\u00020R2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0012\u0010\u00b1\u0001\u001a\u00020R2\u0007\u0010\u00b2\u0001\u001a\u00020\u0011H\u0002J\u0011\u0010\u00b1\u0001\u001a\u00020R2\u0006\u0010s\u001a\u00020\u0013H\u0002J\u0011\u0010\u00b1\u0001\u001a\u00020R2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\t\u0010\u00b3\u0001\u001a\u00020RH\u0004J\t\u0010\u00b4\u0001\u001a\u00020RH\u0004J\u001b\u0010\u00b5\u0001\u001a\u0005\u0018\u00010\u00b6\u00012\r\u0010\u00b7\u0001\u001a\u0008\u0012\u0004\u0012\u00020R0QH\u0016J\u0012\u0010\u00b8\u0001\u001a\u00030\u0096\u00012\u0006\u0010e\u001a\u00020fH\u0004J%\u0010\u00b9\u0001\u001a\u00020R2\u0014\u0010\u009f\u0001\u001a\u000f\u0012\u0004\u0012\u00020o\u0012\u0004\u0012\u00020R0\u00a0\u0001H\u0001\u00a2\u0006\u0003\u0008\u00ba\u0001J\t\u0010\u00bb\u0001\u001a\u00020RH\u0004J\u0011\u0010\u00bc\u0001\u001a\u00020R2\u0006\u0010e\u001a\u00020fH\u0016J\u0014\u0010\u00bd\u0001\u001a\u00030\u00be\u00012\u0008\u0010\u00bf\u0001\u001a\u00030\u00c0\u0001H\u0002J\t\u0010\u0090\u0001\u001a\u00020RH\u0004J1\u0010\u00c1\u0001\u001a\u00030\u00c2\u00012\u0008\u0010\u00c3\u0001\u001a\u00030\u00c2\u00012\u0008\u0010G\u001a\u0004\u0018\u00010F2\u0007\u0010\u00c4\u0001\u001a\u00020h2\u0008\u0010\u00c5\u0001\u001a\u00030\u00c6\u0001H\u0016R(\u0010G\u001a\u0004\u0018\u00010F2\u0008\u0010E\u001a\u0004\u0018\u00010F8B@BX\u0082\u000e\u00a2\u0006\u000c\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\u000e\u0010L\u001a\u00020MX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u0004\u0018\u00010OX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010(\u001a\u00020)X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020/X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010P\u001a\u0008\u0012\u0004\u0012\u00020R0QX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010B\u001a\u00020CX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020<X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00109\u001a\u00020:X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001e\u001a\u00020\u001fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010S\u001a\u00020TX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u00100\u001a\u000201X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020\'X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010V\u001a\u00020U2\u0006\u0010E\u001a\u00020U8D@DX\u0084\u000e\u00a2\u0006\u000c\u001a\u0004\u0008W\u0010X\"\u0004\u0008Y\u0010ZR\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u00102\u001a\u001e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u000205\u0012\u0004\u0012\u000206\u0012\u0004\u0012\u00020703j\u0002`8X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00d5\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;",
        "Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;",
        "updateClient",
        "Lcom/stripe/core/readerupdate/UpdateClient;",
        "sessionTokenRepository",
        "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
        "scheduler",
        "Lio/reactivex/rxjava3/core/Scheduler;",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "connectionManager",
        "Lcom/stripe/core/readerconnection/ConnectionManager;",
        "updateManager",
        "Lcom/stripe/core/readerupdate/UpdateManager;",
        "configListener",
        "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
        "readerStatusListener",
        "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
        "updateListener",
        "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
        "updateInstaller",
        "Lcom/stripe/core/readerupdate/UpdateInstaller;",
        "statusManager",
        "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
        "settingsRepository",
        "Lcom/stripe/core/transaction/SettingsRepository;",
        "featureFlagsRepository",
        "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
        "readerUpdateController",
        "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
        "paymentCollectionWrapper",
        "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
        "transactionRepository",
        "Lcom/stripe/core/transaction/TransactionRepository;",
        "connectAndUpdateStateMachine",
        "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
        "readerInfoController",
        "Lcom/stripe/core/hardware/ReaderInfoController;",
        "resourceRepository",
        "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
        "deviceListener",
        "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
        "deviceListenerRegistry",
        "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
        "domesticDebitAidsParser",
        "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
        "disconnectReasonRepository",
        "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
        "readerInfoRepository",
        "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
        "singleUpdateHealthLogger",
        "Lcom/stripe/jvmcore/logging/HealthLogger;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
        "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
        "Lcom/stripe/core/readerupdate/healthreporter/SingleUpdateHealthLogger;",
        "mposReaderEventLogger",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
        "mposReaderDebugLogManager",
        "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "loggerFactory",
        "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
        "(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V",
        "value",
        "Lcom/stripe/transaction/CollectiblePayment;",
        "collectiblePayment",
        "getCollectiblePayment",
        "()Lcom/stripe/transaction/CollectiblePayment;",
        "setCollectiblePayment",
        "(Lcom/stripe/transaction/CollectiblePayment;)V",
        "compositeDisposable",
        "Lio/reactivex/rxjava3/disposables/CompositeDisposable;",
        "deviceBusyJob",
        "Lkotlinx/coroutines/Job;",
        "endBatteryInfoPolling",
        "Lkotlin/Function0;",
        "",
        "readerDisconnectDisposable",
        "Lio/reactivex/rxjava3/disposables/SerialDisposable;",
        "Lcom/stripe/transaction/Settings;",
        "settings",
        "getSettings",
        "()Lcom/stripe/transaction/Settings;",
        "setSettings",
        "(Lcom/stripe/transaction/Settings;)V",
        "adapterType",
        "Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;",
        "cancelCollectPaymentMethod",
        "cancelDiscoverReaders",
        "cancelDiscoverReadersReason",
        "Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;",
        "cancelInstallUpdate",
        "cancelReconnectReader",
        "checkForUpdate",
        "Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;",
        "reader",
        "Lcom/stripe/stripeterminal/external/models/Reader;",
        "failSilently",
        "",
        "collectPaymentMethod",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "paymentMethodCollectionType",
        "Lcom/stripe/transaction/PaymentMethodCollectionType;",
        "disconnectReader",
        "disconnectReason",
        "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
        "discoverReaders",
        "config",
        "Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;",
        "listener",
        "Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;",
        "dispose",
        "doWhenReaderIdle",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult;",
        "T",
        "",
        "producer",
        "observable",
        "Lio/reactivex/rxjava3/core/Observable;",
        "(Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/Observable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "emvTransactionTypeForDeviceType",
        "Lcom/stripe/hardware/emv/EmvTransactionType;",
        "deviceType",
        "Lcom/stripe/stripeterminal/external/models/DeviceType;",
        "getLocationsForDiscovery",
        "",
        "",
        "Lcom/stripe/stripeterminal/external/models/Location;",
        "deviceSerials",
        "",
        "getReaderInfo",
        "Lcom/stripe/hardware/status/ReaderInfo;",
        "handleAuthResponse",
        "Lkotlinx/coroutines/Deferred;",
        "Lcom/stripe/hardware/emv/TransactionResult;",
        "tlvBlob",
        "init",
        "installUpdate",
        "update",
        "makeConnectReaderOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;",
        "makeDiscoverReadersOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;",
        "makeHardwareReader",
        "Lcom/stripe/core/hardware/Reader;",
        "makeReconnectReaderOperation",
        "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;",
        "onChargeAttemptChanged",
        "chargeAttempt",
        "Lcom/stripe/transaction/ChargeAttempt;",
        "onConnectReader",
        "connectionConfiguration",
        "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
        "requestReconnection",
        "Lkotlin/Function1;",
        "onDisconnect",
        "disconnectCause",
        "Lcom/stripe/hardware/status/DisconnectCause;",
        "onFailure",
        "e",
        "Lcom/stripe/stripeterminal/external/models/TerminalException;",
        "onOnlineAuthStateChanged",
        "state",
        "Lcom/stripe/paymentcollection/OnlineAuthState;",
        "onPaymentMethodCollectedForPaymentIntent",
        "onUnexpectedFailure",
        "t",
        "",
        "readReusableCard",
        "rebootReader",
        "reconnectReader",
        "register",
        "readerListener",
        "registerReaderDisconnectHandler",
        "removeReaderDisconnectHandler",
        "requestReaderBatteryInfo",
        "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;",
        "endPolling",
        "requireHardwareReader",
        "setReconnectionRequester",
        "setReconnectionRequester$adapter_release",
        "startReconnect",
        "startSession",
        "translateReaderType",
        "Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;",
        "readerType",
        "Lcom/stripe/hardware/ReaderConfiguration$ReaderType;",
        "updatePaymentIntent",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "paymentIntent",
        "requestDynamicCurrencyConversion",
        "apiPaymentIntentUpdater",
        "Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;",
        "CheckForUpdateOperation",
        "Companion",
        "ConnectReaderOperation",
        "DisconnectReaderOperation",
        "DiscoverReadersOperation",
        "DiscoveryResult",
        "InstallUpdateOperation",
        "ReaderInteractionResult",
        "RebootReaderOperation",
        "ReconnectReaderOperation",
        "RequestDeviceInformationOperation",
        "RequestReaderBatteryInfoOperation",
        "StartSessionOperation",
        "UpdateOperation",
        "adapter_release"
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
.field public static final ARMADA_ENDPOINT_TAG_VALUE:Ljava/lang/String; = "armada"

.field public static final CONNECTION_TYPE_TAG_KEY:Ljava/lang/String; = "connection_type"

.field public static final Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$Companion;

.field public static final DEFAULT_RECONNECTION_MAX_ATTEMPTS:I = 0x4

.field public static final DEFAULT_RECONNECTION_TIMEOUT:J = 0x7530L

.field public static final ENDPOINT_TAG_KEY:Ljava/lang/String; = "endpoint"

.field public static final FAIL_SILENTLY_TAG_KEY:Ljava/lang/String; = "fail_silently"

.field public static final HARDWARE_VERSION_TAG_KEY:Ljava/lang/String; = "HardwareVersion"

.field public static final RECONNECTION_OUTCOME_TAG_KEY:Ljava/lang/String; = "reconnection_outcome"

.field public static final TMS_ENDPOINT_TAG_VALUE:Ljava/lang/String; = "tms"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field private final compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private final configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

.field private final connectAndUpdateStateMachine:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

.field private final connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

.field private deviceBusyJob:Lkotlinx/coroutines/Job;

.field private final deviceListener:Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

.field private final deviceListenerRegistry:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;

.field private final disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

.field private final domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

.field private endBatteryInfoPolling:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

.field private final loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

.field private final mposReaderDebugLogManager:Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

.field private final mposReaderEventLogger:Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

.field private final paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

.field private final readerDisconnectDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

.field private final readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

.field private final readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

.field private final readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

.field private final readerUpdateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

.field private final resourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

.field private final scheduler:Lio/reactivex/rxjava3/core/Scheduler;

.field private final scope:Lkotlinx/coroutines/CoroutineScope;

.field private final sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

.field private final settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

.field private final singleUpdateHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

.field private final transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

.field private final updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

.field private final updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

.field private final updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

.field private final updateManager:Lcom/stripe/core/readerupdate/UpdateManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->Companion:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/stripe/core/readerupdate/UpdateClient;Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;Lio/reactivex/rxjava3/core/Scheduler;Lkotlinx/coroutines/CoroutineScope;Lcom/stripe/core/readerconnection/ConnectionManager;Lcom/stripe/core/readerupdate/UpdateManager;Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;Lcom/stripe/core/readerupdate/UpdateInstaller;Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/SettingsRepository;Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;Lcom/stripe/core/hardware/updates/ReaderUpdateController;Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;Lcom/stripe/core/hardware/ReaderInfoController;Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;Lcom/stripe/hardware/emv/DomesticDebitAidsParser;Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;Lcom/stripe/jvmcore/logging/HealthLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/readerupdate/UpdateClient;",
            "Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lcom/stripe/core/readerconnection/ConnectionManager;",
            "Lcom/stripe/core/readerupdate/UpdateManager;",
            "Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;",
            "Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;",
            "Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;",
            "Lcom/stripe/core/readerupdate/UpdateInstaller;",
            "Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;",
            "Lcom/stripe/core/transaction/SettingsRepository;",
            "Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;",
            "Lcom/stripe/core/hardware/updates/ReaderUpdateController;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;",
            "Lcom/stripe/core/transaction/TransactionRepository;",
            "Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;",
            "Lcom/stripe/core/hardware/ReaderInfoController;",
            "Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;",
            "Lcom/stripe/hardware/emv/DomesticDebitAidsParser;",
            "Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;",
            "Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;",
            "Lcom/stripe/jvmcore/logging/HealthLogger<",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/UpdatesDomain$Builder;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope;",
            "Lcom/stripe/proto/terminal/clientlogger/pub/message/health/domains/updates/SingleUpdateScope$Builder;",
            ">;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;",
            "Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;",
            "Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;",
            ")V"
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

    const-string v0, "updateClient"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionTokenRepository"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scheduler"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionManager"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateManager"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configListener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerStatusListener"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateListener"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateInstaller"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusManager"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settingsRepository"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featureFlagsRepository"

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerUpdateController"

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentCollectionWrapper"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionRepository"

    move-object/from16 v15, p16

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectAndUpdateStateMachine"

    move-object/from16 v15, p17

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoController"

    move-object/from16 v15, p18

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceRepository"

    move-object/from16 v15, p19

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceListener"

    move-object/from16 v15, p20

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceListenerRegistry"

    move-object/from16 v15, p21

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domesticDebitAidsParser"

    move-object/from16 v15, p22

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "disconnectReasonRepository"

    move-object/from16 v15, p23

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readerInfoRepository"

    move-object/from16 v15, p24

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "singleUpdateHealthLogger"

    move-object/from16 v15, p25

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mposReaderEventLogger"

    move-object/from16 v15, p26

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mposReaderDebugLogManager"

    move-object/from16 v15, p27

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    move-object/from16 v15, p28

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loggerFactory"

    move-object/from16 v14, p29

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    .line 159
    invoke-direct {v0, v15}, Lcom/stripe/stripeterminal/internal/common/adapter/ProxiedAdapter;-><init>(Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    .line 130
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    .line 131
    iput-object v2, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    .line 132
    iput-object v3, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    .line 133
    iput-object v4, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 134
    iput-object v5, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    .line 135
    iput-object v6, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

    .line 136
    iput-object v7, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    .line 137
    iput-object v8, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    .line 138
    iput-object v9, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    .line 139
    iput-object v10, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    .line 140
    iput-object v11, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 141
    iput-object v12, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    .line 142
    iput-object v13, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    move-object/from16 v1, p14

    .line 143
    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerUpdateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    move-object/from16 v15, p15

    .line 144
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    move-object/from16 v15, p16

    .line 145
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    move-object/from16 v15, p17

    .line 146
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectAndUpdateStateMachine:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    move-object/from16 v15, p18

    .line 147
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

    move-object/from16 v15, p19

    .line 148
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->resourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    move-object/from16 v15, p20

    .line 149
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListener:Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    move-object/from16 v15, p21

    .line 150
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListenerRegistry:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;

    move-object/from16 v15, p22

    .line 151
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    move-object/from16 v15, p23

    .line 152
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    move-object/from16 v15, p24

    .line 153
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    move-object/from16 v15, p25

    .line 154
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->singleUpdateHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    move-object/from16 v15, p26

    .line 155
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderEventLogger:Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    move-object/from16 v15, p27

    .line 156
    iput-object v15, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderDebugLogManager:Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    .line 158
    iput-object v14, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 161
    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    .line 169
    new-instance v1, Lio/reactivex/rxjava3/disposables/SerialDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;-><init>()V

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerDisconnectDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    .line 170
    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;->INSTANCE:Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$endBatteryInfoPolling$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    iput-object v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->endBatteryInfoPolling:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getConnectionManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerconnection/ConnectionManager;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    return-object p0
.end method

.method public static final synthetic access$getDeviceBusyJob$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlinx/coroutines/Job;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceBusyJob:Lkotlinx/coroutines/Job;

    return-object p0
.end method

.method public static final synthetic access$getDisconnectReasonRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    return-object p0
.end method

.method public static final synthetic access$getDomesticDebitAidsParser$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/hardware/emv/DomesticDebitAidsParser;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->domesticDebitAidsParser:Lcom/stripe/hardware/emv/DomesticDebitAidsParser;

    return-object p0
.end method

.method public static final synthetic access$getEndBatteryInfoPolling$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->endBatteryInfoPolling:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getFeatureFlagsRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->featureFlagsRepository:Lcom/stripe/jvmcore/featureflag/FeatureFlagsRepository;

    return-object p0
.end method

.method public static final synthetic access$getLogger(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOperationInProgress(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getOperationToCancel(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlin/reflect/KClass;
    .locals 0

    .line 128
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationToCancel()Lkotlin/reflect/KClass;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPaymentCollectionWrapper$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    return-object p0
.end method

.method public static final synthetic access$getReaderInfoController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/ReaderInfoController;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerInfoController:Lcom/stripe/core/hardware/ReaderInfoController;

    return-object p0
.end method

.method public static final synthetic access$getReaderInfoRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerInfoRepository:Lcom/stripe/core/hardware/reactive/ReaderInfoRepository;

    return-object p0
.end method

.method public static final synthetic access$getReaderStatusListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    return-object p0
.end method

.method public static final synthetic access$getReaderUpdateController$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/updates/ReaderUpdateController;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerUpdateController:Lcom/stripe/core/hardware/updates/ReaderUpdateController;

    return-object p0
.end method

.method public static final synthetic access$getScheduler$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lio/reactivex/rxjava3/core/Scheduler;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    return-object p0
.end method

.method public static final synthetic access$getScope$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getSessionTokenRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->sessionTokenRepository:Lcom/stripe/jvmcore/terminal/tokenrepositories/SessionTokenRepository;

    return-object p0
.end method

.method public static final synthetic access$getSingleUpdateHealthLogger$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/jvmcore/logging/HealthLogger;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->singleUpdateHealthLogger:Lcom/stripe/jvmcore/logging/HealthLogger;

    return-object p0
.end method

.method public static final synthetic access$getStatusManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    return-object p0
.end method

.method public static final synthetic access$getTransactionRepository$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/transaction/TransactionRepository;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    return-object p0
.end method

.method public static final synthetic access$getUpdateClient$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateClient;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateClient:Lcom/stripe/core/readerupdate/UpdateClient;

    return-object p0
.end method

.method public static final synthetic access$getUpdateListener$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    return-object p0
.end method

.method public static final synthetic access$getUpdateManager$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)Lcom/stripe/core/readerupdate/UpdateManager;
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

    return-object p0
.end method

.method public static final synthetic access$logUnexpectedOperationInProgressWarning(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/reflect/KClass;)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public static final synthetic access$setDeviceBusyJob$p(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlinx/coroutines/Job;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceBusyJob:Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final synthetic access$setOperationToCancel(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lkotlin/reflect/KClass;)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method private final doWhenReaderIdle(Lkotlin/jvm/functions/Function0;Lio/reactivex/rxjava3/core/Observable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lio/reactivex/rxjava3/core/Observable<",
            "TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReaderInteractionResult<",
            "+TT;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 693
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$doWhenReaderIdle$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/jvm/functions/Function2;

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    .line 717
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->first(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private final getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/TransactionRepository;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    return-object v0
.end method

.method private final register(Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v1, 0x1

    .line 384
    new-array v1, v1, [Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;->getReaderSettingsObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v2, Lio/reactivex/rxjava3/functions/Consumer;

    .line 412
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$2;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 384
    invoke-virtual {p1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 383
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final register(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)V
    .locals 5

    .line 438
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/16 v1, 0x8

    .line 439
    new-array v1, v1, [Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderConnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 440
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$3;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$3;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 446
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$4;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$4;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 440
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 449
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderInfoObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 450
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$5;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$5;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 471
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$6;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$6;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 450
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 474
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDiscoveryObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 475
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$7;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$7;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 483
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$8;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$8;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 475
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 486
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderLowBatteryObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 487
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$9;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$9;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 495
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$10;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$10;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 487
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 498
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDeviceBusyObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 499
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$11;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$11;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 515
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$12;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$12;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 499
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 518
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 519
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$13;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$13;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$14;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$14;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 521
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderRebootAttemptObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 522
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$15;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 534
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$16;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$16;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 522
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 537
    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderPowerEventObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 538
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$17;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$17;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v2, Lio/reactivex/rxjava3/functions/Consumer;

    .line 542
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$18;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$18;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 538
    invoke-virtual {p1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const/4 v2, 0x7

    aput-object p1, v1, v2

    .line 438
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final register(Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;)V
    .locals 4

    .line 553
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v1, 0x1

    .line 554
    new-array v1, v1, [Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;->getReaderUpdateExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 555
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$19;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$19;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v2, Lio/reactivex/rxjava3/functions/Consumer;

    .line 566
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$20;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$20;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 555
    invoke-virtual {p1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 553
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final register(Lcom/stripe/core/readerupdate/UpdateInstaller;)V
    .locals 5

    .line 572
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v1, 0x5

    .line 573
    new-array v1, v1, [Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->getReaderUpdateExceptionObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 574
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$21;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$21;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 578
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$22;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$22;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 574
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 581
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->getReaderUpdateCompleteObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 582
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$23;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$23;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 586
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$24;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$24;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 582
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 589
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->getReaderUpdateProgressObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 590
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$25;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$25;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 594
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$26;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$26;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 590
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 597
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->getReaderUpdateCancelledObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v2, v3}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    .line 598
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$27;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$27;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 602
    new-instance v4, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$28;

    invoke-direct {v4, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$28;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v4, Lio/reactivex/rxjava3/functions/Consumer;

    .line 598
    invoke-virtual {v2, v3, v4}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 605
    invoke-virtual {p1}, Lcom/stripe/core/readerupdate/UpdateInstaller;->getReaderUpdateDownloadCompleteObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {p1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 606
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$29;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$29;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v2, Lio/reactivex/rxjava3/functions/Consumer;

    .line 608
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$30;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$register$30;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 606
    invoke-virtual {p1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    const/4 v2, 0x4

    aput-object p1, v1, v2

    .line 572
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->addAll([Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private final setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/TransactionRepository;->setCollectiblePayment(Lcom/stripe/transaction/CollectiblePayment;)V

    return-void
.end method

.method private final translateReaderType(Lcom/stripe/hardware/ReaderConfiguration$ReaderType;)Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;
    .locals 1

    .line 1085
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/hardware/ReaderConfiguration$ReaderType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1089
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->MANUAL_ENTRY:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1088
    :cond_1
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->TAP:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p1

    .line 1087
    :cond_2
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->INSERT:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p1

    .line 1086
    :cond_3
    sget-object p1, Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;->SWIPE:Lcom/stripe/stripeterminal/external/models/ReaderInputOptions$ReaderInputOption;

    return-object p1
.end method


# virtual methods
.method public adapterType()Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;
    .locals 1

    .line 1294
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;->BBPOS:Lcom/stripe/stripeterminal/internal/common/enum/AdapterType;

    return-object v0
.end method

.method public cancelCollectPaymentMethod()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->cancelCollectPaymentMethod()V

    return-void
.end method

.method public cancelDiscoverReaders(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V
    .locals 2

    const-string v0, "cancelDiscoverReadersReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 238
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    if-eqz v1, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.DiscoverReadersOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;->cancel(Lcom/stripe/discoverreaders/CancelDiscoverReadersReason;)V

    return-void

    .line 242
    :cond_0
    instance-of p1, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz p1, :cond_1

    .line 244
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 247
    :cond_1
    const-class p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public cancelInstallUpdate()V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 253
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.InstallUpdateOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;->startCancel()V

    return-void

    .line 257
    :cond_0
    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz v0, :cond_1

    .line 259
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 262
    :cond_1
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public cancelReconnectReader()V
    .locals 2

    .line 222
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    .line 223
    instance-of v1, v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;->cancel()V

    return-void

    .line 227
    :cond_0
    instance-of v0, v0, Lcom/stripe/stripeterminal/internal/common/Adapter$NullOperation;

    if-eqz v0, :cond_1

    .line 229
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationToCancel(Lkotlin/reflect/KClass;)V

    return-void

    .line 232
    :cond_1
    const-class v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->logUnexpectedOperationInProgressWarning(Lkotlin/reflect/KClass;)V

    return-void
.end method

.method public checkForUpdate(Lcom/stripe/stripeterminal/external/models/Reader;Z)Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "checkForUpdate"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 268
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-direct {v0, p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;Z)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 269
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.CheckForUpdateOperation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$CheckForUpdateOperation;->execute()Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;

    move-result-object p1

    return-object p1
.end method

.method public collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 4

    const-string v0, "paymentMethodCollectionType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x2

    .line 277
    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1}, Lcom/stripe/transaction/PaymentMethodCollectionType;->getAmount()Lcom/stripe/currency/Amount;

    move-result-object v2

    invoke-virtual {v2}, Lcom/stripe/currency/Amount;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "amount"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 278
    const-string v2, "type"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 275
    const-string v2, "collectPaymentMethod"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 280
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->collectPaymentMethod(Lcom/stripe/transaction/PaymentMethodCollectionType;)Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object p1

    return-object p1
.end method

.method public collectiblePayment()Lcom/stripe/transaction/CollectiblePayment;
    .locals 8

    .line 300
    invoke-direct {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getCollectiblePayment()Lcom/stripe/transaction/CollectiblePayment;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 301
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->CARD_REMOVED:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0xc

    const/4 v7, 0x0

    .line 300
    const-string v3, "Failed to retrieve payment method data"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v1
.end method

.method public disconnectReader(Lcom/stripe/stripeterminal/external/models/DisconnectReason;)V
    .locals 3

    .line 341
    const-string v0, "disconnectReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disconnectReader. disconnectReason: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlin/Pair;

    invoke-interface {v0, p1, v2}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 341
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;->getConnectedReader()Lcom/stripe/stripeterminal/external/models/Reader;

    move-result-object p1

    if-nez p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;

    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object p1

    const-string v0, "skipping disconnectReader"

    new-array v1, v1, [Lkotlin/Pair;

    invoke-interface {p1, v0, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->w(Ljava/lang/String;[Lkotlin/Pair;)V

    return-void

    .line 342
    :cond_0
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->requireHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;

    move-result-object p1

    .line 343
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DisconnectReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/core/hardware/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 344
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method public discoverReaders(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)V
    .locals 3

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "discoverReaders"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 349
    invoke-virtual {p0, p1, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->makeDiscoverReadersOperation(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 350
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderEventLogger:Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;->dispose()V

    .line 205
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderDebugLogManager:Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;->dispose()V

    .line 206
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListenerRegistry:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListener:Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    check-cast v1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, v1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;->unregisterListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V

    .line 207
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->clearDisconnectReason()V

    .line 208
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->compositeDisposable:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    .line 209
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerDisconnectDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    .line 210
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setPaymentCollectionListener(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V

    return-void
.end method

.method protected final emvTransactionTypeForDeviceType(Lcom/stripe/stripeterminal/external/models/DeviceType;)Lcom/stripe/hardware/emv/EmvTransactionType;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "deviceType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 680
    sget-object v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/DeviceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 684
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected device type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0

    .line 682
    :pswitch_0
    sget-object p1, Lcom/stripe/hardware/emv/EmvTransactionType;->TRADITIONAL:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object p1

    .line 681
    :pswitch_1
    sget-object p1, Lcom/stripe/hardware/emv/EmvTransactionType;->QUICK:Lcom/stripe/hardware/emv/EmvTransactionType;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getLocationsForDiscovery(Ljava/util/List;)Ljava/util/Map;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/stripe/stripeterminal/external/models/TerminalException;
        }
    .end annotation

    const-string v0, "deviceSerials"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->resourceRepository:Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;

    invoke-interface {v0, p1}, Lcom/stripe/stripeterminal/internal/common/resourcerepository/ResourceRepository;->getReaderLocations(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getReaderInfo(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/hardware/status/ReaderInfo;
    .locals 1

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    .line 1299
    move-object v0, p1

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 1300
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestDeviceInformationOperation;->execute()Lcom/stripe/hardware/status/ReaderInfo;

    move-result-object p1

    return-object p1
.end method

.method protected final getSettings()Lcom/stripe/transaction/Settings;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0}, Lcom/stripe/core/transaction/SettingsRepository;->getSettings()Lcom/stripe/transaction/Settings;

    move-result-object v0

    return-object v0
.end method

.method public handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlinx/coroutines/Deferred<",
            "Lcom/stripe/hardware/emv/TransactionResult;",
            ">;"
        }
    .end annotation

    const-string v0, "tlvBlob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->handleAuthResponse(Ljava/lang/String;)Lkotlinx/coroutines/Deferred;

    move-result-object p1

    return-object p1
.end method

.method public init()V
    .locals 6

    .line 179
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->dispose()V

    .line 182
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListenerRegistry:Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->deviceListener:Lcom/stripe/stripeterminal/internal/common/adapter/TerminalSdkDeviceListenerWrapper;

    check-cast v1, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, v1}, Lcom/stripe/core/bbpos/hardware/DeviceListenerRegistry;->registerListener(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;)V

    .line 183
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    new-instance v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;

    .line 184
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->statusManager:Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;

    .line 185
    iget-object v3, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->transactionRepository:Lcom/stripe/core/transaction/TransactionRepository;

    .line 186
    iget-object v4, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->loggerFactory:Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;

    .line 1325
    const-class v5, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/stripe/jvmcore/logging/terminal/log/LoggerFactory;->create(Lkotlin/reflect/KClass;)Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v4

    .line 183
    invoke-direct {v1, v2, v3, v4}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapterPaymentCollectionListener;-><init>(Lcom/stripe/stripeterminal/internal/common/TerminalStatusManager;Lcom/stripe/core/transaction/TransactionRepository;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V

    check-cast v1, Lcom/stripe/paymentcollection/PaymentCollectionListener;

    invoke-virtual {v0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->setPaymentCollectionListener(Lcom/stripe/paymentcollection/PaymentCollectionListener;)V

    .line 190
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->configListener:Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/hardware/reactive/emv/ReactiveConfigurationListener;)V

    .line 191
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;)V

    .line 192
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->registerReaderDisconnectHandler()V

    .line 193
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateListener:Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/hardware/reactive/updates/ReactiveReaderUpdateListener;)V

    .line 194
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateInstaller:Lcom/stripe/core/readerupdate/UpdateInstaller;

    invoke-direct {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->register(Lcom/stripe/core/readerupdate/UpdateInstaller;)V

    .line 197
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderEventLogger:Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderEventLogger;->init()V

    .line 200
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->mposReaderDebugLogManager:Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;

    invoke-interface {v0}, Lcom/stripe/stripeterminal/internal/common/log/MposReaderDebugLogManager;->init()V

    return-void
.end method

.method public installUpdate(Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V
    .locals 3

    const-string v0, "update"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "installUpdate"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 359
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$InstallUpdateOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/ReaderSoftwareUpdate;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 360
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method protected abstract makeConnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;
.end method

.method protected abstract makeDiscoverReadersOperation(Lcom/stripe/stripeterminal/external/models/DiscoveryConfiguration;Lcom/stripe/stripeterminal/external/callable/DiscoveryListener;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$DiscoverReadersOperation;
.end method

.method protected abstract makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;
.end method

.method protected abstract makeReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;
.end method

.method public onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->onChargeAttemptChanged(Lcom/stripe/transaction/ChargeAttempt;)V

    return-void
.end method

.method protected onConnectReader(Lcom/stripe/stripeterminal/external/models/Reader;Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;Lkotlin/jvm/functions/Function1;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/stripeterminal/external/models/Reader;",
            "Lcom/stripe/stripeterminal/external/models/ConnectionConfiguration;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/Reader;"
        }
    .end annotation

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectionConfiguration"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0, p3}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setRequestReconnection(Lkotlin/jvm/functions/Function1;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->makeConnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    move-result-object p2

    check-cast p2, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p2}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 313
    iget-object p2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {p2, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->updateDevicePaymentCapability(Lcom/stripe/stripeterminal/external/models/Reader;)V

    .line 314
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ConnectReaderOperation"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ConnectReaderOperation;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object p1
.end method

.method protected onDisconnect(Lcom/stripe/hardware/status/DisconnectCause;)V
    .locals 1

    const-string v0, "disconnectCause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 549
    iget-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->endBatteryInfoPolling:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method protected onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 646
    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/TerminalException;->getErrorCode()Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    move-result-object v0

    sget-object v1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 657
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->cancelCollectPaymentMethod()V

    goto :goto_0

    .line 653
    :pswitch_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->onReaderDisconnected()V

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/stripe/core/readerconnection/ConnectionManager;->endOperation()V

    .line 662
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

    invoke-virtual {v0}, Lcom/stripe/core/readerupdate/UpdateManager;->endOperation()V

    .line 663
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->update()V

    .line 665
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->setException(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->onOnlineAuthStateChanged(Lcom/stripe/paymentcollection/OnlineAuthState;)V

    return-void
.end method

.method public onPaymentMethodCollectedForPaymentIntent()V
    .locals 0

    return-void
.end method

.method protected final onUnexpectedFailure(Ljava/lang/Throwable;)V
    .locals 8

    const-string v0, "t"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/Throwable;)V

    .line 636
    new-instance v1, Lcom/stripe/stripeterminal/external/models/TerminalException;

    .line 637
    sget-object v2, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 636
    const-string v3, "Unexpected failure"

    const/4 v5, 0x0

    move-object v4, p1

    invoke-direct/range {v1 .. v7}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 635
    invoke-virtual {p0, v1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->onFailure(Lcom/stripe/stripeterminal/external/models/TerminalException;)V

    return-void
.end method

.method public readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 3

    .line 364
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "readReusableCard"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 365
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->paymentCollectionWrapper:Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/internal/common/adapter/PaymentCollectionCoordinatorWrapper;->readReusableCard()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    move-result-object v0

    return-object v0
.end method

.method public rebootReader(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "rebootReader"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 333
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->requireHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;

    move-result-object p1

    .line 334
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RebootReaderOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/core/hardware/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 335
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method public reconnectReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/external/models/Reader;
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "reconnectReader"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 326
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->makeReconnectReaderOperation(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 327
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.ReconnectReaderOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$ReconnectReaderOperation;->execute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/stripe/stripeterminal/external/models/Reader;

    return-object p1
.end method

.method protected final registerReaderDisconnectHandler()V
    .locals 4

    .line 418
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerDisconnectDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    .line 419
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerStatusListener:Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;

    invoke-virtual {v1}, Lcom/stripe/core/hardware/reactive/status/ReactiveReaderStatusListener;->getReaderDisconnectObservable()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->scheduler:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    .line 420
    new-instance v2, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;

    invoke-direct {v2, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$1;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v2, Lio/reactivex/rxjava3/functions/Consumer;

    .line 428
    new-instance v3, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$2;

    invoke-direct {v3, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$registerReaderDisconnectHandler$2;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast v3, Lio/reactivex/rxjava3/functions/Consumer;

    .line 420
    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    .line 418
    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method protected final removeReaderDisconnectHandler()V
    .locals 2

    .line 434
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->readerDisconnectDisposable:Lio/reactivex/rxjava3/disposables/SerialDisposable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/SerialDisposable;->set(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method public requestReaderBatteryInfo(Lkotlin/jvm/functions/Function0;)Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;"
        }
    .end annotation

    const-string v0, "endPolling"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "requestReaderBatteryInfo"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 376
    iput-object p1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->endBatteryInfoPolling:Lkotlin/jvm/functions/Function0;

    .line 377
    new-instance p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;

    invoke-direct {p1, p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 378
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type com.stripe.stripeterminal.internal.common.adapter.BbposAdapter.RequestReaderBatteryInfoOperation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$RequestReaderBatteryInfoOperation;->execute()Lcom/stripe/stripeterminal/external/models/ReaderBatteryInfo;

    move-result-object p1

    return-object p1
.end method

.method protected final requireHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;
    .locals 7

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->makeHardwareReader(Lcom/stripe/stripeterminal/external/models/Reader;)Lcom/stripe/core/hardware/Reader;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance v0, Lcom/stripe/stripeterminal/external/models/TerminalException;

    sget-object v1, Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;->UNEXPECTED_SDK_ERROR:Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;

    const/16 v5, 0xc

    const/4 v6, 0x0

    const-string v2, "Unexpected reader"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/stripe/stripeterminal/external/models/TerminalException;-><init>(Lcom/stripe/stripeterminal/external/models/TerminalErrorCode;Ljava/lang/String;Ljava/lang/Throwable;Lcom/stripe/stripeterminal/external/api/ApiError;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    throw v0
.end method

.method public final setReconnectionRequester$adapter_release(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/stripe/stripeterminal/external/models/DisconnectReason;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "requestReconnection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setRequestReconnection(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method protected final setSettings(Lcom/stripe/transaction/Settings;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->settingsRepository:Lcom/stripe/core/transaction/SettingsRepository;

    invoke-virtual {v0, p1}, Lcom/stripe/core/transaction/SettingsRepository;->setSettings(Lcom/stripe/transaction/Settings;)V

    return-void
.end method

.method protected final startReconnect()V
    .locals 2

    .line 321
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getRequestReconnection()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->disconnectReasonRepository:Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;

    invoke-virtual {v1}, Lcom/stripe/stripeterminal/internal/common/adapter/connection/DisconnectReasonRepository;->consumeDisconnectReason()Lcom/stripe/stripeterminal/external/models/DisconnectReason;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public startSession(Lcom/stripe/stripeterminal/external/models/Reader;)V
    .locals 3

    const-string v0, "reader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getLogger()Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "startSession"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->d(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 370
    new-instance v0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;

    invoke-direct {v0, p0, p1}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter$StartSessionOperation;-><init>(Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;Lcom/stripe/stripeterminal/external/models/Reader;)V

    check-cast v0, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    invoke-virtual {p0, v0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->setOperationInProgress(Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;)V

    .line 371
    invoke-virtual {p0}, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->getOperationInProgress()Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/internal/common/Adapter$ReaderOperation;->execute()Ljava/lang/Object;

    return-void
.end method

.method protected final declared-synchronized update()V
    .locals 3

    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectAndUpdateStateMachine:Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;

    .line 628
    iget-object v1, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->updateManager:Lcom/stripe/core/readerupdate/UpdateManager;

    invoke-virtual {v1}, Lcom/stripe/core/readerupdate/UpdateManager;->getSummary()Lcom/stripe/core/readerupdate/UpdateSummary;

    move-result-object v1

    .line 629
    iget-object v2, p0, Lcom/stripe/stripeterminal/internal/common/adapter/BbposAdapter;->connectionManager:Lcom/stripe/core/readerconnection/ConnectionManager;

    invoke-virtual {v2}, Lcom/stripe/core/readerconnection/ConnectionManager;->getSummary()Lcom/stripe/core/readerconnection/ConnectionSummary;

    move-result-object v2

    .line 627
    invoke-virtual {v0, v1, v2}, Lcom/stripe/stripeterminal/internal/common/connectandupdate/ConnectAndUpdateStateMachine;->update(Lcom/stripe/core/readerupdate/UpdateSummary;Lcom/stripe/core/readerconnection/ConnectionSummary;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updatePaymentIntent(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;ZLcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 1

    const-string v0, "paymentIntent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "apiPaymentIntentUpdater"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    invoke-interface {p4, p1, p2, p3}, Lcom/stripe/stripeterminal/internal/common/api/PaymentIntentUpdater;->invoke(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lcom/stripe/transaction/CollectiblePayment;Z)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object p1

    return-object p1
.end method
