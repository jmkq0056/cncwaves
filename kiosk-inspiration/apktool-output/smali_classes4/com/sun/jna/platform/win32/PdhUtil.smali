.class public abstract Lcom/sun/jna/platform/win32/PdhUtil;
.super Ljava/lang/Object;
.source "PdhUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/jna/platform/win32/PdhUtil$PdhException;,
        Lcom/sun/jna/platform/win32/PdhUtil$PdhEnumObjectItems;
    }
.end annotation


# static fields
.field private static final CHAR_TO_BYTES:I

.field private static final ENGLISH_COUNTER_KEY:Ljava/lang/String; = "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Perflib\\009"

.field private static final ENGLISH_COUNTER_VALUE:Ljava/lang/String; = "Counter"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "w32.ascii"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget v0, Lcom/sun/jna/Native;->WCHAR_SIZE:I

    :goto_0
    sput v0, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PdhEnumObjectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/sun/jna/platform/win32/PdhUtil$PdhEnumObjectItems;
    .locals 12

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    new-instance v7, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v7, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 167
    new-instance v9, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v2, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    invoke-direct {v2, v3, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v9, v2}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 168
    sget-object v2, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v10, p3

    invoke-interface/range {v2 .. v11}, Lcom/sun/jna/platform/win32/Pdh;->PdhEnumObjectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;II)I

    move-result p0

    if-eqz p0, :cond_1

    const p1, -0x7ffff82e

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    new-instance p1, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;-><init>(I)V

    throw p1

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    const/4 p1, 0x0

    if-lez p0, :cond_2

    .line 178
    new-instance p0, Lcom/sun/jna/Memory;

    invoke-virtual {v7}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p2

    sget p3, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    mul-int/2addr p2, p3

    int-to-long p2, p2

    invoke-direct {p0, p2, p3}, Lcom/sun/jna/Memory;-><init>(J)V

    move-object v6, p0

    goto :goto_1

    :cond_2
    move-object v6, p1

    .line 181
    :goto_1
    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    if-lez p0, :cond_3

    .line 182
    new-instance p1, Lcom/sun/jna/Memory;

    invoke-virtual {v9}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result p0

    sget p2, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    mul-int/2addr p0, p2

    int-to-long p2, p0

    invoke-direct {p1, p2, p3}, Lcom/sun/jna/Memory;-><init>(J)V

    :cond_3
    move-object v8, p1

    .line 185
    sget-object v2, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    const/4 v11, 0x0

    invoke-interface/range {v2 .. v11}, Lcom/sun/jna/platform/win32/Pdh;->PdhEnumObjectItems(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;Lcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;II)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    const/4 p1, 0x1

    if-eqz v6, :cond_6

    move p2, p0

    :goto_2
    int-to-long v2, p2

    .line 195
    invoke-virtual {v6}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v4

    cmp-long p3, v2, v4

    if-gez p3, :cond_6

    .line 197
    sget p3, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    if-ne p3, p1, :cond_4

    .line 198
    invoke-virtual {v6, v2, v3}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 200
    :cond_4
    invoke-virtual {v6, v2, v3}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object v2

    .line 203
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    .line 206
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p1

    mul-int/2addr v2, p3

    add-int/2addr p2, v2

    goto :goto_2

    :cond_6
    :goto_4
    if-eqz v8, :cond_9

    :goto_5
    int-to-long p2, p0

    .line 214
    invoke-virtual {v8}, Lcom/sun/jna/Memory;->size()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-gez v2, :cond_9

    .line 216
    sget v2, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    if-ne v2, p1, :cond_7

    .line 217
    invoke-virtual {v8, p2, p3}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p2

    goto :goto_6

    .line 219
    :cond_7
    invoke-virtual {v8, p2, p3}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p2

    .line 222
    :goto_6
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_8

    goto :goto_7

    .line 225
    :cond_8
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    mul-int/2addr p2, v2

    add-int/2addr p0, p2

    goto :goto_5

    .line 231
    :cond_9
    :goto_7
    new-instance p0, Lcom/sun/jna/platform/win32/PdhUtil$PdhEnumObjectItems;

    invoke-direct {p0, v0, v1}, Lcom/sun/jna/platform/win32/PdhUtil$PdhEnumObjectItems;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object p0

    .line 189
    :cond_a
    new-instance p1, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;-><init>(I)V

    throw p1
.end method

.method public static PdhLookupPerfIndexByEnglishName(Ljava/lang/String;)I
    .locals 5

    .line 115
    sget-object v0, Lcom/sun/jna/platform/win32/WinReg;->HKEY_LOCAL_MACHINE:Lcom/sun/jna/platform/win32/WinReg$HKEY;

    const-string v1, "SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Perflib\\009"

    const-string v2, "Counter"

    invoke-static {v0, v1, v2}, Lcom/sun/jna/platform/win32/Advapi32Util;->registryGetStringArray(Lcom/sun/jna/platform/win32/WinReg$HKEY;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    .line 121
    :goto_0
    array-length v3, v0

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 122
    aget-object v3, v0, v2

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int/2addr v2, v1

    .line 124
    :try_start_0
    aget-object p0, v0, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static PdhLookupPerfNameByIndex(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    .line 63
    new-instance v0, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v0, v1}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 64
    sget-object v1, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    const/4 v4, 0x0

    invoke-interface {v1, p0, p1, v4, v0}, Lcom/sun/jna/platform/win32/Pdh;->PdhLookupPerfNameByIndex(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I

    move-result v1

    const/4 v5, 0x1

    const v6, -0x3ffff443    # -2.0007164f

    if-eq v1, v6, :cond_3

    if-eqz v1, :cond_1

    const v4, -0x7ffff82e

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    new-instance p0, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;

    invoke-direct {p0, v1}, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;-><init>(I)V

    throw p0

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v1

    if-ge v1, v5, :cond_2

    .line 75
    const-string p0, ""

    return-object p0

    .line 78
    :cond_2
    new-instance v1, Lcom/sun/jna/Memory;

    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;->getValue()Lcom/sun/jna/platform/win32/WinDef$DWORD;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/jna/platform/win32/WinDef$DWORD;->intValue()I

    move-result v4

    sget v6, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    mul-int/2addr v4, v6

    int-to-long v6, v4

    invoke-direct {v1, v6, v7}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 79
    sget-object v4, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    invoke-interface {v4, p0, p1, v1, v0}, Lcom/sun/jna/platform/win32/Pdh;->PdhLookupPerfNameByIndex(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I

    move-result p0

    goto :goto_3

    :cond_3
    const/16 v0, 0x20

    :goto_1
    const/16 v7, 0x400

    if-gt v0, v7, :cond_5

    .line 83
    new-instance v1, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;

    new-instance v4, Lcom/sun/jna/platform/win32/WinDef$DWORD;

    int-to-long v7, v0

    invoke-direct {v4, v7, v8}, Lcom/sun/jna/platform/win32/WinDef$DWORD;-><init>(J)V

    invoke-direct {v1, v4}, Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;-><init>(Lcom/sun/jna/platform/win32/WinDef$DWORD;)V

    .line 84
    new-instance v4, Lcom/sun/jna/Memory;

    sget v7, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    mul-int/2addr v7, v0

    int-to-long v7, v7

    invoke-direct {v4, v7, v8}, Lcom/sun/jna/Memory;-><init>(J)V

    .line 85
    sget-object v7, Lcom/sun/jna/platform/win32/Pdh;->INSTANCE:Lcom/sun/jna/platform/win32/Pdh;

    invoke-interface {v7, p0, p1, v4, v1}, Lcom/sun/jna/platform/win32/Pdh;->PdhLookupPerfNameByIndex(Ljava/lang/String;ILcom/sun/jna/Pointer;Lcom/sun/jna/platform/win32/WinDef$DWORDByReference;)I

    move-result v1

    if-eq v1, v6, :cond_4

    const v7, -0x3ffff43e    # -2.0007176f

    if-eq v1, v7, :cond_4

    goto :goto_2

    :cond_4
    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    move p0, v1

    move-object v1, v4

    :goto_3
    if-nez p0, :cond_7

    .line 96
    sget p0, Lcom/sun/jna/platform/win32/PdhUtil;->CHAR_TO_BYTES:I

    if-ne p0, v5, :cond_6

    .line 97
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Memory;->getString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 99
    :cond_6
    invoke-virtual {v1, v2, v3}, Lcom/sun/jna/Memory;->getWideString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 92
    :cond_7
    new-instance p1, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;

    invoke-direct {p1, p0}, Lcom/sun/jna/platform/win32/PdhUtil$PdhException;-><init>(I)V

    throw p1
.end method
