.class public interface abstract Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;
.super Ljava/lang/Object;
.source "ApplicationInformationProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00e6\u0080\u0001\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H&J(\u0010\u0004\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u00052\u0006\u0010\u0006\u001a\u0002H\u00052\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0096\u0002\u00a2\u0006\u0002\u0010\t\u00f8\u0001\u0000\u0082\u0002\u0006\n\u0004\u0008!0\u0001\u00a8\u0006\n\u00c0\u0006\u0001"
    }
    d2 = {
        "Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;",
        "",
        "get",
        "Lcom/stripe/terminal/appinfo/ApplicationInformation;",
        "getValue",
        "T",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;",
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


# virtual methods
.method public abstract get()Lcom/stripe/terminal/appinfo/ApplicationInformation;
.end method

.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Lcom/stripe/terminal/appinfo/ApplicationInformation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Lcom/stripe/terminal/appinfo/ApplicationInformation;"
        }
    .end annotation

    const-string p1, "property"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {p0}, Lcom/stripe/terminal/appinfo/ApplicationInformationProvider;->get()Lcom/stripe/terminal/appinfo/ApplicationInformation;

    move-result-object p1

    return-object p1
.end method
