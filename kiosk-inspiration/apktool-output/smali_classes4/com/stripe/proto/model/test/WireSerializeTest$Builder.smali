.class public final Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
.super Lcom/squareup/wire/Message$Builder;
.source "WireSerializeTest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/proto/model/test/WireSerializeTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/stripe/proto/model/test/WireSerializeTest;",
        "Lcom/stripe/proto/model/test/WireSerializeTest$Builder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00000\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0014\u001a\u00020\u0002H\u0016J\u000e\u0010\u0004\u001a\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010\u0006\u001a\u00020\u00002\u0006\u0010\u0006\u001a\u00020\u0007J\u0015\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0015J\u000e\u0010\n\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bJ\u0015\u0010\u000c\u001a\u00020\u00002\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010\u000e\u001a\u00020\u00002\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0005J\u0015\u0010\u000f\u001a\u00020\u00002\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0015J\u0010\u0010\u0010\u001a\u00020\u00002\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u0012\u001a\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u0011J\u0010\u0010\u0013\u001a\u00020\u00002\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0011R\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u0014\u0010\u0010\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\u0004\u0018\u00010\u00118\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/stripe/proto/model/test/WireSerializeTest$Builder;",
        "Lcom/squareup/wire/Message$Builder;",
        "Lcom/stripe/proto/model/test/WireSerializeTest;",
        "()V",
        "test_enum",
        "Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;",
        "test_int",
        "",
        "test_int_value",
        "Ljava/lang/Integer;",
        "test_long",
        "",
        "test_long_value",
        "Ljava/lang/Long;",
        "test_one_of_enum",
        "test_one_of_int",
        "test_one_of_string",
        "",
        "test_string",
        "test_string_value",
        "build",
        "(Ljava/lang/Integer;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;",
        "(Ljava/lang/Long;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;",
        "internal_release"
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
.field public test_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

.field public test_int:I

.field public test_int_value:Ljava/lang/Integer;

.field public test_long:J

.field public test_long_value:Ljava/lang/Long;

.field public test_one_of_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

.field public test_one_of_int:Ljava/lang/Integer;

.field public test_one_of_string:Ljava/lang/String;

.field public test_string:Ljava/lang/String;

.field public test_string_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    .line 210
    const-string v0, ""

    iput-object v0, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_string:Ljava/lang/String;

    .line 228
    sget-object v0, Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;->DEFAULT:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    iput-object v0, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    .line 208
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->build()Lcom/stripe/proto/model/test/WireSerializeTest;

    move-result-object v0

    check-cast v0, Lcom/squareup/wire/Message;

    return-object v0
.end method

.method public build()Lcom/stripe/proto/model/test/WireSerializeTest;
    .locals 13

    .line 295
    new-instance v0, Lcom/stripe/proto/model/test/WireSerializeTest;

    .line 296
    iget-object v1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_string:Ljava/lang/String;

    .line 297
    iget-object v2, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_string_value:Ljava/lang/String;

    .line 298
    iget v3, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_int:I

    .line 299
    iget-object v4, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_int_value:Ljava/lang/Integer;

    .line 300
    iget-wide v5, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_long:J

    .line 301
    iget-object v7, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_long_value:Ljava/lang/Long;

    .line 302
    iget-object v8, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    .line 303
    iget-object v9, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_string:Ljava/lang/String;

    .line 304
    iget-object v10, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_int:Ljava/lang/Integer;

    .line 305
    iget-object v11, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    .line 306
    invoke-virtual {p0}, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v12

    .line 295
    invoke-direct/range {v0 .. v12}, Lcom/stripe/proto/model/test/WireSerializeTest;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Integer;JLjava/lang/Long;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Ljava/lang/String;Ljava/lang/Integer;Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;Lokio/ByteString;)V

    return-object v0
.end method

.method public final test_enum(Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 1

    const-string v0, "test_enum"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    return-object p0
.end method

.method public final test_int(I)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 250
    iput p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_int:I

    return-object p0
.end method

.method public final test_int_value(Ljava/lang/Integer;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_int_value:Ljava/lang/Integer;

    return-object p0
.end method

.method public final test_long(J)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 260
    iput-wide p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_long:J

    return-object p0
.end method

.method public final test_long_value(Ljava/lang/Long;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_long_value:Ljava/lang/Long;

    return-object p0
.end method

.method public final test_one_of_enum(Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    const/4 p1, 0x0

    .line 290
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_string:Ljava/lang/String;

    .line 291
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_int:Ljava/lang/Integer;

    return-object p0
.end method

.method public final test_one_of_int(Ljava/lang/Integer;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_int:Ljava/lang/Integer;

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_string:Ljava/lang/String;

    .line 284
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    return-object p0
.end method

.method public final test_one_of_string(Ljava/lang/String;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 275
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_string:Ljava/lang/String;

    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_int:Ljava/lang/Integer;

    .line 277
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_one_of_enum:Lcom/stripe/proto/model/test/WireSerializeTest$EnumTest;

    return-object p0
.end method

.method public final test_string(Ljava/lang/String;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 1

    const-string v0, "test_string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_string:Ljava/lang/String;

    return-object p0
.end method

.method public final test_string_value(Ljava/lang/String;)Lcom/stripe/proto/model/test/WireSerializeTest$Builder;
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/stripe/proto/model/test/WireSerializeTest$Builder;->test_string_value:Ljava/lang/String;

    return-object p0
.end method
