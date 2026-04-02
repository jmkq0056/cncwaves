.class public final Lcom/stripe/stripeterminal/external/models/PaymentIntent;
.super Ljava/lang/Object;
.source "PaymentIntent.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;,
        Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentIntent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentIntent.kt\ncom/stripe/stripeterminal/external/models/PaymentIntent\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,297:1\n1#2:298\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bc\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008F\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u00ce\u00012\u00060\u0001j\u0002`\u0002:\u0004\u00cd\u0001\u00ce\u0001B\u0087\u0003\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\t\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0006\u0010\u001c\u001a\u00020\u001d\u0012\u0014\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f\u0012\u0008\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010(\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010*\u001a\u0004\u0018\u00010+\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010.\u001a\u0004\u0018\u00010/\u0012\u0010\u0008\u0001\u00100\u001a\n\u0012\u0004\u0012\u000202\u0018\u000101\u0012\u0008\u00103\u001a\u0004\u0018\u000104\u0012\u0008\u00105\u001a\u0004\u0018\u00010\t\u0012\u0008\u00106\u001a\u0004\u0018\u000107\u00a2\u0006\u0002\u00108B\u00b7\u0003\u0008\u0000\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d\u0012\u0016\u0008\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/\u0012\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u0007\u0012\u000e\u0008\u0002\u00100\u001a\u0008\u0012\u0004\u0012\u00020201\u0012\n\u0008\u0002\u00103\u001a\u0004\u0018\u000104\u0012\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010:J\u000c\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0012\u0010\u0097\u0001\u001a\u0004\u0018\u00010\u0012H\u00c0\u0003\u00a2\u0006\u0003\u0008\u0098\u0001J\u000c\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009a\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u009b\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009d\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009e\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u009f\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a0\u0001\u001a\u0004\u0018\u00010\u001bH\u00c6\u0003J\n\u0010\u00a1\u0001\u001a\u00020\u001dH\u00c6\u0003J\n\u0010\u00a2\u0001\u001a\u00020\tH\u00c6\u0003J\u0018\u0010\u00a3\u0001\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001fH\u00c6\u0003J\u000c\u0010\u00a4\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0012\u0010\u00a5\u0001\u001a\u0004\u0018\u00010\"H\u00c0\u0003\u00a2\u0006\u0003\u0008\u00a6\u0001J\u000c\u0010\u00a7\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a8\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00a9\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00aa\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ab\u0001\u001a\u0004\u0018\u00010(H\u00c6\u0003J\u000c\u0010\u00ac\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00ad\u0001\u001a\u0004\u0018\u00010+H\u00c6\u0003J\n\u0010\u00ae\u0001\u001a\u00020\tH\u00c6\u0003J\u0011\u0010\u00af\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010BJ\u000c\u0010\u00b0\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00b1\u0001\u001a\u0004\u0018\u00010/H\u00c6\u0003J\u000c\u0010\u00b2\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010\u00b3\u0001\u001a\u0008\u0012\u0004\u0012\u00020201H\u00c6\u0003J\u000c\u0010\u00b4\u0001\u001a\u0004\u0018\u000104H\u00c6\u0003J\u0011\u0010\u00b5\u0001\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010BJ\n\u0010\u00b6\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u00b7\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u00b8\u0001\u001a\u00020\tH\u00c6\u0003J\n\u0010\u00b9\u0001\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u00ba\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000c\u0010\u00bb\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u00c2\u0003\u0010\u00bc\u0001\u001a\u00020\u00002\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\t2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00122\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t2\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0019\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001d2\u0016\u0008\u0002\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010&\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010(2\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010+2\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010/2\n\u0008\u0002\u00109\u001a\u0004\u0018\u00010\u00072\u000e\u0008\u0002\u00100\u001a\u0008\u0012\u0004\u0012\u000202012\n\u0008\u0002\u00103\u001a\u0004\u0018\u0001042\n\u0008\u0002\u00105\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0003\u0010\u00bd\u0001J\u0016\u0010\u00be\u0001\u001a\u00020\u001d2\n\u0010\u00bf\u0001\u001a\u0005\u0018\u00010\u00c0\u0001H\u00d6\u0003J\u000e\u0010\u00c1\u0001\u001a\t\u0012\u0005\u0012\u00030\u00c2\u000101J\n\u0010\u00c3\u0001\u001a\u00020\u0004H\u00d6\u0001J\n\u0010\u00c4\u0001\u001a\u00020\u0007H\u00d6\u0001J.\u0010\u00c5\u0001\u001a\u00030\u00c6\u00012\u0007\u0010\u00c7\u0001\u001a\u00020\u00002\u0008\u0010\u00c8\u0001\u001a\u00030\u00c9\u00012\u0008\u0010\u00ca\u0001\u001a\u00030\u00cb\u0001H\u00c1\u0001\u00a2\u0006\u0003\u0008\u00cc\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u0010<R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010<R\u0013\u0010*\u001a\u0004\u0018\u00010+\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010?R\u0011\u0010\u000b\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010<R\u0015\u00105\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010C\u001a\u0004\u0008A\u0010BR\u0015\u0010,\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010C\u001a\u0004\u0008D\u0010BR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u0010FR\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u0010<R\u0011\u0010\u000e\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010<R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010FR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008J\u0010FR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u0010LR\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010FR$\u0010N\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008O\u0010P\u001a\u0004\u0008Q\u0010R\"\u0004\u0008S\u0010TR\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u0010FR\u0011\u0010\u0015\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u0010<R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u0010FR\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010FR\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u0010FR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u0010FR\u0013\u0010\u0019\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u0010FR\u0013\u0010\u001a\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u0010]R\u0011\u0010\u001c\u001a\u00020\u001d\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u0010RR\u001f\u0010\u001e\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001f\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008_\u0010`R\u0013\u00103\u001a\u0004\u0018\u000104\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008a\u0010bR,\u0010e\u001a\u00020d2\u0006\u0010c\u001a\u00020d8\u0006@GX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008f\u0010P\u001a\u0004\u0008g\u0010h\"\u0004\u0008i\u0010jR0\u0010l\u001a\u0004\u0018\u00010k2\u0008\u0010c\u001a\u0004\u0018\u00010k8\u0006@GX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008m\u0010P\u001a\u0004\u0008n\u0010o\"\u0004\u0008p\u0010qR\u0013\u0010 \u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008r\u0010FR\u001e\u0010s\u001a\u0004\u0018\u00010t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008u\u0010P\u001a\u0004\u0008v\u0010wR0\u0010x\u001a\u0004\u0018\u00010y2\u0008\u0010x\u001a\u0004\u0018\u00010y8\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008z\u0010P\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R \u0010\u007f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0000\u0012\u0005\u0008\u0080\u0001\u0010P\u001a\u0005\u0008\u0081\u0001\u0010FR\u0015\u0010.\u001a\u0004\u0018\u00010/\u00a2\u0006\n\n\u0000\u001a\u0006\u0008\u0082\u0001\u0010\u0083\u0001R%\u00100\u001a\u0008\u0012\u0004\u0012\u000202018\u0006X\u0087\u0004\u00a2\u0006\u0011\n\u0000\u0012\u0005\u0008\u0084\u0001\u0010P\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001R!\u0010!\u001a\u0004\u0018\u00010\"8\u0000X\u0081\u0004\u00a2\u0006\u0011\n\u0000\u0012\u0005\u0008\u0087\u0001\u0010P\u001a\u0006\u0008\u0088\u0001\u0010\u0089\u0001R\u0014\u0010#\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008a\u0001\u0010FR\u0014\u0010$\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010FR\u0014\u0010%\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008c\u0001\u0010FR\u0014\u0010&\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008d\u0001\u0010FR\u0014\u0010-\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u008e\u0001\u0010FR \u0010\'\u001a\u0004\u0018\u00010(X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008f\u0001\u0010\u0090\u0001\"\u0006\u0008\u0091\u0001\u0010\u0092\u0001R \u00109\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0000\u0012\u0005\u0008\u0093\u0001\u0010P\u001a\u0005\u0008\u0094\u0001\u0010FR\u0014\u0010)\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\t\n\u0000\u001a\u0005\u0008\u0095\u0001\u0010F\u00a8\u0006\u00cf\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "seen2",
        "id",
        "",
        "amount",
        "",
        "amountCapturable",
        "amountReceived",
        "application",
        "applicationFeeAmount",
        "canceledAt",
        "cancellationReason",
        "captureMethod",
        "charges",
        "Lcom/stripe/stripeterminal/external/models/ChargesList;",
        "clientSecret",
        "confirmationMethod",
        "created",
        "currency",
        "customer",
        "description",
        "invoice",
        "lastPaymentError",
        "Lcom/stripe/stripeterminal/external/api/ApiError;",
        "livemode",
        "",
        "metadata",
        "",
        "onBehalfOf",
        "paymentMethodUnion",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;",
        "receiptEmail",
        "review",
        "setupFutureUsage",
        "statementDescriptor",
        "status",
        "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
        "transferGroup",
        "amountDetails",
        "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "amountTip",
        "statementDescriptorSuffix",
        "paymentMethodOptions",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "paymentMethodTypes",
        "",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
        "nextAction",
        "Lcom/stripe/stripeterminal/external/models/NextAction;",
        "amountRequested",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "stripeAccountId",
        "(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)V",
        "getAmount",
        "()J",
        "getAmountCapturable",
        "getAmountDetails",
        "()Lcom/stripe/stripeterminal/external/models/AmountDetails;",
        "getAmountReceived",
        "getAmountRequested",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "getAmountTip",
        "getApplication",
        "()Ljava/lang/String;",
        "getApplicationFeeAmount",
        "getCanceledAt",
        "getCancellationReason",
        "getCaptureMethod",
        "getCharges$public_release",
        "()Lcom/stripe/stripeterminal/external/models/ChargesList;",
        "getClientSecret",
        "collectedOffline",
        "getCollectedOffline$annotations",
        "()V",
        "getCollectedOffline",
        "()Z",
        "setCollectedOffline",
        "(Z)V",
        "getConfirmationMethod",
        "getCreated",
        "getCurrency",
        "getCustomer",
        "getDescription",
        "getId",
        "getInvoice",
        "getLastPaymentError",
        "()Lcom/stripe/stripeterminal/external/api/ApiError;",
        "getLivemode",
        "getMetadata",
        "()Ljava/util/Map;",
        "getNextAction",
        "()Lcom/stripe/stripeterminal/external/models/NextAction;",
        "<set-?>",
        "Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "offlineBehavior",
        "getOfflineBehavior$annotations",
        "getOfflineBehavior",
        "()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;",
        "setOfflineBehavior",
        "(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V",
        "Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "offlineDetails",
        "getOfflineDetails$annotations",
        "getOfflineDetails",
        "()Lcom/stripe/stripeterminal/external/models/OfflineDetails;",
        "setOfflineDetails",
        "(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V",
        "getOnBehalfOf",
        "paymentMethod",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "getPaymentMethod$annotations",
        "getPaymentMethod",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethod;",
        "paymentMethodData",
        "Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "getPaymentMethodData$annotations",
        "getPaymentMethodData",
        "()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;",
        "setPaymentMethodData",
        "(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V",
        "paymentMethodId",
        "getPaymentMethodId$annotations",
        "getPaymentMethodId",
        "getPaymentMethodOptions",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
        "getPaymentMethodTypes$annotations",
        "getPaymentMethodTypes",
        "()Ljava/util/List;",
        "getPaymentMethodUnion$public_release$annotations",
        "getPaymentMethodUnion$public_release",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;",
        "getReceiptEmail",
        "getReview",
        "getSetupFutureUsage",
        "getStatementDescriptor",
        "getStatementDescriptorSuffix",
        "getStatus",
        "()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
        "setStatus",
        "(Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;)V",
        "getStripeAccountId$annotations",
        "getStripeAccountId",
        "getTransferGroup",
        "component1",
        "component10",
        "component10$public_release",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component22$public_release",
        "component23",
        "component24",
        "component25",
        "component26",
        "component27",
        "component28",
        "component29",
        "component3",
        "component30",
        "component31",
        "component32",
        "component33",
        "component34",
        "component35",
        "component36",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;",
        "equals",
        "other",
        "",
        "getCharges",
        "Lcom/stripe/stripeterminal/external/models/Charge;",
        "hashCode",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "write$Self$public_release",
        "$serializer",
        "Companion",
        "public_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field private static final $childSerializers:[Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;


# instance fields
.field private final amount:J

.field private final amountCapturable:J

.field private final amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

.field private final amountReceived:J

.field private final amountRequested:Ljava/lang/Long;

.field private final amountTip:Ljava/lang/Long;

.field private final application:Ljava/lang/String;

.field private final applicationFeeAmount:J

.field private final canceledAt:J

.field private final cancellationReason:Ljava/lang/String;

.field private final captureMethod:Ljava/lang/String;

.field private final charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

.field private final clientSecret:Ljava/lang/String;

.field private collectedOffline:Z

.field private final confirmationMethod:Ljava/lang/String;

.field private final created:J

.field private final currency:Ljava/lang/String;

.field private final customer:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final invoice:Ljava/lang/String;

.field private final lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

.field private final livemode:Z

.field private final metadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

.field private offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

.field private offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

.field private final onBehalfOf:Ljava/lang/String;

.field private final paymentMethod:Lcom/stripe/stripeterminal/external/models/PaymentMethod;

.field private paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

.field private final paymentMethodId:Ljava/lang/String;

.field private final paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

.field private final paymentMethodTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation
.end field

.field private final paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

.field private final receiptEmail:Ljava/lang/String;

.field private final review:Ljava/lang/String;

.field private final setupFutureUsage:Ljava/lang/String;

.field private final statementDescriptor:Ljava/lang/String;

.field private final statementDescriptorSuffix:Ljava/lang/String;

.field private status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

.field private final stripeAccountId:Ljava/lang/String;

.field private final transferGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentIntent$Companion;

    const/16 v0, 0x23

    .line 22
    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x13

    aput-object v2, v0, v3

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v2, 0x16

    aput-object v1, v0, v2

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v2, 0x18

    aput-object v1, v0, v2

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v2, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->Companion:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus$Companion;

    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    const/16 v3, 0x1a

    aput-object v2, v0, v3

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    const/16 v2, 0x20

    aput-object v1, v0, v2

    const/16 v2, 0x21

    aput-object v1, v0, v2

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4
    .param p30    # Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "paymentMethod"
        .end annotation
    .end param
    .param p41    # Ljava/util/List;
        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 22
    filled-new-array/range {p1 .. p2}, [I

    move-result-object v0

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/PaymentIntent$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwArrayMissingFieldException([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x2

    const-wide/16 v2, 0x0

    if-nez p3, :cond_2

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    goto :goto_1

    :cond_2
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    :goto_1
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_3

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    goto :goto_2

    :cond_3
    iput-wide p6, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    :goto_2
    and-int/lit8 p3, p1, 0x8

    if-nez p3, :cond_4

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    goto :goto_3

    :cond_4
    iput-wide p8, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    :goto_3
    and-int/lit8 p3, p1, 0x10

    const/4 p4, 0x0

    if-nez p3, :cond_5

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    :goto_4
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_6

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    goto :goto_5

    :cond_6
    move-wide p5, p11

    iput-wide p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    :goto_5
    and-int/lit8 p3, p1, 0x40

    if-nez p3, :cond_7

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    goto :goto_6

    :cond_7
    move-wide/from16 p5, p13

    iput-wide p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    :goto_6
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_8

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    goto :goto_7

    :cond_8
    move-object/from16 p3, p15

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    :goto_7
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_9

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    goto :goto_8

    :cond_9
    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    :goto_8
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_a

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    goto :goto_9

    :cond_a
    move-object/from16 p3, p17

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    :goto_9
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_b

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 p3, p18

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    :goto_a
    and-int/lit16 p3, p1, 0x800

    if-nez p3, :cond_c

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object/from16 p3, p19

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    :goto_b
    and-int/lit16 p3, p1, 0x1000

    if-nez p3, :cond_d

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    goto :goto_c

    :cond_d
    move-wide/from16 p5, p20

    iput-wide p5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    :goto_c
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_e

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object/from16 p3, p22

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    :goto_d
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_f

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    goto :goto_e

    :cond_f
    move-object/from16 p3, p23

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    :goto_e
    const p3, 0x8000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    goto :goto_f

    :cond_10
    move-object/from16 p3, p24

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    :goto_f
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_11

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    goto :goto_10

    :cond_11
    move-object/from16 p3, p25

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    :goto_10
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    goto :goto_11

    :cond_12
    move-object/from16 p3, p26

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    :goto_11
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_13

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    goto :goto_12

    :cond_13
    move/from16 p3, p27

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    :goto_12
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_14

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    goto :goto_13

    :cond_14
    move-object/from16 p3, p28

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    :goto_13
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_15

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    goto :goto_14

    :cond_15
    move-object/from16 p3, p29

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    :goto_14
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_16

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    goto :goto_15

    :cond_16
    move-object/from16 p3, p30

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    :goto_15
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_17

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    goto :goto_16

    :cond_17
    move-object/from16 p3, p31

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    :goto_16
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_18

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    goto :goto_17

    :cond_18
    move-object/from16 p3, p32

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    :goto_17
    const/high16 p3, 0x1000000

    and-int/2addr p3, p1

    if-nez p3, :cond_19

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    goto :goto_18

    :cond_19
    move-object/from16 p3, p33

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    :goto_18
    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1a

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    goto :goto_19

    :cond_1a
    move-object/from16 p3, p34

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    :goto_19
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1b

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    goto :goto_1a

    :cond_1b
    move-object/from16 p3, p35

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    :goto_1a
    const/high16 p3, 0x8000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1c

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    goto :goto_1b

    :cond_1c
    move-object/from16 p3, p36

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    :goto_1b
    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1d

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    goto :goto_1c

    :cond_1d
    move-object/from16 p3, p37

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    :goto_1c
    const/high16 p3, 0x20000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1e

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    goto :goto_1d

    :cond_1e
    move-object/from16 p3, p38

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    :goto_1d
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-nez p3, :cond_1f

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    goto :goto_1e

    :cond_1f
    move-object/from16 p3, p39

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    :goto_1e
    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_20

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    goto :goto_1f

    :cond_20
    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    :goto_1f
    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_21

    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_20

    :cond_21
    move-object/from16 p1, p41

    .line 22
    :goto_20
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_22

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    goto :goto_21

    :cond_22
    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    :goto_21
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_23

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    goto :goto_22

    :cond_23
    move-object/from16 p1, p43

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    .line 231
    :goto_22
    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    if-eqz p1, :cond_24

    invoke-interface {p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_23

    :cond_24
    move-object p1, p4

    .line 22
    :goto_23
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    .line 239
    iget-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    instance-of p2, p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;

    if-eqz p2, :cond_25

    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;

    goto :goto_24

    :cond_25
    move-object p1, p4

    :goto_24
    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;->getPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    goto :goto_25

    :cond_26
    move-object p1, p4

    .line 22
    :goto_25
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethod:Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->collectedOffline:Z

    .line 272
    sget-object p1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    .line 22
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/ChargesList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/NextAction;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p28

    move-object/from16 v1, p40

    const-string v2, "paymentMethodTypes"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    .line 33
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    .line 38
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    .line 43
    iput-wide p6, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    .line 48
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    .line 53
    iput-wide p9, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    .line 59
    iput-wide p11, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    move-object/from16 p1, p13

    .line 66
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    move-object/from16 p1, p14

    .line 75
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 77
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    move-object/from16 p1, p16

    .line 82
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 94
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    move-wide/from16 p1, p18

    .line 99
    iput-wide p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    move-object/from16 p1, p20

    .line 104
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    move-object/from16 p1, p21

    .line 111
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    move-object/from16 p1, p22

    .line 116
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    move-object/from16 p1, p23

    .line 121
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 126
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    move/from16 p1, p25

    .line 132
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    move-object/from16 p1, p26

    .line 138
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    move-object/from16 p1, p27

    .line 143
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    move-object/from16 p1, p29

    .line 151
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 156
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 161
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    move-object/from16 p1, p32

    .line 167
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    move-object/from16 p1, p33

    .line 172
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    move-object/from16 p1, p34

    .line 177
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 182
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    move-object/from16 p1, p36

    .line 191
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    move-object/from16 p1, p37

    .line 197
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    move-object/from16 p1, p38

    .line 202
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    move-object/from16 p1, p39

    .line 207
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    .line 214
    iput-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    move-object/from16 p1, p41

    .line 220
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    move-object/from16 p1, p42

    .line 225
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    const/4 p1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0}, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;->getId()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    .line 239
    instance-of p2, v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;

    if-eqz p2, :cond_1

    move-object p2, v0

    check-cast p2, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;

    goto :goto_1

    :cond_1
    move-object p2, p1

    :goto_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion$Expanded;->getPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethod:Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    .line 272
    sget-object p1, Lcom/stripe/stripeterminal/external/models/OfflineBehavior;->PREFER_ONLINE:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 38

    move/from16 v0, p43

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    const-wide/16 v4, 0x0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_2
    move-wide/from16 v8, p6

    :goto_2
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v1, p8

    :goto_3
    and-int/lit8 v11, v0, 0x20

    if-eqz v11, :cond_4

    const-wide/16 v11, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v11, p9

    :goto_4
    and-int/lit8 v13, v0, 0x40

    if-eqz v13, :cond_5

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v13, p11

    :goto_5
    and-int/lit16 v15, v0, 0x80

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v15, p13

    :goto_6
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v2, p14

    :goto_7
    and-int/lit16 v3, v0, 0x200

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v3, p15

    :goto_8
    and-int/lit16 v10, v0, 0x400

    if-eqz v10, :cond_9

    const/4 v10, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v10, p16

    :goto_9
    move-object/from16 p3, v1

    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v1, p17

    :goto_a
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    const-wide/16 v16, 0x0

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p18

    :goto_b
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v1, p20

    :goto_c
    move-object/from16 p5, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p21

    :goto_d
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_e

    const/16 v18, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v18, p22

    :goto_e
    const/high16 v19, 0x10000

    and-int v19, v0, v19

    if-eqz v19, :cond_f

    const/16 v19, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v19, p23

    :goto_f
    const/high16 v20, 0x20000

    and-int v20, v0, v20

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v20, p24

    :goto_10
    const/high16 v21, 0x40000

    and-int v21, v0, v21

    if-eqz v21, :cond_11

    const/16 v21, 0x0

    goto :goto_11

    :cond_11
    move/from16 v21, p25

    :goto_11
    const/high16 v22, 0x80000

    and-int v22, v0, v22

    if-eqz v22, :cond_12

    const/16 v22, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v22, p26

    :goto_12
    const/high16 v23, 0x100000

    and-int v23, v0, v23

    if-eqz v23, :cond_13

    const/16 v23, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v23, p27

    :goto_13
    const/high16 v24, 0x200000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    const/16 v24, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v24, p28

    :goto_14
    const/high16 v25, 0x400000

    and-int v25, v0, v25

    if-eqz v25, :cond_15

    const/16 v25, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v25, p29

    :goto_15
    const/high16 v26, 0x800000

    and-int v26, v0, v26

    if-eqz v26, :cond_16

    const/16 v26, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v26, p30

    :goto_16
    const/high16 v27, 0x1000000

    and-int v27, v0, v27

    if-eqz v27, :cond_17

    const/16 v27, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v27, p31

    :goto_17
    const/high16 v28, 0x2000000

    and-int v28, v0, v28

    if-eqz v28, :cond_18

    const/16 v28, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v28, p32

    :goto_18
    const/high16 v29, 0x4000000

    and-int v29, v0, v29

    if-eqz v29, :cond_19

    const/16 v29, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v29, p33

    :goto_19
    const/high16 v30, 0x8000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1a

    const/16 v30, 0x0

    goto :goto_1a

    :cond_1a
    move-object/from16 v30, p34

    :goto_1a
    const/high16 v31, 0x10000000

    and-int v31, v0, v31

    if-eqz v31, :cond_1b

    const/16 v31, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v31, p35

    :goto_1b
    const/high16 v32, 0x20000000

    and-int v32, v0, v32

    if-eqz v32, :cond_1c

    const/16 v32, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v32, p36

    :goto_1c
    const/high16 v33, 0x40000000    # 2.0f

    and-int v33, v0, v33

    if-eqz v33, :cond_1d

    const/16 v33, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v33, p37

    :goto_1d
    const/high16 v34, -0x80000000

    and-int v0, v0, v34

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p38

    :goto_1e
    and-int/lit8 v34, p44, 0x1

    if-eqz v34, :cond_1f

    const/16 v34, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v34, p39

    :goto_1f
    and-int/lit8 v35, p44, 0x2

    if-eqz v35, :cond_20

    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v35

    goto :goto_20

    :cond_20
    move-object/from16 v35, p40

    :goto_20
    and-int/lit8 v36, p44, 0x4

    if-eqz v36, :cond_21

    const/16 v36, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v36, p41

    :goto_21
    and-int/lit8 v37, p44, 0x8

    if-eqz v37, :cond_22

    const/16 p44, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 p44, p42

    :goto_22
    move-object/from16 p2, p0

    move-object/from16 p10, p3

    move-object/from16 p19, p4

    move-object/from16 p22, p5

    move-object/from16 p40, v0

    move-object/from16 p23, v1

    move-object/from16 p16, v2

    move-object/from16 p17, v3

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-wide/from16 p8, v8

    move-object/from16 p18, v10

    move-wide/from16 p11, v11

    move-wide/from16 p13, v13

    move-object/from16 p15, v15

    move-wide/from16 p20, v16

    move-object/from16 p24, v18

    move-object/from16 p25, v19

    move-object/from16 p26, v20

    move/from16 p27, v21

    move-object/from16 p28, v22

    move-object/from16 p29, v23

    move-object/from16 p30, v24

    move-object/from16 p31, v25

    move-object/from16 p32, v26

    move-object/from16 p33, v27

    move-object/from16 p34, v28

    move-object/from16 p35, v29

    move-object/from16 p36, v30

    move-object/from16 p37, v31

    move-object/from16 p38, v32

    move-object/from16 p39, v33

    move-object/from16 p41, v34

    move-object/from16 p42, v35

    move-object/from16 p43, v36

    move-object/from16 p3, p1

    .line 23
    invoke-direct/range {p2 .. p44}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;-><init>(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 22
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p43

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-wide v7, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    goto :goto_3

    :cond_3
    move-wide/from16 v7, p6

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v9, p8

    :goto_4
    and-int/lit8 v10, v1, 0x20

    if-eqz v10, :cond_5

    iget-wide v10, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    goto :goto_5

    :cond_5
    move-wide/from16 v10, p9

    :goto_5
    and-int/lit8 v12, v1, 0x40

    if-eqz v12, :cond_6

    iget-wide v12, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    goto :goto_6

    :cond_6
    move-wide/from16 v12, p11

    :goto_6
    and-int/lit16 v14, v1, 0x80

    if-eqz v14, :cond_7

    iget-object v14, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v14, p13

    :goto_7
    and-int/lit16 v15, v1, 0x100

    if-eqz v15, :cond_8

    iget-object v15, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    goto :goto_8

    :cond_8
    move-object/from16 v15, p14

    :goto_8
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    goto :goto_9

    :cond_9
    move-object/from16 v2, p15

    :goto_9
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p16

    :goto_a
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p17

    :goto_b
    move-object/from16 p4, v2

    and-int/lit16 v2, v1, 0x1000

    move-wide/from16 v16, v3

    if-eqz v2, :cond_c

    iget-wide v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    goto :goto_c

    :cond_c
    move-wide/from16 v2, p18

    :goto_c
    and-int/lit16 v4, v1, 0x2000

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v4, p20

    :goto_d
    move-wide/from16 p5, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p21

    :goto_e
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v3, p22

    :goto_f
    const/high16 v18, 0x10000

    and-int v18, v1, v18

    if-eqz v18, :cond_10

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v1, p23

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, p43, v18

    move-object/from16 p7, v1

    if-eqz v18, :cond_11

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p24

    :goto_11
    const/high16 v18, 0x40000

    and-int v18, p43, v18

    move-object/from16 p8, v1

    if-eqz v18, :cond_12

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p25

    :goto_12
    const/high16 v18, 0x80000

    and-int v18, p43, v18

    move/from16 p9, v1

    if-eqz v18, :cond_13

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p26

    :goto_13
    const/high16 v18, 0x100000

    and-int v18, p43, v18

    move-object/from16 p10, v1

    if-eqz v18, :cond_14

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    goto :goto_14

    :cond_14
    move-object/from16 v1, p27

    :goto_14
    const/high16 v18, 0x200000

    and-int v18, p43, v18

    move-object/from16 p11, v1

    if-eqz v18, :cond_15

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p28

    :goto_15
    const/high16 v18, 0x400000

    and-int v18, p43, v18

    move-object/from16 p12, v1

    if-eqz v18, :cond_16

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p29

    :goto_16
    const/high16 v18, 0x800000

    and-int v18, p43, v18

    move-object/from16 p13, v1

    if-eqz v18, :cond_17

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p30

    :goto_17
    const/high16 v18, 0x1000000

    and-int v18, p43, v18

    move-object/from16 p14, v1

    if-eqz v18, :cond_18

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p31

    :goto_18
    const/high16 v18, 0x2000000

    and-int v18, p43, v18

    move-object/from16 p15, v1

    if-eqz v18, :cond_19

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p32

    :goto_19
    const/high16 v18, 0x4000000

    and-int v18, p43, v18

    move-object/from16 p16, v1

    if-eqz v18, :cond_1a

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p33

    :goto_1a
    const/high16 v18, 0x8000000

    and-int v18, p43, v18

    move-object/from16 p17, v1

    if-eqz v18, :cond_1b

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    goto :goto_1b

    :cond_1b
    move-object/from16 v1, p34

    :goto_1b
    const/high16 v18, 0x10000000

    and-int v18, p43, v18

    move-object/from16 p18, v1

    if-eqz v18, :cond_1c

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p35

    :goto_1c
    const/high16 v18, 0x20000000

    and-int v18, p43, v18

    move-object/from16 p19, v1

    if-eqz v18, :cond_1d

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p36

    :goto_1d
    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, p43, v18

    move-object/from16 p20, v1

    if-eqz v18, :cond_1e

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p37

    :goto_1e
    const/high16 v18, -0x80000000

    and-int v18, p43, v18

    move-object/from16 p21, v1

    if-eqz v18, :cond_1f

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p38

    :goto_1f
    and-int/lit8 v18, p44, 0x1

    move-object/from16 p22, v1

    if-eqz v18, :cond_20

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p39

    :goto_20
    and-int/lit8 v18, p44, 0x2

    move-object/from16 p23, v1

    if-eqz v18, :cond_21

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p40

    :goto_21
    and-int/lit8 v18, p44, 0x4

    move-object/from16 p24, v1

    if-eqz v18, :cond_22

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p41

    :goto_22
    and-int/lit8 v18, p44, 0x8

    if-eqz v18, :cond_23

    move-object/from16 p25, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    move-object/from16 p42, p25

    move-object/from16 p43, v1

    move/from16 p26, p9

    move-object/from16 p27, p10

    move-object/from16 p28, p11

    move-object/from16 p29, p12

    move-object/from16 p30, p13

    move-object/from16 p31, p14

    move-object/from16 p32, p15

    move-object/from16 p33, p16

    move-object/from16 p34, p17

    move-object/from16 p35, p18

    move-object/from16 p36, p19

    move-object/from16 p37, p20

    move-object/from16 p38, p21

    move-object/from16 p39, p22

    move-object/from16 p40, p23

    move-object/from16 p41, p24

    move-object/from16 p22, v2

    move-object/from16 p23, v3

    move-object/from16 p21, v4

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-wide/from16 p19, p5

    move-object/from16 p24, p7

    move-object/from16 p25, p8

    goto :goto_23

    :cond_23
    move-object/from16 p43, p42

    move-object/from16 p42, v1

    move-object/from16 p25, p8

    move/from16 p26, p9

    move-object/from16 p27, p10

    move-object/from16 p28, p11

    move-object/from16 p29, p12

    move-object/from16 p30, p13

    move-object/from16 p31, p14

    move-object/from16 p32, p15

    move-object/from16 p33, p16

    move-object/from16 p34, p17

    move-object/from16 p35, p18

    move-object/from16 p36, p19

    move-object/from16 p37, p20

    move-object/from16 p38, p21

    move-object/from16 p39, p22

    move-object/from16 p40, p23

    move-object/from16 p41, p24

    move-object/from16 p22, v2

    move-object/from16 p23, v3

    move-object/from16 p21, v4

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-wide/from16 p12, v12

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-wide/from16 p19, p5

    move-object/from16 p24, p7

    :goto_23
    move-wide/from16 p5, v5

    move-wide/from16 p7, v7

    move-wide/from16 p3, v16

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p43}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->copy(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getCollectedOffline$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getOfflineBehavior$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getOfflineDetails$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethod$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodData$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodTypes$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodUnion$public_release$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paymentMethod"
    .end annotation

    return-void
.end method

.method public static synthetic getStripeAccountId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/Transient;
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/PaymentIntent;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 22
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    :goto_0
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    :goto_1
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_5

    :goto_2
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    :goto_4
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_9
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b

    :goto_5
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_b
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    if-eqz v2, :cond_d

    :goto_6
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_d
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_7
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_f
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/ChargesList$$serializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_a
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_17

    :goto_b
    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_17
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_c
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_d
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_e
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_f
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1f
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    if-eqz v2, :cond_21

    :goto_10
    sget-object v2, Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/ApiErrorSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    const/16 v1, 0x12

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_11

    :cond_22
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    if-eqz v2, :cond_23

    :goto_11
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_23
    const/16 v1, 0x13

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_12

    :cond_24
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    if-eqz v2, :cond_25

    :goto_12
    aget-object v2, v0, v1

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    const/16 v1, 0x14

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_13

    :cond_26
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    if-eqz v2, :cond_27

    :goto_13
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_27
    const/16 v1, 0x15

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    if-eqz v1, :cond_29

    :goto_14
    sget-object v1, Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodUnionSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    const/16 v3, 0x15

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    const/16 v1, 0x16

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    if-eqz v1, :cond_2b

    :goto_15
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    const/16 v3, 0x16

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    const/16 v1, 0x17

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2c

    goto :goto_16

    :cond_2c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    if-eqz v1, :cond_2d

    :goto_16
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    const/16 v3, 0x17

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2d
    const/16 v1, 0x18

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    if-eqz v1, :cond_2f

    :goto_17
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    const/16 v3, 0x18

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    const/16 v1, 0x19

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_18

    :cond_30
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    if-eqz v1, :cond_31

    :goto_18
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    const/16 v3, 0x19

    invoke-interface {p1, p2, v3, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_31
    const/16 v1, 0x1a

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_32

    goto :goto_19

    :cond_32
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-eqz v2, :cond_33

    :goto_19
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    const/16 v0, 0x1b

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_1a

    :cond_34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    if-eqz v0, :cond_35

    :goto_1a
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    const/16 v2, 0x1b

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_35
    const/16 v0, 0x1c

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_1b

    :cond_36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    if-eqz v0, :cond_37

    :goto_1b
    sget-object v0, Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/AmountDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    const/16 v2, 0x1c

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_37
    const/16 v0, 0x1d

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_1c

    :cond_38
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    if-eqz v0, :cond_39

    :goto_1c
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    const/16 v2, 0x1d

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_39
    const/16 v0, 0x1e

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_1d

    :cond_3a
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    if-eqz v0, :cond_3b

    :goto_1d
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3b
    const/16 v0, 0x1f

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_1e

    :cond_3c
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    if-eqz v0, :cond_3d

    :goto_1e
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    const/16 v2, 0x1f

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3d
    const/16 v0, 0x20

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_1f

    :cond_3e
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    .line 215
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 22
    :goto_1f
    sget-object v0, Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;->INSTANCE:Lcom/stripe/stripeterminal/external/json/PaymentMethodTypesSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    const/16 v2, 0x20

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3f
    const/16 v0, 0x21

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_20

    :cond_40
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    if-eqz v0, :cond_41

    :goto_20
    sget-object v0, Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/NextAction$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    const/16 v2, 0x21

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_41
    const/16 v0, 0x22

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_21

    :cond_42
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    if-eqz v0, :cond_43

    :goto_21
    sget-object v0, Lkotlinx/serialization/internal/LongSerializer;->INSTANCE:Lkotlinx/serialization/internal/LongSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    const/16 v1, 0x22

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_43
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10$public_release()Lcom/stripe/stripeterminal/external/models/ChargesList;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    return-wide v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    return-object v0
.end method

.method public final component18()Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object v0
.end method

.method public final component19()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    return-wide v0
.end method

.method public final component20()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component21()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final component22$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    return-object v0
.end method

.method public final component28()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    return-object v0
.end method

.method public final component29()Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    return-wide v0
.end method

.method public final component30()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final component35()Lcom/stripe/stripeterminal/external/models/NextAction;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    return-object v0
.end method

.method public final component36()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    return-wide v0
.end method

.method public final component7()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    return-wide v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)Lcom/stripe/stripeterminal/external/models/PaymentIntent;
    .locals 44
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJJ",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/ChargesList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/api/ApiError;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/AmountDetails;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;",
            "Lcom/stripe/stripeterminal/external/models/NextAction;",
            "Ljava/lang/Long;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/PaymentIntent;"
        }
    .end annotation

    const-string v0, "paymentMethodTypes"

    move-object/from16 v1, p40

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-wide/from16 v12, p11

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-wide/from16 v19, p18

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move-object/from16 v27, p26

    move-object/from16 v28, p27

    move-object/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    move-object/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    move-object/from16 v42, p41

    move-object/from16 v43, p42

    invoke-direct/range {v1 .. v43}, Lcom/stripe/stripeterminal/external/models/PaymentIntent;-><init>(Ljava/lang/String;JJJLjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/ChargesList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/api/ApiError;ZLjava/util/Map;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/AmountDetails;Ljava/lang/Long;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;Ljava/lang/String;Ljava/util/List;Lcom/stripe/stripeterminal/external/models/NextAction;Ljava/lang/Long;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    return-wide v0
.end method

.method public final getAmountCapturable()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    return-wide v0
.end method

.method public final getAmountDetails()Lcom/stripe/stripeterminal/external/models/AmountDetails;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    return-object v0
.end method

.method public final getAmountReceived()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    return-wide v0
.end method

.method public final getAmountRequested()Ljava/lang/Long;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    return-object v0
.end method

.method public final getAmountTip()Ljava/lang/Long;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    return-object v0
.end method

.method public final getApplication()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationFeeAmount()J
    .locals 2

    .line 53
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    return-wide v0
.end method

.method public final getCanceledAt()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    return-wide v0
.end method

.method public final getCancellationReason()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getCaptureMethod()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getCharges()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/Charge;",
            ">;"
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/stripe/stripeterminal/external/models/ChargesList;->getData$public_release()[Lcom/stripe/stripeterminal/external/models/Charge;

    move-result-object v0

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public final getCharges$public_release()Lcom/stripe/stripeterminal/external/models/ChargesList;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    return-object v0
.end method

.method public final getClientSecret()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public final getCollectedOffline()Z
    .locals 1

    .line 263
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->collectedOffline:Z

    return v0
.end method

.method public final getConfirmationMethod()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreated()J
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvoice()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastPaymentError()Lcom/stripe/stripeterminal/external/api/ApiError;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    return-object v0
.end method

.method public final getLivemode()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    return v0
.end method

.method public final getMetadata()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getNextAction()Lcom/stripe/stripeterminal/external/models/NextAction;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    return-object v0
.end method

.method public final getOfflineBehavior()Lcom/stripe/stripeterminal/external/models/OfflineBehavior;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-object v0
.end method

.method public final getOfflineDetails()Lcom/stripe/stripeterminal/external/models/OfflineDetails;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-object v0
.end method

.method public final getOnBehalfOf()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethod()Lcom/stripe/stripeterminal/external/models/PaymentMethod;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethod:Lcom/stripe/stripeterminal/external/models/PaymentMethod;

    return-object v0
.end method

.method public final getPaymentMethodData()Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    return-object v0
.end method

.method public final getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodOptions()Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    return-object v0
.end method

.method public final getPaymentMethodTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodType;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    return-object v0
.end method

.method public final getPaymentMethodUnion$public_release()Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    return-object v0
.end method

.method public final getReceiptEmail()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getReview()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    return-object v0
.end method

.method public final getSetupFutureUsage()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptor()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptorSuffix()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    return-object v0
.end method

.method public final getStripeAccountId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferGroup()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v1

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    if-nez v2, :cond_4

    move v2, v1

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/ChargesList;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    if-nez v2, :cond_6

    move v2, v1

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    if-nez v2, :cond_7

    move v2, v1

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    if-nez v2, :cond_9

    move v2, v1

    goto :goto_9

    :cond_9
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    if-nez v2, :cond_a

    move v2, v1

    goto :goto_a

    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_b

    :cond_b
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/api/ApiError;->hashCode()I

    move-result v2

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    if-nez v2, :cond_c

    move v2, v1

    goto :goto_c

    :cond_c
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    if-nez v2, :cond_d

    move v2, v1

    goto :goto_d

    :cond_d
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    if-nez v2, :cond_e

    move v2, v1

    goto :goto_e

    :cond_e
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    if-nez v2, :cond_f

    move v2, v1

    goto :goto_f

    :cond_f
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_10

    :cond_10
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    if-nez v2, :cond_11

    move v2, v1

    goto :goto_11

    :cond_11
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    if-nez v2, :cond_12

    move v2, v1

    goto :goto_12

    :cond_12
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_13

    :cond_13
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->hashCode()I

    move-result v2

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    if-nez v2, :cond_14

    move v2, v1

    goto :goto_14

    :cond_14
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    if-nez v2, :cond_15

    move v2, v1

    goto :goto_15

    :cond_15
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/AmountDetails;->hashCode()I

    move-result v2

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    if-nez v2, :cond_16

    move v2, v1

    goto :goto_16

    :cond_16
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    if-nez v2, :cond_17

    move v2, v1

    goto :goto_17

    :cond_17
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    if-nez v2, :cond_18

    move v2, v1

    goto :goto_18

    :cond_18
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;->hashCode()I

    move-result v2

    :goto_18
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    if-nez v2, :cond_19

    move v2, v1

    goto :goto_19

    :cond_19
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_19
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    if-nez v2, :cond_1a

    move v2, v1

    goto :goto_1a

    :cond_1a
    invoke-virtual {v2}, Lcom/stripe/stripeterminal/external/models/NextAction;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    if-nez v2, :cond_1b

    goto :goto_1b

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1b
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCollectedOffline(Z)V
    .locals 0

    .line 263
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->collectedOffline:Z

    return-void
.end method

.method public final setOfflineBehavior(Lcom/stripe/stripeterminal/external/models/OfflineBehavior;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineBehavior:Lcom/stripe/stripeterminal/external/models/OfflineBehavior;

    return-void
.end method

.method public final setOfflineDetails(Lcom/stripe/stripeterminal/external/models/OfflineDetails;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->offlineDetails:Lcom/stripe/stripeterminal/external/models/OfflineDetails;

    return-void
.end method

.method public final setPaymentMethodData(Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodData:Lcom/stripe/stripeterminal/internal/models/PaymentMethodData;

    .line 246
    sget-object p1, Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;->REQUIRES_CONFIRMATION:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    return-void
.end method

.method public final setStatus(Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PaymentIntent(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountCapturable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountCapturable:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountReceived="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountReceived:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->application:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applicationFeeAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->applicationFeeAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canceledAt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->canceledAt:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cancellationReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->cancellationReason:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", captureMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->captureMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", charges="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->charges:Lcom/stripe/stripeterminal/external/models/ChargesList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clientSecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->clientSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", confirmationMethod="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->confirmationMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", invoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->invoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastPaymentError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->lastPaymentError:Lcom/stripe/stripeterminal/external/api/ApiError;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", livemode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->livemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onBehalfOf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->onBehalfOf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodUnion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodUnion:Lcom/stripe/stripeterminal/external/models/PaymentMethodUnion;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiptEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->receiptEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", review="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->review:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", setupFutureUsage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->setupFutureUsage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statementDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->status:Lcom/stripe/stripeterminal/external/models/PaymentIntentStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transferGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->transferGroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountDetails:Lcom/stripe/stripeterminal/external/models/AmountDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountTip="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountTip:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statementDescriptorSuffix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->statementDescriptorSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodOptions:Lcom/stripe/stripeterminal/external/models/PaymentMethodOptions;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", stripeAccountId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->stripeAccountId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodTypes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->paymentMethodTypes:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", nextAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->nextAction:Lcom/stripe/stripeterminal/external/models/NextAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/PaymentIntent;->amountRequested:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
