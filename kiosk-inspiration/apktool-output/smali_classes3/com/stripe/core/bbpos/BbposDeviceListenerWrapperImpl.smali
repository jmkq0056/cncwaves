.class public final Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;
.super Ljava/lang/Object;
.source "BbposDeviceListenerWrapperImpl.kt"

# interfaces
.implements Lcom/stripe/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBbposDeviceListenerWrapperImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BbposDeviceListenerWrapperImpl.kt\ncom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,828:1\n494#2,7:829\n453#2:836\n403#2:837\n453#2:842\n403#2:843\n1238#3,4:838\n1238#3,4:844\n1855#3,2:848\n*S KotlinDebug\n*F\n+ 1 BbposDeviceListenerWrapperImpl.kt\ncom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl\n*L\n177#1:829,7\n178#1:836\n178#1:837\n187#1:842\n187#1:843\n178#1:838,4\n187#1:844,4\n195#1:848,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00f2\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\n\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016J\u0008\u0010\u0011\u001a\u00020\rH\u0016J\u0016\u0010\u0012\u001a\u00020\r2\u000c\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\rH\u0016J\u0008\u0010\u0015\u001a\u00020\rH\u0016J\u0008\u0010\u0016\u001a\u00020\rH\u0016J\u0008\u0010\u0017\u001a\u00020\rH\u0016J\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\rH\u0016J\u0010\u0010\u001b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0018\u0010\u001d\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001fH\u0016J\u0010\u0010 \u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!H\u0016J\u0008\u0010\"\u001a\u00020\rH\u0016J\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020$2\u0006\u0010\u001e\u001a\u00020%H\u0016J\"\u0010&\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020!2\u0008\u0010\'\u001a\u0004\u0018\u00010%H\u0016J\u0008\u0010(\u001a\u00020\rH\u0016J\u001c\u0010)\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010*2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0019H\u0016J\u0012\u0010+\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010*H\u0016J\u0008\u0010,\u001a\u00020\rH\u0016J\u0008\u0010-\u001a\u00020\rH\u0016J\u0008\u0010.\u001a\u00020\rH\u0016J\u001e\u0010/\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0008\u00101\u001a\u00020\rH\u0016J\u0018\u00102\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010\u001e\u001a\u00020!H\u0016J\u0010\u00103\u001a\u00020\r2\u0006\u0010\u000e\u001a\u000204H\u0016J\u0018\u00105\u001a\u00020\r2\u0006\u0010\u000e\u001a\u0002062\u0006\u0010\u001e\u001a\u00020%H\u0016J\u0008\u00107\u001a\u00020\rH\u0016J\u0008\u00108\u001a\u00020\rH\u0016J\u0010\u00109\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020:H\u0016J\u0010\u0010;\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0012\u0010<\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010=H\u0016J\u0010\u0010>\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020?H\u0016J\u0018\u0010@\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020!2\u0006\u0010\u001e\u001a\u00020\u001cH\u0016J\u0010\u0010A\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020BH\u0016J\u0008\u0010C\u001a\u00020\rH\u0016J \u0010D\u001a\u00020\r2\u0016\u0010\u000e\u001a\u0012\u0012\u0004\u0012\u00020%0Ej\u0008\u0012\u0004\u0012\u00020%`FH\u0016J\u0008\u0010G\u001a\u00020\rH\u0016J\u0008\u0010H\u001a\u00020\rH\u0016J\u0008\u0010I\u001a\u00020\rH\u0016J&\u0010J\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J&\u0010K\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010L\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020MH\u0016J\u001a\u0010N\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010O2\u0006\u0010\u001e\u001a\u00020!H\u0016J$\u0010P\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020Q2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010R\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J&\u0010S\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J\u0012\u0010U\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010V\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0012\u0010W\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010XH\u0016J\u001a\u0010Y\u001a\u00020\r2\u0010\u0010\u000e\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010X\u0018\u00010\u0013H\u0016J\u0012\u0010Z\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u0010\u0010[\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J$\u0010\\\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020]2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u001a\u0010^\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u001c\u0010_\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u001c\u0010`\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010a\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010b\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0018\u0010c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020%H\u0016J\u0010\u0010d\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010e\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010fH\u0016J\u001a\u0010g\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u001a\u0010h\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010i\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010%H\u0016J\u001e\u0010j\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010k\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010l\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0010\u0010m\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J$\u0010n\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0012\u0010\u001e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%00H\u0016J\u0010\u0010o\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020pH\u0016J&\u0010q\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J(\u0010r\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010s2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J&\u0010t\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020u2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u0010\u0010v\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J,\u0010w\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%2\u0008\u0010\'\u001a\u0004\u0018\u00010%2\u0006\u0010x\u001a\u00020!H\u0016J\u0010\u0010y\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020zH\u0016J\u001c\u0010{\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J&\u0010|\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J&\u0010}\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\u001c\u0010~\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u0010\u0010\u007f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0011\u0010\u0080\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020%H\u0016J\u0011\u0010\u0081\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0011\u0010\u0082\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010\u0083\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0084\u0001H\u0016J\u001d\u0010\u0085\u0001\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T00H\u0016J\u0011\u0010\u0086\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001cH\u0016J\u0012\u0010\u0087\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0088\u0001H\u0016J\u0019\u0010\u0089\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020%H\u0016J\u001b\u0010\u008a\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0008\u0010\u001e\u001a\u0004\u0018\u00010%H\u0016J\u0012\u0010\u008b\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u008c\u0001H\u0016J\u001e\u0010\u008d\u0001\u001a\u00020\r2\u0013\u0010\u000e\u001a\u000f\u0012\u0004\u0012\u00020%\u0012\u0005\u0012\u00030\u008c\u000100H\u0016J*\u0010\u008e\u0001\u001a\u00020\r2\t\u0010\u000e\u001a\u0005\u0018\u00010\u008f\u00012\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020T\u0018\u000100H\u0016J\'\u0010\u0090\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J(\u0010\u0091\u0001\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u001c2\u0015\u0010\u0092\u0001\u001a\u0010\u0012\u0004\u0012\u00020%\u0012\u0004\u0012\u00020%\u0018\u000100H\u0016J\t\u0010\u0093\u0001\u001a\u00020\rH\u0016J\t\u0010\u0094\u0001\u001a\u00020\rH\u0016J\t\u0010\u0095\u0001\u001a\u00020\rH\u0016J\u001a\u0010\u0096\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u0097\u00012\u0006\u0010\u001e\u001a\u00020%H\u0016J\t\u0010\u0098\u0001\u001a\u00020\rH\u0016J\t\u0010\u0099\u0001\u001a\u00020\rH\u0016J\t\u0010\u009a\u0001\u001a\u00020\rH\u0016J\t\u0010\u009b\u0001\u001a\u00020\rH\u0016J\t\u0010\u009c\u0001\u001a\u00020\rH\u0016J\u0012\u0010\u009d\u0001\u001a\u00020\r2\u0007\u0010\u000e\u001a\u00030\u009e\u0001H\u0016J\t\u0010\u009f\u0001\u001a\u00020\rH\u0016J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001*\u00020QH\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a2\u0001*\u00020\u0019H\u0002J\u000f\u0010\u00a0\u0001\u001a\u00030\u00a3\u0001*\u00030\u009e\u0001H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a4\u0001*\u00020]H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a5\u0001*\u00020BH\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a6\u0001*\u00020\u001fH\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a7\u0001*\u000206H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a8\u0001*\u00020$H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00a9\u0001*\u00020:H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00aa\u0001*\u00020uH\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00ab\u0001*\u00020?H\u0002J\u000e\u0010\u00a0\u0001\u001a\u00030\u00ac\u0001*\u00020MH\u0002J\u000f\u0010\u00a0\u0001\u001a\u00030\u00ad\u0001*\u00030\u0097\u0001H\u0002J\u000f\u0010\u00a0\u0001\u001a\u00030\u00ae\u0001*\u00030\u008c\u0001H\u0002J\u000f\u0010\u00a0\u0001\u001a\u00030\u00af\u0001*\u00030\u0084\u0001H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t0\u0007j\u0002`\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b0\u0001"
    }
    d2 = {
        "Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;",
        "Lcom/bbpos/bbdevice/BBDeviceController$BBDeviceControllerListener;",
        "listener",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
        "deviceInfoCache",
        "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
        "logger",
        "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;",
        "Lcom/stripe/loggingmodels/ApplicationTrace;",
        "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
        "Lcom/stripe/jvmcore/logging/terminal/log/TerminalLogger;",
        "(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V",
        "onBTConnected",
        "",
        "p0",
        "Landroid/bluetooth/BluetoothDevice;",
        "onBTDisconnected",
        "onBTRequestPairing",
        "onBTReturnScanResults",
        "",
        "onBTScanStopped",
        "onBTScanTimeout",
        "onBarcodeReaderConnected",
        "onBarcodeReaderDisconnected",
        "onBatteryLow",
        "Lcom/bbpos/bbdevice/BBDeviceController$BatteryStatus;",
        "onDeviceDisplayingPrompt",
        "onDeviceHere",
        "",
        "onDeviceReset",
        "p1",
        "Lcom/bbpos/bbdevice/BBDeviceController$DeviceResetReason;",
        "onDeviceResetAlert",
        "",
        "onEnterStandbyMode",
        "onError",
        "Lcom/bbpos/bbdevice/BBDeviceController$Error;",
        "",
        "onHardwareFunctionalTestResult",
        "p2",
        "onPowerButtonPressed",
        "onPowerConnected",
        "Lcom/bbpos/bbdevice/BBDeviceController$PowerSource;",
        "onPowerDisconnected",
        "onPowerDown",
        "onPrintDataCancelled",
        "onPrintDataEnd",
        "onRequestAmountConfirm",
        "Ljava/util/Hashtable;",
        "onRequestClearDisplay",
        "onRequestDisplayAsterisk",
        "onRequestDisplayLEDIndicator",
        "Lcom/bbpos/bbdevice/BBDeviceController$ContactlessStatus;",
        "onRequestDisplayText",
        "Lcom/bbpos/bbdevice/BBDeviceController$DisplayText;",
        "onRequestFinalConfirm",
        "onRequestKeypadResponse",
        "onRequestManualPanEntry",
        "Lcom/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;",
        "onRequestOnlineProcess",
        "onRequestOtherAmount",
        "Lcom/bbpos/bbdevice/BBDeviceController$AmountInputType;",
        "onRequestPinEntry",
        "Lcom/bbpos/bbdevice/BBDeviceController$PinEntrySource;",
        "onRequestPrintData",
        "onRequestProduceAudioTone",
        "Lcom/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;",
        "onRequestSelectAccountType",
        "onRequestSelectApplication",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "onRequestSetAmount",
        "onRequestStartEmv",
        "onRequestTerminalTime",
        "onRequestVirtuCryptPEDIResponse",
        "onRequestVirtuCryptPEDKResponse",
        "onReturnAccessiblePINPadTouchEvent",
        "Lcom/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;",
        "onReturnAccountSelectionResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;",
        "onReturnAmount",
        "Lcom/bbpos/bbdevice/BBDeviceController$AmountInputResult;",
        "onReturnAmountConfirmResult",
        "onReturnApduResult",
        "",
        "onReturnBarcode",
        "onReturnBatchData",
        "onReturnCAPKDetail",
        "Lcom/bbpos/bbdevice/CAPK;",
        "onReturnCAPKList",
        "onReturnCAPKLocation",
        "onReturnCancelCheckCardResult",
        "onReturnCheckCardResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardResult;",
        "onReturnControlLEDResult",
        "onReturnDebugLog",
        "onReturnDeviceInfo",
        "onReturnDisableAccountSelectionResult",
        "onReturnDisableBluetoothResult",
        "onReturnDisableFactoryModeResult",
        "onReturnDisableInputAmountResult",
        "onReturnDisplayPromptResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;",
        "onReturnEmvCardDataResult",
        "onReturnEmvCardNumber",
        "onReturnEmvReport",
        "onReturnEmvReportList",
        "onReturnEnableAccountSelectionResult",
        "onReturnEnableBluetoothResult",
        "onReturnEnableInputAmountResult",
        "onReturnEncryptDataResult",
        "onReturnFunctionKey",
        "Lcom/bbpos/bbdevice/BBDeviceController$FunctionKey;",
        "onReturnNfcDataExchangeResult",
        "onReturnNfcDetectCardResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
        "onReturnPinEntryResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$PinEntryResult;",
        "onReturnPowerOffIccResult",
        "onReturnPowerOnIccResult",
        "p3",
        "onReturnPrintResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$PrintResult;",
        "onReturnReadAIDResult",
        "onReturnReadDisplaySettingsResult",
        "onReturnReadDisplayStringResult",
        "onReturnReadTerminalSettingResult",
        "onReturnRemoveCAPKResult",
        "onReturnReversalData",
        "onReturnSetPinPadButtonsResult",
        "onReturnSetPinPadOrientationResult",
        "onReturnTransactionResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$TransactionResult;",
        "onReturnUpdateAIDResult",
        "onReturnUpdateCAPKResult",
        "onReturnUpdateDisplaySettingsProgress",
        "",
        "onReturnUpdateDisplaySettingsResult",
        "onReturnUpdateDisplayStringResult",
        "onReturnUpdateTerminalSettingResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;",
        "onReturnUpdateTerminalSettingsResult",
        "onReturnVasResult",
        "Lcom/bbpos/bbdevice/BBDeviceController$VASResult;",
        "onReturnVirtuCryptPEDICommandResult",
        "onReturnVirtuCryptPEDKCommandResult",
        "data",
        "onReturnWatchdogTimerReset",
        "onSerialConnected",
        "onSerialDisconnected",
        "onSessionError",
        "Lcom/bbpos/bbdevice/BBDeviceController$SessionError;",
        "onSessionInitialized",
        "onTestChannelConnected",
        "onTestChannelDisconnected",
        "onUsbConnected",
        "onUsbDisconnected",
        "onWaitingForCard",
        "Lcom/bbpos/bbdevice/BBDeviceController$CheckCardMode;",
        "onWaitingReprintOrPrintNext",
        "convert",
        "Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;",
        "Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;",
        "Lcom/stripe/bbpos/sdk/CheckCardMode;",
        "Lcom/stripe/bbpos/sdk/CheckCardResult$Type;",
        "Lcom/stripe/bbpos/sdk/ContactlessStatusTone;",
        "Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;",
        "Lcom/stripe/bbpos/sdk/DisplayText;",
        "Lcom/stripe/bbpos/sdk/Error;",
        "Lcom/stripe/bbpos/sdk/ManualPanEntryType;",
        "Lcom/stripe/bbpos/sdk/PinEntryResult$Type;",
        "Lcom/stripe/bbpos/sdk/PinEntrySource;",
        "Lcom/stripe/bbpos/sdk/PinPadTouchEvent;",
        "Lcom/stripe/core/bbpos/hardware/api/SessionError;",
        "Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;",
        "Lcom/stripe/bbpos/sdk/TransactionResult$Type;",
        "sdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

.field private final listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

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


# direct methods
.method public constructor <init>(Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;",
            "Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;",
            "Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger<",
            "Lcom/stripe/loggingmodels/ApplicationTrace;",
            "Lcom/stripe/loggingmodels/ApplicationTraceResult;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoCache"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 92
    iput-object p2, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    .line 93
    iput-object p3, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    return-void
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)Lcom/stripe/bbpos/sdk/CheckCardMode;
    .locals 1

    .line 573
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 582
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->QR_CODE:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 581
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 580
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->INSERT_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 579
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_INSERT_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 578
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 577
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE_OR_INSERT:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 576
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->TAP:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 575
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->INSERT:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    .line 574
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardMode;->SWIPE:Lcom/stripe/bbpos/sdk/CheckCardMode;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;)Lcom/stripe/bbpos/sdk/CheckCardResult$Type;
    .locals 1

    .line 586
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 596
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 595
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MANUAL_PAN_ENTRY:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 594
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->TAP_CARD_DETECTED:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 593
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->USE_ICC_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 592
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MAG_HEAD_FAIL:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 591
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->MSR:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 590
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->BAD_SWIPE:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 589
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 588
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->INSERTED_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    .line 587
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/CheckCardResult$Type;->NO_CARD:Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)Lcom/stripe/bbpos/sdk/ContactlessStatusTone;
    .locals 1

    .line 736
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$9:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 738
    sget-object p1, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->ALERT:Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 737
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/sdk/ContactlessStatusTone;->SUCCESS:Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;)Lcom/stripe/bbpos/sdk/DisplayText;
    .locals 1

    .line 664
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$7:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 725
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PROCESSING_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 724
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 723
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR_PLEASE_REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 722
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR_PLEASE_ENTER_PIN_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 721
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED_TRY_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 720
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->DECLINED_WITH_RESPONSE_CODE_05:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 719
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->AUTHENTICATION_REQUIRED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 718
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_READABLE:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 717
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->ORIGINAL_AMOUNT_INCORRECT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 716
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TERMINAL_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 715
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->WRONG_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 714
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 713
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_FUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 712
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TRANSACTION_NOT_PERMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 711
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->EXPIRED_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 710
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->SYSTEM_MALFUNCTION:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 709
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_CARD_NUMBER:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 708
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_TRANSACTION:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 707
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_NOT_ADMITTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 706
    :pswitch_13
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->DPAS_CDCVM:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 705
    :pswitch_14
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_IS_STILL_INSERTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 704
    :pswitch_15
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TOO_MANY_TAPS:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 703
    :pswitch_16
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_ERROR:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 702
    :pswitch_17
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INVALID_INPUT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 701
    :pswitch_18
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_TRANSACTION_LIMIT_EXCEEDED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 700
    :pswitch_19
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_APP_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 699
    :pswitch_1a
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CTL_NO_EMV_APPS:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 698
    :pswitch_1b
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 697
    :pswitch_1c
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_REMOVED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 696
    :pswitch_1d
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CARD_INSERTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 695
    :pswitch_1e
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ICC_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 694
    :pswitch_1f
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PIN_TRY_LIMIT_EXCEEDED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 693
    :pswitch_20
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->SHOW_THANK_YOU:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 692
    :pswitch_21
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->FINAL_CONFIRM:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 691
    :pswitch_22
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->APPLICATION_EXPIRED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 690
    :pswitch_23
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TIMEOUT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 689
    :pswitch_24
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->MULTIPLE_CARDS_DETECTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 688
    :pswitch_25
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_OR_SWIPE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 687
    :pswitch_26
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_SWIPE_OR_TRY_ANOTHER_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 686
    :pswitch_27
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->AUTHORISING:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 685
    :pswitch_28
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PRESENT_CARD_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 684
    :pswitch_29
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->APPROVED_PLEASE_SIGN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 683
    :pswitch_2a
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PRESENT_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 682
    :pswitch_2b
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->SELECT_ACCOUNT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 681
    :pswitch_2c
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->LAST_PIN_TRY:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 680
    :pswitch_2d
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PROCESSING:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 679
    :pswitch_2e
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TRANSACTION_TERMINATED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 678
    :pswitch_2f
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->REFER_TO_YOUR_PAYMENT_DEVICE:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 677
    :pswitch_30
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->TRY_AGAIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 676
    :pswitch_31
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->USE_MAG_STRIPE:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 675
    :pswitch_32
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->REMOVE_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 674
    :pswitch_33
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PLEASE_WAIT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 673
    :pswitch_34
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->PIN_OK:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 672
    :pswitch_35
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 671
    :pswitch_36
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INSERT_CARD:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 670
    :pswitch_37
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 669
    :pswitch_38
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->ENTER_PIN:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 668
    :pswitch_39
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->ENTER_AMOUNT:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 667
    :pswitch_3a
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->DECLINED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 666
    :pswitch_3b
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->CALL_YOUR_BANK:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    .line 665
    :pswitch_3c
    sget-object p1, Lcom/stripe/bbpos/sdk/DisplayText;->APPROVED:Lcom/stripe/bbpos/sdk/DisplayText;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)Lcom/stripe/bbpos/sdk/Error;
    .locals 1

    .line 749
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$11:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 788
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_TEST_CHANNEL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 787
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INTEGRITY_CHECK_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 786
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NOT_COMPATIBLE_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 785
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CONTACTLESS_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 784
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CURRENT_APP_IS_NOT_THE_DEFAULT_NFC_SERVICE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 783
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_DISABLED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 782
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 781
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->NFC_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 780
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLE_SECURE_CONNECTION_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 779
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_ALREADY_PAIRED_WITH_ANOTHER_DEVICE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 778
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR_INCORRECT_PASSKEY:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 777
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PAIRING_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 776
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->SERIAL_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 775
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_LOCATION_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 774
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->AUDIO_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 773
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->PCI_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 772
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->TAMPER:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 771
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->HARDWARE_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 770
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BLUETOOTH_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 769
    :pswitch_13
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CHANNEL_BUFFER_FULL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 768
    :pswitch_14
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 767
    :pswitch_15
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_PERMISSION_DENIED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 766
    :pswitch_16
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->USB_DEVICE_NOT_FOUND:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 765
    :pswitch_17
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_USB:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 764
    :pswitch_18
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_SERIAL:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 763
    :pswitch_19
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->BTV4_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 762
    :pswitch_1a
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->COMM_LINK_UNINITIALIZED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 761
    :pswitch_1b
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INVALID_FUNCTION_IN_CURRENT_CONNECTION_MODE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 760
    :pswitch_1c
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_AUDIO:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 759
    :pswitch_1d
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->VOLUME_WARNING_NOT_ACCEPTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 758
    :pswitch_1e
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->FAIL_TO_START_BT:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 757
    :pswitch_1f
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->COMM_ERROR:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 756
    :pswitch_20
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CASHBACK_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 755
    :pswitch_21
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 754
    :pswitch_22
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_INVALID_FORMAT:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 753
    :pswitch_23
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->INPUT_OUT_OF_RANGE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 752
    :pswitch_24
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->DEVICE_BUSY:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 751
    :pswitch_25
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->CMD_NOT_AVAILABLE:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    .line 750
    :pswitch_26
    sget-object p1, Lcom/stripe/bbpos/sdk/Error;->UNKNOWN:Lcom/stripe/bbpos/sdk/Error;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)Lcom/stripe/bbpos/sdk/ManualPanEntryType;
    .locals 1

    .line 729
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$8:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 732
    sget-object p1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->CVV:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 731
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->EXPIRY_DATE:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    return-object p1

    .line 730
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/sdk/ManualPanEntryType;->PAN:Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;
    .locals 1

    .line 623
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$3:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 630
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ICC_REMOVED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 629
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->INCORRECT_PIN:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 628
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->WRONG_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 627
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->BYPASS:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 626
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 625
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->CANCEL:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    .line 624
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntryResult$Type;->ENTERED:Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)Lcom/stripe/bbpos/sdk/PinEntrySource;
    .locals 1

    .line 657
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$6:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 660
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntrySource;->SMARTPOS:Lcom/stripe/bbpos/sdk/PinEntrySource;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 659
    :cond_1
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntrySource;->KEYPAD:Lcom/stripe/bbpos/sdk/PinEntrySource;

    return-object p1

    .line 658
    :cond_2
    sget-object p1, Lcom/stripe/bbpos/sdk/PinEntrySource;->PHONE:Lcom/stripe/bbpos/sdk/PinEntrySource;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)Lcom/stripe/bbpos/sdk/PinPadTouchEvent;
    .locals 1

    .line 809
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$14:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 817
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED_INCORRECT_PIN_LENGTH:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 815
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->ENTER_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 814
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CANCEL_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 813
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->CLEAR_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 812
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->NEW_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 811
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->OUT_OF_PIN_PAD:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    .line 810
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/PinPadTouchEvent;->BACKSPACE_KEY_DETECTED:Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)Lcom/stripe/bbpos/sdk/TransactionResult$Type;
    .locals 1

    .line 600
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 619
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 618
    :pswitch_1
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 617
    :pswitch_2
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_SCHEME_NOT_MATCHED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 616
    :pswitch_3
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->ICC_CARD_REMOVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 615
    :pswitch_4
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPLICATION_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 614
    :pswitch_5
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CONDITION_NOT_SATISFIED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 613
    :pswitch_6
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->INVALID_ICC_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 612
    :pswitch_7
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NO_EMV_APPS:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 611
    :pswitch_8
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->MISSING_MANDATORY_DATA:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 610
    :pswitch_9
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_NOT_SUPPORTED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 609
    :pswitch_a
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->SELECT_APP_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 608
    :pswitch_b
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DEVICE_ERROR:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 607
    :pswitch_c
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CARD_BLOCKED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 606
    :pswitch_d
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->NOT_ICC:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 605
    :pswitch_e
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CAPK_FAIL:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 604
    :pswitch_f
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->CANCELED_OR_TIMEOUT:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 603
    :pswitch_10
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->DECLINED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 602
    :pswitch_11
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->TERMINATED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    .line 601
    :pswitch_12
    sget-object p1, Lcom/stripe/bbpos/sdk/TransactionResult$Type;->APPROVED:Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;)Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;
    .locals 1

    .line 634
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$4:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;->ordinal()I

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

    .line 638
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->INVALID_AMOUNT:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 637
    :cond_1
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->TIMEOUT:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    return-object p1

    .line 636
    :cond_2
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->CANCEL:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    return-object p1

    .line 635
    :cond_3
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;
    .locals 1

    .line 742
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$10:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;->ordinal()I

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

    .line 746
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->NOT_CHARGING:Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 745
    :cond_1
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->CHARGING:Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    return-object p1

    .line 744
    :cond_2
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->CRITICALLY_LOW:Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    return-object p1

    .line 743
    :cond_3
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;->LOW:Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;
    .locals 1

    .line 800
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$13:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 805
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->WATCHDOG_TIMEOUT:Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 804
    :cond_1
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->RECOVERY_ATTEMPT:Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    return-object p1

    .line 803
    :cond_2
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->FIRMWARE_SELF_TEST:Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    return-object p1

    .line 802
    :cond_3
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->APP_RESET_DEVICE:Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    return-object p1

    .line 801
    :cond_4
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;->UNKNOWN:Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;)Lcom/stripe/core/bbpos/hardware/api/SessionError;
    .locals 1

    .line 792
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$12:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;->ordinal()I

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

    .line 796
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/SessionError;->INVALID_SESSION:Lcom/stripe/core/bbpos/hardware/api/SessionError;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 795
    :cond_1
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/SessionError;->INVALID_VENDOR_TOKEN:Lcom/stripe/core/bbpos/hardware/api/SessionError;

    return-object p1

    .line 794
    :cond_2
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/SessionError;->SESSION_NOT_INITIALIZED:Lcom/stripe/core/bbpos/hardware/api/SessionError;

    return-object p1

    .line 793
    :cond_3
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/SessionError;->FIRMWARE_NOT_SUPPORTED:Lcom/stripe/core/bbpos/hardware/api/SessionError;

    return-object p1
.end method

.method private final convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;
    .locals 1

    .line 642
    sget-object v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl$WhenMappings;->$EnumSwitchMapping$5:[I

    invoke-virtual {p1}, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 653
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->UNKNOWN:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 652
    :pswitch_1
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_UPDATED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 651
    :pswitch_2
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->USER_DEFINED_DATA_NOT_ENABLED:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 650
    :pswitch_3
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->INVALID_VALUE:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 649
    :pswitch_4
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_WRITTEN_CORRECTLY:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 648
    :pswitch_5
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_ALLOWED_TO_ACCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 647
    :pswitch_6
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->BOOTLOADER_NOT_SUPPORT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 646
    :pswitch_7
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->LENGTH_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 645
    :pswitch_8
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TAG_NOT_FOUND:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 644
    :pswitch_9
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->TLV_INCORRECT:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    .line 643
    :pswitch_a
    sget-object p1, Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;->SUCCESS:Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onBTConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public onBTDisconnected()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtDisconnected()V

    return-void
.end method

.method public onBTRequestPairing()V
    .locals 0

    return-void
.end method

.method public onBTReturnScanResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBtReturnScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onBTScanStopped()V
    .locals 0

    return-void
.end method

.method public onBTScanTimeout()V
    .locals 0

    return-void
.end method

.method public onBarcodeReaderConnected()V
    .locals 0

    return-void
.end method

.method public onBarcodeReaderDisconnected()V
    .locals 0

    return-void
.end method

.method public onBatteryLow(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onBatteryLow(Lcom/stripe/core/bbpos/hardware/api/BatteryStatus;)V

    return-void
.end method

.method public onDeviceDisplayingPrompt()V
    .locals 0

    return-void
.end method

.method public onDeviceHere(Z)V
    .locals 0

    return-void
.end method

.method public onDeviceReset(ZLcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p2}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DeviceResetReason;)Lcom/stripe/core/bbpos/hardware/api/DeviceResetReason;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onDeviceReset(ZLcom/stripe/core/bbpos/hardware/api/DeviceResetReason;)V

    return-void
.end method

.method public onDeviceResetAlert(I)V
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onDeviceResetAlert(I)V

    return-void
.end method

.method public onEnterStandbyMode()V
    .locals 0

    return-void
.end method

.method public onError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$Error;)Lcom/stripe/bbpos/sdk/Error;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onError(Lcom/stripe/bbpos/sdk/Error;Ljava/lang/String;)V

    return-void
.end method

.method public onHardwareFunctionalTestResult(IILjava/lang/String;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2, p3}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onHardwareFunctionalTestResult(IILjava/lang/String;)V

    return-void
.end method

.method public onPowerButtonPressed()V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onPowerButtonPressed()V

    return-void
.end method

.method public onPowerConnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;Lcom/stripe/bbpos/bbdevice/BBDeviceController$BatteryStatus;)V
    .locals 0

    return-void
.end method

.method public onPowerDisconnected(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PowerSource;)V
    .locals 0

    return-void
.end method

.method public onPowerDown()V
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onPowerDown()V

    return-void
.end method

.method public onPrintDataCancelled()V
    .locals 0

    return-void
.end method

.method public onPrintDataEnd()V
    .locals 0

    return-void
.end method

.method public onRequestAmountConfirm(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestClearDisplay()V
    .locals 0

    return-void
.end method

.method public onRequestDisplayAsterisk(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestDisplayAsterisk(Ljava/lang/String;I)V

    return-void
.end method

.method public onRequestDisplayLEDIndicator(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatus;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestDisplayText(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayText;)Lcom/stripe/bbpos/sdk/DisplayText;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestDisplayText(Lcom/stripe/bbpos/sdk/DisplayText;Ljava/lang/String;)V

    return-void
.end method

.method public onRequestFinalConfirm()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestFinalConfirm()V

    return-void
.end method

.method public onRequestKeypadResponse()V
    .locals 0

    return-void
.end method

.method public onRequestManualPanEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ManualPanEntryType;)Lcom/stripe/bbpos/sdk/ManualPanEntryType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestManualPanEntry(Lcom/stripe/bbpos/sdk/ManualPanEntryType;)V

    return-void
.end method

.method public onRequestOnlineProcess(Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestOnlineProcess(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestOtherAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputType;)V
    .locals 0

    return-void
.end method

.method public onRequestPinEntry(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntrySource;)Lcom/stripe/bbpos/sdk/PinEntrySource;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestPinEntry(Lcom/stripe/bbpos/sdk/PinEntrySource;)V

    return-void
.end method

.method public onRequestPrintData(IZ)V
    .locals 0

    return-void
.end method

.method public onRequestProduceAudioTone(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$ContactlessStatusTone;)Lcom/stripe/bbpos/sdk/ContactlessStatusTone;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestProduceAudioTone(Lcom/stripe/bbpos/sdk/ContactlessStatusTone;)V

    return-void
.end method

.method public onRequestSelectAccountType()V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestSelectAccountType()V

    return-void
.end method

.method public onRequestSelectApplication(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onRequestSelectApplication(Ljava/util/List;)V

    return-void
.end method

.method public onRequestSetAmount()V
    .locals 0

    return-void
.end method

.method public onRequestStartEmv()V
    .locals 0

    return-void
.end method

.method public onRequestTerminalTime()V
    .locals 0

    return-void
.end method

.method public onRequestVirtuCryptPEDIResponse(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onRequestVirtuCryptPEDKResponse(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnAccessiblePINPadTouchEvent(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)V
    .locals 3

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinPadTouchEvent;)Lcom/stripe/bbpos/sdk/PinPadTouchEvent;

    move-result-object p1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnAccessiblePinPadTouchEvent(Lcom/stripe/bbpos/sdk/PinPadTouchEvent;Ljava/util/UUID;)V

    return-void
.end method

.method public onReturnAccountSelectionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AccountSelectionResult;I)V
    .locals 0

    return-void
.end method

.method public onReturnAmount(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$AmountInputResult;)Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;

    move-result-object p1

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnAmount(Lcom/stripe/core/bbpos/hardware/api/AmountInputResult;Ljava/util/Map;)V

    return-void
.end method

.method public onReturnAmountConfirmResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnApduResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnBarcode(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnBatchData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnBatchData(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnCAPKDetail(Lcom/stripe/bbpos/bbdevice/CAPK;)V
    .locals 0

    return-void
.end method

.method public onReturnCAPKList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/stripe/bbpos/bbdevice/CAPK;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnCAPKLocation(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnCancelCheckCardResult(Z)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnCancelCheckCardResult(Z)V

    return-void
.end method

.method public onReturnCheckCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardResult;)Lcom/stripe/bbpos/sdk/CheckCardResult$Type;

    move-result-object p1

    check-cast p2, Ljava/util/Map;

    invoke-static {p2}, Lcom/stripe/core/bbpos/mappers/CardDataMapperKt;->toCardData(Ljava/util/Map;)Lcom/stripe/bbpos/sdk/CardData;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnCheckCardResult(Lcom/stripe/bbpos/sdk/CheckCardResult$Type;Lcom/stripe/bbpos/sdk/CardData;)V

    return-void
.end method

.method public onReturnControlLEDResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnDebugLog(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDebugLog(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnDeviceInfo(Ljava/util/Hashtable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 145
    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->deviceInfoCache:Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;

    invoke-static {p1, v1}, Lcom/stripe/core/bbpos/mappers/DeviceInfoMapperKt;->toDeviceInfo(Ljava/util/Map;Lcom/stripe/core/bbpos/mappers/DeviceInfoCache;)Lcom/stripe/bbpos/sdk/DeviceInfo;

    move-result-object v1

    .line 144
    invoke-interface {v0, v1, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDeviceInfo(Lcom/stripe/bbpos/sdk/DeviceInfo;Ljava/util/Map;)V

    return-void
.end method

.method public onReturnDisableAccountSelectionResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnDisableBluetoothResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnDisableFactoryModeResult(ZLjava/lang/String;)V
    .locals 0

    const-string p1, "p1"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnDisableInputAmountResult(Z)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnDisableInputAmountResult(Z)V

    return-void
.end method

.method public onReturnDisplayPromptResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$DisplayPromptResult;)V
    .locals 0

    return-void
.end method

.method public onReturnEmvCardDataResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnEmvCardNumber(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnEmvReport(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnEmvReportList(Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnEnableAccountSelectionResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnEnableBluetoothResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnEnableInputAmountResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnEncryptDataResult(ZLjava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    check-cast p2, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnEncryptDataResult(ZLjava/util/Map;)V

    return-void
.end method

.method public onReturnFunctionKey(Lcom/stripe/bbpos/bbdevice/BBDeviceController$FunctionKey;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnNfcDataExchangeResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnNfcDetectCardResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$NfcDetectCardResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnPinEntryResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;Ljava/util/Hashtable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PinEntryResult;)Lcom/stripe/bbpos/sdk/PinEntryResult$Type;

    move-result-object p1

    new-instance v1, Lcom/stripe/bbpos/sdk/PinData;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const-string v3, "ksn"

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz p2, :cond_1

    const-string v2, "epb"

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Ljava/lang/String;

    :cond_1
    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    invoke-direct/range {v1 .. v6}, Lcom/stripe/bbpos/sdk/PinData;-><init>(Ljava/lang/String;Ljava/lang/String;Lokio/ByteString;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, p1, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnPinEntryResult(Lcom/stripe/bbpos/sdk/PinEntryResult$Type;Lcom/stripe/bbpos/sdk/PinData;)V

    return-void
.end method

.method public onReturnPowerOffIccResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnPowerOnIccResult(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onReturnPrintResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$PrintResult;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onReturnReadAIDResult(Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    check-cast p1, Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReadAidResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnReadDisplaySettingsResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnReadDisplayStringResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnReadTerminalSettingResult(Ljava/util/Hashtable;)V
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "p0"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    const-string v3, "<get-entries>(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Iterable;

    .line 848
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 195
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 196
    instance-of v5, v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    sget-object v5, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;->SUCCESS:Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-eq v3, v5, :cond_1

    .line 197
    iget-object v5, v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    .line 199
    new-array v6, v6, [Lkotlin/Pair;

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v6, v7

    .line 197
    const-string v3, "Failed to read terminal setting"

    invoke-interface {v5, v3, v6}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    .line 201
    :cond_1
    instance-of v5, v3, Ljava/lang/String;

    if-nez v5, :cond_0

    .line 202
    iget-object v5, v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v8, 0x2

    .line 204
    new-array v8, v8, [Lkotlin/Pair;

    const-string v9, "class"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v8, v7

    .line 205
    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v8, v6

    .line 202
    const-string v3, "Unsupported terminal setting type"

    invoke-interface {v5, v3, v8}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->e(Ljava/lang/String;[Lkotlin/Pair;)V

    goto :goto_0

    .line 209
    :cond_2
    iget-object v9, v0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 210
    const-string v2, "9F01"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v10

    .line 211
    const-string v2, "9F1A"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v11

    .line 212
    const-string v2, "5F2A"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v12

    .line 213
    const-string v2, "5F36"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v13

    .line 214
    const-string v2, "9F4E"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v14

    .line 215
    const-string v2, "9F16"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v15

    .line 216
    const-string v2, "9F1C"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v16

    .line 217
    const-string v2, "9F33"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v17

    .line 218
    const-string v2, "9F35"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v18

    .line 219
    const-string v2, "9F40"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v19

    .line 220
    const-string v2, "DF8370"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v20

    .line 221
    const-string v2, "DF8367"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v21

    .line 222
    const-string v2, "DF837B"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v22

    .line 223
    const-string v2, "DF8403"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v23

    .line 224
    const-string v2, "DF8407"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v24

    .line 225
    const-string v2, "DF8408"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v25

    .line 226
    const-string v2, "DF8409"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v26

    .line 227
    const-string v2, "DF840D"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v27

    .line 228
    const-string v2, "DF8421"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v28

    .line 229
    const-string v2, "DF842C"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v29

    .line 230
    const-string v2, "DF866B"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v30

    .line 231
    const-string v2, "DF8926"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v31

    .line 232
    const-string v2, "DFDF09"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v32

    .line 233
    const-string v2, "DF8424"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v33

    .line 234
    const-string v2, "DF8438"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/stripe/core/bbpos/mappers/ReadTerminalSettingResultMapperKt;->convert(Ljava/lang/Object;)Lcom/stripe/bbpos/sdk/TerminalSettingValue;

    move-result-object v34

    .line 209
    invoke-interface/range {v9 .. v34}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReadTerminalSettingResult(Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;Lcom/stripe/bbpos/sdk/TerminalSettingValue;)V

    return-void
.end method

.method public onReturnRemoveCAPKResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnReversalData(Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnReversalData(Ljava/lang/String;)V

    return-void
.end method

.method public onReturnSetPinPadButtonsResult(Z)V
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnSetPinPadButtonsResult(Z)V

    return-void
.end method

.method public onReturnSetPinPadOrientationResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnTransactionResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TransactionResult;)Lcom/stripe/bbpos/sdk/TransactionResult$Type;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnTransactionResult(Lcom/stripe/bbpos/sdk/TransactionResult$Type;)V

    return-void
.end method

.method public onReturnUpdateAIDResult(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    .line 176
    check-cast p1, Ljava/util/Map;

    .line 829
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 830
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 831
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 177
    instance-of v3, v3, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    if-eqz v3, :cond_0

    .line 832
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 835
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 836
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    .line 837
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .line 838
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 839
    check-cast v2, Ljava/util/Map$Entry;

    .line 837
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 178
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "null cannot be cast to non-null type com.bbpos.bbdevice.BBDeviceController.TerminalSettingStatus"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-direct {p0, v2}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    move-result-object v2

    .line 839
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 175
    :cond_2
    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateAidResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnUpdateCAPKResult(Z)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateDisplaySettingsProgress(D)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V
    .locals 1

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateDisplaySettingsResult(ZLjava/lang/String;)V

    return-void
.end method

.method public onReturnUpdateDisplayStringResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onReturnUpdateTerminalSettingResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateTerminalSettingResult(Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;)V

    return-void
.end method

.method public onReturnUpdateTerminalSettingsResult(Ljava/util/Hashtable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;",
            ">;)V"
        }
    .end annotation

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    check-cast p1, Ljava/util/Map;

    .line 842
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapCapacity(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    .line 843
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 844
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 845
    check-cast v2, Ljava/util/Map$Entry;

    .line 843
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 187
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "<get-value>(...)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;

    invoke-direct {p0, v2}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$TerminalSettingStatus;)Lcom/stripe/core/bbpos/hardware/api/TerminalSettingStatus;

    move-result-object v2

    .line 845
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 187
    :cond_0
    invoke-interface {v0, v1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onReturnUpdateTerminalSettingsResult(Ljava/util/Map;)V

    return-void
.end method

.method public onReturnVasResult(Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/stripe/bbpos/bbdevice/BBDeviceController$VASResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnVirtuCryptPEDICommandResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnVirtuCryptPEDKCommandResult(ZLjava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onReturnWatchdogTimerReset()V
    .locals 0

    return-void
.end method

.method public onSerialConnected()V
    .locals 3

    .line 122
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialConnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 123
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSerialConnected()V

    return-void
.end method

.method public onSerialDisconnected()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->logger:Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "onSerialDisconnected"

    invoke-interface {v0, v2, v1}, Lcom/stripe/jvmcore/logging/terminal/log/SimpleLogger;->i(Ljava/lang/String;[Lkotlin/Pair;)V

    .line 129
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSerialDisconnected()V

    return-void
.end method

.method public onSessionError(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$SessionError;)Lcom/stripe/core/bbpos/hardware/api/SessionError;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSessionError(Lcom/stripe/core/bbpos/hardware/api/SessionError;Ljava/lang/String;)V

    return-void
.end method

.method public onSessionInitialized()V
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onSessionInitialized()V

    return-void
.end method

.method public onTestChannelConnected()V
    .locals 0

    return-void
.end method

.method public onTestChannelDisconnected()V
    .locals 0

    return-void
.end method

.method public onUsbConnected()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onUsbConnected()V

    return-void
.end method

.method public onUsbDisconnected()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-interface {v0}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onUsbDisconnected()V

    return-void
.end method

.method public onWaitingForCard(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->listener:Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;

    invoke-direct {p0, p1}, Lcom/stripe/core/bbpos/BbposDeviceListenerWrapperImpl;->convert(Lcom/stripe/bbpos/bbdevice/BBDeviceController$CheckCardMode;)Lcom/stripe/bbpos/sdk/CheckCardMode;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/stripe/core/bbpos/hardware/api/DeviceListenerWrapper;->onWaitingForCard(Lcom/stripe/bbpos/sdk/CheckCardMode;)V

    return-void
.end method

.method public onWaitingReprintOrPrintNext()V
    .locals 0

    return-void
.end method
