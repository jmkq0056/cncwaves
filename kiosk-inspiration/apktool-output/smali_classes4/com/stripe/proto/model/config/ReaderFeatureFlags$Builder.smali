.class public final Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "ReaderFeatureFlags.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/config/ReaderFeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0003\u0008\u0084\u0001\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u0010\u0010\u0006\u001a\u00020\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u000e\u0010\u0008\u001a\u00020\u00002\u0006\u0010\u0008\u001a\u00020\tJ\u0010\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u0005H\u0007J\u000e\u0010\u000b\u001a\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0005J\u000e\u0010\u000c\u001a\u00020\u00002\u0006\u0010\u000c\u001a\u00020\u0005J\t\u0010\u008c\u0001\u001a\u00020\u0002H\u0016J\u000e\u0010\r\u001a\u00020\u00002\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\u00002\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0005J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0005J\u000e\u0010\u0014\u001a\u00020\u00002\u0006\u0010\u0014\u001a\u00020\u0005J\u0010\u0010\u0015\u001a\u00020\u00002\u0006\u0010\u0015\u001a\u00020\u0005H\u0007J\u000e\u0010\u0016\u001a\u00020\u00002\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u0017\u001a\u00020\u00002\u0006\u0010\u0017\u001a\u00020\u0005J\u000e\u0010\u0018\u001a\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0005J\u000e\u0010\u0019\u001a\u00020\u00002\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001a\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0005J\u000e\u0010\u001c\u001a\u00020\u00002\u0006\u0010\u001c\u001a\u00020\u0005J\u0010\u0010\u001d\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0005H\u0007J\u000e\u0010\u001e\u001a\u00020\u00002\u0006\u0010\u001e\u001a\u00020\u0005J\u000e\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001f\u001a\u00020\u0005J\u000e\u0010 \u001a\u00020\u00002\u0006\u0010 \u001a\u00020\u0005J\u000e\u0010!\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0005J\u000e\u0010\"\u001a\u00020\u00002\u0006\u0010\"\u001a\u00020\u0005J\u000e\u0010#\u001a\u00020\u00002\u0006\u0010#\u001a\u00020\u0005J\u000e\u0010$\u001a\u00020\u00002\u0006\u0010$\u001a\u00020\u0005J\u000e\u0010%\u001a\u00020\u00002\u0006\u0010%\u001a\u00020\u0005J\u000e\u0010&\u001a\u00020\u00002\u0006\u0010&\u001a\u00020\u0005J\u000e\u0010\'\u001a\u00020\u00002\u0006\u0010\'\u001a\u00020\u0005J\u000e\u0010(\u001a\u00020\u00002\u0006\u0010(\u001a\u00020\u0005J\u000e\u0010)\u001a\u00020\u00002\u0006\u0010)\u001a\u00020\u0005J\u000e\u0010*\u001a\u00020\u00002\u0006\u0010*\u001a\u00020\u0005J\u000e\u0010+\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0005J\u000e\u0010,\u001a\u00020\u00002\u0006\u0010,\u001a\u00020\u0005J\u0010\u0010-\u001a\u00020\u00002\u0006\u0010-\u001a\u00020\u0005H\u0007J\u0010\u0010.\u001a\u00020\u00002\u0006\u0010.\u001a\u00020\u0005H\u0007J\u000e\u0010/\u001a\u00020\u00002\u0006\u0010/\u001a\u00020\u0005J\u000e\u00100\u001a\u00020\u00002\u0006\u00100\u001a\u00020\u0005J\u000e\u00101\u001a\u00020\u00002\u0006\u00101\u001a\u00020\u0005J\u000e\u00102\u001a\u00020\u00002\u0006\u00102\u001a\u00020\u0005J\u000e\u00103\u001a\u00020\u00002\u0006\u00103\u001a\u00020\u0005J\u000e\u00104\u001a\u00020\u00002\u0006\u00104\u001a\u00020\u0005J\u0010\u00105\u001a\u00020\u00002\u0006\u00105\u001a\u00020\u0005H\u0007J\u000e\u00106\u001a\u00020\u00002\u0006\u00106\u001a\u00020\u0005J\u0010\u00107\u001a\u00020\u00002\u0006\u00107\u001a\u00020\u0005H\u0007J\u000e\u00108\u001a\u00020\u00002\u0006\u00108\u001a\u00020\u0005J\u000e\u00109\u001a\u00020\u00002\u0006\u00109\u001a\u00020\u0005J\u000e\u0010:\u001a\u00020\u00002\u0006\u0010:\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00002\u0006\u0010;\u001a\u00020\u0005J\u000e\u0010<\u001a\u00020\u00002\u0006\u0010<\u001a\u00020\u0005J\u0010\u0010=\u001a\u00020\u00002\u0006\u0010=\u001a\u00020\u0005H\u0007J\u000e\u0010>\u001a\u00020\u00002\u0006\u0010>\u001a\u00020\u0005J\u0010\u0010?\u001a\u00020\u00002\u0006\u0010?\u001a\u00020\u0005H\u0007J\u0010\u0010@\u001a\u00020\u00002\u0006\u0010@\u001a\u00020\u0005H\u0007J\u000e\u0010A\u001a\u00020\u00002\u0006\u0010A\u001a\u00020\u0005J\u000e\u0010B\u001a\u00020\u00002\u0006\u0010B\u001a\u00020\u0005J\u000e\u0010C\u001a\u00020\u00002\u0006\u0010C\u001a\u00020\u0005J\u000e\u0010D\u001a\u00020\u00002\u0006\u0010D\u001a\u00020\u0005J\u000e\u0010E\u001a\u00020\u00002\u0006\u0010E\u001a\u00020\u0005J\u000e\u0010F\u001a\u00020\u00002\u0006\u0010F\u001a\u00020\u0005J\u0010\u0010G\u001a\u00020\u00002\u0006\u0010G\u001a\u00020\u0005H\u0007J\u000e\u0010H\u001a\u00020\u00002\u0006\u0010H\u001a\u00020\u0005J\u000e\u0010I\u001a\u00020\u00002\u0006\u0010I\u001a\u00020\u0005J\u0010\u0010J\u001a\u00020\u00002\u0006\u0010J\u001a\u00020\u0005H\u0007J\u000e\u0010K\u001a\u00020\u00002\u0006\u0010K\u001a\u00020\u0005J\u000e\u0010L\u001a\u00020\u00002\u0006\u0010L\u001a\u00020\u0005J\u000e\u0010M\u001a\u00020\u00002\u0006\u0010M\u001a\u00020\u0005J\u0010\u0010N\u001a\u00020\u00002\u0006\u0010N\u001a\u00020\u0005H\u0007J\u000e\u0010O\u001a\u00020\u00002\u0006\u0010O\u001a\u00020\u0005J\u000e\u0010P\u001a\u00020\u00002\u0006\u0010P\u001a\u00020\u0005J\u0010\u0010Q\u001a\u00020\u00002\u0006\u0010Q\u001a\u00020\u0005H\u0007J\u000e\u0010R\u001a\u00020\u00002\u0006\u0010R\u001a\u00020\u0005J\u0010\u0010S\u001a\u00020\u00002\u0006\u0010S\u001a\u00020\u0005H\u0007J\u0010\u0010T\u001a\u00020\u00002\u0006\u0010T\u001a\u00020\u0005H\u0007J\u000e\u0010U\u001a\u00020\u00002\u0006\u0010U\u001a\u00020\u0005J\u000e\u0010V\u001a\u00020\u00002\u0006\u0010V\u001a\u00020\u0005J\u000e\u0010W\u001a\u00020\u00002\u0006\u0010W\u001a\u00020\u0005J\u0010\u0010X\u001a\u00020\u00002\u0006\u0010X\u001a\u00020\u0005H\u0007J\u000e\u0010Y\u001a\u00020\u00002\u0006\u0010Y\u001a\u00020\u0005J\u0010\u0010Z\u001a\u00020\u00002\u0006\u0010Z\u001a\u00020\u0005H\u0007J\u0010\u0010[\u001a\u00020\u00002\u0006\u0010[\u001a\u00020\u0005H\u0007J\u000e\u0010\\\u001a\u00020\u00002\u0006\u0010\\\u001a\u00020\u0005J\u000e\u0010]\u001a\u00020\u00002\u0006\u0010]\u001a\u00020\u0005J\u000e\u0010^\u001a\u00020\u00002\u0006\u0010^\u001a\u00020\u0005J\u0010\u0010_\u001a\u00020\u00002\u0006\u0010_\u001a\u00020\u0005H\u0007J\u000e\u0010`\u001a\u00020\u00002\u0006\u0010`\u001a\u00020\u0005J\u000e\u0010a\u001a\u00020\u00002\u0006\u0010a\u001a\u00020\u0005J\u000e\u0010b\u001a\u00020\u00002\u0006\u0010b\u001a\u00020\u0005J\u000e\u0010c\u001a\u00020\u00002\u0006\u0010c\u001a\u00020\u0005J\u000e\u0010d\u001a\u00020\u00002\u0006\u0010d\u001a\u00020\u0005J\u000e\u0010e\u001a\u00020\u00002\u0006\u0010e\u001a\u00020\u0005J\u000e\u0010f\u001a\u00020\u00002\u0006\u0010f\u001a\u00020\u0005J\u000e\u0010g\u001a\u00020\u00002\u0006\u0010g\u001a\u00020\u0005J\u000e\u0010h\u001a\u00020\u00002\u0006\u0010h\u001a\u00020\u0005J\u000e\u0010i\u001a\u00020\u00002\u0006\u0010i\u001a\u00020\u0005J\u000e\u0010j\u001a\u00020\u00002\u0006\u0010j\u001a\u00020\u0005J\u000e\u0010k\u001a\u00020\u00002\u0006\u0010k\u001a\u00020\u0005J\u000e\u0010l\u001a\u00020\u00002\u0006\u0010l\u001a\u00020\u0005J\u0010\u0010m\u001a\u00020\u00002\u0006\u0010m\u001a\u00020\u0005H\u0007J\u0010\u0010n\u001a\u00020\u00002\u0006\u0010n\u001a\u00020\u0005H\u0007J\u000e\u0010o\u001a\u00020\u00002\u0006\u0010o\u001a\u00020\u0005J\u000e\u0010p\u001a\u00020\u00002\u0006\u0010p\u001a\u00020\u0005J\u000e\u0010q\u001a\u00020\u00002\u0006\u0010q\u001a\u00020\u0005J\u000e\u0010r\u001a\u00020\u00002\u0006\u0010r\u001a\u00020\u0005J\u000e\u0010s\u001a\u00020\u00002\u0006\u0010s\u001a\u00020\u0005J\u000e\u0010t\u001a\u00020\u00002\u0006\u0010t\u001a\u00020\u0005J\u000e\u0010u\u001a\u00020\u00002\u0006\u0010u\u001a\u00020\u0005J\u000e\u0010v\u001a\u00020\u00002\u0006\u0010v\u001a\u00020\u0005J\u000e\u0010w\u001a\u00020\u00002\u0006\u0010w\u001a\u00020\tJ\u000e\u0010x\u001a\u00020\u00002\u0006\u0010x\u001a\u00020\u0005J\u000e\u0010y\u001a\u00020\u00002\u0006\u0010y\u001a\u00020\u0005J\u0010\u0010z\u001a\u00020\u00002\u0006\u0010z\u001a\u00020\u0005H\u0007J\u000e\u0010{\u001a\u00020\u00002\u0006\u0010{\u001a\u00020\u0005J\u000e\u0010|\u001a\u00020\u00002\u0006\u0010|\u001a\u00020\tJ\u000e\u0010}\u001a\u00020\u00002\u0006\u0010}\u001a\u00020\tJ\u000e\u0010~\u001a\u00020\u00002\u0006\u0010~\u001a\u00020\tJ\u000e\u0010\u007f\u001a\u00020\u00002\u0006\u0010\u007f\u001a\u00020\u0005J\u0010\u0010\u0080\u0001\u001a\u00020\u00002\u0007\u0010\u0080\u0001\u001a\u00020\u0005J\u0012\u0010\u0081\u0001\u001a\u00020\u00002\u0007\u0010\u0081\u0001\u001a\u00020\tH\u0007J\u0010\u0010\u0082\u0001\u001a\u00020\u00002\u0007\u0010\u0082\u0001\u001a\u00020\u0005J\u0012\u0010\u0083\u0001\u001a\u00020\u00002\u0007\u0010\u0083\u0001\u001a\u00020\u0005H\u0007J\u0010\u0010\u0084\u0001\u001a\u00020\u00002\u0007\u0010\u0084\u0001\u001a\u00020\tJ\u0010\u0010\u0085\u0001\u001a\u00020\u00002\u0007\u0010\u0085\u0001\u001a\u00020\tJ\u0010\u0010\u0086\u0001\u001a\u00020\u00002\u0007\u0010\u0086\u0001\u001a\u00020\tJ\u0010\u0010\u0087\u0001\u001a\u00020\u00002\u0007\u0010\u0087\u0001\u001a\u00020\tJ\u0010\u0010\u0088\u0001\u001a\u00020\u00002\u0007\u0010\u0088\u0001\u001a\u00020\u0005J\u0010\u0010\u0089\u0001\u001a\u00020\u00002\u0007\u0010\u0089\u0001\u001a\u00020\u0005J\u0010\u0010\u008a\u0001\u001a\u00020\u00002\u0007\u0010\u008a\u0001\u001a\u00020\u0005J\u0010\u0010\u008b\u0001\u001a\u00020\u00002\u0007\u0010\u008b\u0001\u001a\u00020\u0005R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0014\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010!\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\"\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010#\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010&\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\'\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010,\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00101\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00102\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00103\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00104\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00105\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00106\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00107\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00108\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00109\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010:\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010<\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010>\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010?\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010@\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010B\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010C\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010D\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010E\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010F\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010G\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010H\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010I\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010J\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010K\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010L\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010M\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010N\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010O\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010P\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010R\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010S\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010T\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010U\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010V\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010W\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010X\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Y\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Z\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010[\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\\\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010]\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010^\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010_\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010`\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010a\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010b\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010c\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010d\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010e\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010g\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010h\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010i\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010j\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010k\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010l\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010m\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010n\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010o\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010p\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010q\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010r\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010s\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010t\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010u\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010v\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010w\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010x\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010y\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010z\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010{\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010|\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010}\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010~\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u007f\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0080\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0081\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0082\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0083\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0084\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0085\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0086\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0087\u0001\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0088\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0089\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u008a\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u008b\u0001\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u008d\u0001"
    }
    d2 = {
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags;",
        "()V",
        "allow_non_browser_env",
        "",
        "android_system_event_logging",
        "Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;",
        "apps_on_devices_start_transaction_timeout_millis",
        "",
        "battery_charging_dialog_killswitch",
        "bluetooth_auto_reconnect_android_sdk_enabled",
        "bluetooth_auto_reconnect_ios_sdk_enabled",
        "configure_device_reboot_time_kill_switch",
        "device_plugged_in_but_not_charging_minimum_battery_discharge_percent",
        "device_plugged_in_but_not_charging_minimum_required_duration_millis",
        "device_temperature_logging_poll_interval_millis",
        "disable_bluetooth_auto_reconnect_android_sdk",
        "disable_bluetooth_auto_reconnect_ios_sdk",
        "disable_card_inserted_from_prev_txn_check",
        "disable_event_channel_on_reader",
        "disable_force_pin_entry",
        "disable_iot",
        "disable_p2pe_apk_signing_verification",
        "disable_predip",
        "disable_sdk_force_key_injection_when_unknown_keys",
        "enableBbposDownloading",
        "enableBbposVersioning",
        "enable_add_merchant_info_to_edge_headers",
        "enable_aod_default_app",
        "enable_application_selection_in_quick_chip",
        "enable_apps_on_devices_post_collect_merchant_ui",
        "enable_apps_on_devices_settings_menu",
        "enable_apps_on_devices_start_transaction_timeout",
        "enable_armada_reauthentication_flow",
        "enable_background_update_split_download_and_install",
        "enable_battery_charging_dialog",
        "enable_battery_not_charging_events_logging",
        "enable_bbpos_debug_logging",
        "enable_call_to_armada_for_boot_initialization",
        "enable_client_accessibility_app",
        "enable_client_accessible_pin",
        "enable_client_logger_dispatcher",
        "enable_collect_inputs_interstitial_screen",
        "enable_configure_reboot_time_with_device_ui",
        "enable_connect_and_collect",
        "enable_connect_and_collect_release",
        "enable_crash_button_in_diagnostics",
        "enable_customer_cancellation_feature",
        "enable_dcc",
        "enable_device_callback_key_recovery_flow",
        "enable_device_key_auto_recovery_flow",
        "enable_device_temperature_logging",
        "enable_eftpos_routing",
        "enable_etna_cav_kfc_updates_check",
        "enable_firmware_update_retries",
        "enable_firmware_updates",
        "enable_fixed_iot_reconnect_delay",
        "enable_force_pin_entry_for_pi",
        "enable_force_pin_entry_for_si",
        "enable_forms_on_sdk",
        "enable_gif_splash_and_lightmode",
        "enable_ios_deferred_logging",
        "enable_iot",
        "enable_iot_client_respond_via_iot",
        "enable_iot_hadr_polling",
        "enable_iot_respond_via_rpc",
        "enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests",
        "enable_kill_for_memory_event_logging",
        "enable_ktlv_discrepancy_reporting_pcs",
        "enable_ktlv_pcs",
        "enable_ktor_http_server",
        "enable_logging_to_disk",
        "enable_mag_stripe_pin",
        "enable_mainland_post_action_result",
        "enable_mandatory_updates",
        "enable_moto_transactions",
        "enable_new_background_iot_state_machine",
        "enable_new_bbpos_assets_update_components",
        "enable_new_incremental_auth_ui",
        "enable_new_payment_collection_android_sdk",
        "enable_new_updates_flow",
        "enable_offline_mode",
        "enable_on_reader_cancel",
        "enable_on_reader_tipping",
        "enable_p2pe_apk_signing_verification",
        "enable_p2pe_rom_verification",
        "enable_process_messages_with_new_state_machine",
        "enable_reader_bbpos_proxy",
        "enable_release_build_to_override_local_ip",
        "enable_remove_duplicate_subtotal_string",
        "enable_roborabbit_ui_redesign",
        "enable_rom_sdk_kernel_logging",
        "enable_sdk_transaction_sessions",
        "enable_send_bbpos_debug_logs_to_splunk",
        "enable_server_driven",
        "enable_sharing_device_report",
        "enable_spos_girocard",
        "enable_standalone_app",
        "enable_start_reader_activity_on_state",
        "enable_terminal_surcharging",
        "enable_third_party_app_crash_logging",
        "enable_third_party_settings_intent_logging",
        "enable_traces_to_observability_data_endpoint",
        "enable_ttp_auto_reconnect",
        "enable_ttpa_eftpos_payments",
        "enable_ttpa_emv_config_from_backend",
        "enable_ttpa_pin",
        "enable_ttpa_run_attestation_before_pin",
        "enable_updater_factory_reset_target",
        "enable_updater_new_oobe_flow",
        "enable_usb_connectivity",
        "enable_warden_release_serial_port",
        "enable_wifi_radio_s710_alpha",
        "enable_wpe_accessibility_volume_control",
        "enable_wpe_firmware_integrity_error_recovery",
        "enable_wpe_unauthenticated_device_integrity_error_recovery",
        "enable_wpe_updater_new_oobe_killswitch",
        "internal_storage_quota_circuit_breaker",
        "kill_for_memory_event_logging_poll_interval_millis",
        "migrate_iot_endpoint_to_iot_service",
        "mobile_wallet_on_offline_setup_intents_enabled",
        "offline_pair_unseen_reader_circuit_breaker",
        "offline_setup_intents_enabled",
        "rom_install_timeout_non_seamless_updates_millis",
        "rom_install_timeout_seamless_updates_millis",
        "rom_sdk_kernel_logging_poll_interval_millis",
        "rom_update_kill_switch",
        "selection_form_toggles_below_submit_buttons",
        "server_driven_poll_interval_seconds",
        "shopify_bypass_reader_charge_summary",
        "shopify_display_reader_charge_summary",
        "smart_reader_transaction_summary_delay_millis",
        "smart_reader_transaction_summary_unsuccessful_delay_millis",
        "third_party_app_crash_logging_poll_interval_millis",
        "third_party_settings_intent_logging_poll_interval_millis",
        "tip_eligible_amounts_circuit_breaker",
        "tipping_enabled",
        "wp3_tipping_android_sdk_circuit_breaker",
        "wp3_tipping_ios_sdk_circuit_breaker",
        "build",
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


# instance fields
.field public allow_non_browser_env:Z

.field public android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

.field public apps_on_devices_start_transaction_timeout_millis:J

.field public battery_charging_dialog_killswitch:Z

.field public bluetooth_auto_reconnect_android_sdk_enabled:Z

.field public bluetooth_auto_reconnect_ios_sdk_enabled:Z

.field public configure_device_reboot_time_kill_switch:Z

.field public device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

.field public device_plugged_in_but_not_charging_minimum_required_duration_millis:J

.field public device_temperature_logging_poll_interval_millis:J

.field public disable_bluetooth_auto_reconnect_android_sdk:Z

.field public disable_bluetooth_auto_reconnect_ios_sdk:Z

.field public disable_card_inserted_from_prev_txn_check:Z

.field public disable_event_channel_on_reader:Z

.field public disable_force_pin_entry:Z

.field public disable_iot:Z

.field public disable_p2pe_apk_signing_verification:Z

.field public disable_predip:Z

.field public disable_sdk_force_key_injection_when_unknown_keys:Z

.field public enableBbposDownloading:Z

.field public enableBbposVersioning:Z

.field public enable_add_merchant_info_to_edge_headers:Z

.field public enable_aod_default_app:Z

.field public enable_application_selection_in_quick_chip:Z

.field public enable_apps_on_devices_post_collect_merchant_ui:Z

.field public enable_apps_on_devices_settings_menu:Z

.field public enable_apps_on_devices_start_transaction_timeout:Z

.field public enable_armada_reauthentication_flow:Z

.field public enable_background_update_split_download_and_install:Z

.field public enable_battery_charging_dialog:Z

.field public enable_battery_not_charging_events_logging:Z

.field public enable_bbpos_debug_logging:Z

.field public enable_call_to_armada_for_boot_initialization:Z

.field public enable_client_accessibility_app:Z

.field public enable_client_accessible_pin:Z

.field public enable_client_logger_dispatcher:Z

.field public enable_collect_inputs_interstitial_screen:Z

.field public enable_configure_reboot_time_with_device_ui:Z

.field public enable_connect_and_collect:Z

.field public enable_connect_and_collect_release:Z

.field public enable_crash_button_in_diagnostics:Z

.field public enable_customer_cancellation_feature:Z

.field public enable_dcc:Z

.field public enable_device_callback_key_recovery_flow:Z

.field public enable_device_key_auto_recovery_flow:Z

.field public enable_device_temperature_logging:Z

.field public enable_eftpos_routing:Z

.field public enable_etna_cav_kfc_updates_check:Z

.field public enable_firmware_update_retries:Z

.field public enable_firmware_updates:Z

.field public enable_fixed_iot_reconnect_delay:Z

.field public enable_force_pin_entry_for_pi:Z

.field public enable_force_pin_entry_for_si:Z

.field public enable_forms_on_sdk:Z

.field public enable_gif_splash_and_lightmode:Z

.field public enable_ios_deferred_logging:Z

.field public enable_iot:Z

.field public enable_iot_client_respond_via_iot:Z

.field public enable_iot_hadr_polling:Z

.field public enable_iot_respond_via_rpc:Z

.field public enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

.field public enable_kill_for_memory_event_logging:Z

.field public enable_ktlv_discrepancy_reporting_pcs:Z

.field public enable_ktlv_pcs:Z

.field public enable_ktor_http_server:Z

.field public enable_logging_to_disk:Z

.field public enable_mag_stripe_pin:Z

.field public enable_mainland_post_action_result:Z

.field public enable_mandatory_updates:Z

.field public enable_moto_transactions:Z

.field public enable_new_background_iot_state_machine:Z

.field public enable_new_bbpos_assets_update_components:Z

.field public enable_new_incremental_auth_ui:Z

.field public enable_new_payment_collection_android_sdk:Z

.field public enable_new_updates_flow:Z

.field public enable_offline_mode:Z

.field public enable_on_reader_cancel:Z

.field public enable_on_reader_tipping:Z

.field public enable_p2pe_apk_signing_verification:Z

.field public enable_p2pe_rom_verification:Z

.field public enable_process_messages_with_new_state_machine:Z

.field public enable_reader_bbpos_proxy:Z

.field public enable_release_build_to_override_local_ip:Z

.field public enable_remove_duplicate_subtotal_string:Z

.field public enable_roborabbit_ui_redesign:Z

.field public enable_rom_sdk_kernel_logging:Z

.field public enable_sdk_transaction_sessions:Z

.field public enable_send_bbpos_debug_logs_to_splunk:Z

.field public enable_server_driven:Z

.field public enable_sharing_device_report:Z

.field public enable_spos_girocard:Z

.field public enable_standalone_app:Z

.field public enable_start_reader_activity_on_state:Z

.field public enable_terminal_surcharging:Z

.field public enable_third_party_app_crash_logging:Z

.field public enable_third_party_settings_intent_logging:Z

.field public enable_traces_to_observability_data_endpoint:Z

.field public enable_ttp_auto_reconnect:Z

.field public enable_ttpa_eftpos_payments:Z

.field public enable_ttpa_emv_config_from_backend:Z

.field public enable_ttpa_pin:Z

.field public enable_ttpa_run_attestation_before_pin:Z

.field public enable_updater_factory_reset_target:Z

.field public enable_updater_new_oobe_flow:Z

.field public enable_usb_connectivity:Z

.field public enable_warden_release_serial_port:Z

.field public enable_wifi_radio_s710_alpha:Z

.field public enable_wpe_accessibility_volume_control:Z

.field public enable_wpe_firmware_integrity_error_recovery:Z

.field public enable_wpe_unauthenticated_device_integrity_error_recovery:Z

.field public enable_wpe_updater_new_oobe_killswitch:Z

.field public internal_storage_quota_circuit_breaker:Z

.field public kill_for_memory_event_logging_poll_interval_millis:J

.field public migrate_iot_endpoint_to_iot_service:Z

.field public mobile_wallet_on_offline_setup_intents_enabled:Z

.field public offline_pair_unseen_reader_circuit_breaker:Z

.field public offline_setup_intents_enabled:Z

.field public rom_install_timeout_non_seamless_updates_millis:J

.field public rom_install_timeout_seamless_updates_millis:J

.field public rom_sdk_kernel_logging_poll_interval_millis:J

.field public rom_update_kill_switch:Z

.field public selection_form_toggles_below_submit_buttons:Z

.field public server_driven_poll_interval_seconds:J

.field public shopify_bypass_reader_charge_summary:Z

.field public shopify_display_reader_charge_summary:Z

.field public smart_reader_transaction_summary_delay_millis:J

.field public smart_reader_transaction_summary_unsuccessful_delay_millis:J

.field public third_party_app_crash_logging_poll_interval_millis:J

.field public third_party_settings_intent_logging_poll_interval_millis:J

.field public tip_eligible_amounts_circuit_breaker:Z

.field public tipping_enabled:Z

.field public wp3_tipping_android_sdk_circuit_breaker:Z

.field public wp3_tipping_ios_sdk_circuit_breaker:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2370
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final allow_non_browser_env(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2780
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->allow_non_browser_env:Z

    return-object p0
.end method

.method public final android_system_event_logging(Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3513
    iput-object p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    return-object p0
.end method

.method public final apps_on_devices_start_transaction_timeout_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3799
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->apps_on_devices_start_transaction_timeout_millis:J

    return-object p0
.end method

.method public final battery_charging_dialog_killswitch(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "battery_charging_dialog_killswitch is deprecated"
    .end annotation

    .line 3299
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->battery_charging_dialog_killswitch:Z

    return-object p0
.end method

.method public final bluetooth_auto_reconnect_android_sdk_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3051
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    return-object p0
.end method

.method public final bluetooth_auto_reconnect_ios_sdk_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3059
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    return-object p0
.end method

.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 2370
    invoke-virtual {p0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->build()Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/config/ReaderFeatureFlags;
    .locals 151

    move-object/from16 v0, p0

    .line 3870
    new-instance v1, Lcom/stripe/proto/model/config/ReaderFeatureFlags;

    .line 3871
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tipping_enabled:Z

    .line 3872
    iget-boolean v3, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->allow_non_browser_env:Z

    .line 3873
    iget-boolean v4, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_server_driven:Z

    .line 3874
    iget-boolean v5, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sdk_transaction_sessions:Z

    .line 3875
    iget-wide v6, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->server_driven_poll_interval_seconds:J

    .line 3876
    iget-boolean v8, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposVersioning:Z

    .line 3877
    iget-boolean v9, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposDownloading:Z

    .line 3878
    iget-boolean v10, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_tipping:Z

    .line 3879
    iget-boolean v11, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_factory_reset_target:Z

    .line 3880
    iget-boolean v12, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect:Z

    .line 3881
    iget-boolean v13, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_updates:Z

    .line 3882
    iget-boolean v14, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_update_retries:Z

    .line 3883
    iget-boolean v15, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_cancel:Z

    move-object/from16 v16, v1

    .line 3884
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_roborabbit_ui_redesign:Z

    move/from16 v17, v1

    .line 3885
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect_release:Z

    move/from16 v18, v1

    .line 3886
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_new_oobe_flow:Z

    move/from16 v19, v1

    .line 3887
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot:Z

    move/from16 v20, v1

    .line 3888
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_offline_mode:Z

    move/from16 v21, v1

    .line 3889
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_updater_new_oobe_killswitch:Z

    move/from16 v22, v1

    .line 3890
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_iot:Z

    move/from16 v23, v1

    .line 3891
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_updates_flow:Z

    move/from16 v24, v1

    .line 3892
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_update_kill_switch:Z

    move/from16 v25, v1

    .line 3893
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktor_http_server:Z

    move/from16 v26, v1

    .line 3894
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_android_sdk_circuit_breaker:Z

    move/from16 v27, v1

    .line 3895
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_usb_connectivity:Z

    move/from16 v28, v1

    .line 3896
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_ios_sdk_circuit_breaker:Z

    move/from16 v29, v1

    .line 3897
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_logging_to_disk:Z

    move/from16 v30, v1

    .line 3898
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_moto_transactions:Z

    move/from16 v31, v1

    .line 3899
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_apk_signing_verification:Z

    move/from16 v32, v1

    .line 3900
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_p2pe_apk_signing_verification:Z

    move/from16 v33, v1

    .line 3901
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_crash_button_in_diagnostics:Z

    move/from16 v34, v1

    .line 3902
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_gif_splash_and_lightmode:Z

    move/from16 v35, v1

    .line 3903
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_android_sdk_enabled:Z

    move/from16 v36, v1

    .line 3904
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->bluetooth_auto_reconnect_ios_sdk_enabled:Z

    move/from16 v37, v1

    .line 3905
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_android_sdk:Z

    move/from16 v38, v1

    .line 3906
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    move/from16 v39, v1

    .line 3907
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_aod_default_app:Z

    move/from16 v40, v1

    .line 3908
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_bbpos_assets_update_components:Z

    move/from16 v41, v1

    .line 3909
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_eftpos_routing:Z

    move/from16 v42, v1

    .line 3910
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_payment_collection_android_sdk:Z

    move/from16 v43, v1

    .line 3911
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_logger_dispatcher:Z

    move/from16 v44, v1

    .line 3912
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tip_eligible_amounts_circuit_breaker:Z

    move/from16 v45, v1

    .line 3913
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_client_respond_via_iot:Z

    move/from16 v46, v1

    .line 3914
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sharing_device_report:Z

    move/from16 v47, v1

    .line 3915
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_traces_to_observability_data_endpoint:Z

    move/from16 v48, v1

    .line 3916
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_reader_bbpos_proxy:Z

    move/from16 v49, v1

    .line 3917
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_sdk_force_key_injection_when_unknown_keys:Z

    move/from16 v50, v1

    .line 3918
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_display_reader_charge_summary:Z

    move/from16 v51, v1

    .line 3919
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_bypass_reader_charge_summary:Z

    move/from16 v52, v1

    .line 3920
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_application_selection_in_quick_chip:Z

    move/from16 v53, v1

    .line 3921
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_configure_reboot_time_with_device_ui:Z

    move/from16 v54, v1

    .line 3922
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_armada_reauthentication_flow:Z

    move/from16 v55, v1

    .line 3923
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_send_bbpos_debug_logs_to_splunk:Z

    move/from16 v56, v1

    .line 3924
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_hadr_polling:Z

    move/from16 v57, v1

    .line 3925
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mainland_post_action_result:Z

    move/from16 v58, v1

    .line 3926
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessibility_app:Z

    move/from16 v59, v1

    .line 3927
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mag_stripe_pin:Z

    move/from16 v60, v1

    .line 3928
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_bbpos_debug_logging:Z

    move/from16 v61, v1

    .line 3929
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->configure_device_reboot_time_kill_switch:Z

    move/from16 v62, v1

    .line 3930
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_app_crash_logging:Z

    move/from16 v64, v1

    move/from16 v63, v2

    .line 3931
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_app_crash_logging_poll_interval_millis:J

    move-wide/from16 v65, v1

    .line 3932
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_rom_verification:Z

    .line 3933
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->battery_charging_dialog_killswitch:Z

    move/from16 v67, v1

    .line 3934
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_emv_config_from_backend:Z

    move/from16 v68, v1

    .line 3935
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_charging_dialog:Z

    move/from16 v69, v1

    .line 3936
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->internal_storage_quota_circuit_breaker:Z

    move/from16 v70, v1

    .line 3937
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_event_channel_on_reader:Z

    move/from16 v72, v1

    move/from16 v71, v2

    .line 3938
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    move-wide/from16 v73, v1

    .line 3939
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    move-wide/from16 v75, v1

    .line 3940
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_settings_intent_logging:Z

    move/from16 v77, v1

    .line 3941
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_settings_intent_logging_poll_interval_millis:J

    move-wide/from16 v78, v1

    .line 3942
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_add_merchant_info_to_edge_headers:Z

    .line 3943
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_key_auto_recovery_flow:Z

    move/from16 v80, v1

    .line 3944
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_callback_key_recovery_flow:Z

    move/from16 v81, v1

    .line 3945
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_forms_on_sdk:Z

    move/from16 v82, v1

    .line 3946
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_customer_cancellation_feature:Z

    move/from16 v83, v1

    .line 3947
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_background_update_split_download_and_install:Z

    move/from16 v84, v1

    .line 3948
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_temperature_logging:Z

    move/from16 v86, v1

    move/from16 v85, v2

    .line 3949
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_temperature_logging_poll_interval_millis:J

    move-wide/from16 v87, v1

    .line 3950
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_warden_release_serial_port:Z

    .line 3951
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_rom_sdk_kernel_logging:Z

    move/from16 v89, v1

    move/from16 v90, v2

    .line 3952
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_sdk_kernel_logging_poll_interval_millis:J

    move-wide/from16 v91, v1

    .line 3953
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_kill_for_memory_event_logging:Z

    move/from16 v93, v1

    .line 3954
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->kill_for_memory_event_logging_poll_interval_millis:J

    move-wide/from16 v94, v1

    .line 3955
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->migrate_iot_endpoint_to_iot_service:Z

    .line 3956
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessible_pin:Z

    move/from16 v96, v1

    move/from16 v97, v2

    .line 3957
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_non_seamless_updates_millis:J

    move-wide/from16 v98, v1

    .line 3958
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_seamless_updates_millis:J

    move-wide/from16 v100, v1

    .line 3959
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_pin:Z

    .line 3960
    iget-object v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->android_system_event_logging:Lcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;

    move/from16 v102, v1

    .line 3961
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_dcc:Z

    move/from16 v103, v1

    .line 3962
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttp_auto_reconnect:Z

    move/from16 v104, v1

    .line 3963
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_respond_via_rpc:Z

    move/from16 v105, v1

    .line 3964
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->selection_form_toggles_below_submit_buttons:Z

    move/from16 v106, v1

    .line 3965
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_pair_unseen_reader_circuit_breaker:Z

    move/from16 v107, v1

    .line 3966
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    move/from16 v108, v1

    .line 3967
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_not_charging_events_logging:Z

    move/from16 v109, v1

    .line 3968
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_etna_cav_kfc_updates_check:Z

    move/from16 v110, v1

    .line 3969
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_terminal_surcharging:Z

    move/from16 v111, v1

    .line 3970
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ios_deferred_logging:Z

    move/from16 v112, v1

    .line 3971
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_settings_menu:Z

    move/from16 v113, v1

    .line 3972
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_setup_intents_enabled:Z

    move/from16 v114, v1

    .line 3973
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->mobile_wallet_on_offline_setup_intents_enabled:Z

    move/from16 v115, v1

    .line 3974
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_release_build_to_override_local_ip:Z

    move/from16 v116, v1

    .line 3975
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_predip:Z

    move/from16 v117, v1

    .line 3976
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_accessibility_volume_control:Z

    move/from16 v118, v1

    .line 3977
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_incremental_auth_ui:Z

    move/from16 v119, v1

    .line 3978
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_remove_duplicate_subtotal_string:Z

    move/from16 v120, v1

    .line 3979
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_force_pin_entry:Z

    move/from16 v121, v1

    .line 3980
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_discrepancy_reporting_pcs:Z

    move/from16 v122, v1

    .line 3981
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_pcs:Z

    move/from16 v123, v1

    .line 3982
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_collect_inputs_interstitial_screen:Z

    move/from16 v124, v1

    .line 3983
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_post_collect_merchant_ui:Z

    move/from16 v125, v1

    .line 3984
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_firmware_integrity_error_recovery:Z

    move/from16 v126, v1

    .line 3985
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_pi:Z

    move/from16 v127, v1

    .line 3986
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_si:Z

    move/from16 v128, v1

    .line 3987
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_fixed_iot_reconnect_delay:Z

    move/from16 v129, v1

    .line 3988
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    move/from16 v130, v1

    .line 3989
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_spos_girocard:Z

    move/from16 v131, v1

    .line 3990
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_run_attestation_before_pin:Z

    move/from16 v132, v1

    .line 3991
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_background_iot_state_machine:Z

    move/from16 v133, v1

    .line 3992
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_call_to_armada_for_boot_initialization:Z

    move/from16 v134, v1

    .line 3993
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_eftpos_payments:Z

    move/from16 v135, v1

    .line 3994
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_card_inserted_from_prev_txn_check:Z

    move/from16 v137, v1

    move-object/from16 v136, v2

    .line 3995
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->apps_on_devices_start_transaction_timeout_millis:J

    move-wide/from16 v138, v1

    .line 3996
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_start_transaction_timeout:Z

    .line 3997
    iget-boolean v2, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_start_reader_activity_on_state:Z

    move/from16 v140, v1

    .line 3998
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_process_messages_with_new_state_machine:Z

    move/from16 v141, v1

    .line 3999
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_standalone_app:Z

    move/from16 v142, v1

    .line 4000
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mandatory_updates:Z

    move/from16 v144, v1

    move/from16 v143, v2

    .line 4001
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_delay_millis:J

    move-wide/from16 v145, v1

    .line 4002
    iget-wide v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    move-wide/from16 v147, v1

    .line 4003
    iget-boolean v1, v0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wifi_radio_s710_alpha:Z

    move/from16 v2, v63

    move-wide/from16 v149, v147

    move/from16 v147, v1

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v24

    move/from16 v24, v25

    move/from16 v25, v26

    move/from16 v26, v27

    move/from16 v27, v28

    move/from16 v28, v29

    move/from16 v29, v30

    move/from16 v30, v31

    move/from16 v31, v32

    move/from16 v32, v33

    move/from16 v33, v34

    move/from16 v34, v35

    move/from16 v35, v36

    move/from16 v36, v37

    move/from16 v37, v38

    move/from16 v38, v39

    move/from16 v39, v40

    move/from16 v40, v41

    move/from16 v41, v42

    move/from16 v42, v43

    move/from16 v43, v44

    move/from16 v44, v45

    move/from16 v45, v46

    move/from16 v46, v47

    move/from16 v47, v48

    move/from16 v48, v49

    move/from16 v49, v50

    move/from16 v50, v51

    move/from16 v51, v52

    move/from16 v52, v53

    move/from16 v53, v54

    move/from16 v54, v55

    move/from16 v55, v56

    move/from16 v56, v57

    move/from16 v57, v58

    move/from16 v58, v59

    move/from16 v59, v60

    move/from16 v60, v61

    move/from16 v61, v62

    move/from16 v62, v64

    move-wide/from16 v63, v65

    move/from16 v65, v67

    move/from16 v67, v68

    move/from16 v68, v69

    move/from16 v69, v70

    move/from16 v66, v71

    move/from16 v70, v72

    move-wide/from16 v71, v73

    move-wide/from16 v73, v75

    move/from16 v75, v77

    move-wide/from16 v76, v78

    move/from16 v78, v80

    move/from16 v80, v81

    move/from16 v81, v82

    move/from16 v82, v83

    move/from16 v83, v84

    move/from16 v79, v85

    move/from16 v84, v86

    move-wide/from16 v85, v87

    move/from16 v87, v89

    move/from16 v88, v90

    move-wide/from16 v89, v91

    move/from16 v91, v93

    move-wide/from16 v92, v94

    move/from16 v94, v96

    move/from16 v95, v97

    move-wide/from16 v96, v98

    move-wide/from16 v98, v100

    move/from16 v100, v102

    move/from16 v102, v103

    move/from16 v103, v104

    move/from16 v104, v105

    move/from16 v105, v106

    move/from16 v106, v107

    move/from16 v107, v108

    move/from16 v108, v109

    move/from16 v109, v110

    move/from16 v110, v111

    move/from16 v111, v112

    move/from16 v112, v113

    move/from16 v113, v114

    move/from16 v114, v115

    move/from16 v115, v116

    move/from16 v116, v117

    move/from16 v117, v118

    move/from16 v118, v119

    move/from16 v119, v120

    move/from16 v120, v121

    move/from16 v121, v122

    move/from16 v122, v123

    move/from16 v123, v124

    move/from16 v124, v125

    move/from16 v125, v126

    move/from16 v126, v127

    move/from16 v127, v128

    move/from16 v128, v129

    move/from16 v129, v130

    move/from16 v130, v131

    move/from16 v131, v132

    move/from16 v132, v133

    move/from16 v133, v134

    move/from16 v134, v135

    move-object/from16 v101, v136

    move/from16 v135, v137

    move-wide/from16 v136, v138

    move/from16 v138, v140

    move/from16 v140, v141

    move/from16 v141, v142

    move/from16 v139, v143

    move/from16 v142, v144

    move-wide/from16 v143, v145

    move-wide/from16 v145, v149

    .line 4004
    invoke-virtual {v0}, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v148

    .line 3870
    invoke-direct/range {v1 .. v148}, Lcom/stripe/proto/model/config/ReaderFeatureFlags;-><init>(ZZZZJZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZZJJZJZZZZZZZJZZJZJZZJJZLcom/stripe/proto/model/config/ReaderFeatureFlags$AndroidSystemEventLoggingConfig;ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZJZZZZZJJZLokio/ByteString;)V

    return-object v1
.end method

.method public final configure_device_reboot_time_kill_switch(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3266
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->configure_device_reboot_time_kill_switch:Z

    return-object p0
.end method

.method public final device_plugged_in_but_not_charging_minimum_battery_discharge_percent(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3340
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_battery_discharge_percent:J

    return-object p0
.end method

.method public final device_plugged_in_but_not_charging_minimum_required_duration_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3345
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_plugged_in_but_not_charging_minimum_required_duration_millis:J

    return-object p0
.end method

.method public final device_temperature_logging_poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3425
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->device_temperature_logging_poll_interval_millis:J

    return-object p0
.end method

.method public final disable_bluetooth_auto_reconnect_android_sdk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3067
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_android_sdk:Z

    return-object p0
.end method

.method public final disable_bluetooth_auto_reconnect_ios_sdk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3075
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_bluetooth_auto_reconnect_ios_sdk:Z

    return-object p0
.end method

.method public final disable_card_inserted_from_prev_txn_check(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3790
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_card_inserted_from_prev_txn_check:Z

    return-object p0
.end method

.method public final disable_event_channel_on_reader(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3331
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_event_channel_on_reader:Z

    return-object p0
.end method

.method public final disable_force_pin_entry(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "disable_force_pin_entry is deprecated"
    .end annotation

    .line 3670
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_force_pin_entry:Z

    return-object p0
.end method

.method public final disable_iot(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2944
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_iot:Z

    return-object p0
.end method

.method public final disable_p2pe_apk_signing_verification(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3026
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_p2pe_apk_signing_verification:Z

    return-object p0
.end method

.method public final disable_predip(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3635
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_predip:Z

    return-object p0
.end method

.method public final disable_sdk_force_key_injection_when_unknown_keys(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3168
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->disable_sdk_force_key_injection_when_unknown_keys:Z

    return-object p0
.end method

.method public final enableBbposDownloading(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2822
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposDownloading:Z

    return-object p0
.end method

.method public final enableBbposVersioning(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2814
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enableBbposVersioning:Z

    return-object p0
.end method

.method public final enable_add_merchant_info_to_edge_headers(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3369
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_add_merchant_info_to_edge_headers:Z

    return-object p0
.end method

.method public final enable_aod_default_app(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_aod_default_app is deprecated"
    .end annotation

    .line 3084
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_aod_default_app:Z

    return-object p0
.end method

.method public final enable_application_selection_in_quick_chip(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3193
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_application_selection_in_quick_chip:Z

    return-object p0
.end method

.method public final enable_apps_on_devices_post_collect_merchant_ui(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3702
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_post_collect_merchant_ui:Z

    return-object p0
.end method

.method public final enable_apps_on_devices_settings_menu(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3603
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_settings_menu:Z

    return-object p0
.end method

.method public final enable_apps_on_devices_start_transaction_timeout(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3808
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_apps_on_devices_start_transaction_timeout:Z

    return-object p0
.end method

.method public final enable_armada_reauthentication_flow(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3209
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_armada_reauthentication_flow:Z

    return-object p0
.end method

.method public final enable_background_update_split_download_and_install(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3409
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_background_update_split_download_and_install:Z

    return-object p0
.end method

.method public final enable_battery_charging_dialog(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3315
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_charging_dialog:Z

    return-object p0
.end method

.method public final enable_battery_not_charging_events_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3571
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_battery_not_charging_events_logging:Z

    return-object p0
.end method

.method public final enable_bbpos_debug_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3258
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_bbpos_debug_logging:Z

    return-object p0
.end method

.method public final enable_call_to_armada_for_boot_initialization(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3774
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_call_to_armada_for_boot_initialization:Z

    return-object p0
.end method

.method public final enable_client_accessibility_app(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3242
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessibility_app:Z

    return-object p0
.end method

.method public final enable_client_accessible_pin(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3481
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_accessible_pin:Z

    return-object p0
.end method

.method public final enable_client_logger_dispatcher(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3118
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_client_logger_dispatcher:Z

    return-object p0
.end method

.method public final enable_collect_inputs_interstitial_screen(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3694
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_collect_inputs_interstitial_screen:Z

    return-object p0
.end method

.method public final enable_configure_reboot_time_with_device_ui(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3201
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_configure_reboot_time_with_device_ui:Z

    return-object p0
.end method

.method public final enable_connect_and_collect(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_connect_and_collect is deprecated"
    .end annotation

    .line 2850
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect:Z

    return-object p0
.end method

.method public final enable_connect_and_collect_release(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_connect_and_collect_release is deprecated"
    .end annotation

    .line 2902
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_connect_and_collect_release:Z

    return-object p0
.end method

.method public final enable_crash_button_in_diagnostics(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3034
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_crash_button_in_diagnostics:Z

    return-object p0
.end method

.method public final enable_customer_cancellation_feature(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3401
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_customer_cancellation_feature:Z

    return-object p0
.end method

.method public final enable_dcc(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3521
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_dcc:Z

    return-object p0
.end method

.method public final enable_device_callback_key_recovery_flow(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3385
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_callback_key_recovery_flow:Z

    return-object p0
.end method

.method public final enable_device_key_auto_recovery_flow(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3377
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_key_auto_recovery_flow:Z

    return-object p0
.end method

.method public final enable_device_temperature_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3417
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_device_temperature_logging:Z

    return-object p0
.end method

.method public final enable_eftpos_routing(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_eftpos_routing is deprecated"
    .end annotation

    .line 3102
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_eftpos_routing:Z

    return-object p0
.end method

.method public final enable_etna_cav_kfc_updates_check(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3579
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_etna_cav_kfc_updates_check:Z

    return-object p0
.end method

.method public final enable_firmware_update_retries(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_firmware_update_retries is deprecated"
    .end annotation

    .line 2871
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_update_retries:Z

    return-object p0
.end method

.method public final enable_firmware_updates(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2860
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_firmware_updates:Z

    return-object p0
.end method

.method public final enable_fixed_iot_reconnect_delay(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3734
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_fixed_iot_reconnect_delay:Z

    return-object p0
.end method

.method public final enable_force_pin_entry_for_pi(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3718
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_pi:Z

    return-object p0
.end method

.method public final enable_force_pin_entry_for_si(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3726
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_force_pin_entry_for_si:Z

    return-object p0
.end method

.method public final enable_forms_on_sdk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3393
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_forms_on_sdk:Z

    return-object p0
.end method

.method public final enable_gif_splash_and_lightmode(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_gif_splash_and_lightmode is deprecated"
    .end annotation

    .line 3043
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_gif_splash_and_lightmode:Z

    return-object p0
.end method

.method public final enable_ios_deferred_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3595
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ios_deferred_logging:Z

    return-object p0
.end method

.method public final enable_iot(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_iot is deprecated"
    .end annotation

    .line 2920
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot:Z

    return-object p0
.end method

.method public final enable_iot_client_respond_via_iot(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_iot_client_respond_via_iot is deprecated"
    .end annotation

    .line 3135
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_client_respond_via_iot:Z

    return-object p0
.end method

.method public final enable_iot_hadr_polling(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3225
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_hadr_polling:Z

    return-object p0
.end method

.method public final enable_iot_respond_via_rpc(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3537
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_iot_respond_via_rpc:Z

    return-object p0
.end method

.method public final enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3563
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_jackrabbit_redacted_payment_method_fingerprint_for_ios_requests:Z

    return-object p0
.end method

.method public final enable_kill_for_memory_event_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3457
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_kill_for_memory_event_logging:Z

    return-object p0
.end method

.method public final enable_ktlv_discrepancy_reporting_pcs(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3678
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_discrepancy_reporting_pcs:Z

    return-object p0
.end method

.method public final enable_ktlv_pcs(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3686
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktlv_pcs:Z

    return-object p0
.end method

.method public final enable_ktor_http_server(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_ktor_http_server is deprecated"
    .end annotation

    .line 2970
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ktor_http_server:Z

    return-object p0
.end method

.method public final enable_logging_to_disk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3002
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_logging_to_disk:Z

    return-object p0
.end method

.method public final enable_mag_stripe_pin(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3250
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mag_stripe_pin:Z

    return-object p0
.end method

.method public final enable_mainland_post_action_result(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_mainland_post_action_result is deprecated"
    .end annotation

    .line 3234
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mainland_post_action_result:Z

    return-object p0
.end method

.method public final enable_mandatory_updates(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3841
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_mandatory_updates:Z

    return-object p0
.end method

.method public final enable_moto_transactions(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3010
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_moto_transactions:Z

    return-object p0
.end method

.method public final enable_new_background_iot_state_machine(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3766
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_background_iot_state_machine:Z

    return-object p0
.end method

.method public final enable_new_bbpos_assets_update_components(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_new_bbpos_assets_update_components is deprecated"
    .end annotation

    .line 3093
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_bbpos_assets_update_components:Z

    return-object p0
.end method

.method public final enable_new_incremental_auth_ui(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3651
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_incremental_auth_ui:Z

    return-object p0
.end method

.method public final enable_new_payment_collection_android_sdk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3110
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_payment_collection_android_sdk:Z

    return-object p0
.end method

.method public final enable_new_updates_flow(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_new_updates_flow is deprecated"
    .end annotation

    .line 2953
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_new_updates_flow:Z

    return-object p0
.end method

.method public final enable_offline_mode(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2928
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_offline_mode:Z

    return-object p0
.end method

.method public final enable_on_reader_cancel(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_on_reader_cancel is deprecated"
    .end annotation

    .line 2881
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_cancel:Z

    return-object p0
.end method

.method public final enable_on_reader_tipping(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_on_reader_tipping is deprecated"
    .end annotation

    .line 2832
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_on_reader_tipping:Z

    return-object p0
.end method

.method public final enable_p2pe_apk_signing_verification(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3018
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_apk_signing_verification:Z

    return-object p0
.end method

.method public final enable_p2pe_rom_verification(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3290
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_p2pe_rom_verification:Z

    return-object p0
.end method

.method public final enable_process_messages_with_new_state_machine(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3825
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_process_messages_with_new_state_machine:Z

    return-object p0
.end method

.method public final enable_reader_bbpos_proxy(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_reader_bbpos_proxy is deprecated"
    .end annotation

    .line 3160
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_reader_bbpos_proxy:Z

    return-object p0
.end method

.method public final enable_release_build_to_override_local_ip(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3627
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_release_build_to_override_local_ip:Z

    return-object p0
.end method

.method public final enable_remove_duplicate_subtotal_string(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_remove_duplicate_subtotal_string is deprecated"
    .end annotation

    .line 3660
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_remove_duplicate_subtotal_string:Z

    return-object p0
.end method

.method public final enable_roborabbit_ui_redesign(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_roborabbit_ui_redesign is deprecated"
    .end annotation

    .line 2891
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_roborabbit_ui_redesign:Z

    return-object p0
.end method

.method public final enable_rom_sdk_kernel_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3441
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_rom_sdk_kernel_logging:Z

    return-object p0
.end method

.method public final enable_sdk_transaction_sessions(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2797
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sdk_transaction_sessions:Z

    return-object p0
.end method

.method public final enable_send_bbpos_debug_logs_to_splunk(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3217
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_send_bbpos_debug_logs_to_splunk:Z

    return-object p0
.end method

.method public final enable_server_driven(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_server_driven is deprecated"
    .end annotation

    .line 2789
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_server_driven:Z

    return-object p0
.end method

.method public final enable_sharing_device_report(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3143
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_sharing_device_report:Z

    return-object p0
.end method

.method public final enable_spos_girocard(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3750
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_spos_girocard:Z

    return-object p0
.end method

.method public final enable_standalone_app(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3833
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_standalone_app:Z

    return-object p0
.end method

.method public final enable_start_reader_activity_on_state(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3817
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_start_reader_activity_on_state:Z

    return-object p0
.end method

.method public final enable_terminal_surcharging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3587
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_terminal_surcharging:Z

    return-object p0
.end method

.method public final enable_third_party_app_crash_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3274
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_app_crash_logging:Z

    return-object p0
.end method

.method public final enable_third_party_settings_intent_logging(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3353
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_third_party_settings_intent_logging:Z

    return-object p0
.end method

.method public final enable_traces_to_observability_data_endpoint(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3151
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_traces_to_observability_data_endpoint:Z

    return-object p0
.end method

.method public final enable_ttp_auto_reconnect(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3529
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttp_auto_reconnect:Z

    return-object p0
.end method

.method public final enable_ttpa_eftpos_payments(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3782
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_eftpos_payments:Z

    return-object p0
.end method

.method public final enable_ttpa_emv_config_from_backend(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3307
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_emv_config_from_backend:Z

    return-object p0
.end method

.method public final enable_ttpa_pin(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3505
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_pin:Z

    return-object p0
.end method

.method public final enable_ttpa_run_attestation_before_pin(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3758
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_ttpa_run_attestation_before_pin:Z

    return-object p0
.end method

.method public final enable_updater_factory_reset_target(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_updater_factory_reset_target is deprecated"
    .end annotation

    .line 2841
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_factory_reset_target:Z

    return-object p0
.end method

.method public final enable_updater_new_oobe_flow(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "enable_updater_new_oobe_flow is deprecated"
    .end annotation

    .line 2911
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_updater_new_oobe_flow:Z

    return-object p0
.end method

.method public final enable_usb_connectivity(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2986
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_usb_connectivity:Z

    return-object p0
.end method

.method public final enable_warden_release_serial_port(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3433
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_warden_release_serial_port:Z

    return-object p0
.end method

.method public final enable_wifi_radio_s710_alpha(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3866
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wifi_radio_s710_alpha:Z

    return-object p0
.end method

.method public final enable_wpe_accessibility_volume_control(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3643
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_accessibility_volume_control:Z

    return-object p0
.end method

.method public final enable_wpe_firmware_integrity_error_recovery(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3710
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_firmware_integrity_error_recovery:Z

    return-object p0
.end method

.method public final enable_wpe_unauthenticated_device_integrity_error_recovery(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3742
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_unauthenticated_device_integrity_error_recovery:Z

    return-object p0
.end method

.method public final enable_wpe_updater_new_oobe_killswitch(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2936
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->enable_wpe_updater_new_oobe_killswitch:Z

    return-object p0
.end method

.method public final internal_storage_quota_circuit_breaker(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3323
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->internal_storage_quota_circuit_breaker:Z

    return-object p0
.end method

.method public final kill_for_memory_event_logging_poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3465
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->kill_for_memory_event_logging_poll_interval_millis:J

    return-object p0
.end method

.method public final migrate_iot_endpoint_to_iot_service(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3473
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->migrate_iot_endpoint_to_iot_service:Z

    return-object p0
.end method

.method public final mobile_wallet_on_offline_setup_intents_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3619
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->mobile_wallet_on_offline_setup_intents_enabled:Z

    return-object p0
.end method

.method public final offline_pair_unseen_reader_circuit_breaker(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "offline_pair_unseen_reader_circuit_breaker is deprecated"
    .end annotation

    .line 3554
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_pair_unseen_reader_circuit_breaker:Z

    return-object p0
.end method

.method public final offline_setup_intents_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3611
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->offline_setup_intents_enabled:Z

    return-object p0
.end method

.method public final rom_install_timeout_non_seamless_updates_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3489
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_non_seamless_updates_millis:J

    return-object p0
.end method

.method public final rom_install_timeout_seamless_updates_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3497
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_install_timeout_seamless_updates_millis:J

    return-object p0
.end method

.method public final rom_sdk_kernel_logging_poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3449
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_sdk_kernel_logging_poll_interval_millis:J

    return-object p0
.end method

.method public final rom_update_kill_switch(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2961
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->rom_update_kill_switch:Z

    return-object p0
.end method

.method public final selection_form_toggles_below_submit_buttons(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3545
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->selection_form_toggles_below_submit_buttons:Z

    return-object p0
.end method

.method public final server_driven_poll_interval_seconds(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "server_driven_poll_interval_seconds is deprecated"
    .end annotation

    .line 2806
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->server_driven_poll_interval_seconds:J

    return-object p0
.end method

.method public final shopify_bypass_reader_charge_summary(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3185
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_bypass_reader_charge_summary:Z

    return-object p0
.end method

.method public final shopify_display_reader_charge_summary(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0
    .annotation runtime Lkotlin/Deprecated;
        message = "shopify_display_reader_charge_summary is deprecated"
    .end annotation

    .line 3177
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->shopify_display_reader_charge_summary:Z

    return-object p0
.end method

.method public final smart_reader_transaction_summary_delay_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3849
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_delay_millis:J

    return-object p0
.end method

.method public final smart_reader_transaction_summary_unsuccessful_delay_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3857
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->smart_reader_transaction_summary_unsuccessful_delay_millis:J

    return-object p0
.end method

.method public final third_party_app_crash_logging_poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3282
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_app_crash_logging_poll_interval_millis:J

    return-object p0
.end method

.method public final third_party_settings_intent_logging_poll_interval_millis(J)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3361
    iput-wide p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->third_party_settings_intent_logging_poll_interval_millis:J

    return-object p0
.end method

.method public final tip_eligible_amounts_circuit_breaker(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 3126
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tip_eligible_amounts_circuit_breaker:Z

    return-object p0
.end method

.method public final tipping_enabled(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2772
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->tipping_enabled:Z

    return-object p0
.end method

.method public final wp3_tipping_android_sdk_circuit_breaker(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2978
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_android_sdk_circuit_breaker:Z

    return-object p0
.end method

.method public final wp3_tipping_ios_sdk_circuit_breaker(Z)Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;
    .locals 0

    .line 2994
    iput-boolean p1, p0, Lcom/stripe/proto/model/config/ReaderFeatureFlags$Builder;->wp3_tipping_ios_sdk_circuit_breaker:Z

    return-object p0
.end method
