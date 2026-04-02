.class public final Lcom/stripe/proto/model/config/ReaderFeatureFlags;
.super Lcom/squareup/wire/Message;
.source "ReaderFeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;,
        Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;,
        Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008U\n\u0002\u0018\u0002\n\u0002\u0008,\n\u0002\u0018\u0002\n\u0002\u0008\u001e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00b3\u00012\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u00020\u0001:\u0006\u00b1\u0001\u00b2\u0001\u00b3\u0001B\u00d1\n\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010$\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010%\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010&\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010(\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010)\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010*\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010+\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010,\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010-\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010.\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010/\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00100\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00101\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00102\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00103\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00104\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00105\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00106\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00107\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00108\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u00109\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010:\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010;\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010<\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010=\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010>\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010?\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010@\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010A\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010B\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010C\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010D\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010E\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010F\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010G\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010H\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010I\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010J\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010K\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010L\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010M\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010N\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010O\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010P\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010Q\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010R\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010S\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010T\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010U\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010V\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010W\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010X\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010Y\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010Z\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010[\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\\\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010]\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010_\u0012\u0008\u0008\u0002\u0010`\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010a\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010b\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010c\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010d\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010e\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010f\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010g\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010h\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010i\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010j\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010k\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010l\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010m\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010n\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010o\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010p\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010q\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010r\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010s\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010t\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010u\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010v\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010w\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010x\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010y\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010z\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010{\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010|\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010}\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010~\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0081\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0082\u0001\u001a\u00020\t\u0012\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0086\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020\u0004\u0012\t\u0008\u0002\u0010\u0088\u0001\u001a\u00020\t\u0012\t\u0008\u0002\u0010\u0089\u0001\u001a\u00020\t\u0012\t\u0008\u0002\u0010\u008a\u0001\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u008b\u0001\u001a\u00030\u008c\u0001\u00a2\u0006\u0003\u0010\u008d\u0001J\u00d2\n\u0010\u00a8\u0001\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\r\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u00042\u0008\u0008\u0002\u0010 \u001a\u00020\u00042\u0008\u0008\u0002\u0010!\u001a\u00020\u00042\u0008\u0008\u0002\u0010\"\u001a\u00020\u00042\u0008\u0008\u0002\u0010#\u001a\u00020\u00042\u0008\u0008\u0002\u0010$\u001a\u00020\u00042\u0008\u0008\u0002\u0010%\u001a\u00020\u00042\u0008\u0008\u0002\u0010&\u001a\u00020\u00042\u0008\u0008\u0002\u0010\'\u001a\u00020\u00042\u0008\u0008\u0002\u0010(\u001a\u00020\u00042\u0008\u0008\u0002\u0010)\u001a\u00020\u00042\u0008\u0008\u0002\u0010*\u001a\u00020\u00042\u0008\u0008\u0002\u0010+\u001a\u00020\u00042\u0008\u0008\u0002\u0010,\u001a\u00020\u00042\u0008\u0008\u0002\u0010-\u001a\u00020\u00042\u0008\u0008\u0002\u0010.\u001a\u00020\u00042\u0008\u0008\u0002\u0010/\u001a\u00020\u00042\u0008\u0008\u0002\u00100\u001a\u00020\u00042\u0008\u0008\u0002\u00101\u001a\u00020\u00042\u0008\u0008\u0002\u00102\u001a\u00020\u00042\u0008\u0008\u0002\u00103\u001a\u00020\u00042\u0008\u0008\u0002\u00104\u001a\u00020\u00042\u0008\u0008\u0002\u00105\u001a\u00020\u00042\u0008\u0008\u0002\u00106\u001a\u00020\u00042\u0008\u0008\u0002\u00107\u001a\u00020\u00042\u0008\u0008\u0002\u00108\u001a\u00020\u00042\u0008\u0008\u0002\u00109\u001a\u00020\u00042\u0008\u0008\u0002\u0010:\u001a\u00020\u00042\u0008\u0008\u0002\u0010;\u001a\u00020\u00042\u0008\u0008\u0002\u0010<\u001a\u00020\u00042\u0008\u0008\u0002\u0010=\u001a\u00020\u00042\u0008\u0008\u0002\u0010>\u001a\u00020\u00042\u0008\u0008\u0002\u0010?\u001a\u00020\u00042\u0008\u0008\u0002\u0010@\u001a\u00020\u00042\u0008\u0008\u0002\u0010A\u001a\u00020\t2\u0008\u0008\u0002\u0010B\u001a\u00020\u00042\u0008\u0008\u0002\u0010C\u001a\u00020\u00042\u0008\u0008\u0002\u0010D\u001a\u00020\u00042\u0008\u0008\u0002\u0010E\u001a\u00020\u00042\u0008\u0008\u0002\u0010F\u001a\u00020\u00042\u0008\u0008\u0002\u0010G\u001a\u00020\u00042\u0008\u0008\u0002\u0010H\u001a\u00020\t2\u0008\u0008\u0002\u0010I\u001a\u00020\t2\u0008\u0008\u0002\u0010J\u001a\u00020\u00042\u0008\u0008\u0002\u0010K\u001a\u00020\t2\u0008\u0008\u0002\u0010L\u001a\u00020\u00042\u0008\u0008\u0002\u0010M\u001a\u00020\u00042\u0008\u0008\u0002\u0010N\u001a\u00020\u00042\u0008\u0008\u0002\u0010O\u001a\u00020\u00042\u0008\u0008\u0002\u0010P\u001a\u00020\u00042\u0008\u0008\u0002\u0010Q\u001a\u00020\u00042\u0008\u0008\u0002\u0010R\u001a\u00020\u00042\u0008\u0008\u0002\u0010S\u001a\u00020\t2\u0008\u0008\u0002\u0010T\u001a\u00020\u00042\u0008\u0008\u0002\u0010U\u001a\u00020\u00042\u0008\u0008\u0002\u0010V\u001a\u00020\t2\u0008\u0008\u0002\u0010W\u001a\u00020\u00042\u0008\u0008\u0002\u0010X\u001a\u00020\t2\u0008\u0008\u0002\u0010Y\u001a\u00020\u00042\u0008\u0008\u0002\u0010Z\u001a\u00020\u00042\u0008\u0008\u0002\u0010[\u001a\u00020\t2\u0008\u0008\u0002\u0010\\\u001a\u00020\t2\u0008\u0008\u0002\u0010]\u001a\u00020\u00042\n\u0008\u0002\u0010^\u001a\u0004\u0018\u00010_2\u0008\u0008\u0002\u0010`\u001a\u00020\u00042\u0008\u0008\u0002\u0010a\u001a\u00020\u00042\u0008\u0008\u0002\u0010b\u001a\u00020\u00042\u0008\u0008\u0002\u0010c\u001a\u00020\u00042\u0008\u0008\u0002\u0010d\u001a\u00020\u00042\u0008\u0008\u0002\u0010e\u001a\u00020\u00042\u0008\u0008\u0002\u0010f\u001a\u00020\u00042\u0008\u0008\u0002\u0010g\u001a\u00020\u00042\u0008\u0008\u0002\u0010h\u001a\u00020\u00042\u0008\u0008\u0002\u0010i\u001a\u00020\u00042\u0008\u0008\u0002\u0010j\u001a\u00020\u00042\u0008\u0008\u0002\u0010k\u001a\u00020\u00042\u0008\u0008\u0002\u0010l\u001a\u00020\u00042\u0008\u0008\u0002\u0010m\u001a\u00020\u00042\u0008\u0008\u0002\u0010n\u001a\u00020\u00042\u0008\u0008\u0002\u0010o\u001a\u00020\u00042\u0008\u0008\u0002\u0010p\u001a\u00020\u00042\u0008\u0008\u0002\u0010q\u001a\u00020\u00042\u0008\u0008\u0002\u0010r\u001a\u00020\u00042\u0008\u0008\u0002\u0010s\u001a\u00020\u00042\u0008\u0008\u0002\u0010t\u001a\u00020\u00042\u0008\u0008\u0002\u0010u\u001a\u00020\u00042\u0008\u0008\u0002\u0010v\u001a\u00020\u00042\u0008\u0008\u0002\u0010w\u001a\u00020\u00042\u0008\u0008\u0002\u0010x\u001a\u00020\u00042\u0008\u0008\u0002\u0010y\u001a\u00020\u00042\u0008\u0008\u0002\u0010z\u001a\u00020\u00042\u0008\u0008\u0002\u0010{\u001a\u00020\u00042\u0008\u0008\u0002\u0010|\u001a\u00020\u00042\u0008\u0008\u0002\u0010}\u001a\u00020\u00042\u0008\u0008\u0002\u0010~\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u007f\u001a\u00020\u00042\t\u0008\u0002\u0010\u0080\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0081\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0082\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u0083\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0084\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0085\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0086\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0087\u0001\u001a\u00020\u00042\t\u0008\u0002\u0010\u0088\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u0089\u0001\u001a\u00020\t2\t\u0008\u0002\u0010\u008a\u0001\u001a\u00020\u00042\n\u0008\u0002\u0010\u008b\u0001\u001a\u00030\u008c\u0001J\u0016\u0010\u00a9\u0001\u001a\u00020\u00042\n\u0010\u00aa\u0001\u001a\u0005\u0018\u00010\u00ab\u0001H\u0096\u0002J\n\u0010\u00ac\u0001\u001a\u00030\u00ad\u0001H\u0016J\t\u0010\u00ae\u0001\u001a\u00020\u0002H\u0016J\n\u0010\u00af\u0001\u001a\u00030\u00b0\u0001H\u0016R\u0010\u0010\u0005\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010^\u001a\u0004\u0018\u00010_8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0082\u0001\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010C\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u008e\u0001\u0010\u008f\u0001R\u0010\u0010%\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010&\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010?\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010H\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010I\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010S\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\'\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010(\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0081\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010G\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0090\u0001\u0010\u008f\u0001R\u0010\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00103\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010L\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010)\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0091\u0001\u0010\u008f\u0001R\u0010\u00106\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010v\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010j\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0083\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00108\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010Q\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010E\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010>\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u007f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010<\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010Z\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010-\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010u\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00107\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0092\u0001\u0010\u008f\u0001R\u0018\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0093\u0001\u0010\u008f\u0001R\u0010\u0010#\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010P\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010`\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010N\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010M\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010R\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010+\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0094\u0001\u0010\u008f\u0001R\u0010\u0010g\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0095\u0001\u0010\u008f\u0001R\u0010\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010z\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010x\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010y\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010O\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0096\u0001\u0010\u008f\u0001R\u0010\u0010i\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0097\u0001\u0010\u008f\u0001R\u0018\u0010/\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0098\u0001\u0010\u008f\u0001R\u0010\u0010:\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010W\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010s\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010t\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u0099\u0001\u0010\u008f\u0001R\u0010\u0010\u001f\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010=\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010;\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009a\u0001\u0010\u008f\u0001R\u0011\u0010\u0087\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010 \u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010~\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010*\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009b\u0001\u0010\u008f\u0001R\u0010\u0010p\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010,\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009c\u0001\u0010\u008f\u0001R\u0010\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009d\u0001\u0010\u008f\u0001R\u0018\u0010\u000c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009e\u0001\u0010\u008f\u0001R\u0010\u0010!\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010B\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0085\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u00102\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u009f\u0001\u0010\u008f\u0001R\u0010\u0010m\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010q\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a0\u0001\u0010\u008f\u0001R\u0018\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a1\u0001\u0010\u008f\u0001R\u0010\u0010U\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00109\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0006\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a2\u0001\u0010\u008f\u0001R\u0010\u00100\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010|\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0086\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0084\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010h\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010@\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010J\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u00101\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010a\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0080\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010D\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010]\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010}\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a3\u0001\u0010\u008f\u0001R\u0018\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a4\u0001\u0010\u008f\u0001R\u0010\u0010\u001d\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010T\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u008a\u0001\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010o\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010w\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010{\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010F\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010X\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010Y\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010l\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010d\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a5\u0001\u0010\u008f\u0001R\u0010\u0010k\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010[\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\\\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010V\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a6\u0001\u0010\u008f\u0001R\u0010\u00105\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0018\u00104\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\n\n\u0000\u0012\u0006\u0008\u00a7\u0001\u0010\u008f\u0001R\u0011\u0010\u0088\u0001\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0089\u0001\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010A\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010K\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010.\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u00b4\u0001"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "Lcom/squareup/wire/Message;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;",
        "tipping_enabled",
        "",
        "allow_non_browser_env",
        "enable_server_driven",
        "enable_sdk_transaction_sessions",
        "server_driven_poll_interval_seconds",
        "",
        "enableBbposVersioning",
        "enableBbposDownloading",
        "enable_on_reader_tipping",
        "enable_updater_factory_reset_target",
        "enable_connect_and_collect",
        "enable_firmware_updates",
        "enable_firmware_update_retries",
        "enable_on_reader_cancel",
        "enable_roborabbit_ui_redesign",
        "enable_connect_and_collect_release",
        "enable_updater_new_oobe_flow",
        "enable_iot",
        "enable_offline_mode",
        "enable_wpe_updater_new_oobe_killswitch",
        "disable_iot",
        "enable_new_updates_flow",
        "rom_update_kill_switch",
        "enable_ktor_http_server",
        "wp3_tipping_android_sdk_circuit_breaker",
        "enable_usb_connectivity",
        "wp3_tipping_ios_sdk_circuit_breaker",
        "enable_logging_to_disk",
        "enable_moto_transactions",
        "enable_p2pe_apk_signing_verification",
        "disable_p2pe_apk_signing_verification",
        "enable_crash_button_in_diagnostics",
        "enable_gif_splash_and_lightmode",
        "bluetooth_auto_reconnect_android_sdk_enabled",
        "bluetooth_auto_reconnect_ios_sdk_enabled",
        "disable_bluetooth_auto_reconnect_android_sdk",
        "disable_bluetooth_auto_reconnect_ios_sdk",
        "enable_aod_default_app",
        "enable_new_bbpos_assets_update_components",
        "enable_eftpos_routing",
        "enable_new_payment_collection_android_sdk",
        "enable_client_logger_dispatcher",
        "tip_eligible_amounts_circuit_breaker",
        "enable_iot_client_respond_via_iot",
        "enable_sharing_device_report",
        "enable_traces_to_observability_data_endpoint",
        "enable_reader_bbpos_proxy",
        "disable_sdk_force_key_injection_when_unknown_keys",
        "shopify_display_reader_charge_summary",
        "shopify_bypass_reader_charge_summary",
        "enable_application_selection_in_quick_chip",
        "enable_configure_reboot_time_with_device_ui",
        "enable_armada_reauthentication_flow",
        "enable_send_bbpos_debug_logs_to_splunk",
        "enable_iot_hadr_polling",
        "enable_mainland_post_action_result",
        "enable_client_accessibility_app",
        "enable_mag_stripe_pin",
        "enable_bbpos_debug_logging",
        "configure_device_reboot_time_kill_switch",
        "enable_third_party_app_crash_logging",
        "third_party_app_crash_logging_poll_interval_millis",
        "enable_p2pe_rom_verification",
        "battery_charging_dialog_killswitch",
        "enable_ttpa_emv_config_from_backend",
        "enable_battery_charging_dialog",
        "internal_storage_quota_circuit_breaker",
        "disable_event_channel_on_reader",
        "device_plugged_in_but_not_charging_minimum_battery_discharge_percent",
        "device_plugged_in_but_not_charging_minimum_required_duration_millis",
        "enable_third_party_settings_intent_logging",
        "third_party_settings_intent_logging_poll_interval_millis",
        "enable_add_merchant_info_to_edge_headers",
        "enable_device_key_auto_recovery_flow",
        "enable_device_callback_key_recovery_flow",
        "enable_forms_on_sdk",
        "enable_customer_cancellation_feature",
        "enable_background_update_split_download_and_install",
        "enable_device_temperature_logging",
        "device_temperature_logging_poll_interval_millis",
        "enable_warden_release_serial_port",
        "enable_rom_sdk_kernel_logging",
        "rom_sdk_kernel_logging_poll_interval_millis",
        "enable_kill_for_memory_event_logging",
        "kill_for_memory_event_logging_poll_interval_millis",
        "migrate_iot_endpoint_to_iot_service",
        "enable_client_accessible_pin",
        "rom_install_timeout_non_seamless_updates_millis",
        "rom_install_timeout_seamless_updates_millis",
        "enable_ttpa_pin",
        "android_system_event_logging",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
        "enable_dcc",
        "enable_ttp_auto_reconnect",
        "enable_iot_respond_via_rpc",
        "selection_form_toggles_below_submit_buttons",
        "offline_pair_unseen_reader_circuit_breaker",
        "enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests",
        "enable_battery_not_charging_events_logging",
        "enable_etna_cav_kfc_updates_check",
        "enable_terminal_surcharging",
        "enable_ios_deferred_logging",
        "enable_apps_on_devices_settings_menu",
        "offline_setup_intents_enabled",
        "mobile_wallet_on_offline_setup_intents_enabled",
        "enable_release_build_to_override_local_ip",
        "disable_predip",
        "enable_wpe_accessibility_volume_control",
        "enable_new_incremental_auth_ui",
        "enable_remove_duplicate_subtotal_string",
        "disable_force_pin_entry",
        "enable_ktlv_discrepancy_reporting_pcs",
        "enable_ktlv_pcs",
        "enable_collect_inputs_interstitial_screen",
        "enable_apps_on_devices_post_collect_merchant_ui",
        "enable_wpe_firmware_integrity_error_recovery",
        "enable_force_pin_entry_for_pi",
        "enable_force_pin_entry_for_si",
        "enable_fixed_iot_reconnect_delay",
        "enable_wpe_unauthenticated_device_integrity_error_recovery",
        "enable_spos_girocard",
        "enable_ttpa_run_attestation_before_pin",
        "enable_new_background_iot_state_machine",
        "enable_call_to_armada_for_boot_initialization",
        "enable_ttpa_eftpos_payments",
        "disable_card_inserted_from_prev_txn_check",
        "apps_on_devices_start_transaction_timeout_millis",
        "enable_apps_on_devices_start_transaction_timeout",
        "enable_start_reader_activity_on_state",
        "enable_process_messages_with_new_state_machine",
        "enable_standalone_app",
        "enable_mandatory_updates",
        "smart_reader_transaction_summary_delay_millis",
        "smart_reader_transaction_summary_unsuccessful_delay_millis",
        "enable_wifi_radio_s710_alpha",
        "unknownFields",
        "Lokio/ByteString;",
        "(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V",
        "getBattery_charging_dialog_killswitch$annotations",
        "()V",
        "getDisable_force_pin_entry$annotations",
        "getEnable_aod_default_app$annotations",
        "getEnable_connect_and_collect$annotations",
        "getEnable_connect_and_collect_release$annotations",
        "getEnable_eftpos_routing$annotations",
        "getEnable_firmware_update_retries$annotations",
        "getEnable_gif_splash_and_lightmode$annotations",
        "getEnable_iot$annotations",
        "getEnable_iot_client_respond_via_iot$annotations",
        "getEnable_ktor_http_server$annotations",
        "getEnable_mainland_post_action_result$annotations",
        "getEnable_new_bbpos_assets_update_components$annotations",
        "getEnable_new_updates_flow$annotations",
        "getEnable_on_reader_cancel$annotations",
        "getEnable_on_reader_tipping$annotations",
        "getEnable_reader_bbpos_proxy$annotations",
        "getEnable_remove_duplicate_subtotal_string$annotations",
        "getEnable_roborabbit_ui_redesign$annotations",
        "getEnable_server_driven$annotations",
        "getEnable_updater_factory_reset_target$annotations",
        "getEnable_updater_new_oobe_flow$annotations",
        "getOffline_pair_unseen_reader_circuit_breaker$annotations",
        "getServer_driven_poll_interval_seconds$annotations",
        "getShopify_display_reader_charge_summary$annotations",
        "copy",
        "equals",
        "other",
        "",
        "hashCode",
        "",
        "newBuilder",
        "toString",
        "",
        "AndroidSystemEventLoggingConfig",
        "Builder",
        "Companion",
        "terminal_release"
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
.field public static final ADAPTER:Lcom/squareup/wire/ProtoAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/squareup/wire/ProtoAdapter<",
            "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;

.field private static final serialVersionUID:J


# instance fields
.field public final allow_non_browser_env:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "allowNonBrowserEnv"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1
        tag = 0x2
    .end annotation
.end field

.field public final android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.stripe.proto.model.config.ReaderFeatureFlags$AndroidSystemEventLoggingConfig#ADAPTER"
        jsonName = "androidSystemEventLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x59
        tag = 0x5e
    .end annotation
.end field

.field public final apps_on_devices_start_transaction_timeout_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "appsOnDevicesStartTransactionTimeoutMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7c
        tag = 0x81
    .end annotation
.end field

.field public final battery_charging_dialog_killswitch:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "batteryChargingDialogKillswitch"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3e
        tag = 0x43
    .end annotation
.end field

.field public final bluetooth_auto_reconnect_android_sdk_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "bluetoothAutoReconnectAndroidSdkEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x20
        tag = 0x21
    .end annotation
.end field

.field public final bluetooth_auto_reconnect_ios_sdk_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "bluetoothAutoReconnectIosSdkEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x21
        tag = 0x22
    .end annotation
.end field

.field public final configure_device_reboot_time_kill_switch:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "configureDeviceRebootTimeKillSwitch"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3a
        tag = 0x3f
    .end annotation
.end field

.field public final device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "devicePluggedInButNotChargingMinimumBatteryDischargePercent"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x43
        tag = 0x48
    .end annotation
.end field

.field public final device_plugged_in_but_not_charging_minimum_required_duration_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "devicePluggedInButNotChargingMinimumRequiredDurationMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x44
        tag = 0x49
    .end annotation
.end field

.field public final device_temperature_logging_poll_interval_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "deviceTemperatureLoggingPollIntervalMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4e
        tag = 0x53
    .end annotation
.end field

.field public final disable_bluetooth_auto_reconnect_android_sdk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableBluetoothAutoReconnectAndroidSdk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x22
        tag = 0x23
    .end annotation
.end field

.field public final disable_bluetooth_auto_reconnect_ios_sdk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableBluetoothAutoReconnectIosSdk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x23
        tag = 0x24
    .end annotation
.end field

.field public final disable_card_inserted_from_prev_txn_check:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableCardInsertedFromPrevTxnCheck"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7b
        tag = 0x80
    .end annotation
.end field

.field public final disable_event_channel_on_reader:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableEventChannelOnReader"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x42
        tag = 0x47
    .end annotation
.end field

.field public final disable_force_pin_entry:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableForcePinEntry"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6c
        tag = 0x71
    .end annotation
.end field

.field public final disable_iot:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableIot"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x13
        tag = 0x14
    .end annotation
.end field

.field public final disable_p2pe_apk_signing_verification:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableP2peApkSigningVerification"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1d
        tag = 0x1e
    .end annotation
.end field

.field public final disable_predip:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disablePredip"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x68
        tag = 0x6d
    .end annotation
.end field

.field public final disable_sdk_force_key_injection_when_unknown_keys:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "disableSdkForceKeyInjectionWhenUnknownKeys"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2e
        tag = 0x33
    .end annotation
.end field

.field public final enableBbposDownloading:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6
        tag = 0x7
    .end annotation
.end field

.field public final enableBbposVersioning:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5
        tag = 0x6
    .end annotation
.end field

.field public final enable_add_merchant_info_to_edge_headers:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableAddMerchantInfoToEdgeHeaders"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x47
        tag = 0x4c
    .end annotation
.end field

.field public final enable_aod_default_app:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableAodDefaultApp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x24
        tag = 0x25
    .end annotation
.end field

.field public final enable_application_selection_in_quick_chip:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableApplicationSelectionInQuickChip"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x31
        tag = 0x36
    .end annotation
.end field

.field public final enable_apps_on_devices_post_collect_merchant_ui:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableAppsOnDevicesPostCollectMerchantUi"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x70
        tag = 0x75
    .end annotation
.end field

.field public final enable_apps_on_devices_settings_menu:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableAppsOnDevicesSettingsMenu"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x64
        tag = 0x69
    .end annotation
.end field

.field public final enable_apps_on_devices_start_transaction_timeout:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableAppsOnDevicesStartTransactionTimeout"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7d
        tag = 0x82
    .end annotation
.end field

.field public final enable_armada_reauthentication_flow:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableArmadaReauthenticationFlow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x33
        tag = 0x38
    .end annotation
.end field

.field public final enable_background_update_split_download_and_install:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableBackgroundUpdateSplitDownloadAndInstall"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4c
        tag = 0x51
    .end annotation
.end field

.field public final enable_battery_charging_dialog:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableBatteryChargingDialog"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x40
        tag = 0x45
    .end annotation
.end field

.field public final enable_battery_not_charging_events_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableBatteryNotChargingEventsLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x60
        tag = 0x65
    .end annotation
.end field

.field public final enable_bbpos_debug_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableBbposDebugLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x39
        tag = 0x3e
    .end annotation
.end field

.field public final enable_call_to_armada_for_boot_initialization:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCallToArmadaForBootInitialization"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x79
        tag = 0x7e
    .end annotation
.end field

.field public final enable_client_accessibility_app:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableClientAccessibilityApp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x37
        tag = 0x3c
    .end annotation
.end field

.field public final enable_client_accessible_pin:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableClientAccessiblePin"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x55
        tag = 0x5a
    .end annotation
.end field

.field public final enable_client_logger_dispatcher:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableClientLoggerDispatcher"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x28
        tag = 0x2d
    .end annotation
.end field

.field public final enable_collect_inputs_interstitial_screen:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCollectInputsInterstitialScreen"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6f
        tag = 0x74
    .end annotation
.end field

.field public final enable_configure_reboot_time_with_device_ui:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableConfigureRebootTimeWithDeviceUi"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x32
        tag = 0x37
    .end annotation
.end field

.field public final enable_connect_and_collect:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableConnectAndCollect"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x9
        tag = 0xa
    .end annotation
.end field

.field public final enable_connect_and_collect_release:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableConnectAndCollectRelease"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xe
        tag = 0xf
    .end annotation
.end field

.field public final enable_crash_button_in_diagnostics:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCrashButtonInDiagnostics"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1e
        tag = 0x1f
    .end annotation
.end field

.field public final enable_customer_cancellation_feature:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableCustomerCancellationFeature"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4b
        tag = 0x50
    .end annotation
.end field

.field public final enable_dcc:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableDcc"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5a
        tag = 0x5f
    .end annotation
.end field

.field public final enable_device_callback_key_recovery_flow:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableDeviceCallbackKeyRecoveryFlow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x49
        tag = 0x4e
    .end annotation
.end field

.field public final enable_device_key_auto_recovery_flow:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableDeviceKeyAutoRecoveryFlow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x48
        tag = 0x4d
    .end annotation
.end field

.field public final enable_device_temperature_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableDeviceTemperatureLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4d
        tag = 0x52
    .end annotation
.end field

.field public final enable_eftpos_routing:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableEftposRouting"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x26
        tag = 0x27
    .end annotation
.end field

.field public final enable_etna_cav_kfc_updates_check:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableEtnaCavKfcUpdatesCheck"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x61
        tag = 0x66
    .end annotation
.end field

.field public final enable_firmware_update_retries:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableFirmwareUpdateRetries"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xb
        tag = 0xc
    .end annotation
.end field

.field public final enable_firmware_updates:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableFirmwareUpdates"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xa
        tag = 0xb
    .end annotation
.end field

.field public final enable_fixed_iot_reconnect_delay:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableFixedIotReconnectDelay"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x74
        tag = 0x79
    .end annotation
.end field

.field public final enable_force_pin_entry_for_pi:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableForcePinEntryForPi"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x72
        tag = 0x77
    .end annotation
.end field

.field public final enable_force_pin_entry_for_si:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableForcePinEntryForSi"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x73
        tag = 0x78
    .end annotation
.end field

.field public final enable_forms_on_sdk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableFormsOnSdk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4a
        tag = 0x4f
    .end annotation
.end field

.field public final enable_gif_splash_and_lightmode:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableGifSplashAndLightmode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1f
        tag = 0x20
    .end annotation
.end field

.field public final enable_ios_deferred_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableIosDeferredLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x63
        tag = 0x68
    .end annotation
.end field

.field public final enable_iot:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableIot"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x10
        tag = 0x11
    .end annotation
.end field

.field public final enable_iot_client_respond_via_iot:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableIotClientRespondViaIot"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2a
        tag = 0x2f
    .end annotation
.end field

.field public final enable_iot_hadr_polling:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableIotHadrPolling"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x35
        tag = 0x3a
    .end annotation
.end field

.field public final enable_iot_respond_via_rpc:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableIotRespondViaRpc"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5c
        tag = 0x61
    .end annotation
.end field

.field public final enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableJackrabbitRedactedPaymentMethodFingerprintForIosRequests"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5f
        tag = 0x64
    .end annotation
.end field

.field public final enable_kill_for_memory_event_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableKillForMemoryEventLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x52
        tag = 0x57
    .end annotation
.end field

.field public final enable_ktlv_discrepancy_reporting_pcs:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableKtlvDiscrepancyReportingPcs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6d
        tag = 0x72
    .end annotation
.end field

.field public final enable_ktlv_pcs:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableKtlvPcs"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6e
        tag = 0x73
    .end annotation
.end field

.field public final enable_ktor_http_server:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableKtorHttpServer"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x16
        tag = 0x17
    .end annotation
.end field

.field public final enable_logging_to_disk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableLoggingToDisk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1a
        tag = 0x1b
    .end annotation
.end field

.field public final enable_mag_stripe_pin:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableMagStripePin"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x38
        tag = 0x3d
    .end annotation
.end field

.field public final enable_mainland_post_action_result:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableMainlandPostActionResult"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x36
        tag = 0x3b
    .end annotation
.end field

.field public final enable_mandatory_updates:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableMandatoryUpdates"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x81
        tag = 0x86
    .end annotation
.end field

.field public final enable_moto_transactions:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableMotoTransactions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1b
        tag = 0x1c
    .end annotation
.end field

.field public final enable_new_background_iot_state_machine:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableNewBackgroundIotStateMachine"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x78
        tag = 0x7d
    .end annotation
.end field

.field public final enable_new_bbpos_assets_update_components:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableNewBbposAssetsUpdateComponents"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x25
        tag = 0x26
    .end annotation
.end field

.field public final enable_new_incremental_auth_ui:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableNewIncrementalAuthUi"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6a
        tag = 0x6f
    .end annotation
.end field

.field public final enable_new_payment_collection_android_sdk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableNewPaymentCollectionAndroidSdk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x27
        tag = 0x28
    .end annotation
.end field

.field public final enable_new_updates_flow:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableNewUpdatesFlow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x14
        tag = 0x15
    .end annotation
.end field

.field public final enable_offline_mode:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableOfflineMode"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x11
        tag = 0x12
    .end annotation
.end field

.field public final enable_on_reader_cancel:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableOnReaderCancel"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xc
        tag = 0xd
    .end annotation
.end field

.field public final enable_on_reader_tipping:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableOnReaderTipping"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7
        tag = 0x8
    .end annotation
.end field

.field public final enable_p2pe_apk_signing_verification:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableP2peApkSigningVerification"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x1c
        tag = 0x1d
    .end annotation
.end field

.field public final enable_p2pe_rom_verification:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableP2peRomVerification"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3d
        tag = 0x42
    .end annotation
.end field

.field public final enable_process_messages_with_new_state_machine:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableProcessMessagesWithNewStateMachine"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7f
        tag = 0x84
    .end annotation
.end field

.field public final enable_reader_bbpos_proxy:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableReaderBbposProxy"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2d
        tag = 0x32
    .end annotation
.end field

.field public final enable_release_build_to_override_local_ip:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableReleaseBuildToOverrideLocalIp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x67
        tag = 0x6c
    .end annotation
.end field

.field public final enable_remove_duplicate_subtotal_string:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableRemoveDuplicateSubtotalString"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x6b
        tag = 0x70
    .end annotation
.end field

.field public final enable_roborabbit_ui_redesign:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableRoborabbitUiRedesign"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xd
        tag = 0xe
    .end annotation
.end field

.field public final enable_rom_sdk_kernel_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableRomSdkKernelLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x50
        tag = 0x55
    .end annotation
.end field

.field public final enable_sdk_transaction_sessions:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableSdkTransactionSessions"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3
        tag = 0x4
    .end annotation
.end field

.field public final enable_send_bbpos_debug_logs_to_splunk:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableSendBbposDebugLogsToSplunk"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x34
        tag = 0x39
    .end annotation
.end field

.field public final enable_server_driven:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableServerDriven"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2
        tag = 0x3
    .end annotation
.end field

.field public final enable_sharing_device_report:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableSharingDeviceReport"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2b
        tag = 0x30
    .end annotation
.end field

.field public final enable_spos_girocard:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableSposGirocard"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x76
        tag = 0x7b
    .end annotation
.end field

.field public final enable_standalone_app:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableStandaloneApp"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x80
        tag = 0x85
    .end annotation
.end field

.field public final enable_start_reader_activity_on_state:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableStartReaderActivityOnState"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7e
        tag = 0x83
    .end annotation
.end field

.field public final enable_terminal_surcharging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTerminalSurcharging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x62
        tag = 0x67
    .end annotation
.end field

.field public final enable_third_party_app_crash_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableThirdPartyAppCrashLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3b
        tag = 0x40
    .end annotation
.end field

.field public final enable_third_party_settings_intent_logging:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableThirdPartySettingsIntentLogging"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x45
        tag = 0x4a
    .end annotation
.end field

.field public final enable_traces_to_observability_data_endpoint:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTracesToObservabilityDataEndpoint"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2c
        tag = 0x31
    .end annotation
.end field

.field public final enable_ttp_auto_reconnect:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTtpAutoReconnect"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5b
        tag = 0x60
    .end annotation
.end field

.field public final enable_ttpa_eftpos_payments:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTtpaEftposPayments"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x7a
        tag = 0x7f
    .end annotation
.end field

.field public final enable_ttpa_emv_config_from_backend:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTtpaEmvConfigFromBackend"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3f
        tag = 0x44
    .end annotation
.end field

.field public final enable_ttpa_pin:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTtpaPin"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x58
        tag = 0x5d
    .end annotation
.end field

.field public final enable_ttpa_run_attestation_before_pin:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableTtpaRunAttestationBeforePin"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x77
        tag = 0x7c
    .end annotation
.end field

.field public final enable_updater_factory_reset_target:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableUpdaterFactoryResetTarget"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x8
        tag = 0x9
    .end annotation
.end field

.field public final enable_updater_new_oobe_flow:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableUpdaterNewOobeFlow"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0xf
        tag = 0x10
    .end annotation
.end field

.field public final enable_usb_connectivity:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableUsbConnectivity"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x18
        tag = 0x19
    .end annotation
.end field

.field public final enable_warden_release_serial_port:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWardenReleaseSerialPort"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4f
        tag = 0x54
    .end annotation
.end field

.field public final enable_wifi_radio_s710_alpha:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWifiRadioS710Alpha"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x84
        tag = 0x89
    .end annotation
.end field

.field public final enable_wpe_accessibility_volume_control:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWpeAccessibilityVolumeControl"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x69
        tag = 0x6e
    .end annotation
.end field

.field public final enable_wpe_firmware_integrity_error_recovery:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWpeFirmwareIntegrityErrorRecovery"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x71
        tag = 0x76
    .end annotation
.end field

.field public final enable_wpe_unauthenticated_device_integrity_error_recovery:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWpeUnauthenticatedDeviceIntegrityErrorRecovery"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x75
        tag = 0x7a
    .end annotation
.end field

.field public final enable_wpe_updater_new_oobe_killswitch:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "enableWpeUpdaterNewOobeKillswitch"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x12
        tag = 0x13
    .end annotation
.end field

.field public final internal_storage_quota_circuit_breaker:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "internalStorageQuotaCircuitBreaker"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x41
        tag = 0x46
    .end annotation
.end field

.field public final kill_for_memory_event_logging_poll_interval_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "killForMemoryEventLoggingPollIntervalMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x53
        tag = 0x58
    .end annotation
.end field

.field public final migrate_iot_endpoint_to_iot_service:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "migrateIotEndpointToIotService"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x54
        tag = 0x59
    .end annotation
.end field

.field public final mobile_wallet_on_offline_setup_intents_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "mobileWalletOnOfflineSetupIntentsEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x66
        tag = 0x6b
    .end annotation
.end field

.field public final offline_pair_unseen_reader_circuit_breaker:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "offlinePairUnseenReaderCircuitBreaker"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5e
        tag = 0x63
    .end annotation
.end field

.field public final offline_setup_intents_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "offlineSetupIntentsEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x65
        tag = 0x6a
    .end annotation
.end field

.field public final rom_install_timeout_non_seamless_updates_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "romInstallTimeoutNonSeamlessUpdatesMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x56
        tag = 0x5b
    .end annotation
.end field

.field public final rom_install_timeout_seamless_updates_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "romInstallTimeoutSeamlessUpdatesMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x57
        tag = 0x5c
    .end annotation
.end field

.field public final rom_sdk_kernel_logging_poll_interval_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "romSdkKernelLoggingPollIntervalMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x51
        tag = 0x56
    .end annotation
.end field

.field public final rom_update_kill_switch:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "romUpdateKillSwitch"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x15
        tag = 0x16
    .end annotation
.end field

.field public final selection_form_toggles_below_submit_buttons:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "selectionFormTogglesBelowSubmitButtons"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x5d
        tag = 0x62
    .end annotation
.end field

.field public final server_driven_poll_interval_seconds:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "serverDrivenPollIntervalSeconds"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x4
        tag = 0x5
    .end annotation
.end field

.field public final shopify_bypass_reader_charge_summary:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "shopifyBypassReaderChargeSummary"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x30
        tag = 0x35
    .end annotation
.end field

.field public final shopify_display_reader_charge_summary:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "shopifyDisplayReaderChargeSummary"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x2f
        tag = 0x34
    .end annotation
.end field

.field public final smart_reader_transaction_summary_delay_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "smartReaderTransactionSummaryDelayMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x82
        tag = 0x87
    .end annotation
.end field

.field public final smart_reader_transaction_summary_unsuccessful_delay_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "smartReaderTransactionSummaryUnsuccessfulDelayMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x83
        tag = 0x88
    .end annotation
.end field

.field public final third_party_app_crash_logging_poll_interval_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "thirdPartyAppCrashLoggingPollIntervalMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x3c
        tag = 0x41
    .end annotation
.end field

.field public final third_party_settings_intent_logging_poll_interval_millis:J
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#INT64"
        jsonName = "thirdPartySettingsIntentLoggingPollIntervalMillis"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x46
        tag = 0x4b
    .end annotation
.end field

.field public final tip_eligible_amounts_circuit_breaker:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "tipEligibleAmountsCircuitBreaker"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x29
        tag = 0x2e
    .end annotation
.end field

.field public final tipping_enabled:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "tippingEnabled"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x0
        tag = 0x1
    .end annotation
.end field

.field public final wp3_tipping_android_sdk_circuit_breaker:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "wp3TippingAndroidSdkCircuitBreaker"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x17
        tag = 0x18
    .end annotation
.end field

.field public final wp3_tipping_ios_sdk_circuit_breaker:Z
    .annotation runtime Lcom/squareup/wire/WireField;
        adapter = "com.squareup.wire.ProtoAdapter#BOOL"
        jsonName = "wp3TippingIosSdkCircuitBreaker"
        label = .enum Lcom/squareup/wire/WireField$Label;->OMIT_IDENTITY:Lcom/squareup/wire/WireField$Label;
        schemaIndex = 0x19
        tag = 0x1a
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->Companion:Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion;

    .line 4012
    sget-object v0, Lcom/squareup/wire/FieldEncoding;->LENGTH_DELIMITED:Lcom/squareup/wire/FieldEncoding;

    .line 4011
    const-class v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    .line 4015
    sget-object v2, Lcom/squareup/wire/Syntax;->PROTO_3:Lcom/squareup/wire/Syntax;

    .line 4011
    new-instance v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Companion$ADAPTER$1;-><init>(Lcom/squareup/wire/FieldEncoding;Lkotlin/reflect/KClass;Lcom/squareup/wire/Syntax;)V

    check-cast v3, Lcom/squareup/wire/ProtoAdapter;

    sput-object v3, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 154

    const/16 v152, 0x3f

    const/16 v153, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

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

    const/16 v46, 0x0

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

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const/16 v74, 0x0

    const-wide/16 v75, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const-wide/16 v84, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const-wide/16 v88, 0x0

    const/16 v90, 0x0

    const-wide/16 v91, 0x0

    const/16 v93, 0x0

    const/16 v94, 0x0

    const-wide/16 v95, 0x0

    const-wide/16 v97, 0x0

    const/16 v99, 0x0

    const/16 v100, 0x0

    const/16 v101, 0x0

    const/16 v102, 0x0

    const/16 v103, 0x0

    const/16 v104, 0x0

    const/16 v105, 0x0

    const/16 v106, 0x0

    const/16 v107, 0x0

    const/16 v108, 0x0

    const/16 v109, 0x0

    const/16 v110, 0x0

    const/16 v111, 0x0

    const/16 v112, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v115, 0x0

    const/16 v116, 0x0

    const/16 v117, 0x0

    const/16 v118, 0x0

    const/16 v119, 0x0

    const/16 v120, 0x0

    const/16 v121, 0x0

    const/16 v122, 0x0

    const/16 v123, 0x0

    const/16 v124, 0x0

    const/16 v125, 0x0

    const/16 v126, 0x0

    const/16 v127, 0x0

    const/16 v128, 0x0

    const/16 v129, 0x0

    const/16 v130, 0x0

    const/16 v131, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v134, 0x0

    const-wide/16 v135, 0x0

    const/16 v137, 0x0

    const/16 v138, 0x0

    const/16 v139, 0x0

    const/16 v140, 0x0

    const/16 v141, 0x0

    const-wide/16 v142, 0x0

    const-wide/16 v144, 0x0

    const/16 v146, 0x0

    const/16 v147, 0x0

    const/16 v148, -0x1

    const/16 v149, -0x1

    const/16 v150, -0x1

    const/16 v151, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v153}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V
    .locals 2

    move-object/from16 v0, p147

    const-string v1, "unknownFields"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1673
    sget-object v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->ADAPTER:Lcom/squareup/wire/ProtoAdapter;

    invoke-direct {p0, v1, v0}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/ProtoAdapter;Lokio/ByteString;)V

    .line 42
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    .line 54
    iput-boolean p2, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    .line 66
    iput-boolean p3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    .line 79
    iput-boolean p4, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    .line 91
    iput-wide p5, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    .line 104
    iput-boolean p7, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    .line 115
    iput-boolean p8, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    .line 127
    iput-boolean p9, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    .line 140
    iput-boolean p10, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    .line 153
    iput-boolean p11, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    .line 168
    iput-boolean p12, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    .line 182
    iput-boolean p13, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    move/from16 p1, p14

    .line 196
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    move/from16 p1, p15

    .line 210
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    move/from16 p1, p16

    .line 225
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    move/from16 p1, p17

    .line 238
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    move/from16 p1, p18

    .line 251
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    move/from16 p1, p19

    .line 264
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    move/from16 p1, p20

    .line 276
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    move/from16 p1, p21

    .line 288
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    move/from16 p1, p22

    .line 300
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    move/from16 p1, p23

    .line 313
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    move/from16 p1, p24

    .line 325
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    move/from16 p1, p25

    .line 338
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    move/from16 p1, p26

    .line 350
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    move/from16 p1, p27

    .line 362
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    move/from16 p1, p28

    .line 374
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    move/from16 p1, p29

    .line 386
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    move/from16 p1, p30

    .line 398
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    move/from16 p1, p31

    .line 410
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    move/from16 p1, p32

    .line 422
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    move/from16 p1, p33

    .line 434
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    move/from16 p1, p34

    .line 447
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    move/from16 p1, p35

    .line 459
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    move/from16 p1, p36

    .line 471
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    move/from16 p1, p37

    .line 483
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    move/from16 p1, p38

    .line 495
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    move/from16 p1, p39

    .line 508
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    move/from16 p1, p40

    .line 521
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    move/from16 p1, p41

    .line 534
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    move/from16 p1, p42

    .line 546
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    move/from16 p1, p43

    .line 558
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    move/from16 p1, p44

    .line 570
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    move/from16 p1, p45

    .line 583
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    move/from16 p1, p46

    .line 595
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    move/from16 p1, p47

    .line 607
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    move/from16 p1, p48

    .line 620
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    move/from16 p1, p49

    .line 632
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    move/from16 p1, p50

    .line 645
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    move/from16 p1, p51

    .line 657
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    move/from16 p1, p52

    .line 669
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    move/from16 p1, p53

    .line 681
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    move/from16 p1, p54

    .line 693
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    move/from16 p1, p55

    .line 705
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    move/from16 p1, p56

    .line 717
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    move/from16 p1, p57

    .line 730
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    move/from16 p1, p58

    .line 742
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    move/from16 p1, p59

    .line 754
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    move/from16 p1, p60

    .line 766
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    move/from16 p1, p61

    .line 778
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    move-wide/from16 p1, p62

    .line 790
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    move/from16 p1, p64

    .line 802
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    move/from16 p1, p65

    .line 814
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    move/from16 p1, p66

    .line 827
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    move/from16 p1, p67

    .line 839
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    move/from16 p1, p68

    .line 851
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    move/from16 p1, p69

    .line 863
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    move-wide/from16 p1, p70

    .line 876
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    move-wide/from16 p1, p72

    .line 885
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    move/from16 p1, p74

    .line 897
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    move-wide/from16 p1, p75

    .line 909
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    move/from16 p1, p77

    .line 921
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    move/from16 p1, p78

    .line 933
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    move/from16 p1, p79

    .line 945
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    move/from16 p1, p80

    .line 957
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    move/from16 p1, p81

    .line 969
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    move/from16 p1, p82

    .line 981
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    move/from16 p1, p83

    .line 993
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    move-wide/from16 p1, p84

    .line 1005
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    move/from16 p1, p86

    .line 1017
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    move/from16 p1, p87

    .line 1029
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    move-wide/from16 p1, p88

    .line 1041
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    move/from16 p1, p90

    .line 1053
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    move-wide/from16 p1, p91

    .line 1065
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    move/from16 p1, p93

    .line 1077
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    move/from16 p1, p94

    .line 1089
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    move-wide/from16 p1, p95

    .line 1101
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    move-wide/from16 p1, p97

    .line 1113
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    move/from16 p1, p99

    .line 1125
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    move-object/from16 p1, p100

    .line 1137
    iput-object p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move/from16 p1, p101

    .line 1149
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    move/from16 p1, p102

    .line 1161
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    move/from16 p1, p103

    .line 1173
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    move/from16 p1, p104

    .line 1185
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    move/from16 p1, p105

    .line 1197
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    move/from16 p1, p106

    .line 1211
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    move/from16 p1, p107

    .line 1224
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    move/from16 p1, p108

    .line 1236
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    move/from16 p1, p109

    .line 1248
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    move/from16 p1, p110

    .line 1260
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    move/from16 p1, p111

    .line 1272
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    move/from16 p1, p112

    .line 1284
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    move/from16 p1, p113

    .line 1296
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    move/from16 p1, p114

    .line 1308
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    move/from16 p1, p115

    .line 1320
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    move/from16 p1, p116

    .line 1332
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    move/from16 p1, p117

    .line 1344
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    move/from16 p1, p118

    .line 1356
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    move/from16 p1, p119

    .line 1370
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    move/from16 p1, p120

    .line 1383
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    move/from16 p1, p121

    .line 1395
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    move/from16 p1, p122

    .line 1407
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    move/from16 p1, p123

    .line 1419
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    move/from16 p1, p124

    .line 1431
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    move/from16 p1, p125

    .line 1443
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    move/from16 p1, p126

    .line 1455
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    move/from16 p1, p127

    .line 1467
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    move/from16 p1, p128

    .line 1479
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    move/from16 p1, p129

    .line 1491
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    move/from16 p1, p130

    .line 1503
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    move/from16 p1, p131

    .line 1515
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    move/from16 p1, p132

    .line 1527
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    move/from16 p1, p133

    .line 1539
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    move/from16 p1, p134

    .line 1551
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    move-wide/from16 p1, p135

    .line 1564
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    move/from16 p1, p137

    .line 1577
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    move/from16 p1, p138

    .line 1590
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    move/from16 p1, p139

    .line 1602
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    move/from16 p1, p140

    .line 1614
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    move/from16 p1, p141

    .line 1626
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    move-wide/from16 p1, p142

    .line 1638
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    move-wide/from16 p1, p144

    .line 1650
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    move/from16 p1, p146

    .line 1663
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 119

    move/from16 v0, p148

    move/from16 v1, p149

    move/from16 v2, p150

    move/from16 v3, p151

    move/from16 v4, p152

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    :goto_0
    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    move/from16 v7, p2

    :goto_1
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_2
    move/from16 v8, p3

    :goto_2
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_3

    const/4 v9, 0x0

    goto :goto_3

    :cond_3
    move/from16 v9, p4

    :goto_3
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_4

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v13, p5

    :goto_4
    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_5

    const/4 v10, 0x0

    goto :goto_5

    :cond_5
    move/from16 v10, p7

    :goto_5
    and-int/lit8 v15, v0, 0x40

    if-eqz v15, :cond_6

    const/4 v15, 0x0

    goto :goto_6

    :cond_6
    move/from16 v15, p8

    :goto_6
    and-int/lit16 v6, v0, 0x80

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    move/from16 v6, p9

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    move/from16 v16, v5

    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_a

    const/4 v5, 0x0

    goto :goto_a

    :cond_a
    move/from16 v5, p12

    :goto_a
    move/from16 p3, v5

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    goto :goto_b

    :cond_b
    move/from16 v5, p13

    :goto_b
    move/from16 p4, v5

    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    goto :goto_c

    :cond_c
    move/from16 v5, p14

    :goto_c
    move/from16 p5, v5

    and-int/lit16 v5, v0, 0x2000

    if-eqz v5, :cond_d

    const/4 v5, 0x0

    goto :goto_d

    :cond_d
    move/from16 v5, p15

    :goto_d
    move/from16 p6, v5

    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_e

    const/4 v5, 0x0

    goto :goto_e

    :cond_e
    move/from16 v5, p16

    :goto_e
    const v17, 0x8000

    and-int v18, v0, v17

    if-eqz v18, :cond_f

    const/16 v18, 0x0

    goto :goto_f

    :cond_f
    move/from16 v18, p17

    :goto_f
    const/high16 v19, 0x10000

    and-int v20, v0, v19

    if-eqz v20, :cond_10

    const/16 v20, 0x0

    goto :goto_10

    :cond_10
    move/from16 v20, p18

    :goto_10
    const/high16 v21, 0x20000

    and-int v22, v0, v21

    if-eqz v22, :cond_11

    const/16 v22, 0x0

    goto :goto_11

    :cond_11
    move/from16 v22, p19

    :goto_11
    const/high16 v23, 0x40000

    and-int v24, v0, v23

    if-eqz v24, :cond_12

    const/16 v24, 0x0

    goto :goto_12

    :cond_12
    move/from16 v24, p20

    :goto_12
    const/high16 v25, 0x80000

    and-int v26, v0, v25

    if-eqz v26, :cond_13

    const/16 v26, 0x0

    goto :goto_13

    :cond_13
    move/from16 v26, p21

    :goto_13
    const/high16 v27, 0x100000

    and-int v27, v0, v27

    if-eqz v27, :cond_14

    const/16 v27, 0x0

    goto :goto_14

    :cond_14
    move/from16 v27, p22

    :goto_14
    const/high16 v28, 0x200000

    and-int v28, v0, v28

    if-eqz v28, :cond_15

    const/16 v28, 0x0

    goto :goto_15

    :cond_15
    move/from16 v28, p23

    :goto_15
    const/high16 v29, 0x400000

    and-int v29, v0, v29

    if-eqz v29, :cond_16

    const/16 v29, 0x0

    goto :goto_16

    :cond_16
    move/from16 v29, p24

    :goto_16
    const/high16 v30, 0x800000

    and-int v30, v0, v30

    if-eqz v30, :cond_17

    const/16 v30, 0x0

    goto :goto_17

    :cond_17
    move/from16 v30, p25

    :goto_17
    const/high16 v31, 0x1000000

    and-int v31, v0, v31

    if-eqz v31, :cond_18

    const/16 v31, 0x0

    goto :goto_18

    :cond_18
    move/from16 v31, p26

    :goto_18
    const/high16 v32, 0x2000000

    and-int v32, v0, v32

    if-eqz v32, :cond_19

    const/16 v32, 0x0

    goto :goto_19

    :cond_19
    move/from16 v32, p27

    :goto_19
    const/high16 v33, 0x4000000

    and-int v33, v0, v33

    if-eqz v33, :cond_1a

    const/16 v33, 0x0

    goto :goto_1a

    :cond_1a
    move/from16 v33, p28

    :goto_1a
    const/high16 v34, 0x8000000

    and-int v34, v0, v34

    if-eqz v34, :cond_1b

    const/16 v34, 0x0

    goto :goto_1b

    :cond_1b
    move/from16 v34, p29

    :goto_1b
    const/high16 v35, 0x10000000

    and-int v35, v0, v35

    if-eqz v35, :cond_1c

    const/16 v35, 0x0

    goto :goto_1c

    :cond_1c
    move/from16 v35, p30

    :goto_1c
    const/high16 v36, 0x20000000

    and-int v36, v0, v36

    if-eqz v36, :cond_1d

    const/16 v36, 0x0

    goto :goto_1d

    :cond_1d
    move/from16 v36, p31

    :goto_1d
    const/high16 v37, 0x40000000    # 2.0f

    and-int v37, v0, v37

    if-eqz v37, :cond_1e

    const/16 v37, 0x0

    goto :goto_1e

    :cond_1e
    move/from16 v37, p32

    :goto_1e
    const/high16 v38, -0x80000000

    and-int v0, v0, v38

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_1f

    :cond_1f
    move/from16 v0, p33

    :goto_1f
    and-int/lit8 v38, v1, 0x1

    if-eqz v38, :cond_20

    const/16 v38, 0x0

    goto :goto_20

    :cond_20
    move/from16 v38, p34

    :goto_20
    and-int/lit8 v39, v1, 0x2

    if-eqz v39, :cond_21

    const/16 v39, 0x0

    goto :goto_21

    :cond_21
    move/from16 v39, p35

    :goto_21
    and-int/lit8 v40, v1, 0x4

    if-eqz v40, :cond_22

    const/16 v40, 0x0

    goto :goto_22

    :cond_22
    move/from16 v40, p36

    :goto_22
    and-int/lit8 v41, v1, 0x8

    if-eqz v41, :cond_23

    const/16 v41, 0x0

    goto :goto_23

    :cond_23
    move/from16 v41, p37

    :goto_23
    and-int/lit8 v42, v1, 0x10

    if-eqz v42, :cond_24

    const/16 v42, 0x0

    goto :goto_24

    :cond_24
    move/from16 v42, p38

    :goto_24
    and-int/lit8 v43, v1, 0x20

    if-eqz v43, :cond_25

    const/16 v43, 0x0

    goto :goto_25

    :cond_25
    move/from16 v43, p39

    :goto_25
    and-int/lit8 v44, v1, 0x40

    if-eqz v44, :cond_26

    const/16 v44, 0x0

    goto :goto_26

    :cond_26
    move/from16 v44, p40

    :goto_26
    move/from16 p7, v0

    and-int/lit16 v0, v1, 0x80

    if-eqz v0, :cond_27

    const/4 v0, 0x0

    goto :goto_27

    :cond_27
    move/from16 v0, p41

    :goto_27
    move/from16 p8, v0

    and-int/lit16 v0, v1, 0x100

    if-eqz v0, :cond_28

    const/4 v0, 0x0

    goto :goto_28

    :cond_28
    move/from16 v0, p42

    :goto_28
    move/from16 p9, v0

    and-int/lit16 v0, v1, 0x200

    if-eqz v0, :cond_29

    const/4 v0, 0x0

    goto :goto_29

    :cond_29
    move/from16 v0, p43

    :goto_29
    move/from16 p10, v0

    and-int/lit16 v0, v1, 0x400

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    goto :goto_2a

    :cond_2a
    move/from16 v0, p44

    :goto_2a
    move/from16 p11, v0

    and-int/lit16 v0, v1, 0x800

    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    goto :goto_2b

    :cond_2b
    move/from16 v0, p45

    :goto_2b
    move/from16 p12, v0

    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_2c

    const/4 v0, 0x0

    goto :goto_2c

    :cond_2c
    move/from16 v0, p46

    :goto_2c
    move/from16 p13, v0

    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_2d

    const/4 v0, 0x0

    goto :goto_2d

    :cond_2d
    move/from16 v0, p47

    :goto_2d
    move/from16 p14, v0

    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_2e

    :cond_2e
    move/from16 v0, p48

    :goto_2e
    and-int v45, v1, v17

    if-eqz v45, :cond_2f

    const/16 v45, 0x0

    goto :goto_2f

    :cond_2f
    move/from16 v45, p49

    :goto_2f
    and-int v46, v1, v19

    if-eqz v46, :cond_30

    const/16 v46, 0x0

    goto :goto_30

    :cond_30
    move/from16 v46, p50

    :goto_30
    and-int v47, v1, v21

    if-eqz v47, :cond_31

    const/16 v47, 0x0

    goto :goto_31

    :cond_31
    move/from16 v47, p51

    :goto_31
    and-int v48, v1, v23

    if-eqz v48, :cond_32

    const/16 v48, 0x0

    goto :goto_32

    :cond_32
    move/from16 v48, p52

    :goto_32
    and-int v49, v1, v25

    if-eqz v49, :cond_33

    const/16 v49, 0x0

    goto :goto_33

    :cond_33
    move/from16 v49, p53

    :goto_33
    const/high16 v50, 0x100000

    and-int v50, v1, v50

    if-eqz v50, :cond_34

    const/16 v50, 0x0

    goto :goto_34

    :cond_34
    move/from16 v50, p54

    :goto_34
    const/high16 v51, 0x200000

    and-int v51, v1, v51

    if-eqz v51, :cond_35

    const/16 v51, 0x0

    goto :goto_35

    :cond_35
    move/from16 v51, p55

    :goto_35
    const/high16 v52, 0x400000

    and-int v52, v1, v52

    if-eqz v52, :cond_36

    const/16 v52, 0x0

    goto :goto_36

    :cond_36
    move/from16 v52, p56

    :goto_36
    const/high16 v53, 0x800000

    and-int v53, v1, v53

    if-eqz v53, :cond_37

    const/16 v53, 0x0

    goto :goto_37

    :cond_37
    move/from16 v53, p57

    :goto_37
    const/high16 v54, 0x1000000

    and-int v54, v1, v54

    if-eqz v54, :cond_38

    const/16 v54, 0x0

    goto :goto_38

    :cond_38
    move/from16 v54, p58

    :goto_38
    const/high16 v55, 0x2000000

    and-int v55, v1, v55

    if-eqz v55, :cond_39

    const/16 v55, 0x0

    goto :goto_39

    :cond_39
    move/from16 v55, p59

    :goto_39
    const/high16 v56, 0x4000000

    and-int v56, v1, v56

    if-eqz v56, :cond_3a

    const/16 v56, 0x0

    goto :goto_3a

    :cond_3a
    move/from16 v56, p60

    :goto_3a
    const/high16 v57, 0x8000000

    and-int v57, v1, v57

    if-eqz v57, :cond_3b

    const/16 v57, 0x0

    goto :goto_3b

    :cond_3b
    move/from16 v57, p61

    :goto_3b
    const/high16 v58, 0x10000000

    and-int v58, v1, v58

    if-eqz v58, :cond_3c

    const-wide/16 v58, 0x0

    goto :goto_3c

    :cond_3c
    move-wide/from16 v58, p62

    :goto_3c
    const/high16 v60, 0x20000000

    and-int v60, v1, v60

    if-eqz v60, :cond_3d

    const/16 v60, 0x0

    goto :goto_3d

    :cond_3d
    move/from16 v60, p64

    :goto_3d
    const/high16 v61, 0x40000000    # 2.0f

    and-int v61, v1, v61

    if-eqz v61, :cond_3e

    const/16 v61, 0x0

    goto :goto_3e

    :cond_3e
    move/from16 v61, p65

    :goto_3e
    const/high16 v62, -0x80000000

    and-int v1, v1, v62

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    goto :goto_3f

    :cond_3f
    move/from16 v1, p66

    :goto_3f
    and-int/lit8 v62, v2, 0x1

    if-eqz v62, :cond_40

    const/16 v62, 0x0

    goto :goto_40

    :cond_40
    move/from16 v62, p67

    :goto_40
    and-int/lit8 v63, v2, 0x2

    if-eqz v63, :cond_41

    const/16 v63, 0x0

    goto :goto_41

    :cond_41
    move/from16 v63, p68

    :goto_41
    and-int/lit8 v64, v2, 0x4

    if-eqz v64, :cond_42

    const/16 v64, 0x0

    goto :goto_42

    :cond_42
    move/from16 v64, p69

    :goto_42
    and-int/lit8 v65, v2, 0x8

    if-eqz v65, :cond_43

    const-wide/16 v65, 0x0

    goto :goto_43

    :cond_43
    move-wide/from16 v65, p70

    :goto_43
    and-int/lit8 v67, v2, 0x10

    if-eqz v67, :cond_44

    const-wide/16 v67, 0x0

    goto :goto_44

    :cond_44
    move-wide/from16 v67, p72

    :goto_44
    and-int/lit8 v69, v2, 0x20

    if-eqz v69, :cond_45

    const/16 v69, 0x0

    goto :goto_45

    :cond_45
    move/from16 v69, p74

    :goto_45
    and-int/lit8 v70, v2, 0x40

    if-eqz v70, :cond_46

    const-wide/16 v70, 0x0

    goto :goto_46

    :cond_46
    move-wide/from16 v70, p75

    :goto_46
    move/from16 p15, v0

    and-int/lit16 v0, v2, 0x80

    if-eqz v0, :cond_47

    const/4 v0, 0x0

    goto :goto_47

    :cond_47
    move/from16 v0, p77

    :goto_47
    move/from16 p16, v0

    and-int/lit16 v0, v2, 0x100

    if-eqz v0, :cond_48

    const/4 v0, 0x0

    goto :goto_48

    :cond_48
    move/from16 v0, p78

    :goto_48
    move/from16 p17, v0

    and-int/lit16 v0, v2, 0x200

    if-eqz v0, :cond_49

    const/4 v0, 0x0

    goto :goto_49

    :cond_49
    move/from16 v0, p79

    :goto_49
    move/from16 p18, v0

    and-int/lit16 v0, v2, 0x400

    if-eqz v0, :cond_4a

    const/4 v0, 0x0

    goto :goto_4a

    :cond_4a
    move/from16 v0, p80

    :goto_4a
    move/from16 p19, v0

    and-int/lit16 v0, v2, 0x800

    if-eqz v0, :cond_4b

    const/4 v0, 0x0

    goto :goto_4b

    :cond_4b
    move/from16 v0, p81

    :goto_4b
    move/from16 p20, v0

    and-int/lit16 v0, v2, 0x1000

    if-eqz v0, :cond_4c

    const/4 v0, 0x0

    goto :goto_4c

    :cond_4c
    move/from16 v0, p82

    :goto_4c
    move/from16 p21, v0

    and-int/lit16 v0, v2, 0x2000

    if-eqz v0, :cond_4d

    const/4 v0, 0x0

    goto :goto_4d

    :cond_4d
    move/from16 v0, p83

    :goto_4d
    move/from16 p22, v0

    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_4e

    const-wide/16 v72, 0x0

    goto :goto_4e

    :cond_4e
    move-wide/from16 v72, p84

    :goto_4e
    and-int v0, v2, v17

    if-eqz v0, :cond_4f

    const/4 v0, 0x0

    goto :goto_4f

    :cond_4f
    move/from16 v0, p86

    :goto_4f
    and-int v74, v2, v19

    if-eqz v74, :cond_50

    const/16 v74, 0x0

    goto :goto_50

    :cond_50
    move/from16 v74, p87

    :goto_50
    and-int v75, v2, v21

    if-eqz v75, :cond_51

    const-wide/16 v75, 0x0

    goto :goto_51

    :cond_51
    move-wide/from16 v75, p88

    :goto_51
    and-int v77, v2, v23

    if-eqz v77, :cond_52

    const/16 v77, 0x0

    goto :goto_52

    :cond_52
    move/from16 v77, p90

    :goto_52
    and-int v78, v2, v25

    if-eqz v78, :cond_53

    const-wide/16 v78, 0x0

    goto :goto_53

    :cond_53
    move-wide/from16 v78, p91

    :goto_53
    const/high16 v80, 0x100000

    and-int v80, v2, v80

    if-eqz v80, :cond_54

    const/16 v80, 0x0

    goto :goto_54

    :cond_54
    move/from16 v80, p93

    :goto_54
    const/high16 v81, 0x200000

    and-int v81, v2, v81

    if-eqz v81, :cond_55

    const/16 v81, 0x0

    goto :goto_55

    :cond_55
    move/from16 v81, p94

    :goto_55
    const/high16 v82, 0x400000

    and-int v82, v2, v82

    if-eqz v82, :cond_56

    const-wide/16 v82, 0x0

    goto :goto_56

    :cond_56
    move-wide/from16 v82, p95

    :goto_56
    const/high16 v84, 0x800000

    and-int v84, v2, v84

    if-eqz v84, :cond_57

    const-wide/16 v84, 0x0

    goto :goto_57

    :cond_57
    move-wide/from16 v84, p97

    :goto_57
    const/high16 v86, 0x1000000

    and-int v86, v2, v86

    if-eqz v86, :cond_58

    const/16 v86, 0x0

    goto :goto_58

    :cond_58
    move/from16 v86, p99

    :goto_58
    const/high16 v87, 0x2000000

    and-int v87, v2, v87

    if-eqz v87, :cond_59

    const/16 v87, 0x0

    goto :goto_59

    :cond_59
    move-object/from16 v87, p100

    :goto_59
    const/high16 v88, 0x4000000

    and-int v88, v2, v88

    if-eqz v88, :cond_5a

    const/16 v88, 0x0

    goto :goto_5a

    :cond_5a
    move/from16 v88, p101

    :goto_5a
    const/high16 v89, 0x8000000

    and-int v89, v2, v89

    if-eqz v89, :cond_5b

    const/16 v89, 0x0

    goto :goto_5b

    :cond_5b
    move/from16 v89, p102

    :goto_5b
    const/high16 v90, 0x10000000

    and-int v90, v2, v90

    if-eqz v90, :cond_5c

    const/16 v90, 0x0

    goto :goto_5c

    :cond_5c
    move/from16 v90, p103

    :goto_5c
    const/high16 v91, 0x20000000

    and-int v91, v2, v91

    if-eqz v91, :cond_5d

    const/16 v91, 0x0

    goto :goto_5d

    :cond_5d
    move/from16 v91, p104

    :goto_5d
    const/high16 v92, 0x40000000    # 2.0f

    and-int v92, v2, v92

    if-eqz v92, :cond_5e

    const/16 v92, 0x0

    goto :goto_5e

    :cond_5e
    move/from16 v92, p105

    :goto_5e
    const/high16 v93, -0x80000000

    and-int v2, v2, v93

    if-eqz v2, :cond_5f

    const/4 v2, 0x0

    goto :goto_5f

    :cond_5f
    move/from16 v2, p106

    :goto_5f
    and-int/lit8 v93, v3, 0x1

    if-eqz v93, :cond_60

    const/16 v93, 0x0

    goto :goto_60

    :cond_60
    move/from16 v93, p107

    :goto_60
    and-int/lit8 v94, v3, 0x2

    if-eqz v94, :cond_61

    const/16 v94, 0x0

    goto :goto_61

    :cond_61
    move/from16 v94, p108

    :goto_61
    and-int/lit8 v95, v3, 0x4

    if-eqz v95, :cond_62

    const/16 v95, 0x0

    goto :goto_62

    :cond_62
    move/from16 v95, p109

    :goto_62
    and-int/lit8 v96, v3, 0x8

    if-eqz v96, :cond_63

    const/16 v96, 0x0

    goto :goto_63

    :cond_63
    move/from16 v96, p110

    :goto_63
    and-int/lit8 v97, v3, 0x10

    if-eqz v97, :cond_64

    const/16 v97, 0x0

    goto :goto_64

    :cond_64
    move/from16 v97, p111

    :goto_64
    and-int/lit8 v98, v3, 0x20

    if-eqz v98, :cond_65

    const/16 v98, 0x0

    goto :goto_65

    :cond_65
    move/from16 v98, p112

    :goto_65
    and-int/lit8 v99, v3, 0x40

    if-eqz v99, :cond_66

    const/16 v99, 0x0

    goto :goto_66

    :cond_66
    move/from16 v99, p113

    :goto_66
    move/from16 p23, v0

    and-int/lit16 v0, v3, 0x80

    if-eqz v0, :cond_67

    const/4 v0, 0x0

    goto :goto_67

    :cond_67
    move/from16 v0, p114

    :goto_67
    move/from16 p24, v0

    and-int/lit16 v0, v3, 0x100

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    goto :goto_68

    :cond_68
    move/from16 v0, p115

    :goto_68
    move/from16 p25, v0

    and-int/lit16 v0, v3, 0x200

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    goto :goto_69

    :cond_69
    move/from16 v0, p116

    :goto_69
    move/from16 p26, v0

    and-int/lit16 v0, v3, 0x400

    if-eqz v0, :cond_6a

    const/4 v0, 0x0

    goto :goto_6a

    :cond_6a
    move/from16 v0, p117

    :goto_6a
    move/from16 p27, v0

    and-int/lit16 v0, v3, 0x800

    if-eqz v0, :cond_6b

    const/4 v0, 0x0

    goto :goto_6b

    :cond_6b
    move/from16 v0, p118

    :goto_6b
    move/from16 p28, v0

    and-int/lit16 v0, v3, 0x1000

    if-eqz v0, :cond_6c

    const/4 v0, 0x0

    goto :goto_6c

    :cond_6c
    move/from16 v0, p119

    :goto_6c
    move/from16 p29, v0

    and-int/lit16 v0, v3, 0x2000

    if-eqz v0, :cond_6d

    const/4 v0, 0x0

    goto :goto_6d

    :cond_6d
    move/from16 v0, p120

    :goto_6d
    move/from16 p30, v0

    and-int/lit16 v0, v3, 0x4000

    if-eqz v0, :cond_6e

    const/4 v0, 0x0

    goto :goto_6e

    :cond_6e
    move/from16 v0, p121

    :goto_6e
    and-int v17, v3, v17

    if-eqz v17, :cond_6f

    const/16 v17, 0x0

    goto :goto_6f

    :cond_6f
    move/from16 v17, p122

    :goto_6f
    and-int v19, v3, v19

    if-eqz v19, :cond_70

    const/16 v19, 0x0

    goto :goto_70

    :cond_70
    move/from16 v19, p123

    :goto_70
    and-int v21, v3, v21

    if-eqz v21, :cond_71

    const/16 v21, 0x0

    goto :goto_71

    :cond_71
    move/from16 v21, p124

    :goto_71
    and-int v23, v3, v23

    if-eqz v23, :cond_72

    const/16 v23, 0x0

    goto :goto_72

    :cond_72
    move/from16 v23, p125

    :goto_72
    and-int v25, v3, v25

    if-eqz v25, :cond_73

    const/16 v25, 0x0

    goto :goto_73

    :cond_73
    move/from16 v25, p126

    :goto_73
    const/high16 v100, 0x100000

    and-int v100, v3, v100

    if-eqz v100, :cond_74

    const/16 v100, 0x0

    goto :goto_74

    :cond_74
    move/from16 v100, p127

    :goto_74
    const/high16 v101, 0x200000

    and-int v101, v3, v101

    if-eqz v101, :cond_75

    const/16 v101, 0x0

    goto :goto_75

    :cond_75
    move/from16 v101, p128

    :goto_75
    const/high16 v102, 0x400000

    and-int v102, v3, v102

    if-eqz v102, :cond_76

    const/16 v102, 0x0

    goto :goto_76

    :cond_76
    move/from16 v102, p129

    :goto_76
    const/high16 v103, 0x800000

    and-int v103, v3, v103

    if-eqz v103, :cond_77

    const/16 v103, 0x0

    goto :goto_77

    :cond_77
    move/from16 v103, p130

    :goto_77
    const/high16 v104, 0x1000000

    and-int v104, v3, v104

    if-eqz v104, :cond_78

    const/16 v104, 0x0

    goto :goto_78

    :cond_78
    move/from16 v104, p131

    :goto_78
    const/high16 v105, 0x2000000

    and-int v105, v3, v105

    if-eqz v105, :cond_79

    const/16 v105, 0x0

    goto :goto_79

    :cond_79
    move/from16 v105, p132

    :goto_79
    const/high16 v106, 0x4000000

    and-int v106, v3, v106

    if-eqz v106, :cond_7a

    const/16 v106, 0x0

    goto :goto_7a

    :cond_7a
    move/from16 v106, p133

    :goto_7a
    const/high16 v107, 0x8000000

    and-int v107, v3, v107

    if-eqz v107, :cond_7b

    const/16 v107, 0x0

    goto :goto_7b

    :cond_7b
    move/from16 v107, p134

    :goto_7b
    const/high16 v108, 0x10000000

    and-int v108, v3, v108

    if-eqz v108, :cond_7c

    const-wide/16 v108, 0x0

    goto :goto_7c

    :cond_7c
    move-wide/from16 v108, p135

    :goto_7c
    const/high16 v110, 0x20000000

    and-int v110, v3, v110

    if-eqz v110, :cond_7d

    const/16 v110, 0x0

    goto :goto_7d

    :cond_7d
    move/from16 v110, p137

    :goto_7d
    const/high16 v111, 0x40000000    # 2.0f

    and-int v111, v3, v111

    if-eqz v111, :cond_7e

    const/16 v111, 0x0

    goto :goto_7e

    :cond_7e
    move/from16 v111, p138

    :goto_7e
    const/high16 v112, -0x80000000

    and-int v3, v3, v112

    if-eqz v3, :cond_7f

    const/4 v3, 0x0

    goto :goto_7f

    :cond_7f
    move/from16 v3, p139

    :goto_7f
    and-int/lit8 v112, v4, 0x1

    if-eqz v112, :cond_80

    const/16 v112, 0x0

    goto :goto_80

    :cond_80
    move/from16 v112, p140

    :goto_80
    and-int/lit8 v113, v4, 0x2

    if-eqz v113, :cond_81

    const/16 v113, 0x0

    goto :goto_81

    :cond_81
    move/from16 v113, p141

    :goto_81
    and-int/lit8 v114, v4, 0x4

    if-eqz v114, :cond_82

    const-wide/16 v114, 0x0

    goto :goto_82

    :cond_82
    move-wide/from16 v114, p142

    :goto_82
    and-int/lit8 v116, v4, 0x8

    if-eqz v116, :cond_83

    const-wide/16 v116, 0x0

    goto :goto_83

    :cond_83
    move-wide/from16 v116, p144

    :goto_83
    and-int/lit8 v118, v4, 0x10

    if-eqz v118, :cond_84

    const/16 v118, 0x0

    goto :goto_84

    :cond_84
    move/from16 v118, p146

    :goto_84
    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_85

    .line 1672
    sget-object v4, Lokio/ByteString;->EMPTY:Lokio/ByteString;

    move-object/16 p148, v4

    goto :goto_85

    :cond_85
    move-object/16 p148, p147

    :goto_85
    move-object/from16 p1, p0

    move/from16 p34, p7

    move/from16 p42, p8

    move/from16 p43, p9

    move/from16 p44, p10

    move/from16 p45, p11

    move/from16 p46, p12

    move/from16 p47, p13

    move/from16 p48, p14

    move/from16 p49, p15

    move/from16 p78, p16

    move/from16 p79, p17

    move/from16 p80, p18

    move/from16 p81, p19

    move/from16 p82, p20

    move/from16 p83, p21

    move/from16 p84, p22

    move/from16 p87, p23

    move/from16 p115, p24

    move/from16 p116, p25

    move/from16 p117, p26

    move/from16 p118, p27

    move/from16 p119, p28

    move/from16 p120, p29

    move/from16 p121, p30

    move/from16 p122, v0

    move/from16 p67, v1

    move/from16 p107, v2

    move/16 p140, v3

    move/from16 p17, v5

    move/from16 p10, v6

    move/from16 p8, v10

    move/from16 p11, v11

    move/from16 p12, v12

    move/from16 p9, v15

    move/from16 p2, v16

    move/from16 p123, v17

    move/from16 p18, v18

    move/from16 p124, v19

    move/from16 p19, v20

    move/from16 p125, v21

    move/from16 p20, v22

    move/from16 p126, v23

    move/from16 p21, v24

    move/from16 p127, v25

    move/from16 p22, v26

    move/from16 p23, v27

    move/from16 p24, v28

    move/from16 p25, v29

    move/from16 p26, v30

    move/from16 p27, v31

    move/from16 p28, v32

    move/from16 p29, v33

    move/from16 p30, v34

    move/from16 p31, v35

    move/from16 p32, v36

    move/from16 p33, v37

    move/from16 p35, v38

    move/from16 p36, v39

    move/from16 p37, v40

    move/from16 p38, v41

    move/from16 p39, v42

    move/from16 p40, v43

    move/from16 p41, v44

    move/from16 p50, v45

    move/from16 p51, v46

    move/from16 p52, v47

    move/from16 p53, v48

    move/from16 p54, v49

    move/from16 p55, v50

    move/from16 p56, v51

    move/from16 p57, v52

    move/from16 p58, v53

    move/from16 p59, v54

    move/from16 p60, v55

    move/from16 p61, v56

    move/from16 p62, v57

    move-wide/from16 p63, v58

    move/from16 p65, v60

    move/from16 p66, v61

    move/from16 p68, v62

    move/from16 p69, v63

    move/from16 p70, v64

    move-wide/from16 p71, v65

    move-wide/from16 p73, v67

    move/from16 p75, v69

    move-wide/from16 p76, v70

    move-wide/from16 p85, v72

    move/from16 p88, v74

    move-wide/from16 p89, v75

    move/from16 p91, v77

    move-wide/from16 p92, v78

    move/from16 p94, v80

    move/from16 p95, v81

    move-wide/from16 p96, v82

    move-wide/from16 p98, v84

    move/from16 p100, v86

    move-object/from16 p101, v87

    move/from16 p102, v88

    move/from16 p103, v89

    move/from16 p104, v90

    move/from16 p105, v91

    move/from16 p106, v92

    move/from16 p108, v93

    move/from16 p109, v94

    move/from16 p110, v95

    move/from16 p111, v96

    move/from16 p112, v97

    move/from16 p113, v98

    move/from16 p114, v99

    move/from16 p128, v100

    move/from16 p129, v101

    move/from16 p130, v102

    move/from16 p131, v103

    move/from16 p132, v104

    move/from16 p133, v105

    move/from16 p134, v106

    move/from16 p135, v107

    move-wide/from16 p136, v108

    move/16 p138, v110

    move/16 p139, v111

    move/16 p141, v112

    move/16 p142, v113

    move-wide/16 p143, v114

    move-wide/16 p145, v116

    move/16 p147, v118

    move/from16 p13, p3

    move/from16 p14, p4

    move/from16 p15, p5

    move/from16 p16, p6

    move/from16 p3, v7

    move/from16 p4, v8

    move/from16 p5, v9

    move-wide/from16 p6, v13

    .line 41
    invoke-direct/range {p1 .. p148}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/stripe/proto/model/config/ReaderFeatureFlags;ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;IIIIILjava/lang/Object;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p148

    move/from16 v2, p149

    move/from16 v3, p150

    move/from16 v4, p151

    and-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_0

    .line 2234
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    goto :goto_0

    :cond_0
    move/from16 v5, p1

    :goto_0
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_1

    .line 2235
    iget-boolean v6, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    goto :goto_1

    :cond_1
    move/from16 v6, p2

    :goto_1
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_2

    .line 2236
    iget-boolean v7, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    goto :goto_2

    :cond_2
    move/from16 v7, p3

    :goto_2
    and-int/lit8 v8, v1, 0x8

    if-eqz v8, :cond_3

    .line 2237
    iget-boolean v8, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    goto :goto_3

    :cond_3
    move/from16 v8, p4

    :goto_3
    and-int/lit8 v9, v1, 0x10

    if-eqz v9, :cond_4

    .line 2238
    iget-wide v9, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p5

    :goto_4
    and-int/lit8 v11, v1, 0x20

    if-eqz v11, :cond_5

    .line 2239
    iget-boolean v11, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    goto :goto_5

    :cond_5
    move/from16 v11, p7

    :goto_5
    and-int/lit8 v12, v1, 0x40

    if-eqz v12, :cond_6

    .line 2240
    iget-boolean v12, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    goto :goto_6

    :cond_6
    move/from16 v12, p8

    :goto_6
    and-int/lit16 v13, v1, 0x80

    if-eqz v13, :cond_7

    .line 2241
    iget-boolean v13, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    goto :goto_7

    :cond_7
    move/from16 v13, p9

    :goto_7
    and-int/lit16 v14, v1, 0x100

    if-eqz v14, :cond_8

    .line 2242
    iget-boolean v14, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    goto :goto_8

    :cond_8
    move/from16 v14, p10

    :goto_8
    and-int/lit16 v15, v1, 0x200

    if-eqz v15, :cond_9

    .line 2243
    iget-boolean v15, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    goto :goto_9

    :cond_9
    move/from16 v15, p11

    :goto_9
    move/from16 p1, v5

    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_a

    .line 2244
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    goto :goto_a

    :cond_a
    move/from16 v5, p12

    :goto_a
    move/from16 p2, v5

    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_b

    .line 2245
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    goto :goto_b

    :cond_b
    move/from16 v5, p13

    :goto_b
    move/from16 p3, v5

    and-int/lit16 v5, v1, 0x1000

    if-eqz v5, :cond_c

    .line 2246
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    goto :goto_c

    :cond_c
    move/from16 v5, p14

    :goto_c
    move/from16 p4, v5

    and-int/lit16 v5, v1, 0x2000

    if-eqz v5, :cond_d

    .line 2247
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    goto :goto_d

    :cond_d
    move/from16 v5, p15

    :goto_d
    move/from16 p5, v5

    and-int/lit16 v5, v1, 0x4000

    if-eqz v5, :cond_e

    .line 2248
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    goto :goto_e

    :cond_e
    move/from16 v5, p16

    :goto_e
    const v16, 0x8000

    and-int v17, v1, v16

    if-eqz v17, :cond_f

    .line 2249
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    goto :goto_f

    :cond_f
    move/from16 v1, p17

    :goto_f
    const/high16 v17, 0x10000

    and-int v18, p148, v17

    move/from16 p6, v1

    if-eqz v18, :cond_10

    .line 2250
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p18

    :goto_10
    const/high16 v18, 0x20000

    and-int v19, p148, v18

    move/from16 p7, v1

    if-eqz v19, :cond_11

    .line 2251
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    goto :goto_11

    :cond_11
    move/from16 v1, p19

    :goto_11
    const/high16 v19, 0x40000

    and-int v20, p148, v19

    move/from16 p8, v1

    if-eqz v20, :cond_12

    .line 2252
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    goto :goto_12

    :cond_12
    move/from16 v1, p20

    :goto_12
    const/high16 v20, 0x80000

    and-int v21, p148, v20

    move/from16 p9, v1

    if-eqz v21, :cond_13

    .line 2253
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    goto :goto_13

    :cond_13
    move/from16 v1, p21

    :goto_13
    const/high16 v21, 0x100000

    and-int v22, p148, v21

    move/from16 p10, v1

    if-eqz v22, :cond_14

    .line 2254
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    goto :goto_14

    :cond_14
    move/from16 v1, p22

    :goto_14
    const/high16 v22, 0x200000

    and-int v23, p148, v22

    move/from16 p11, v1

    if-eqz v23, :cond_15

    .line 2255
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    goto :goto_15

    :cond_15
    move/from16 v1, p23

    :goto_15
    const/high16 v23, 0x400000

    and-int v23, p148, v23

    move/from16 p12, v1

    if-eqz v23, :cond_16

    .line 2256
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    goto :goto_16

    :cond_16
    move/from16 v1, p24

    :goto_16
    const/high16 v23, 0x800000

    and-int v23, p148, v23

    move/from16 p13, v1

    if-eqz v23, :cond_17

    .line 2257
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    goto :goto_17

    :cond_17
    move/from16 v1, p25

    :goto_17
    const/high16 v23, 0x1000000

    and-int v23, p148, v23

    move/from16 p14, v1

    if-eqz v23, :cond_18

    .line 2258
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    goto :goto_18

    :cond_18
    move/from16 v1, p26

    :goto_18
    const/high16 v23, 0x2000000

    and-int v23, p148, v23

    move/from16 p15, v1

    if-eqz v23, :cond_19

    .line 2259
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    goto :goto_19

    :cond_19
    move/from16 v1, p27

    :goto_19
    const/high16 v23, 0x4000000

    and-int v23, p148, v23

    move/from16 p16, v1

    if-eqz v23, :cond_1a

    .line 2260
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    goto :goto_1a

    :cond_1a
    move/from16 v1, p28

    :goto_1a
    const/high16 v23, 0x8000000

    and-int v23, p148, v23

    move/from16 p17, v1

    if-eqz v23, :cond_1b

    .line 2261
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    goto :goto_1b

    :cond_1b
    move/from16 v1, p29

    :goto_1b
    const/high16 v23, 0x10000000

    and-int v23, p148, v23

    move/from16 p18, v1

    if-eqz v23, :cond_1c

    .line 2262
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    goto :goto_1c

    :cond_1c
    move/from16 v1, p30

    :goto_1c
    const/high16 v23, 0x20000000

    and-int v23, p148, v23

    move/from16 p19, v1

    if-eqz v23, :cond_1d

    .line 2263
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    goto :goto_1d

    :cond_1d
    move/from16 v1, p31

    :goto_1d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, p148, v23

    move/from16 p20, v1

    if-eqz v23, :cond_1e

    .line 2264
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    goto :goto_1e

    :cond_1e
    move/from16 v1, p32

    :goto_1e
    const/high16 v23, -0x80000000

    and-int v23, p148, v23

    move/from16 p21, v1

    if-eqz v23, :cond_1f

    .line 2265
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    goto :goto_1f

    :cond_1f
    move/from16 v1, p33

    :goto_1f
    and-int/lit8 v23, v2, 0x1

    move/from16 p22, v1

    if-eqz v23, :cond_20

    .line 2266
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    goto :goto_20

    :cond_20
    move/from16 v1, p34

    :goto_20
    and-int/lit8 v23, v2, 0x2

    move/from16 p23, v1

    if-eqz v23, :cond_21

    .line 2267
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    goto :goto_21

    :cond_21
    move/from16 v1, p35

    :goto_21
    and-int/lit8 v23, v2, 0x4

    move/from16 p24, v1

    if-eqz v23, :cond_22

    .line 2268
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    goto :goto_22

    :cond_22
    move/from16 v1, p36

    :goto_22
    and-int/lit8 v23, v2, 0x8

    move/from16 p25, v1

    if-eqz v23, :cond_23

    .line 2269
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    goto :goto_23

    :cond_23
    move/from16 v1, p37

    :goto_23
    and-int/lit8 v23, v2, 0x10

    move/from16 p26, v1

    if-eqz v23, :cond_24

    .line 2270
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    goto :goto_24

    :cond_24
    move/from16 v1, p38

    :goto_24
    and-int/lit8 v23, v2, 0x20

    move/from16 p27, v1

    if-eqz v23, :cond_25

    .line 2271
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    goto :goto_25

    :cond_25
    move/from16 v1, p39

    :goto_25
    and-int/lit8 v23, v2, 0x40

    move/from16 p28, v1

    if-eqz v23, :cond_26

    .line 2272
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    goto :goto_26

    :cond_26
    move/from16 v1, p40

    :goto_26
    move/from16 p29, v1

    and-int/lit16 v1, v2, 0x80

    if-eqz v1, :cond_27

    .line 2273
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    goto :goto_27

    :cond_27
    move/from16 v1, p41

    :goto_27
    move/from16 p30, v1

    and-int/lit16 v1, v2, 0x100

    if-eqz v1, :cond_28

    .line 2274
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    goto :goto_28

    :cond_28
    move/from16 v1, p42

    :goto_28
    move/from16 p31, v1

    and-int/lit16 v1, v2, 0x200

    if-eqz v1, :cond_29

    .line 2275
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    goto :goto_29

    :cond_29
    move/from16 v1, p43

    :goto_29
    move/from16 p32, v1

    and-int/lit16 v1, v2, 0x400

    if-eqz v1, :cond_2a

    .line 2276
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    goto :goto_2a

    :cond_2a
    move/from16 v1, p44

    :goto_2a
    move/from16 p33, v1

    and-int/lit16 v1, v2, 0x800

    if-eqz v1, :cond_2b

    .line 2277
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    goto :goto_2b

    :cond_2b
    move/from16 v1, p45

    :goto_2b
    move/from16 p34, v1

    and-int/lit16 v1, v2, 0x1000

    if-eqz v1, :cond_2c

    .line 2278
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    goto :goto_2c

    :cond_2c
    move/from16 v1, p46

    :goto_2c
    move/from16 p35, v1

    and-int/lit16 v1, v2, 0x2000

    if-eqz v1, :cond_2d

    .line 2279
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    goto :goto_2d

    :cond_2d
    move/from16 v1, p47

    :goto_2d
    move/from16 p36, v1

    and-int/lit16 v1, v2, 0x4000

    if-eqz v1, :cond_2e

    .line 2280
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    goto :goto_2e

    :cond_2e
    move/from16 v1, p48

    :goto_2e
    and-int v23, v2, v16

    move/from16 p37, v1

    if-eqz v23, :cond_2f

    .line 2281
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    goto :goto_2f

    :cond_2f
    move/from16 v1, p49

    :goto_2f
    and-int v23, v2, v17

    move/from16 p38, v1

    if-eqz v23, :cond_30

    .line 2282
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    goto :goto_30

    :cond_30
    move/from16 v1, p50

    :goto_30
    and-int v23, v2, v18

    move/from16 p39, v1

    if-eqz v23, :cond_31

    .line 2283
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    goto :goto_31

    :cond_31
    move/from16 v1, p51

    :goto_31
    and-int v23, v2, v19

    move/from16 p40, v1

    if-eqz v23, :cond_32

    .line 2284
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    goto :goto_32

    :cond_32
    move/from16 v1, p52

    :goto_32
    and-int v23, v2, v20

    move/from16 p41, v1

    if-eqz v23, :cond_33

    .line 2285
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    goto :goto_33

    :cond_33
    move/from16 v1, p53

    :goto_33
    and-int v23, v2, v21

    move/from16 p42, v1

    if-eqz v23, :cond_34

    .line 2286
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    goto :goto_34

    :cond_34
    move/from16 v1, p54

    :goto_34
    and-int v23, v2, v22

    move/from16 p43, v1

    if-eqz v23, :cond_35

    .line 2287
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    goto :goto_35

    :cond_35
    move/from16 v1, p55

    :goto_35
    const/high16 v23, 0x400000

    and-int v23, v2, v23

    move/from16 p44, v1

    if-eqz v23, :cond_36

    .line 2288
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    goto :goto_36

    :cond_36
    move/from16 v1, p56

    :goto_36
    const/high16 v23, 0x800000

    and-int v23, v2, v23

    move/from16 p45, v1

    if-eqz v23, :cond_37

    .line 2289
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    goto :goto_37

    :cond_37
    move/from16 v1, p57

    :goto_37
    const/high16 v23, 0x1000000

    and-int v23, v2, v23

    move/from16 p46, v1

    if-eqz v23, :cond_38

    .line 2290
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    goto :goto_38

    :cond_38
    move/from16 v1, p58

    :goto_38
    const/high16 v23, 0x2000000

    and-int v23, v2, v23

    move/from16 p47, v1

    if-eqz v23, :cond_39

    .line 2291
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    goto :goto_39

    :cond_39
    move/from16 v1, p59

    :goto_39
    const/high16 v23, 0x4000000

    and-int v23, v2, v23

    move/from16 p48, v1

    if-eqz v23, :cond_3a

    .line 2292
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    goto :goto_3a

    :cond_3a
    move/from16 v1, p60

    :goto_3a
    const/high16 v23, 0x8000000

    and-int v23, v2, v23

    move/from16 p49, v1

    if-eqz v23, :cond_3b

    .line 2293
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    goto :goto_3b

    :cond_3b
    move/from16 v1, p61

    :goto_3b
    const/high16 v23, 0x10000000

    and-int v23, v2, v23

    move/from16 p50, v1

    if-eqz v23, :cond_3c

    .line 2294
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    goto :goto_3c

    :cond_3c
    move-wide/from16 v1, p62

    :goto_3c
    const/high16 v23, 0x20000000

    and-int v23, p149, v23

    move-wide/from16 p51, v1

    if-eqz v23, :cond_3d

    .line 2295
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    goto :goto_3d

    :cond_3d
    move/from16 v1, p64

    :goto_3d
    const/high16 v2, 0x40000000    # 2.0f

    and-int v2, p149, v2

    if-eqz v2, :cond_3e

    .line 2296
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    goto :goto_3e

    :cond_3e
    move/from16 v2, p65

    :goto_3e
    const/high16 v23, -0x80000000

    and-int v23, p149, v23

    move/from16 p53, v1

    if-eqz v23, :cond_3f

    .line 2297
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    goto :goto_3f

    :cond_3f
    move/from16 v1, p66

    :goto_3f
    and-int/lit8 v23, v3, 0x1

    move/from16 p54, v1

    if-eqz v23, :cond_40

    .line 2298
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    goto :goto_40

    :cond_40
    move/from16 v1, p67

    :goto_40
    and-int/lit8 v23, v3, 0x2

    move/from16 p55, v1

    if-eqz v23, :cond_41

    .line 2299
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    goto :goto_41

    :cond_41
    move/from16 v1, p68

    :goto_41
    and-int/lit8 v23, v3, 0x4

    move/from16 p56, v1

    if-eqz v23, :cond_42

    .line 2300
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    goto :goto_42

    :cond_42
    move/from16 v1, p69

    :goto_42
    and-int/lit8 v23, v3, 0x8

    move/from16 p58, v1

    move/from16 p57, v2

    if-eqz v23, :cond_43

    .line 2301
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    goto :goto_43

    :cond_43
    move-wide/from16 v1, p70

    :goto_43
    and-int/lit8 v23, v3, 0x10

    move-wide/from16 p59, v1

    if-eqz v23, :cond_44

    .line 2302
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    goto :goto_44

    :cond_44
    move-wide/from16 v1, p72

    :goto_44
    and-int/lit8 v23, v3, 0x20

    move-wide/from16 p61, v1

    if-eqz v23, :cond_45

    .line 2303
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    goto :goto_45

    :cond_45
    move/from16 v1, p74

    :goto_45
    and-int/lit8 v2, v3, 0x40

    move/from16 p63, v1

    if-eqz v2, :cond_46

    .line 2304
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    goto :goto_46

    :cond_46
    move-wide/from16 v1, p75

    :goto_46
    move-wide/from16 p64, v1

    and-int/lit16 v1, v3, 0x80

    if-eqz v1, :cond_47

    .line 2305
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    goto :goto_47

    :cond_47
    move/from16 v1, p77

    :goto_47
    and-int/lit16 v2, v3, 0x100

    if-eqz v2, :cond_48

    .line 2306
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    goto :goto_48

    :cond_48
    move/from16 v2, p78

    :goto_48
    move/from16 p66, v1

    and-int/lit16 v1, v3, 0x200

    if-eqz v1, :cond_49

    .line 2307
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    goto :goto_49

    :cond_49
    move/from16 v1, p79

    :goto_49
    move/from16 p67, v1

    and-int/lit16 v1, v3, 0x400

    if-eqz v1, :cond_4a

    .line 2308
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    goto :goto_4a

    :cond_4a
    move/from16 v1, p80

    :goto_4a
    move/from16 p68, v1

    and-int/lit16 v1, v3, 0x800

    if-eqz v1, :cond_4b

    .line 2309
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    goto :goto_4b

    :cond_4b
    move/from16 v1, p81

    :goto_4b
    move/from16 p69, v1

    and-int/lit16 v1, v3, 0x1000

    if-eqz v1, :cond_4c

    .line 2310
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    goto :goto_4c

    :cond_4c
    move/from16 v1, p82

    :goto_4c
    move/from16 p70, v1

    and-int/lit16 v1, v3, 0x2000

    if-eqz v1, :cond_4d

    .line 2311
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    goto :goto_4d

    :cond_4d
    move/from16 v1, p83

    :goto_4d
    move/from16 p71, v1

    and-int/lit16 v1, v3, 0x4000

    move/from16 p72, v2

    if-eqz v1, :cond_4e

    .line 2312
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    goto :goto_4e

    :cond_4e
    move-wide/from16 v1, p84

    :goto_4e
    and-int v23, v3, v16

    move-wide/from16 p73, v1

    if-eqz v23, :cond_4f

    .line 2313
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    goto :goto_4f

    :cond_4f
    move/from16 v1, p86

    :goto_4f
    and-int v2, v3, v17

    if-eqz v2, :cond_50

    .line 2314
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    goto :goto_50

    :cond_50
    move/from16 v2, p87

    :goto_50
    and-int v23, v3, v18

    move/from16 p75, v1

    move/from16 p76, v2

    if-eqz v23, :cond_51

    .line 2315
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    goto :goto_51

    :cond_51
    move-wide/from16 v1, p88

    :goto_51
    and-int v23, v3, v19

    move-wide/from16 p77, v1

    if-eqz v23, :cond_52

    .line 2316
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    goto :goto_52

    :cond_52
    move/from16 v1, p90

    :goto_52
    and-int v2, v3, v20

    move/from16 p79, v1

    if-eqz v2, :cond_53

    .line 2317
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    goto :goto_53

    :cond_53
    move-wide/from16 v1, p91

    :goto_53
    and-int v23, v3, v21

    move-wide/from16 p80, v1

    if-eqz v23, :cond_54

    .line 2318
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    goto :goto_54

    :cond_54
    move/from16 v1, p93

    :goto_54
    and-int v2, v3, v22

    if-eqz v2, :cond_55

    .line 2319
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    goto :goto_55

    :cond_55
    move/from16 v2, p94

    :goto_55
    const/high16 v23, 0x400000

    and-int v23, v3, v23

    move/from16 p82, v1

    move/from16 p83, v2

    if-eqz v23, :cond_56

    .line 2320
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    goto :goto_56

    :cond_56
    move-wide/from16 v1, p95

    :goto_56
    const/high16 v23, 0x800000

    and-int v23, v3, v23

    move-wide/from16 p84, v1

    if-eqz v23, :cond_57

    .line 2321
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    goto :goto_57

    :cond_57
    move-wide/from16 v1, p97

    :goto_57
    const/high16 v23, 0x1000000

    and-int v23, v3, v23

    move-wide/from16 p86, v1

    if-eqz v23, :cond_58

    .line 2322
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    goto :goto_58

    :cond_58
    move/from16 v1, p99

    :goto_58
    const/high16 v2, 0x2000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_59

    .line 2323
    iget-object v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    goto :goto_59

    :cond_59
    move-object/from16 v2, p100

    :goto_59
    const/high16 v23, 0x4000000

    and-int v23, v3, v23

    move/from16 p88, v1

    if-eqz v23, :cond_5a

    .line 2324
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    goto :goto_5a

    :cond_5a
    move/from16 v1, p101

    :goto_5a
    const/high16 v23, 0x8000000

    and-int v23, v3, v23

    move/from16 p89, v1

    if-eqz v23, :cond_5b

    .line 2325
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    goto :goto_5b

    :cond_5b
    move/from16 v1, p102

    :goto_5b
    const/high16 v23, 0x10000000

    and-int v23, v3, v23

    move/from16 p90, v1

    if-eqz v23, :cond_5c

    .line 2326
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    goto :goto_5c

    :cond_5c
    move/from16 v1, p103

    :goto_5c
    const/high16 v23, 0x20000000

    and-int v23, v3, v23

    move/from16 p91, v1

    if-eqz v23, :cond_5d

    .line 2327
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    goto :goto_5d

    :cond_5d
    move/from16 v1, p104

    :goto_5d
    const/high16 v23, 0x40000000    # 2.0f

    and-int v23, v3, v23

    move/from16 p92, v1

    if-eqz v23, :cond_5e

    .line 2328
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    goto :goto_5e

    :cond_5e
    move/from16 v1, p105

    :goto_5e
    const/high16 v23, -0x80000000

    and-int v3, v3, v23

    if-eqz v3, :cond_5f

    .line 2329
    iget-boolean v3, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    goto :goto_5f

    :cond_5f
    move/from16 v3, p106

    :goto_5f
    and-int/lit8 v23, v4, 0x1

    move/from16 p93, v1

    if-eqz v23, :cond_60

    .line 2330
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    goto :goto_60

    :cond_60
    move/from16 v1, p107

    :goto_60
    and-int/lit8 v23, v4, 0x2

    move/from16 p94, v1

    if-eqz v23, :cond_61

    .line 2331
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    goto :goto_61

    :cond_61
    move/from16 v1, p108

    :goto_61
    and-int/lit8 v23, v4, 0x4

    move/from16 p95, v1

    if-eqz v23, :cond_62

    .line 2332
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    goto :goto_62

    :cond_62
    move/from16 v1, p109

    :goto_62
    and-int/lit8 v23, v4, 0x8

    move/from16 p96, v1

    if-eqz v23, :cond_63

    .line 2333
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    goto :goto_63

    :cond_63
    move/from16 v1, p110

    :goto_63
    and-int/lit8 v23, v4, 0x10

    move/from16 p97, v1

    if-eqz v23, :cond_64

    .line 2334
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    goto :goto_64

    :cond_64
    move/from16 v1, p111

    :goto_64
    and-int/lit8 v23, v4, 0x20

    move/from16 p98, v1

    if-eqz v23, :cond_65

    .line 2335
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    goto :goto_65

    :cond_65
    move/from16 v1, p112

    :goto_65
    and-int/lit8 v23, v4, 0x40

    move/from16 p99, v1

    if-eqz v23, :cond_66

    .line 2336
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    goto :goto_66

    :cond_66
    move/from16 v1, p113

    :goto_66
    move/from16 p100, v1

    and-int/lit16 v1, v4, 0x80

    if-eqz v1, :cond_67

    .line 2337
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    goto :goto_67

    :cond_67
    move/from16 v1, p114

    :goto_67
    move/from16 p101, v1

    and-int/lit16 v1, v4, 0x100

    if-eqz v1, :cond_68

    .line 2338
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    goto :goto_68

    :cond_68
    move/from16 v1, p115

    :goto_68
    move/from16 p102, v1

    and-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_69

    .line 2339
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    goto :goto_69

    :cond_69
    move/from16 v1, p116

    :goto_69
    move/from16 p103, v1

    and-int/lit16 v1, v4, 0x400

    if-eqz v1, :cond_6a

    .line 2340
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    goto :goto_6a

    :cond_6a
    move/from16 v1, p117

    :goto_6a
    move/from16 p104, v1

    and-int/lit16 v1, v4, 0x800

    if-eqz v1, :cond_6b

    .line 2341
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    goto :goto_6b

    :cond_6b
    move/from16 v1, p118

    :goto_6b
    move/from16 p105, v1

    and-int/lit16 v1, v4, 0x1000

    if-eqz v1, :cond_6c

    .line 2342
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    goto :goto_6c

    :cond_6c
    move/from16 v1, p119

    :goto_6c
    move/from16 p106, v1

    and-int/lit16 v1, v4, 0x2000

    if-eqz v1, :cond_6d

    .line 2343
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    goto :goto_6d

    :cond_6d
    move/from16 v1, p120

    :goto_6d
    move/from16 p107, v1

    and-int/lit16 v1, v4, 0x4000

    if-eqz v1, :cond_6e

    .line 2344
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    goto :goto_6e

    :cond_6e
    move/from16 v1, p121

    :goto_6e
    and-int v16, v4, v16

    move/from16 p108, v1

    if-eqz v16, :cond_6f

    .line 2345
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    goto :goto_6f

    :cond_6f
    move/from16 v1, p122

    :goto_6f
    and-int v16, v4, v17

    move/from16 p109, v1

    if-eqz v16, :cond_70

    .line 2346
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    goto :goto_70

    :cond_70
    move/from16 v1, p123

    :goto_70
    and-int v16, v4, v18

    move/from16 p110, v1

    if-eqz v16, :cond_71

    .line 2347
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    goto :goto_71

    :cond_71
    move/from16 v1, p124

    :goto_71
    and-int v16, v4, v19

    move/from16 p111, v1

    if-eqz v16, :cond_72

    .line 2348
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    goto :goto_72

    :cond_72
    move/from16 v1, p125

    :goto_72
    and-int v16, v4, v20

    move/from16 p112, v1

    if-eqz v16, :cond_73

    .line 2349
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    goto :goto_73

    :cond_73
    move/from16 v1, p126

    :goto_73
    and-int v16, v4, v21

    move/from16 p113, v1

    if-eqz v16, :cond_74

    .line 2350
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    goto :goto_74

    :cond_74
    move/from16 v1, p127

    :goto_74
    and-int v16, v4, v22

    move/from16 p114, v1

    if-eqz v16, :cond_75

    .line 2351
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    goto :goto_75

    :cond_75
    move/from16 v1, p128

    :goto_75
    const/high16 v16, 0x400000

    and-int v16, v4, v16

    move/from16 p115, v1

    if-eqz v16, :cond_76

    .line 2352
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    goto :goto_76

    :cond_76
    move/from16 v1, p129

    :goto_76
    const/high16 v16, 0x800000

    and-int v16, v4, v16

    move/from16 p116, v1

    if-eqz v16, :cond_77

    .line 2353
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    goto :goto_77

    :cond_77
    move/from16 v1, p130

    :goto_77
    const/high16 v16, 0x1000000

    and-int v16, v4, v16

    move/from16 p117, v1

    if-eqz v16, :cond_78

    .line 2354
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    goto :goto_78

    :cond_78
    move/from16 v1, p131

    :goto_78
    const/high16 v16, 0x2000000

    and-int v16, v4, v16

    move/from16 p118, v1

    if-eqz v16, :cond_79

    .line 2355
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    goto :goto_79

    :cond_79
    move/from16 v1, p132

    :goto_79
    const/high16 v16, 0x4000000

    and-int v16, v4, v16

    move/from16 p119, v1

    if-eqz v16, :cond_7a

    .line 2356
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    goto :goto_7a

    :cond_7a
    move/from16 v1, p133

    :goto_7a
    const/high16 v16, 0x8000000

    and-int v16, v4, v16

    move/from16 p120, v1

    if-eqz v16, :cond_7b

    .line 2357
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    goto :goto_7b

    :cond_7b
    move/from16 v1, p134

    :goto_7b
    const/high16 v16, 0x10000000

    and-int v16, v4, v16

    move/from16 p121, v1

    move-object/from16 p148, v2

    if-eqz v16, :cond_7c

    .line 2358
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    goto :goto_7c

    :cond_7c
    move-wide/from16 v1, p135

    :goto_7c
    const/high16 v16, 0x20000000

    and-int v16, v4, v16

    move-wide/from16 p122, v1

    if-eqz v16, :cond_7d

    .line 2359
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    goto :goto_7d

    :cond_7d
    move/from16 v1, p137

    :goto_7d
    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v2, v4

    if-eqz v2, :cond_7e

    .line 2360
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    goto :goto_7e

    :cond_7e
    move/from16 v2, p138

    :goto_7e
    const/high16 v16, -0x80000000

    and-int v4, v4, v16

    if-eqz v4, :cond_7f

    .line 2361
    iget-boolean v4, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    goto :goto_7f

    :cond_7f
    move/from16 v4, p139

    :goto_7f
    and-int/lit8 v16, p152, 0x1

    move/from16 p124, v1

    if-eqz v16, :cond_80

    .line 2362
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    goto :goto_80

    :cond_80
    move/from16 v1, p140

    :goto_80
    and-int/lit8 v16, p152, 0x2

    move/from16 p125, v1

    if-eqz v16, :cond_81

    .line 2363
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    goto :goto_81

    :cond_81
    move/from16 v1, p141

    :goto_81
    and-int/lit8 v16, p152, 0x4

    move/from16 p127, v1

    move/from16 p126, v2

    if-eqz v16, :cond_82

    .line 2364
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    goto :goto_82

    :cond_82
    move-wide/from16 v1, p142

    :goto_82
    and-int/lit8 v16, p152, 0x8

    move-wide/from16 p128, v1

    if-eqz v16, :cond_83

    .line 2365
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    goto :goto_83

    :cond_83
    move-wide/from16 v1, p144

    :goto_83
    and-int/lit8 v16, p152, 0x10

    move-wide/from16 p130, v1

    if-eqz v16, :cond_84

    .line 2366
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    goto :goto_84

    :cond_84
    move/from16 v1, p146

    :goto_84
    and-int/lit8 v2, p152, 0x20

    if-eqz v2, :cond_85

    .line 2367
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v2

    move-wide/from16 p143, p128

    move/from16 p129, p115

    move/from16 p115, p101

    move-object/from16 p101, p148

    move-object/from16 p148, v2

    move/from16 p132, p118

    move/from16 p133, p119

    move/from16 p134, p120

    move/from16 p135, p121

    move-wide/from16 p136, p122

    move/from16 p138, p124

    move/from16 p141, p125

    move/from16 p139, p126

    move/from16 p142, p127

    move-wide/from16 p145, p130

    move/from16 p147, v1

    move/from16 p140, v4

    move/from16 p118, p104

    move/from16 p119, p105

    move/from16 p120, p106

    move/from16 p121, p107

    move/from16 p122, p108

    move/from16 p123, p109

    move/from16 p124, p110

    move/from16 p125, p111

    move/from16 p126, p112

    move/from16 p127, p113

    move/from16 p128, p114

    move/from16 p130, p116

    move/from16 p131, p117

    move/from16 p107, v3

    move/from16 p104, p91

    move/from16 p105, p92

    move/from16 p106, p93

    move/from16 p108, p94

    move/from16 p109, p95

    move/from16 p110, p96

    move/from16 p111, p97

    move/from16 p112, p98

    move/from16 p113, p99

    move/from16 p114, p100

    move/from16 p116, p102

    move/from16 p117, p103

    move/from16 p91, p79

    move-wide/from16 p92, p80

    move/from16 p94, p82

    move/from16 p95, p83

    move-wide/from16 p96, p84

    move-wide/from16 p98, p86

    move/from16 p100, p88

    move/from16 p102, p89

    move/from16 p103, p90

    goto/16 :goto_85

    :cond_85
    move-wide/from16 p143, p128

    move/from16 p129, p115

    move/from16 p115, p101

    move-object/from16 p101, p148

    move-object/from16 p148, p147

    move/from16 p132, p118

    move/from16 p133, p119

    move/from16 p134, p120

    move/from16 p135, p121

    move-wide/from16 p136, p122

    move/from16 p138, p124

    move/from16 p141, p125

    move/from16 p139, p126

    move/from16 p142, p127

    move-wide/from16 p145, p130

    move/from16 p140, v4

    move/from16 p118, p104

    move/from16 p119, p105

    move/from16 p120, p106

    move/from16 p121, p107

    move/from16 p122, p108

    move/from16 p123, p109

    move/from16 p124, p110

    move/from16 p125, p111

    move/from16 p126, p112

    move/from16 p127, p113

    move/from16 p128, p114

    move/from16 p130, p116

    move/from16 p131, p117

    move/from16 p107, v3

    move/from16 p104, p91

    move/from16 p105, p92

    move/from16 p106, p93

    move/from16 p108, p94

    move/from16 p109, p95

    move/from16 p110, p96

    move/from16 p111, p97

    move/from16 p112, p98

    move/from16 p113, p99

    move/from16 p114, p100

    move/from16 p116, p102

    move/from16 p117, p103

    move/from16 p91, p79

    move-wide/from16 p92, p80

    move/from16 p94, p82

    move/from16 p95, p83

    move-wide/from16 p96, p84

    move-wide/from16 p98, p86

    move/from16 p100, p88

    move/from16 p102, p89

    move/from16 p103, p90

    move/from16 p147, v1

    :goto_85
    move/from16 p80, p67

    move/from16 p81, p68

    move/from16 p82, p69

    move/from16 p83, p70

    move/from16 p84, p71

    move/from16 p79, p72

    move-wide/from16 p85, p73

    move/from16 p87, p75

    move/from16 p88, p76

    move-wide/from16 p89, p77

    move/from16 p67, p54

    move/from16 p68, p55

    move/from16 p69, p56

    move/from16 p70, p58

    move-wide/from16 p71, p59

    move-wide/from16 p73, p61

    move/from16 p75, p63

    move-wide/from16 p76, p64

    move/from16 p78, p66

    move/from16 p54, p42

    move/from16 p55, p43

    move/from16 p56, p44

    move/from16 p58, p46

    move/from16 p59, p47

    move/from16 p60, p48

    move/from16 p61, p49

    move/from16 p62, p50

    move-wide/from16 p63, p51

    move/from16 p65, p53

    move/from16 p66, p57

    move/from16 p42, p30

    move/from16 p43, p31

    move/from16 p44, p32

    move/from16 p46, p34

    move/from16 p47, p35

    move/from16 p48, p36

    move/from16 p49, p37

    move/from16 p50, p38

    move/from16 p51, p39

    move/from16 p52, p40

    move/from16 p53, p41

    move/from16 p57, p45

    move/from16 p30, p18

    move/from16 p31, p19

    move/from16 p32, p20

    move/from16 p34, p22

    move/from16 p35, p23

    move/from16 p36, p24

    move/from16 p37, p25

    move/from16 p38, p26

    move/from16 p39, p27

    move/from16 p40, p28

    move/from16 p41, p29

    move/from16 p45, p33

    move/from16 p18, p6

    move/from16 p19, p7

    move/from16 p20, p8

    move/from16 p22, p10

    move/from16 p23, p11

    move/from16 p24, p12

    move/from16 p25, p13

    move/from16 p26, p14

    move/from16 p27, p15

    move/from16 p28, p16

    move/from16 p29, p17

    move/from16 p33, p21

    move/from16 p17, v5

    move-wide/from16 p6, v9

    move/from16 p8, v11

    move/from16 p10, v13

    move/from16 p11, v14

    move/from16 p12, v15

    move/from16 p13, p2

    move/from16 p14, p3

    move/from16 p15, p4

    move/from16 p16, p5

    move/from16 p21, p9

    move/from16 p3, v6

    move/from16 p4, v7

    move/from16 p5, v8

    move/from16 p9, v12

    move/from16 p2, p1

    move-object/from16 p1, v0

    .line 2233
    invoke-virtual/range {p1 .. p148}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->copy(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getBattery_charging_dialog_killswitch$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "battery_charging_dialog_killswitch is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getDisable_force_pin_entry$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "disable_force_pin_entry is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_aod_default_app$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_aod_default_app is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_connect_and_collect$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_connect_and_collect is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_connect_and_collect_release$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_connect_and_collect_release is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_eftpos_routing$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_eftpos_routing is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_firmware_update_retries$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_firmware_update_retries is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_gif_splash_and_lightmode$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_gif_splash_and_lightmode is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_iot$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_iot is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_iot_client_respond_via_iot$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_iot_client_respond_via_iot is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_ktor_http_server$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_ktor_http_server is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_mainland_post_action_result$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_mainland_post_action_result is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_new_bbpos_assets_update_components$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_new_bbpos_assets_update_components is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_new_updates_flow$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_new_updates_flow is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_on_reader_cancel$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_on_reader_cancel is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_on_reader_tipping$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_on_reader_tipping is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_reader_bbpos_proxy$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_reader_bbpos_proxy is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_remove_duplicate_subtotal_string$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_remove_duplicate_subtotal_string is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_roborabbit_ui_redesign$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_roborabbit_ui_redesign is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_server_driven$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_server_driven is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_updater_factory_reset_target$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_updater_factory_reset_target is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getEnable_updater_new_oobe_flow$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_updater_new_oobe_flow is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getOffline_pair_unseen_reader_circuit_breaker$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "offline_pair_unseen_reader_circuit_breaker is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getServer_driven_poll_interval_seconds$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "server_driven_poll_interval_seconds is deprecated"
    .end annotation

    return-void
.end method

.method public static synthetic getShopify_display_reader_charge_summary$annotations()V
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "shopify_display_reader_charge_summary is deprecated"
    .end annotation

    return-void
.end method


# virtual methods
.method public final copy(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 149

    const-string v0, "unknownFields"

    move-object/from16 v1, p147

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2368
    new-instance v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move/from16 v30, p29

    move/from16 v31, p30

    move/from16 v32, p31

    move/from16 v33, p32

    move/from16 v34, p33

    move/from16 v35, p34

    move/from16 v36, p35

    move/from16 v37, p36

    move/from16 v38, p37

    move/from16 v39, p38

    move/from16 v40, p39

    move/from16 v41, p40

    move/from16 v42, p41

    move/from16 v43, p42

    move/from16 v44, p43

    move/from16 v45, p44

    move/from16 v46, p45

    move/from16 v47, p46

    move/from16 v48, p47

    move/from16 v49, p48

    move/from16 v50, p49

    move/from16 v51, p50

    move/from16 v52, p51

    move/from16 v53, p52

    move/from16 v54, p53

    move/from16 v55, p54

    move/from16 v56, p55

    move/from16 v57, p56

    move/from16 v58, p57

    move/from16 v59, p58

    move/from16 v60, p59

    move/from16 v61, p60

    move/from16 v62, p61

    move-wide/from16 v63, p62

    move/from16 v65, p64

    move/from16 v66, p65

    move/from16 v67, p66

    move/from16 v68, p67

    move/from16 v69, p68

    move/from16 v70, p69

    move-wide/from16 v71, p70

    move-wide/from16 v73, p72

    move/from16 v75, p74

    move-wide/from16 v76, p75

    move/from16 v78, p77

    move/from16 v79, p78

    move/from16 v80, p79

    move/from16 v81, p80

    move/from16 v82, p81

    move/from16 v83, p82

    move/from16 v84, p83

    move-wide/from16 v85, p84

    move/from16 v87, p86

    move/from16 v88, p87

    move-wide/from16 v89, p88

    move/from16 v91, p90

    move-wide/from16 v92, p91

    move/from16 v94, p93

    move/from16 v95, p94

    move-wide/from16 v96, p95

    move-wide/from16 v98, p97

    move/from16 v100, p99

    move-object/from16 v101, p100

    move/from16 v102, p101

    move/from16 v103, p102

    move/from16 v104, p103

    move/from16 v105, p104

    move/from16 v106, p105

    move/from16 v107, p106

    move/from16 v108, p107

    move/from16 v109, p108

    move/from16 v110, p109

    move/from16 v111, p110

    move/from16 v112, p111

    move/from16 v113, p112

    move/from16 v114, p113

    move/from16 v115, p114

    move/from16 v116, p115

    move/from16 v117, p116

    move/from16 v118, p117

    move/from16 v119, p118

    move/from16 v120, p119

    move/from16 v121, p120

    move/from16 v122, p121

    move/from16 v123, p122

    move/from16 v124, p123

    move/from16 v125, p124

    move/from16 v126, p125

    move/from16 v127, p126

    move/from16 v128, p127

    move/from16 v129, p128

    move/from16 v130, p129

    move/from16 v131, p130

    move/from16 v132, p131

    move/from16 v133, p132

    move/from16 v134, p133

    move/from16 v135, p134

    move-wide/from16 v136, p135

    move/from16 v138, p137

    move/from16 v139, p138

    move/from16 v140, p139

    move/from16 v141, p140

    move/from16 v142, p141

    move-wide/from16 v143, p142

    move-wide/from16 v145, p144

    move/from16 v147, p146

    move-object/from16 v148, p147

    invoke-direct/range {v1 .. v148}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1815
    :cond_0
    instance-of v1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1816
    :cond_1
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v1

    check-cast p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    invoke-virtual {p1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 1817
    :cond_2
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    if-eq v1, v3, :cond_3

    return v2

    .line 1818
    :cond_3
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 1819
    :cond_4
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    if-eq v1, v3, :cond_5

    return v2

    .line 1820
    :cond_5
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    if-eq v1, v3, :cond_6

    return v2

    .line 1821
    :cond_6
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 1822
    :cond_7
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 1823
    :cond_8
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    if-eq v1, v3, :cond_9

    return v2

    .line 1824
    :cond_9
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 1825
    :cond_a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    if-eq v1, v3, :cond_b

    return v2

    .line 1826
    :cond_b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    if-eq v1, v3, :cond_c

    return v2

    .line 1827
    :cond_c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    if-eq v1, v3, :cond_d

    return v2

    .line 1828
    :cond_d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    if-eq v1, v3, :cond_e

    return v2

    .line 1829
    :cond_e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    if-eq v1, v3, :cond_f

    return v2

    .line 1830
    :cond_f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    if-eq v1, v3, :cond_10

    return v2

    .line 1831
    :cond_10
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    if-eq v1, v3, :cond_11

    return v2

    .line 1832
    :cond_11
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    if-eq v1, v3, :cond_12

    return v2

    .line 1833
    :cond_12
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    if-eq v1, v3, :cond_13

    return v2

    .line 1834
    :cond_13
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    if-eq v1, v3, :cond_14

    return v2

    .line 1835
    :cond_14
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    if-eq v1, v3, :cond_15

    return v2

    .line 1836
    :cond_15
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    if-eq v1, v3, :cond_16

    return v2

    .line 1837
    :cond_16
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    if-eq v1, v3, :cond_17

    return v2

    .line 1838
    :cond_17
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    if-eq v1, v3, :cond_18

    return v2

    .line 1839
    :cond_18
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    if-eq v1, v3, :cond_19

    return v2

    .line 1840
    :cond_19
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    if-eq v1, v3, :cond_1a

    return v2

    .line 1841
    :cond_1a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    if-eq v1, v3, :cond_1b

    return v2

    .line 1842
    :cond_1b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    if-eq v1, v3, :cond_1c

    return v2

    .line 1843
    :cond_1c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    if-eq v1, v3, :cond_1d

    return v2

    .line 1844
    :cond_1d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    if-eq v1, v3, :cond_1e

    return v2

    .line 1845
    :cond_1e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    if-eq v1, v3, :cond_1f

    return v2

    .line 1846
    :cond_1f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    if-eq v1, v3, :cond_20

    return v2

    .line 1847
    :cond_20
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    if-eq v1, v3, :cond_21

    return v2

    .line 1848
    :cond_21
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    if-eq v1, v3, :cond_22

    return v2

    .line 1849
    :cond_22
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    if-eq v1, v3, :cond_23

    return v2

    .line 1850
    :cond_23
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    if-eq v1, v3, :cond_24

    return v2

    .line 1851
    :cond_24
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    if-eq v1, v3, :cond_25

    return v2

    .line 1852
    :cond_25
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    if-eq v1, v3, :cond_26

    return v2

    .line 1853
    :cond_26
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    if-eq v1, v3, :cond_27

    return v2

    .line 1854
    :cond_27
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    if-eq v1, v3, :cond_28

    return v2

    .line 1855
    :cond_28
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    if-eq v1, v3, :cond_29

    return v2

    .line 1856
    :cond_29
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    if-eq v1, v3, :cond_2a

    return v2

    .line 1857
    :cond_2a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    if-eq v1, v3, :cond_2b

    return v2

    .line 1858
    :cond_2b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    if-eq v1, v3, :cond_2c

    return v2

    .line 1859
    :cond_2c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    if-eq v1, v3, :cond_2d

    return v2

    .line 1860
    :cond_2d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    if-eq v1, v3, :cond_2e

    return v2

    .line 1861
    :cond_2e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    if-eq v1, v3, :cond_2f

    return v2

    .line 1862
    :cond_2f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    if-eq v1, v3, :cond_30

    return v2

    .line 1863
    :cond_30
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    if-eq v1, v3, :cond_31

    return v2

    .line 1864
    :cond_31
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    if-eq v1, v3, :cond_32

    return v2

    .line 1865
    :cond_32
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    if-eq v1, v3, :cond_33

    return v2

    .line 1866
    :cond_33
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    if-eq v1, v3, :cond_34

    return v2

    .line 1867
    :cond_34
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    if-eq v1, v3, :cond_35

    return v2

    .line 1868
    :cond_35
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    if-eq v1, v3, :cond_36

    return v2

    .line 1869
    :cond_36
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    if-eq v1, v3, :cond_37

    return v2

    .line 1870
    :cond_37
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    if-eq v1, v3, :cond_38

    return v2

    .line 1871
    :cond_38
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    if-eq v1, v3, :cond_39

    return v2

    .line 1872
    :cond_39
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    if-eq v1, v3, :cond_3a

    return v2

    .line 1873
    :cond_3a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    if-eq v1, v3, :cond_3b

    return v2

    .line 1874
    :cond_3b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    if-eq v1, v3, :cond_3c

    return v2

    .line 1875
    :cond_3c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    if-eq v1, v3, :cond_3d

    return v2

    .line 1876
    :cond_3d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    if-eq v1, v3, :cond_3e

    return v2

    .line 1877
    :cond_3e
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3f

    return v2

    .line 1878
    :cond_3f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    if-eq v1, v3, :cond_40

    return v2

    .line 1879
    :cond_40
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    if-eq v1, v3, :cond_41

    return v2

    .line 1880
    :cond_41
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    if-eq v1, v3, :cond_42

    return v2

    .line 1881
    :cond_42
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    if-eq v1, v3, :cond_43

    return v2

    .line 1882
    :cond_43
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    if-eq v1, v3, :cond_44

    return v2

    .line 1883
    :cond_44
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    if-eq v1, v3, :cond_45

    return v2

    .line 1884
    :cond_45
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_46

    return v2

    .line 1885
    :cond_46
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_47

    return v2

    .line 1886
    :cond_47
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    if-eq v1, v3, :cond_48

    return v2

    .line 1887
    :cond_48
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_49

    return v2

    .line 1888
    :cond_49
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    if-eq v1, v3, :cond_4a

    return v2

    .line 1889
    :cond_4a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    if-eq v1, v3, :cond_4b

    return v2

    .line 1890
    :cond_4b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    if-eq v1, v3, :cond_4c

    return v2

    .line 1891
    :cond_4c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    if-eq v1, v3, :cond_4d

    return v2

    .line 1892
    :cond_4d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    if-eq v1, v3, :cond_4e

    return v2

    .line 1893
    :cond_4e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    if-eq v1, v3, :cond_4f

    return v2

    .line 1894
    :cond_4f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    if-eq v1, v3, :cond_50

    return v2

    .line 1895
    :cond_50
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_51

    return v2

    .line 1896
    :cond_51
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    if-eq v1, v3, :cond_52

    return v2

    .line 1897
    :cond_52
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    if-eq v1, v3, :cond_53

    return v2

    .line 1898
    :cond_53
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_54

    return v2

    .line 1899
    :cond_54
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    if-eq v1, v3, :cond_55

    return v2

    .line 1900
    :cond_55
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_56

    return v2

    .line 1901
    :cond_56
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    if-eq v1, v3, :cond_57

    return v2

    .line 1902
    :cond_57
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    if-eq v1, v3, :cond_58

    return v2

    .line 1903
    :cond_58
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_59

    return v2

    .line 1904
    :cond_59
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_5a

    return v2

    .line 1905
    :cond_5a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    if-eq v1, v3, :cond_5b

    return v2

    .line 1906
    :cond_5b
    iget-object v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    iget-object v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    return v2

    .line 1907
    :cond_5c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    if-eq v1, v3, :cond_5d

    return v2

    .line 1908
    :cond_5d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    if-eq v1, v3, :cond_5e

    return v2

    .line 1909
    :cond_5e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    if-eq v1, v3, :cond_5f

    return v2

    .line 1910
    :cond_5f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    if-eq v1, v3, :cond_60

    return v2

    .line 1911
    :cond_60
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    if-eq v1, v3, :cond_61

    return v2

    .line 1912
    :cond_61
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    if-eq v1, v3, :cond_62

    return v2

    .line 1913
    :cond_62
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    if-eq v1, v3, :cond_63

    return v2

    .line 1914
    :cond_63
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    if-eq v1, v3, :cond_64

    return v2

    .line 1915
    :cond_64
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    if-eq v1, v3, :cond_65

    return v2

    .line 1916
    :cond_65
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    if-eq v1, v3, :cond_66

    return v2

    .line 1917
    :cond_66
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    if-eq v1, v3, :cond_67

    return v2

    .line 1918
    :cond_67
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    if-eq v1, v3, :cond_68

    return v2

    .line 1919
    :cond_68
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    if-eq v1, v3, :cond_69

    return v2

    .line 1920
    :cond_69
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    if-eq v1, v3, :cond_6a

    return v2

    .line 1921
    :cond_6a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    if-eq v1, v3, :cond_6b

    return v2

    .line 1922
    :cond_6b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    if-eq v1, v3, :cond_6c

    return v2

    .line 1923
    :cond_6c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    if-eq v1, v3, :cond_6d

    return v2

    .line 1924
    :cond_6d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    if-eq v1, v3, :cond_6e

    return v2

    .line 1925
    :cond_6e
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    if-eq v1, v3, :cond_6f

    return v2

    .line 1926
    :cond_6f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    if-eq v1, v3, :cond_70

    return v2

    .line 1927
    :cond_70
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    if-eq v1, v3, :cond_71

    return v2

    .line 1928
    :cond_71
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    if-eq v1, v3, :cond_72

    return v2

    .line 1929
    :cond_72
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    if-eq v1, v3, :cond_73

    return v2

    .line 1930
    :cond_73
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    if-eq v1, v3, :cond_74

    return v2

    .line 1931
    :cond_74
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    if-eq v1, v3, :cond_75

    return v2

    .line 1932
    :cond_75
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    if-eq v1, v3, :cond_76

    return v2

    .line 1933
    :cond_76
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    if-eq v1, v3, :cond_77

    return v2

    .line 1934
    :cond_77
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    if-eq v1, v3, :cond_78

    return v2

    .line 1935
    :cond_78
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    if-eq v1, v3, :cond_79

    return v2

    .line 1936
    :cond_79
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    if-eq v1, v3, :cond_7a

    return v2

    .line 1937
    :cond_7a
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    if-eq v1, v3, :cond_7b

    return v2

    .line 1938
    :cond_7b
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    if-eq v1, v3, :cond_7c

    return v2

    .line 1939
    :cond_7c
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    if-eq v1, v3, :cond_7d

    return v2

    .line 1940
    :cond_7d
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    if-eq v1, v3, :cond_7e

    return v2

    .line 1941
    :cond_7e
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7f

    return v2

    .line 1942
    :cond_7f
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    if-eq v1, v3, :cond_80

    return v2

    .line 1943
    :cond_80
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    if-eq v1, v3, :cond_81

    return v2

    .line 1944
    :cond_81
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    if-eq v1, v3, :cond_82

    return v2

    .line 1945
    :cond_82
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    if-eq v1, v3, :cond_83

    return v2

    .line 1946
    :cond_83
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    iget-boolean v3, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    if-eq v1, v3, :cond_84

    return v2

    .line 1947
    :cond_84
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_85

    return v2

    .line 1948
    :cond_85
    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    iget-wide v5, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_86

    return v2

    .line 1949
    :cond_86
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    iget-boolean p1, p1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    if-eq v1, p1, :cond_87

    return v2

    :cond_87
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1954
    iget v0, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->hashCode:I

    if-nez v0, :cond_1

    .line 1956
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x25

    .line 1957
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1958
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1959
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1960
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1961
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1962
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1963
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1964
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1965
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1966
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1967
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1968
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1969
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1970
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1971
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1972
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1973
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1974
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1975
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1976
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1977
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1978
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1979
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1980
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1981
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1982
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1983
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1984
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1985
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1986
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1987
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1988
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1989
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1990
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1991
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1992
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1993
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1994
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1995
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1996
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1997
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1998
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 1999
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2000
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2001
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2002
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2003
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2004
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2005
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2006
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2007
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2008
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2009
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2010
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2011
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2012
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2013
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2014
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2015
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2016
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2017
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2018
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2019
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2020
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2021
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2022
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2023
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2024
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2025
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2026
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2027
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2028
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2029
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2030
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2031
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2032
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2033
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2034
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2035
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2036
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2037
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2038
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2039
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2040
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2041
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2042
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2043
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2044
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2045
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2046
    iget-object v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2047
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2048
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2049
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2050
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2051
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2052
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2053
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2054
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2055
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2056
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2057
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2058
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2059
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2060
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2061
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2062
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2063
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2064
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2065
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2066
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2067
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2068
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2069
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2070
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2071
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2072
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2073
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2074
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2075
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2076
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2077
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2078
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2079
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2080
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2081
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2082
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2083
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2084
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2085
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2086
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2087
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2088
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    .line 2089
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 2090
    iput v0, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->hashCode:I

    :cond_1
    return v0
.end method

.method public bridge synthetic newBuilder()Lcom/squareup/wire/Message$Builder;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->newBuilder()Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public newBuilder()Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 3

    .line 1675
    new-instance v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;

    invoke-direct {v0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;-><init>()V

    .line 1676
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tipping_enabled:Z

    .line 1677
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->allow_non_browser_env:Z

    .line 1678
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_server_driven:Z

    .line 1679
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sdk_transaction_sessions:Z

    .line 1680
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->server_driven_poll_interval_seconds:J

    .line 1681
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposVersioning:Z

    .line 1682
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposDownloading:Z

    .line 1683
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_tipping:Z

    .line 1684
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_factory_reset_target:Z

    .line 1685
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect:Z

    .line 1686
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_updates:Z

    .line 1687
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_update_retries:Z

    .line 1688
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_cancel:Z

    .line 1689
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_roborabbit_ui_redesign:Z

    .line 1690
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect_release:Z

    .line 1691
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_new_oobe_flow:Z

    .line 1692
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot:Z

    .line 1693
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_offline_mode:Z

    .line 1694
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_updater_new_oobe_killswitch:Z

    .line 1695
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_iot:Z

    .line 1696
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_updates_flow:Z

    .line 1697
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_update_kill_switch:Z

    .line 1698
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktor_http_server:Z

    .line 1699
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_android_sdk_circuit_breaker:Z

    .line 1700
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_usb_connectivity:Z

    .line 1701
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_ios_sdk_circuit_breaker:Z

    .line 1702
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_logging_to_disk:Z

    .line 1703
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_moto_transactions:Z

    .line 1704
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_apk_signing_verification:Z

    .line 1705
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_p2pe_apk_signing_verification:Z

    .line 1706
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_crash_button_in_diagnostics:Z

    .line 1707
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_gif_splash_and_lightmode:Z

    .line 1708
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    .line 1709
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    .line 1710
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_android_sdk:Z

    .line 1711
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    .line 1712
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_aod_default_app:Z

    .line 1713
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_bbpos_assets_update_components:Z

    .line 1714
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_eftpos_routing:Z

    .line 1715
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_payment_collection_android_sdk:Z

    .line 1716
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_logger_dispatcher:Z

    .line 1717
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tip_eligible_amounts_circuit_breaker:Z

    .line 1718
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_client_respond_via_iot:Z

    .line 1719
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sharing_device_report:Z

    .line 1720
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_traces_to_observability_data_endpoint:Z

    .line 1721
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_reader_bbpos_proxy:Z

    .line 1722
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_sdk_force_key_injection_when_unknown_keys:Z

    .line 1723
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_display_reader_charge_summary:Z

    .line 1724
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_bypass_reader_charge_summary:Z

    .line 1725
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_application_selection_in_quick_chip:Z

    .line 1726
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_configure_reboot_time_with_device_ui:Z

    .line 1727
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_armada_reauthentication_flow:Z

    .line 1728
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_send_bbpos_debug_logs_to_splunk:Z

    .line 1729
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_hadr_polling:Z

    .line 1730
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mainland_post_action_result:Z

    .line 1731
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessibility_app:Z

    .line 1732
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mag_stripe_pin:Z

    .line 1733
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_bbpos_debug_logging:Z

    .line 1734
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->configure_device_reboot_time_kill_switch:Z

    .line 1735
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_app_crash_logging:Z

    .line 1736
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_app_crash_logging_poll_interval_millis:J

    .line 1737
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_rom_verification:Z

    .line 1738
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->battery_charging_dialog_killswitch:Z

    .line 1739
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_emv_config_from_backend:Z

    .line 1740
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_charging_dialog:Z

    .line 1741
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->internal_storage_quota_circuit_breaker:Z

    .line 1742
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_event_channel_on_reader:Z

    .line 1743
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    .line 1744
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    .line 1745
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_settings_intent_logging:Z

    .line 1746
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_settings_intent_logging_poll_interval_millis:J

    .line 1747
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_add_merchant_info_to_edge_headers:Z

    .line 1748
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_key_auto_recovery_flow:Z

    .line 1749
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_callback_key_recovery_flow:Z

    .line 1750
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_forms_on_sdk:Z

    .line 1751
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_customer_cancellation_feature:Z

    .line 1752
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_background_update_split_download_and_install:Z

    .line 1753
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_temperature_logging:Z

    .line 1754
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_temperature_logging_poll_interval_millis:J

    .line 1755
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_warden_release_serial_port:Z

    .line 1756
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_rom_sdk_kernel_logging:Z

    .line 1757
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_sdk_kernel_logging_poll_interval_millis:J

    .line 1758
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_kill_for_memory_event_logging:Z

    .line 1759
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->kill_for_memory_event_logging_poll_interval_millis:J

    .line 1760
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->migrate_iot_endpoint_to_iot_service:Z

    .line 1761
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessible_pin:Z

    .line 1762
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_non_seamless_updates_millis:J

    .line 1763
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_seamless_updates_millis:J

    .line 1764
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_pin:Z

    .line 1765
    iget-object v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    iput-object v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    .line 1766
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_dcc:Z

    .line 1767
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttp_auto_reconnect:Z

    .line 1768
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_respond_via_rpc:Z

    .line 1769
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->selection_form_toggles_below_submit_buttons:Z

    .line 1770
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_pair_unseen_reader_circuit_breaker:Z

    .line 1771
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    .line 1772
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_not_charging_events_logging:Z

    .line 1773
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_etna_cav_kfc_updates_check:Z

    .line 1774
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_terminal_surcharging:Z

    .line 1775
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ios_deferred_logging:Z

    .line 1776
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_settings_menu:Z

    .line 1777
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_setup_intents_enabled:Z

    .line 1778
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->mobile_wallet_on_offline_setup_intents_enabled:Z

    .line 1779
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_release_build_to_override_local_ip:Z

    .line 1780
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_predip:Z

    .line 1781
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_accessibility_volume_control:Z

    .line 1782
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_incremental_auth_ui:Z

    .line 1783
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_remove_duplicate_subtotal_string:Z

    .line 1784
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_force_pin_entry:Z

    .line 1785
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_discrepancy_reporting_pcs:Z

    .line 1786
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_pcs:Z

    .line 1787
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_collect_inputs_interstitial_screen:Z

    .line 1788
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_post_collect_merchant_ui:Z

    .line 1789
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_firmware_integrity_error_recovery:Z

    .line 1790
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_pi:Z

    .line 1791
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_si:Z

    .line 1792
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_fixed_iot_reconnect_delay:Z

    .line 1793
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    .line 1794
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_spos_girocard:Z

    .line 1795
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_run_attestation_before_pin:Z

    .line 1796
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_background_iot_state_machine:Z

    .line 1797
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_call_to_armada_for_boot_initialization:Z

    .line 1798
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_eftpos_payments:Z

    .line 1799
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_card_inserted_from_prev_txn_check:Z

    .line 1800
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->apps_on_devices_start_transaction_timeout_millis:J

    .line 1801
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_start_transaction_timeout:Z

    .line 1802
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_start_reader_activity_on_state:Z

    .line 1803
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_process_messages_with_new_state_machine:Z

    .line 1804
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_standalone_app:Z

    .line 1805
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mandatory_updates:Z

    .line 1806
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_delay_millis:J

    .line 1807
    iget-wide v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    iput-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    .line 1808
    iget-boolean v1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    iput-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wifi_radio_s710_alpha:Z

    .line 1809
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->unknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->addUnknownFields(Lokio/ByteString;)Lcom/squareup/wire/Message$Builder;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 2096
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 2097
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tipping_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tipping_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2098
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "allow_non_browser_env="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->allow_non_browser_env:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2099
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_server_driven="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_server_driven:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2100
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_sdk_transaction_sessions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sdk_transaction_sessions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2101
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server_driven_poll_interval_seconds="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->server_driven_poll_interval_seconds:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2102
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enableBbposVersioning="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposVersioning:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2103
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enableBbposDownloading="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enableBbposDownloading:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2104
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_on_reader_tipping="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_tipping:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_updater_factory_reset_target="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_factory_reset_target:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_connect_and_collect="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2107
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_firmware_updates="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_updates:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2108
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_firmware_update_retries="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_firmware_update_retries:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_on_reader_cancel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_on_reader_cancel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2110
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_roborabbit_ui_redesign="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_roborabbit_ui_redesign:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2111
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_connect_and_collect_release="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_connect_and_collect_release:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_updater_new_oobe_flow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_updater_new_oobe_flow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_iot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2114
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_offline_mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_offline_mode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_wpe_updater_new_oobe_killswitch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_updater_new_oobe_killswitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2116
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_iot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_iot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2117
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_new_updates_flow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_updates_flow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2118
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rom_update_kill_switch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_update_kill_switch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ktor_http_server="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktor_http_server:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wp3_tipping_android_sdk_circuit_breaker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_android_sdk_circuit_breaker:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2121
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_usb_connectivity="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_usb_connectivity:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2122
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wp3_tipping_ios_sdk_circuit_breaker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->wp3_tipping_ios_sdk_circuit_breaker:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2123
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_logging_to_disk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_logging_to_disk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_moto_transactions="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_moto_transactions:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2125
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_p2pe_apk_signing_verification="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_apk_signing_verification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2126
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_p2pe_apk_signing_verification="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_p2pe_apk_signing_verification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2127
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_crash_button_in_diagnostics="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_crash_button_in_diagnostics:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2128
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_gif_splash_and_lightmode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_gif_splash_and_lightmode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bluetooth_auto_reconnect_android_sdk_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2130
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bluetooth_auto_reconnect_ios_sdk_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2131
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_bluetooth_auto_reconnect_android_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_android_sdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_bluetooth_auto_reconnect_ios_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2133
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_aod_default_app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_aod_default_app:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_new_bbpos_assets_update_components="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_bbpos_assets_update_components:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2135
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_eftpos_routing="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_eftpos_routing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2136
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_new_payment_collection_android_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_payment_collection_android_sdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2137
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_client_logger_dispatcher="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_logger_dispatcher:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tip_eligible_amounts_circuit_breaker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->tip_eligible_amounts_circuit_breaker:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_iot_client_respond_via_iot="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_client_respond_via_iot:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2140
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_sharing_device_report="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_sharing_device_report:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2141
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_traces_to_observability_data_endpoint="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_traces_to_observability_data_endpoint:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_reader_bbpos_proxy="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_reader_bbpos_proxy:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2143
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_sdk_force_key_injection_when_unknown_keys="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_sdk_force_key_injection_when_unknown_keys:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2144
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shopify_display_reader_charge_summary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_display_reader_charge_summary:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2145
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "shopify_bypass_reader_charge_summary="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->shopify_bypass_reader_charge_summary:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2146
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_application_selection_in_quick_chip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_application_selection_in_quick_chip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2147
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_configure_reboot_time_with_device_ui="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_configure_reboot_time_with_device_ui:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2148
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_armada_reauthentication_flow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_armada_reauthentication_flow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2149
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_send_bbpos_debug_logs_to_splunk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_send_bbpos_debug_logs_to_splunk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2150
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_iot_hadr_polling="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_hadr_polling:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2151
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_mainland_post_action_result="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mainland_post_action_result:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2152
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_client_accessibility_app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessibility_app:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2153
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_mag_stripe_pin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mag_stripe_pin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2154
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_bbpos_debug_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_bbpos_debug_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2155
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "configure_device_reboot_time_kill_switch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->configure_device_reboot_time_kill_switch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2156
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_third_party_app_crash_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_app_crash_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2157
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "third_party_app_crash_logging_poll_interval_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_app_crash_logging_poll_interval_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2158
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_p2pe_rom_verification="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_p2pe_rom_verification:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2159
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "battery_charging_dialog_killswitch="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->battery_charging_dialog_killswitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2160
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ttpa_emv_config_from_backend="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_emv_config_from_backend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2161
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_battery_charging_dialog="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_charging_dialog:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2162
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "internal_storage_quota_circuit_breaker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->internal_storage_quota_circuit_breaker:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2163
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_event_channel_on_reader="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_event_channel_on_reader:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2164
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_plugged_in_but_not_charging_minimum_battery_discharge_percent="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2165
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_plugged_in_but_not_charging_minimum_required_duration_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2166
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_third_party_settings_intent_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_third_party_settings_intent_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2167
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "third_party_settings_intent_logging_poll_interval_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->third_party_settings_intent_logging_poll_interval_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2168
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_add_merchant_info_to_edge_headers="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_add_merchant_info_to_edge_headers:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2169
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_device_key_auto_recovery_flow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_key_auto_recovery_flow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_device_callback_key_recovery_flow="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_callback_key_recovery_flow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2171
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_forms_on_sdk="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_forms_on_sdk:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2172
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_customer_cancellation_feature="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_customer_cancellation_feature:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2173
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_background_update_split_download_and_install="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_background_update_split_download_and_install:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2174
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_device_temperature_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_device_temperature_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2175
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "device_temperature_logging_poll_interval_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->device_temperature_logging_poll_interval_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2176
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_warden_release_serial_port="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_warden_release_serial_port:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2177
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_rom_sdk_kernel_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_rom_sdk_kernel_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2178
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rom_sdk_kernel_logging_poll_interval_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_sdk_kernel_logging_poll_interval_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2179
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_kill_for_memory_event_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_kill_for_memory_event_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2180
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kill_for_memory_event_logging_poll_interval_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->kill_for_memory_event_logging_poll_interval_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2181
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "migrate_iot_endpoint_to_iot_service="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->migrate_iot_endpoint_to_iot_service:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2182
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_client_accessible_pin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_client_accessible_pin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2183
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rom_install_timeout_non_seamless_updates_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_non_seamless_updates_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "rom_install_timeout_seamless_updates_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->rom_install_timeout_seamless_updates_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2185
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ttpa_pin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_pin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2186
    iget-object v2, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android_system_event_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2187
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_dcc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_dcc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2188
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ttp_auto_reconnect="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttp_auto_reconnect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2189
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_iot_respond_via_rpc="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_iot_respond_via_rpc:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2190
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "selection_form_toggles_below_submit_buttons="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->selection_form_toggles_below_submit_buttons:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2191
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_pair_unseen_reader_circuit_breaker="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_pair_unseen_reader_circuit_breaker:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_battery_not_charging_events_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_battery_not_charging_events_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2194
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_etna_cav_kfc_updates_check="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_etna_cav_kfc_updates_check:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2195
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_terminal_surcharging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_terminal_surcharging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2196
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ios_deferred_logging="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ios_deferred_logging:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2197
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_apps_on_devices_settings_menu="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_settings_menu:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2198
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "offline_setup_intents_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->offline_setup_intents_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2199
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mobile_wallet_on_offline_setup_intents_enabled="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->mobile_wallet_on_offline_setup_intents_enabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_release_build_to_override_local_ip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_release_build_to_override_local_ip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2201
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_predip="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_predip:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_wpe_accessibility_volume_control="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_accessibility_volume_control:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2203
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_new_incremental_auth_ui="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_incremental_auth_ui:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2204
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_remove_duplicate_subtotal_string="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_remove_duplicate_subtotal_string:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2205
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_force_pin_entry="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_force_pin_entry:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ktlv_discrepancy_reporting_pcs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_discrepancy_reporting_pcs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2207
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ktlv_pcs="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ktlv_pcs:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2208
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_collect_inputs_interstitial_screen="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_collect_inputs_interstitial_screen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2209
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_apps_on_devices_post_collect_merchant_ui="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_post_collect_merchant_ui:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2210
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_wpe_firmware_integrity_error_recovery="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_firmware_integrity_error_recovery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2211
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_force_pin_entry_for_pi="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_pi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2212
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_force_pin_entry_for_si="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_force_pin_entry_for_si:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_fixed_iot_reconnect_delay="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_fixed_iot_reconnect_delay:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_wpe_unauthenticated_device_integrity_error_recovery="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2215
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_spos_girocard="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_spos_girocard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2216
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ttpa_run_attestation_before_pin="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_run_attestation_before_pin:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2217
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_new_background_iot_state_machine="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_new_background_iot_state_machine:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2218
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_call_to_armada_for_boot_initialization="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_call_to_armada_for_boot_initialization:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2219
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_ttpa_eftpos_payments="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_ttpa_eftpos_payments:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2220
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "disable_card_inserted_from_prev_txn_check="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->disable_card_inserted_from_prev_txn_check:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "apps_on_devices_start_transaction_timeout_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->apps_on_devices_start_transaction_timeout_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2222
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_apps_on_devices_start_transaction_timeout="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_apps_on_devices_start_transaction_timeout:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2223
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_start_reader_activity_on_state="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_start_reader_activity_on_state:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2224
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_process_messages_with_new_state_machine="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_process_messages_with_new_state_machine:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_standalone_app="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_standalone_app:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2226
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_mandatory_updates="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_mandatory_updates:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2227
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smart_reader_transaction_summary_delay_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_delay_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2228
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "smart_reader_transaction_summary_unsuccessful_delay_millis="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2229
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "enable_wifi_radio_s710_alpha="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags;->enable_wifi_radio_s710_alpha:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2230
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    const-string v0, ", "

    move-object v4, v0

    check-cast v4, Ljava/lang/CharSequence;

    const-string v0, "ReaderFeatureFlags{"

    move-object v5, v0

    check-cast v5, Ljava/lang/CharSequence;

    const-string v0, "}"

    move-object v6, v0

    check-cast v6, Ljava/lang/CharSequence;

    const/16 v10, 0x38

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v11}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
