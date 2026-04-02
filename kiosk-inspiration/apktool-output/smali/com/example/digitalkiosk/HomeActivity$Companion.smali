.class public final Lcom/example/digitalkiosk/HomeActivity$Companion;
.super Ljava/lang/Object;
.source "HomeActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R!\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\u0008\u0012\u0004\u0012\u00020\u0006`\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/example/digitalkiosk/HomeActivity$Companion;",
        "",
        "<init>",
        "()V",
        "languages",
        "Ljava/util/ArrayList;",
        "Lcom/example/digitalkiosk/models/Language;",
        "Lkotlin/collections/ArrayList;",
        "getLanguages",
        "()Ljava/util/ArrayList;",
        "selected_language",
        "",
        "getSelected_language",
        "()I",
        "setSelected_language",
        "(I)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/digitalkiosk/HomeActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLanguages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/example/digitalkiosk/models/Language;",
            ">;"
        }
    .end annotation

    .line 48
    invoke-static {}, Lcom/example/digitalkiosk/HomeActivity;->access$getLanguages$cp()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final getSelected_language()I
    .locals 1

    .line 49
    invoke-static {}, Lcom/example/digitalkiosk/HomeActivity;->access$getSelected_language$cp()I

    move-result v0

    return v0
.end method

.method public final setSelected_language(I)V
    .locals 0

    .line 49
    invoke-static {p1}, Lcom/example/digitalkiosk/HomeActivity;->access$setSelected_language$cp(I)V

    return-void
.end method
