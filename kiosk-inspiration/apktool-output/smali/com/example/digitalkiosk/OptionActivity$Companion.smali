.class public final Lcom/example/digitalkiosk/OptionActivity$Companion;
.super Ljava/lang/Object;
.source "OptionActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/digitalkiosk/OptionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u001c\u0010 \u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u0007\"\u0004\u0008\"\u0010\t\u00a8\u0006#"
    }
    d2 = {
        "Lcom/example/digitalkiosk/OptionActivity$Companion;",
        "",
        "<init>",
        "()V",
        "order_type",
        "",
        "getOrder_type",
        "()Ljava/lang/String;",
        "setOrder_type",
        "(Ljava/lang/String;)V",
        "selected_table",
        "",
        "getSelected_table",
        "()Ljava/lang/Integer;",
        "setSelected_table",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "selected_time",
        "getSelected_time",
        "setSelected_time",
        "handicap_on",
        "",
        "getHandicap_on",
        "()Z",
        "setHandicap_on",
        "(Z)V",
        "kioskSetting",
        "Lcom/example/digitalkiosk/models/KioskSetting;",
        "getKioskSetting",
        "()Lcom/example/digitalkiosk/models/KioskSetting;",
        "setKioskSetting",
        "(Lcom/example/digitalkiosk/models/KioskSetting;)V",
        "phone_number",
        "getPhone_number",
        "setPhone_number",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/example/digitalkiosk/OptionActivity$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getHandicap_on()Z
    .locals 1

    .line 35
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getHandicap_on$cp()Z

    move-result v0

    return v0
.end method

.method public final getKioskSetting()Lcom/example/digitalkiosk/models/KioskSetting;
    .locals 1

    .line 36
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getKioskSetting$cp()Lcom/example/digitalkiosk/models/KioskSetting;

    move-result-object v0

    return-object v0
.end method

.method public final getOrder_type()Ljava/lang/String;
    .locals 1

    .line 32
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getOrder_type$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPhone_number()Ljava/lang/String;
    .locals 1

    .line 37
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getPhone_number$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getSelected_table()Ljava/lang/Integer;
    .locals 1

    .line 33
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getSelected_table$cp()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getSelected_time()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/example/digitalkiosk/OptionActivity;->access$getSelected_time$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setHandicap_on(Z)V
    .locals 0

    .line 35
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setHandicap_on$cp(Z)V

    return-void
.end method

.method public final setKioskSetting(Lcom/example/digitalkiosk/models/KioskSetting;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setKioskSetting$cp(Lcom/example/digitalkiosk/models/KioskSetting;)V

    return-void
.end method

.method public final setOrder_type(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setOrder_type$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setPhone_number(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setPhone_number$cp(Ljava/lang/String;)V

    return-void
.end method

.method public final setSelected_table(Ljava/lang/Integer;)V
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setSelected_table$cp(Ljava/lang/Integer;)V

    return-void
.end method

.method public final setSelected_time(Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-static {p1}, Lcom/example/digitalkiosk/OptionActivity;->access$setSelected_time$cp(Ljava/lang/String;)V

    return-void
.end method
