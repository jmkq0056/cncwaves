.class public final Lcom/stripe/stripeterminal/external/models/Charge;
.super Ljava/lang/Object;
.source "Charge.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/stripeterminal/external/models/Charge$$serializer;,
        Lcom/stripe/stripeterminal/external/models/Charge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010$\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008U\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0087\u0008\u0018\u0000 \u0092\u00012\u00060\u0001j\u0002`\u0002:\u0004\u0091\u0001\u0092\u0001B\u0089\u0003\u0008\u0011\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\t\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0019\u001a\u00020\u0010\u0012\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b\u0012\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u001e\u001a\u00020\u0010\u0012\n\u0008\u0001\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010!\u001a\u0004\u0018\u00010\"\u0012\u0008\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010&\u001a\u00020\u0010\u0012\u0008\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010.\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010/\u001a\u0004\u0018\u000100\u00a2\u0006\u0002\u00101B\u00af\u0003\u0008\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0010\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0010\u0012\u0016\u0008\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b\u0012\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"\u0012\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u00102J\t\u0010_\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010`\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010a\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010b\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010c\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010d\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010e\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010f\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010g\u001a\u00020\u0010H\u00c6\u0003J\u0017\u0010h\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001bH\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010j\u001a\u00020\tH\u00c6\u0003J\u000b\u0010k\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010l\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010m\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010n\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010o\u001a\u0004\u0018\u00010\"H\u00c6\u0003J\u000b\u0010p\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010q\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010r\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010s\u001a\u00020\u0010H\u00c6\u0003J\u000b\u0010t\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010u\u001a\u00020\tH\u00c6\u0003J\u000b\u0010v\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010w\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010x\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010y\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010z\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010{\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010|\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010}\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u000b\u0010~\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010\u007f\u001a\u00020\tH\u00c6\u0003J\u000c\u0010\u0080\u0001\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\n\u0010\u0081\u0001\u001a\u00020\u0010H\u00c6\u0003J\n\u0010\u0082\u0001\u001a\u00020\tH\u00c6\u0003J\u00b4\u0003\u0010\u0083\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\r\u001a\u00020\t2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0011\u001a\u00020\t2\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0015\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0018\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00102\u0016\u0008\u0002\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00102\n\u0008\u0002\u0010\u001f\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\"2\n\u0008\u0002\u0010#\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010&\u001a\u00020\u00102\n\u0008\u0002\u0010\'\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010(\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010)\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010+\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010,\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010-\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010.\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0016\u0010\u0084\u0001\u001a\u00020\u00102\n\u0010\u0085\u0001\u001a\u0005\u0018\u00010\u0086\u0001H\u00d6\u0003J\n\u0010\u0087\u0001\u001a\u00020\u0004H\u00d6\u0001J\n\u0010\u0088\u0001\u001a\u00020\u0007H\u00d6\u0001J.\u0010\u0089\u0001\u001a\u00030\u008a\u00012\u0007\u0010\u008b\u0001\u001a\u00020\u00002\u0008\u0010\u008c\u0001\u001a\u00030\u008d\u00012\u0008\u0010\u008e\u0001\u001a\u00030\u008f\u0001H\u00c1\u0001\u00a2\u0006\u0003\u0008\u0090\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00083\u00104R\u0011\u0010\n\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00085\u00104R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00086\u00107R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u00107R\u0011\u0010\r\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00089\u00104R\u0013\u0010.\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u00107R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008;\u00107R\u0013\u0010-\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u00107R\u0011\u0010\u000f\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008=\u0010>R\u0011\u0010\u0011\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008?\u00104R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u00107R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008A\u00107R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u00107R\u0013\u0010\u0015\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008C\u00107R\u0013\u0010\u0016\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u00107R\u0013\u0010\u0017\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008E\u00107R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008F\u00107R\u0013\u0010\u0018\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008G\u00107R\u0011\u0010\u0019\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008H\u0010>R\u001f\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008I\u0010JR\u0013\u0010\u001c\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008K\u00107R\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008L\u00107R\u0011\u0010\u001e\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008M\u0010>R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008N\u0010O\u001a\u0004\u0008P\u00107R\u0013\u0010!\u001a\u0004\u0018\u00010\"\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Q\u0010RR\u001e\u0010 \u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008S\u0010O\u001a\u0004\u0008T\u00107R\u0013\u0010#\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008U\u00107R\u0013\u0010$\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008V\u00107R\u0013\u0010%\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008W\u00107R\u0011\u0010&\u001a\u00020\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008X\u0010>R\u0013\u0010\'\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Y\u00107R\u0013\u0010(\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008Z\u00107R\u0013\u0010,\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008[\u00107R\u0013\u0010)\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\\\u00107R\u0013\u0010*\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008]\u00107R\u0013\u0010+\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008^\u00107\u00a8\u0006\u0093\u0001"
    }
    d2 = {
        "Lcom/stripe/stripeterminal/external/models/Charge;",
        "Ljava/io/Serializable;",
        "Lcom/stripe/serialization/KmpSerializable;",
        "seen1",
        "",
        "seen2",
        "id",
        "",
        "amount",
        "",
        "amountRefunded",
        "application",
        "applicationFee",
        "applicationFeeAmount",
        "balanceTransaction",
        "captured",
        "",
        "created",
        "currency",
        "customer",
        "description",
        "dispute",
        "failureCode",
        "failureMessage",
        "invoice",
        "livemode",
        "metadata",
        "",
        "onBehalfOf",
        "order",
        "paid",
        "paymentIntentId",
        "paymentMethodId",
        "paymentMethodDetails",
        "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;",
        "receiptEmail",
        "receiptNumber",
        "receiptUrl",
        "refunded",
        "review",
        "statementDescriptor",
        "status",
        "transfer",
        "transferGroup",
        "statementDescriptorSuffix",
        "calculatedStatementDescriptor",
        "authorizationCode",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V",
        "getAmount",
        "()J",
        "getAmountRefunded",
        "getApplication",
        "()Ljava/lang/String;",
        "getApplicationFee",
        "getApplicationFeeAmount",
        "getAuthorizationCode",
        "getBalanceTransaction",
        "getCalculatedStatementDescriptor",
        "getCaptured",
        "()Z",
        "getCreated",
        "getCurrency",
        "getCustomer",
        "getDescription",
        "getDispute",
        "getFailureCode",
        "getFailureMessage",
        "getId",
        "getInvoice",
        "getLivemode",
        "getMetadata",
        "()Ljava/util/Map;",
        "getOnBehalfOf",
        "getOrder",
        "getPaid",
        "getPaymentIntentId$annotations",
        "()V",
        "getPaymentIntentId",
        "getPaymentMethodDetails",
        "()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;",
        "getPaymentMethodId$annotations",
        "getPaymentMethodId",
        "getReceiptEmail",
        "getReceiptNumber",
        "getReceiptUrl",
        "getRefunded",
        "getReview",
        "getStatementDescriptor",
        "getStatementDescriptorSuffix",
        "getStatus",
        "getTransfer",
        "getTransferGroup",
        "component1",
        "component10",
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
        "equals",
        "other",
        "",
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

.field public static final Companion:Lcom/stripe/stripeterminal/external/models/Charge$Companion;


# instance fields
.field private final amount:J

.field private final amountRefunded:J

.field private final application:Ljava/lang/String;

.field private final applicationFee:Ljava/lang/String;

.field private final applicationFeeAmount:J

.field private final authorizationCode:Ljava/lang/String;

.field private final balanceTransaction:Ljava/lang/String;

.field private final calculatedStatementDescriptor:Ljava/lang/String;

.field private final captured:Z

.field private final created:J

.field private final currency:Ljava/lang/String;

.field private final customer:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final dispute:Ljava/lang/String;

.field private final failureCode:Ljava/lang/String;

.field private final failureMessage:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final invoice:Ljava/lang/String;

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

.field private final onBehalfOf:Ljava/lang/String;

.field private final order:Ljava/lang/String;

.field private final paid:Z

.field private final paymentIntentId:Ljava/lang/String;

.field private final paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

.field private final paymentMethodId:Ljava/lang/String;

.field private final receiptEmail:Ljava/lang/String;

.field private final receiptNumber:Ljava/lang/String;

.field private final receiptUrl:Ljava/lang/String;

.field private final refunded:Z

.field private final review:Ljava/lang/String;

.field private final statementDescriptor:Ljava/lang/String;

.field private final statementDescriptorSuffix:Ljava/lang/String;

.field private final status:Ljava/lang/String;

.field private final transfer:Ljava/lang/String;

.field private final transferGroup:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/stripe/stripeterminal/external/models/Charge$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/stripeterminal/external/models/Charge$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Charge;->Companion:Lcom/stripe/stripeterminal/external/models/Charge$Companion;

    const/16 v0, 0x24

    .line 12
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

    new-instance v2, Lkotlinx/serialization/internal/LinkedHashMapSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v4, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v4, Lkotlinx/serialization/KSerializer;

    invoke-direct {v2, v3, v4}, Lkotlinx/serialization/internal/LinkedHashMapSerializer;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    const/16 v3, 0x11

    aput-object v2, v0, v3

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const/16 v2, 0x13

    aput-object v1, v0, v2

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

    const/16 v2, 0x1a

    aput-object v1, v0, v2

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

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sput-object v0, Lcom/stripe/stripeterminal/external/models/Charge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 4
    .param p28    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "paymentIntent"
        .end annotation
    .end param
    .param p29    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "paymentMethod"
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

    .line 12
    filled-new-array/range {p1 .. p2}, [I

    move-result-object v0

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sget-object v3, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/Charge$$serializer;

    invoke-virtual {v3}, Lcom/stripe/stripeterminal/external/models/Charge$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwArrayMissingFieldException([I[ILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    and-int/lit8 p3, p1, 0x2

    const-wide/16 v2, 0x0

    if-nez p3, :cond_2

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    goto :goto_1

    :cond_2
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    :goto_1
    and-int/lit8 p3, p1, 0x4

    if-nez p3, :cond_3

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    goto :goto_2

    :cond_3
    iput-wide p6, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    :goto_2
    and-int/lit8 p3, p1, 0x8

    const/4 p4, 0x0

    if-nez p3, :cond_4

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iput-object p8, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    :goto_3
    and-int/lit8 p3, p1, 0x10

    if-nez p3, :cond_5

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    goto :goto_4

    :cond_5
    iput-object p9, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    :goto_4
    and-int/lit8 p3, p1, 0x20

    if-nez p3, :cond_6

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    goto :goto_5

    :cond_6
    iput-wide p10, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    :goto_5
    and-int/lit8 p3, p1, 0x40

    if-nez p3, :cond_7

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    goto :goto_6

    :cond_7
    move-object/from16 p3, p12

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    :goto_6
    and-int/lit16 p3, p1, 0x80

    if-nez p3, :cond_8

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    goto :goto_7

    :cond_8
    move/from16 p3, p13

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    :goto_7
    and-int/lit16 p3, p1, 0x100

    if-nez p3, :cond_9

    iput-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    goto :goto_8

    :cond_9
    move-wide/from16 p5, p14

    iput-wide p5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    :goto_8
    and-int/lit16 p3, p1, 0x200

    if-nez p3, :cond_a

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    goto :goto_9

    :cond_a
    move-object/from16 p3, p16

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    :goto_9
    and-int/lit16 p3, p1, 0x400

    if-nez p3, :cond_b

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    goto :goto_a

    :cond_b
    move-object/from16 p3, p17

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    :goto_a
    and-int/lit16 p3, p1, 0x800

    if-nez p3, :cond_c

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    goto :goto_b

    :cond_c
    move-object/from16 p3, p18

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    :goto_b
    and-int/lit16 p3, p1, 0x1000

    if-nez p3, :cond_d

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    goto :goto_c

    :cond_d
    move-object/from16 p3, p19

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    :goto_c
    and-int/lit16 p3, p1, 0x2000

    if-nez p3, :cond_e

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    goto :goto_d

    :cond_e
    move-object/from16 p3, p20

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    :goto_d
    and-int/lit16 p3, p1, 0x4000

    if-nez p3, :cond_f

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    goto :goto_e

    :cond_f
    move-object/from16 p3, p21

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    :goto_e
    const p3, 0x8000

    and-int/2addr p3, p1

    if-nez p3, :cond_10

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    goto :goto_f

    :cond_10
    move-object/from16 p3, p22

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    :goto_f
    const/high16 p3, 0x10000

    and-int/2addr p3, p1

    if-nez p3, :cond_11

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    goto :goto_10

    :cond_11
    move/from16 p3, p23

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    :goto_10
    const/high16 p3, 0x20000

    and-int/2addr p3, p1

    if-nez p3, :cond_12

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    goto :goto_11

    :cond_12
    move-object/from16 p3, p24

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    :goto_11
    const/high16 p3, 0x40000

    and-int/2addr p3, p1

    if-nez p3, :cond_13

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    goto :goto_12

    :cond_13
    move-object/from16 p3, p25

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    :goto_12
    const/high16 p3, 0x80000

    and-int/2addr p3, p1

    if-nez p3, :cond_14

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    goto :goto_13

    :cond_14
    move-object/from16 p3, p26

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    :goto_13
    const/high16 p3, 0x100000

    and-int/2addr p3, p1

    if-nez p3, :cond_15

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    goto :goto_14

    :cond_15
    move/from16 p3, p27

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    :goto_14
    const/high16 p3, 0x200000

    and-int/2addr p3, p1

    if-nez p3, :cond_16

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    goto :goto_15

    :cond_16
    move-object/from16 p3, p28

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    :goto_15
    const/high16 p3, 0x400000

    and-int/2addr p3, p1

    if-nez p3, :cond_17

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    goto :goto_16

    :cond_17
    move-object/from16 p3, p29

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    :goto_16
    const/high16 p3, 0x800000

    and-int/2addr p3, p1

    if-nez p3, :cond_18

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    goto :goto_17

    :cond_18
    move-object/from16 p3, p30

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    :goto_17
    const/high16 p3, 0x1000000

    and-int/2addr p3, p1

    if-nez p3, :cond_19

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    goto :goto_18

    :cond_19
    move-object/from16 p3, p31

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    :goto_18
    const/high16 p3, 0x2000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1a

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    goto :goto_19

    :cond_1a
    move-object/from16 p3, p32

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    :goto_19
    const/high16 p3, 0x4000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1b

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    goto :goto_1a

    :cond_1b
    move-object/from16 p3, p33

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    :goto_1a
    const/high16 p3, 0x8000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1c

    iput-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    goto :goto_1b

    :cond_1c
    move/from16 p3, p34

    iput-boolean p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    :goto_1b
    const/high16 p3, 0x10000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1d

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    goto :goto_1c

    :cond_1d
    move-object/from16 p3, p35

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    :goto_1c
    const/high16 p3, 0x20000000

    and-int/2addr p3, p1

    if-nez p3, :cond_1e

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    goto :goto_1d

    :cond_1e
    move-object/from16 p3, p36

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    :goto_1d
    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p1

    if-nez p3, :cond_1f

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    goto :goto_1e

    :cond_1f
    move-object/from16 p3, p37

    iput-object p3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    :goto_1e
    const/high16 p3, -0x80000000

    and-int/2addr p1, p3

    if-nez p1, :cond_20

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    goto :goto_1f

    :cond_20
    move-object/from16 p1, p38

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    :goto_1f
    and-int/lit8 p1, p2, 0x1

    if-nez p1, :cond_21

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    goto :goto_20

    :cond_21
    move-object/from16 p1, p39

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    :goto_20
    and-int/lit8 p1, p2, 0x2

    if-nez p1, :cond_22

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    goto :goto_21

    :cond_22
    move-object/from16 p1, p40

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    :goto_21
    and-int/lit8 p1, p2, 0x4

    if-nez p1, :cond_23

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    goto :goto_22

    :cond_23
    move-object/from16 p1, p41

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    :goto_22
    and-int/lit8 p1, p2, 0x8

    if-nez p1, :cond_24

    iput-object p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    return-void

    :cond_24
    move-object/from16 p1, p42

    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    .line 23
    iput-wide p2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    .line 29
    iput-wide p4, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    .line 34
    iput-object p6, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    .line 39
    iput-object p7, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    .line 44
    iput-wide p8, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    .line 50
    iput-object p10, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    .line 56
    iput-boolean p11, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    .line 61
    iput-wide p12, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    .line 66
    iput-object p14, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    move-object/from16 p1, p15

    .line 71
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    move-object/from16 p1, p16

    .line 76
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    move-object/from16 p1, p17

    .line 81
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    move-object/from16 p1, p18

    .line 86
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    move-object/from16 p1, p19

    .line 91
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    move-object/from16 p1, p20

    .line 96
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    move/from16 p1, p21

    .line 102
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    move-object/from16 p1, p22

    .line 108
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    move-object/from16 p1, p23

    .line 114
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    move-object/from16 p1, p24

    .line 119
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    move/from16 p1, p25

    .line 124
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    move-object/from16 p1, p26

    .line 129
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    move-object/from16 p1, p27

    .line 135
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    move-object/from16 p1, p28

    .line 141
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    move-object/from16 p1, p29

    .line 146
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    move-object/from16 p1, p30

    .line 152
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    move-object/from16 p1, p31

    .line 159
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    move/from16 p1, p32

    .line 165
    iput-boolean p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    move-object/from16 p1, p33

    .line 170
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    move-object/from16 p1, p34

    .line 176
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    move-object/from16 p1, p35

    .line 181
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    move-object/from16 p1, p36

    .line 187
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    move-object/from16 p1, p37

    .line 192
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    move-object/from16 p1, p38

    .line 198
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    move-object/from16 p1, p39

    .line 204
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    move-object/from16 p1, p40

    .line 209
    iput-object p1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 36

    move/from16 v0, p41

    and-int/lit8 v1, v0, 0x2

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    move-wide v6, v2

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v1, p6

    :goto_2
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v9, p7

    :goto_3
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_4

    move-wide v10, v2

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p8

    :goto_4
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_5

    const/4 v12, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p10

    :goto_5
    and-int/lit16 v13, v0, 0x80

    if-eqz v13, :cond_6

    const/4 v13, 0x0

    goto :goto_6

    :cond_6
    move/from16 v13, p11

    :goto_6
    and-int/lit16 v15, v0, 0x100

    if-eqz v15, :cond_7

    goto :goto_7

    :cond_7
    move-wide/from16 v2, p12

    :goto_7
    and-int/lit16 v15, v0, 0x200

    if-eqz v15, :cond_8

    const/4 v15, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v15, p14

    :goto_8
    and-int/lit16 v8, v0, 0x400

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v8, p15

    :goto_9
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_a

    const/4 v14, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v14, p16

    :goto_a
    move-object/from16 p4, v1

    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v1, p17

    :goto_b
    move-object/from16 p5, v1

    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v1, p18

    :goto_c
    move-object/from16 p6, v1

    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v1, p19

    :goto_d
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_e

    const/16 v16, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v16, p20

    :goto_e
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_f

    const/16 v17, 0x0

    goto :goto_f

    :cond_f
    move/from16 v17, p21

    :goto_f
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const/16 v18, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v18, p22

    :goto_10
    const/high16 v19, 0x40000

    and-int v19, v0, v19

    if-eqz v19, :cond_11

    const/16 v19, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v19, p23

    :goto_11
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_12

    const/16 v20, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v20, p24

    :goto_12
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_13

    const/16 v21, 0x0

    goto :goto_13

    :cond_13
    move/from16 v21, p25

    :goto_13
    const/high16 v22, 0x200000

    and-int v22, v0, v22

    if-eqz v22, :cond_14

    const/16 v22, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v22, p26

    :goto_14
    const/high16 v23, 0x400000

    and-int v23, v0, v23

    if-eqz v23, :cond_15

    const/16 v23, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v23, p27

    :goto_15
    const/high16 v24, 0x800000

    and-int v24, v0, v24

    if-eqz v24, :cond_16

    const/16 v24, 0x0

    goto :goto_16

    :cond_16
    move-object/from16 v24, p28

    :goto_16
    const/high16 v25, 0x1000000

    and-int v25, v0, v25

    if-eqz v25, :cond_17

    const/16 v25, 0x0

    goto :goto_17

    :cond_17
    move-object/from16 v25, p29

    :goto_17
    const/high16 v26, 0x2000000

    and-int v26, v0, v26

    if-eqz v26, :cond_18

    const/16 v26, 0x0

    goto :goto_18

    :cond_18
    move-object/from16 v26, p30

    :goto_18
    const/high16 v27, 0x4000000

    and-int v27, v0, v27

    if-eqz v27, :cond_19

    const/16 v27, 0x0

    goto :goto_19

    :cond_19
    move-object/from16 v27, p31

    :goto_19
    const/high16 v28, 0x8000000

    and-int v28, v0, v28

    if-eqz v28, :cond_1a

    const/16 v28, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v28, p32

    :goto_1a
    const/high16 v29, 0x10000000

    and-int v29, v0, v29

    if-eqz v29, :cond_1b

    const/16 v29, 0x0

    goto :goto_1b

    :cond_1b
    move-object/from16 v29, p33

    :goto_1b
    const/high16 v30, 0x20000000

    and-int v30, v0, v30

    if-eqz v30, :cond_1c

    const/16 v30, 0x0

    goto :goto_1c

    :cond_1c
    move-object/from16 v30, p34

    :goto_1c
    const/high16 v31, 0x40000000    # 2.0f

    and-int v31, v0, v31

    if-eqz v31, :cond_1d

    const/16 v31, 0x0

    goto :goto_1d

    :cond_1d
    move-object/from16 v31, p35

    :goto_1d
    const/high16 v32, -0x80000000

    and-int v0, v0, v32

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1e
    move-object/from16 v0, p36

    :goto_1e
    and-int/lit8 v32, p42, 0x1

    if-eqz v32, :cond_1f

    const/16 v32, 0x0

    goto :goto_1f

    :cond_1f
    move-object/from16 v32, p37

    :goto_1f
    and-int/lit8 v33, p42, 0x2

    if-eqz v33, :cond_20

    const/16 v33, 0x0

    goto :goto_20

    :cond_20
    move-object/from16 v33, p38

    :goto_20
    and-int/lit8 v34, p42, 0x4

    if-eqz v34, :cond_21

    const/16 v34, 0x0

    goto :goto_21

    :cond_21
    move-object/from16 v34, p39

    :goto_21
    and-int/lit8 v35, p42, 0x8

    if-eqz v35, :cond_22

    const/16 p42, 0x0

    goto :goto_22

    :cond_22
    move-object/from16 p42, p40

    :goto_22
    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p8, p4

    move-object/from16 p19, p5

    move-object/from16 p20, p6

    move-object/from16 p38, v0

    move-object/from16 p21, v1

    move-wide/from16 p14, v2

    move-wide/from16 p4, v4

    move-wide/from16 p6, v6

    move-object/from16 p17, v8

    move-object/from16 p9, v9

    move-wide/from16 p10, v10

    move-object/from16 p12, v12

    move/from16 p13, v13

    move-object/from16 p18, v14

    move-object/from16 p16, v15

    move-object/from16 p22, v16

    move/from16 p23, v17

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

    move/from16 p34, v28

    move-object/from16 p35, v29

    move-object/from16 p36, v30

    move-object/from16 p37, v31

    move-object/from16 p39, v32

    move-object/from16 p40, v33

    move-object/from16 p41, v34

    .line 13
    invoke-direct/range {p2 .. p42}, Lcom/stripe/stripeterminal/external/models/Charge;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$get$childSerializers$cp()[Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 12
    sget-object v0, Lcom/stripe/stripeterminal/external/models/Charge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/stripe/stripeterminal/external/models/Charge;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/stripe/stripeterminal/external/models/Charge;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p41

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-wide v3, v0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v1, 0x4

    if-eqz v5, :cond_2

    iget-wide v5, v0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    goto :goto_2

    :cond_2
    move-wide/from16 v5, p4

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget-object v7, v0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-wide v9, v0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p8

    :goto_5
    and-int/lit8 v11, v1, 0x40

    if-eqz v11, :cond_6

    iget-object v11, v0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v11, p10

    :goto_6
    and-int/lit16 v12, v1, 0x80

    if-eqz v12, :cond_7

    iget-boolean v12, v0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    goto :goto_7

    :cond_7
    move/from16 v12, p11

    :goto_7
    and-int/lit16 v13, v1, 0x100

    if-eqz v13, :cond_8

    iget-wide v13, v0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p12

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    iget-object v15, v0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v15, p14

    :goto_9
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_a

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v2, p15

    :goto_a
    move-object/from16 p2, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    goto :goto_b

    :cond_b
    move-object/from16 v2, p16

    :goto_b
    move-object/from16 p3, v2

    and-int/lit16 v2, v1, 0x1000

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    goto :goto_c

    :cond_c
    move-object/from16 v2, p17

    :goto_c
    move-object/from16 p4, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_d

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v2, p18

    :goto_d
    move-object/from16 p5, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-object v2, v0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    goto :goto_e

    :cond_e
    move-object/from16 v2, p19

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    if-eqz v16, :cond_f

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p20

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, p41, v16

    move-object/from16 p6, v1

    if-eqz v16, :cond_10

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p21

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, p41, v16

    move/from16 p7, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    goto :goto_11

    :cond_11
    move-object/from16 v1, p22

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, p41, v16

    move-object/from16 p8, v1

    if-eqz v16, :cond_12

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    goto :goto_12

    :cond_12
    move-object/from16 v1, p23

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, p41, v16

    move-object/from16 p9, v1

    if-eqz v16, :cond_13

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v1, p24

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, p41, v16

    move-object/from16 p10, v1

    if-eqz v16, :cond_14

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    goto :goto_14

    :cond_14
    move/from16 v1, p25

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, p41, v16

    move/from16 p11, v1

    if-eqz v16, :cond_15

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p26

    :goto_15
    const/high16 v16, 0x400000

    and-int v16, p41, v16

    move-object/from16 p12, v1

    if-eqz v16, :cond_16

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    goto :goto_16

    :cond_16
    move-object/from16 v1, p27

    :goto_16
    const/high16 v16, 0x800000

    and-int v16, p41, v16

    move-object/from16 p13, v1

    if-eqz v16, :cond_17

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    goto :goto_17

    :cond_17
    move-object/from16 v1, p28

    :goto_17
    const/high16 v16, 0x1000000

    and-int v16, p41, v16

    move-object/from16 p14, v1

    if-eqz v16, :cond_18

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    goto :goto_18

    :cond_18
    move-object/from16 v1, p29

    :goto_18
    const/high16 v16, 0x2000000

    and-int v16, p41, v16

    move-object/from16 p15, v1

    if-eqz v16, :cond_19

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    goto :goto_19

    :cond_19
    move-object/from16 v1, p30

    :goto_19
    const/high16 v16, 0x4000000

    and-int v16, p41, v16

    move-object/from16 p16, v1

    if-eqz v16, :cond_1a

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    goto :goto_1a

    :cond_1a
    move-object/from16 v1, p31

    :goto_1a
    const/high16 v16, 0x8000000

    and-int v16, p41, v16

    move-object/from16 p17, v1

    if-eqz v16, :cond_1b

    iget-boolean v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    goto :goto_1b

    :cond_1b
    move/from16 v1, p32

    :goto_1b
    const/high16 v16, 0x10000000

    and-int v16, p41, v16

    move/from16 p18, v1

    if-eqz v16, :cond_1c

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    goto :goto_1c

    :cond_1c
    move-object/from16 v1, p33

    :goto_1c
    const/high16 v16, 0x20000000

    and-int v16, p41, v16

    move-object/from16 p19, v1

    if-eqz v16, :cond_1d

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    goto :goto_1d

    :cond_1d
    move-object/from16 v1, p34

    :goto_1d
    const/high16 v16, 0x40000000    # 2.0f

    and-int v16, p41, v16

    move-object/from16 p20, v1

    if-eqz v16, :cond_1e

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    goto :goto_1e

    :cond_1e
    move-object/from16 v1, p35

    :goto_1e
    const/high16 v16, -0x80000000

    and-int v16, p41, v16

    move-object/from16 p21, v1

    if-eqz v16, :cond_1f

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    goto :goto_1f

    :cond_1f
    move-object/from16 v1, p36

    :goto_1f
    and-int/lit8 v16, p42, 0x1

    move-object/from16 p22, v1

    if-eqz v16, :cond_20

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    goto :goto_20

    :cond_20
    move-object/from16 v1, p37

    :goto_20
    and-int/lit8 v16, p42, 0x2

    move-object/from16 p23, v1

    if-eqz v16, :cond_21

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    goto :goto_21

    :cond_21
    move-object/from16 v1, p38

    :goto_21
    and-int/lit8 v16, p42, 0x4

    move-object/from16 p24, v1

    if-eqz v16, :cond_22

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    goto :goto_22

    :cond_22
    move-object/from16 v1, p39

    :goto_22
    and-int/lit8 v16, p42, 0x8

    if-eqz v16, :cond_23

    move-object/from16 p25, v1

    iget-object v1, v0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    move-object/from16 p40, p25

    move-object/from16 p41, v1

    move/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move-object/from16 p38, p23

    move-object/from16 p39, p24

    move-object/from16 p20, v2

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-wide/from16 p13, v13

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p21, p6

    move/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    move-object/from16 p25, p10

    goto :goto_23

    :cond_23
    move-object/from16 p41, p40

    move-object/from16 p40, v1

    move-object/from16 p25, p10

    move/from16 p26, p11

    move-object/from16 p27, p12

    move-object/from16 p28, p13

    move-object/from16 p29, p14

    move-object/from16 p30, p15

    move-object/from16 p31, p16

    move-object/from16 p32, p17

    move/from16 p33, p18

    move-object/from16 p34, p19

    move-object/from16 p35, p20

    move-object/from16 p36, p21

    move-object/from16 p37, p22

    move-object/from16 p38, p23

    move-object/from16 p39, p24

    move-object/from16 p20, v2

    move-object/from16 p11, v11

    move/from16 p12, v12

    move-wide/from16 p13, v13

    move-object/from16 p15, v15

    move-object/from16 p16, p2

    move-object/from16 p17, p3

    move-object/from16 p18, p4

    move-object/from16 p19, p5

    move-object/from16 p21, p6

    move/from16 p22, p7

    move-object/from16 p23, p8

    move-object/from16 p24, p9

    :goto_23
    move-wide/from16 p3, v3

    move-wide/from16 p5, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-wide/from16 p9, v9

    move-object/from16 p2, p1

    move-object/from16 p1, v0

    invoke-virtual/range {p1 .. p41}, Lcom/stripe/stripeterminal/external/models/Charge;->copy(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Charge;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getPaymentIntentId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paymentIntent"
    .end annotation

    return-void
.end method

.method public static synthetic getPaymentMethodId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "paymentMethod"
    .end annotation

    return-void
.end method

.method public static final synthetic write$Self$public_release(Lcom/stripe/stripeterminal/external/models/Charge;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 12
    sget-object v0, Lcom/stripe/stripeterminal/external/models/Charge;->$childSerializers:[Lkotlinx/serialization/KSerializer;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_1

    :goto_0
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_1
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    :goto_1
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_3
    const/4 v1, 0x3

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    if-eqz v2, :cond_5

    :goto_2
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_5
    const/4 v1, 0x4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_3
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_7
    const/4 v1, 0x5

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_9

    :goto_4
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    invoke-interface {p1, p2, v1, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_9
    const/4 v1, 0x6

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    if-eqz v2, :cond_b

    :goto_5
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_b
    const/4 v1, 0x7

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    if-eqz v2, :cond_d

    :goto_6
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_d
    const/16 v1, 0x8

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_7

    :cond_e
    iget-wide v5, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_f

    :goto_7
    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_f
    const/16 v1, 0x9

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    if-eqz v2, :cond_11

    :goto_8
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_11
    const/16 v1, 0xa

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_9
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_13
    const/16 v1, 0xb

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_14

    goto :goto_a

    :cond_14
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_a
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_15
    const/16 v1, 0xc

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_b

    :cond_16
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    if-eqz v2, :cond_17

    :goto_b
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_17
    const/16 v1, 0xd

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_c

    :cond_18
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_c
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_19
    const/16 v1, 0xe

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1a

    goto :goto_d

    :cond_1a
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_d
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1b
    const/16 v1, 0xf

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_e

    :cond_1c
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    if-eqz v2, :cond_1d

    :goto_e
    sget-object v2, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v2, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_1d
    const/16 v1, 0x10

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_f

    :cond_1e
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    if-eqz v2, :cond_1f

    :goto_f
    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    invoke-interface {p1, p2, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_1f
    const/16 v1, 0x11

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_10

    :cond_20
    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    if-eqz v2, :cond_21

    :goto_10
    aget-object v0, v0, v1

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    invoke-interface {p1, p2, v1, v0, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_21
    const/16 v0, 0x12

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_22

    goto :goto_11

    :cond_22
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    if-eqz v1, :cond_23

    :goto_11
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_23
    const/16 v0, 0x13

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_12

    :cond_24
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    if-eqz v1, :cond_25

    :goto_12
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_25
    const/16 v0, 0x14

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_26

    goto :goto_13

    :cond_26
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    if-eqz v1, :cond_27

    :goto_13
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_27
    const/16 v0, 0x15

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_14

    :cond_28
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    if-eqz v1, :cond_29

    :goto_14
    sget-object v1, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_29
    const/16 v0, 0x16

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    goto :goto_15

    :cond_2a
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    if-eqz v0, :cond_2b

    :goto_15
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    const/16 v2, 0x16

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2b
    const/16 v0, 0x17

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_16

    :cond_2c
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    if-eqz v0, :cond_2d

    :goto_16
    sget-object v0, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;->INSTANCE:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    const/16 v2, 0x17

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2d
    const/16 v0, 0x18

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_2e

    goto :goto_17

    :cond_2e
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    if-eqz v0, :cond_2f

    :goto_17
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    const/16 v2, 0x18

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_2f
    const/16 v0, 0x19

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_18

    :cond_30
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    if-eqz v0, :cond_31

    :goto_18
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    const/16 v2, 0x19

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_31
    const/16 v0, 0x1a

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_19

    :cond_32
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    if-eqz v0, :cond_33

    :goto_19
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    const/16 v2, 0x1a

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_33
    const/16 v0, 0x1b

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_1a

    :cond_34
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    if-eqz v0, :cond_35

    :goto_1a
    const/16 v0, 0x1b

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_35
    const/16 v0, 0x1c

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_1b

    :cond_36
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    if-eqz v0, :cond_37

    :goto_1b
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    const/16 v2, 0x1c

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_37
    const/16 v0, 0x1d

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_1c

    :cond_38
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_39

    :goto_1c
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    const/16 v2, 0x1d

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_39
    const/16 v0, 0x1e

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    goto :goto_1d

    :cond_3a
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    if-eqz v0, :cond_3b

    :goto_1d
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    const/16 v2, 0x1e

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3b
    const/16 v0, 0x1f

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_1e

    :cond_3c
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    if-eqz v0, :cond_3d

    :goto_1e
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3d
    const/16 v0, 0x20

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_1f

    :cond_3e
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    if-eqz v0, :cond_3f

    :goto_1f
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3f
    const/16 v0, 0x21

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_40

    goto :goto_20

    :cond_40
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    if-eqz v0, :cond_41

    :goto_20
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    const/16 v2, 0x21

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_41
    const/16 v0, 0x22

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_21

    :cond_42
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    if-eqz v0, :cond_43

    :goto_21
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    const/16 v2, 0x22

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_43
    const/16 v0, 0x23

    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_22

    :cond_44
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    if-eqz v0, :cond_45

    :goto_22
    sget-object v0, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v0, Lkotlinx/serialization/SerializationStrategy;

    iget-object p0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_45
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component13()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component15()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final component16()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    return-object v0
.end method

.method public final component17()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    return v0
.end method

.method public final component18()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final component19()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    return-wide v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    return v0
.end method

.method public final component22()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final component23()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final component24()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    return-object v0
.end method

.method public final component25()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final component26()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component27()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component28()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    return v0
.end method

.method public final component29()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    return-wide v0
.end method

.method public final component30()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final component31()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component32()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    return-object v0
.end method

.method public final component33()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    return-object v0
.end method

.method public final component34()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final component35()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final component36()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    return-wide v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Z
    .locals 1

    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    return v0
.end method

.method public final component9()J
    .locals 2

    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/stripe/stripeterminal/external/models/Charge;
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "ZJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/stripe/stripeterminal/external/models/Charge;"
        }
    .end annotation

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/stripe/stripeterminal/external/models/Charge;

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    move-object/from16 v21, p20

    move/from16 v22, p21

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

    move/from16 v33, p32

    move-object/from16 v34, p33

    move-object/from16 v35, p34

    move-object/from16 v36, p35

    move-object/from16 v37, p36

    move-object/from16 v38, p37

    move-object/from16 v39, p38

    move-object/from16 v40, p39

    move-object/from16 v41, p40

    invoke-direct/range {v1 .. v41}, Lcom/stripe/stripeterminal/external/models/Charge;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;JLjava/lang/String;ZJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Map;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/stripe/stripeterminal/external/models/Charge;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/stripe/stripeterminal/external/models/Charge;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    iget-wide v5, p1, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    :cond_11
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    return v2

    :cond_19
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    return v2

    :cond_1c
    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    iget-boolean v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v2

    :cond_20
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    return v2

    :cond_21
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    iget-object v3, p1, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    return v2

    :cond_24
    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    return v2

    :cond_25
    return v0
.end method

.method public final getAmount()J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    return-wide v0
.end method

.method public final getAmountRefunded()J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    return-wide v0
.end method

.method public final getApplication()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationFee()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    return-object v0
.end method

.method public final getApplicationFeeAmount()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    return-wide v0
.end method

.method public final getAuthorizationCode()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getBalanceTransaction()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    return-object v0
.end method

.method public final getCalculatedStatementDescriptor()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getCaptured()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    return v0
.end method

.method public final getCreated()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    return-wide v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getCustomer()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDispute()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailureCode()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getFailureMessage()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInvoice()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    return-object v0
.end method

.method public final getLivemode()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

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

    .line 108
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    return-object v0
.end method

.method public final getOnBehalfOf()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrder()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaid()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    return v0
.end method

.method public final getPaymentIntentId()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPaymentMethodDetails()Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    return-object v0
.end method

.method public final getPaymentMethodId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiptEmail()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiptNumber()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiptUrl()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefunded()Z
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    return v0
.end method

.method public final getReview()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptor()Ljava/lang/String;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatementDescriptorSuffix()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransfer()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferGroup()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    invoke-static {v3, v4}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_7
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    if-nez v1, :cond_8

    move v1, v2

    goto :goto_8

    :cond_8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_8
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    if-nez v1, :cond_9

    move v1, v2

    goto :goto_9

    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    if-nez v1, :cond_a

    move v1, v2

    goto :goto_a

    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_a
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    if-nez v1, :cond_b

    move v1, v2

    goto :goto_b

    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_c

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_c
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    if-nez v1, :cond_d

    move v1, v2

    goto :goto_d

    :cond_d
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_d
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    if-nez v1, :cond_e

    move v1, v2

    goto :goto_e

    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_e
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    if-nez v1, :cond_f

    move v1, v2

    goto :goto_f

    :cond_f
    invoke-virtual {v1}, Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;->hashCode()I

    move-result v1

    :goto_f
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_10

    :cond_10
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_10
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    if-nez v1, :cond_11

    move v1, v2

    goto :goto_11

    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    if-nez v1, :cond_12

    move v1, v2

    goto :goto_12

    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_12
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_13

    :cond_13
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_13
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_14

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_14
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    if-nez v1, :cond_15

    move v1, v2

    goto :goto_15

    :cond_15
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    if-nez v1, :cond_16

    move v1, v2

    goto :goto_16

    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    if-nez v1, :cond_17

    move v1, v2

    goto :goto_17

    :cond_17
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_18

    :cond_18
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    if-nez v1, :cond_19

    move v1, v2

    goto :goto_19

    :cond_19
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_19
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    if-nez v1, :cond_1a

    goto :goto_1a

    :cond_1a
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1a
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Charge(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", amountRefunded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->amountRefunded:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", application="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->application:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applicationFee="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFee:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", applicationFeeAmount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->applicationFeeAmount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", balanceTransaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->balanceTransaction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", captured="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->captured:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", created="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->created:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", customer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->customer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dispute="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->dispute:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", failureMessage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->failureMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", invoice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->invoice:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", livemode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->livemode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metadata="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->metadata:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", onBehalfOf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->onBehalfOf:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->order:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentIntentId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentIntentId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", paymentMethodId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentMethodDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->paymentMethodDetails:Lcom/stripe/stripeterminal/external/models/PaymentMethodDetails;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiptEmail="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptEmail:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiptNumber="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", receiptUrl="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->receiptUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", refunded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->refunded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", review="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->review:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statementDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->status:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transfer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transfer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", transferGroup="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->transferGroup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statementDescriptorSuffix="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->statementDescriptorSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", calculatedStatementDescriptor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/stripe/stripeterminal/external/models/Charge;->calculatedStatementDescriptor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", authorizationCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/stripe/stripeterminal/external/models/Charge;->authorizationCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
