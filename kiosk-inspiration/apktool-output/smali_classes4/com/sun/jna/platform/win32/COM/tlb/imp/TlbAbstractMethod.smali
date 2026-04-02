.class public abstract Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;
.super Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;
.source "TlbAbstractMethod.java"

# interfaces
.implements Lcom/sun/jna/platform/win32/Variant;


# instance fields
.field protected docStr:Ljava/lang/String;

.field protected memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

.field protected methodName:Ljava/lang/String;

.field protected methodparams:Ljava/lang/String;

.field protected methodvariables:Ljava/lang/String;

.field protected paramCount:S

.field protected returnType:Ljava/lang/String;

.field protected typeInfoDoc:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

.field protected vtableId:S


# direct methods
.method public constructor <init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2, p4}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbBase;-><init>(ILcom/sun/jna/platform/win32/COM/TypeLibUtil;Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;)V

    .line 84
    const-string p1, ""

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->methodparams:Ljava/lang/String;

    .line 86
    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->methodvariables:Ljava/lang/String;

    .line 103
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    invoke-virtual {p4, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->typeInfoDoc:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    .line 104
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->methodName:Ljava/lang/String;

    .line 105
    iget-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->typeInfoDoc:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getDocString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->docStr:Ljava/lang/String;

    .line 108
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->oVft:Lcom/sun/jna/platform/win32/WinDef$SHORT;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$SHORT;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->vtableId:S

    .line 109
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->memid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->memberid:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 110
    iget-object p1, p3, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->cParams:Lcom/sun/jna/platform/win32/WinDef$SHORT;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WinDef$SHORT;->shortValue()S

    move-result p1

    iput-short p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->paramCount:S

    .line 111
    invoke-virtual {p0, p3}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getType(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->returnType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDocStr()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->docStr:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method protected getType(Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;)Ljava/lang/String;
    .locals 0

    .line 256
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;->tdesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    .line 257
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getType(Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;)Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$FUNCDESC;->elemdescFunc:Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;

    .line 252
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getType(Lcom/sun/jna/platform/win32/OaIdl$ELEMDESC;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;
    .locals 3

    .line 261
    iget-object v0, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->vt:Lcom/sun/jna/platform/win32/WTypes$VARTYPE;

    .line 264
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_0

    .line 265
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->_typedesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->getLptdesc()Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$ByReference;

    move-result-object p1

    .line 266
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 267
    :cond_0
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0x1b

    if-eq v1, v2, :cond_3

    .line 268
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0x1c

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v0}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result v1

    const/16 v2, 0x1d

    if-ne v1, v2, :cond_2

    .line 272
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->_typedesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;

    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->hreftype:Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;

    .line 273
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getUserdefinedType(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 275
    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getVarType(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :cond_3
    :goto_0
    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;->_typedesc:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;

    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC$_TYPEDESC;->getLpadesc()Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;

    move-result-object p1

    iget-object p1, p1, Lcom/sun/jna/platform/win32/OaIdl$ARRAYDESC$ByReference;->tdescElem:Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;

    .line 270
    invoke-virtual {p0, p1}, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->getType(Lcom/sun/jna/platform/win32/OaIdl$TYPEDESC;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTypeInfoDoc()Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->typeInfoDoc:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    return-object v0
.end method

.method protected getUserdefinedType(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/sun/jna/platform/win32/COM/tlb/imp/TlbAbstractMethod;->typeInfoUtil:Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getRefTypeInfo(Lcom/sun/jna/platform/win32/OaIdl$HREFTYPE;)Lcom/sun/jna/platform/win32/COM/ITypeInfo;

    move-result-object p1

    .line 244
    new-instance v0, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;

    invoke-direct {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;-><init>(Lcom/sun/jna/platform/win32/COM/ITypeInfo;)V

    .line 245
    sget-object p1, Lcom/sun/jna/platform/win32/OaIdl;->MEMBERID_NIL:Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;

    .line 246
    invoke-virtual {v0, p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil;->getDocumentation(Lcom/sun/jna/platform/win32/OaIdl$MEMBERID;)Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;

    move-result-object p1

    .line 247
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/COM/TypeInfoUtil$TypeInfoDoc;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getVarType(Lcom/sun/jna/platform/win32/WTypes$VARTYPE;)Ljava/lang/String;
    .locals 2

    .line 134
    invoke-virtual {p1}, Lcom/sun/jna/platform/win32/WTypes$VARTYPE;->intValue()I

    move-result p1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1000

    const-string v1, ""

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4000

    if-eq p1, v0, :cond_2

    const v0, 0x8000

    if-eq p1, v0, :cond_1

    const v0, 0xffff

    if-eq p1, v0, :cond_0

    const-string v0, "int"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const/4 p1, 0x0

    return-object p1

    :pswitch_0
    return-object v1

    .line 218
    :pswitch_1
    const-class p1, Lcom/sun/jna/platform/win32/Guid$CLSID;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 216
    :pswitch_2
    const-string p1, "cf"

    return-object p1

    .line 214
    :pswitch_3
    const-string p1, "blob_object"

    return-object p1

    .line 212
    :pswitch_4
    const-string p1, "stored_object"

    return-object p1

    .line 210
    :pswitch_5
    const-string p1, "steamed_object"

    return-object p1

    .line 208
    :pswitch_6
    const-string p1, "storage"

    return-object p1

    .line 206
    :pswitch_7
    const-string p1, "steam"

    return-object p1

    .line 202
    :pswitch_8
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$UINT_PTR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 200
    :pswitch_9
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$INT_PTR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 198
    :pswitch_a
    const-string p1, "record"

    return-object p1

    .line 196
    :pswitch_b
    const-class p1, Lcom/sun/jna/platform/win32/WTypes$LPWSTR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 194
    :pswitch_c
    const-class p1, Lcom/sun/jna/platform/win32/WTypes$LPSTR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 192
    :pswitch_d
    const-string p1, "userdefined"

    return-object p1

    .line 190
    :pswitch_e
    const-string p1, "carray"

    return-object p1

    .line 188
    :pswitch_f
    const-string p1, "safearray"

    return-object p1

    .line 186
    :pswitch_10
    const-class p1, Lcom/sun/jna/Pointer;

    const-string p1, "Pointer"

    return-object p1

    .line 184
    :pswitch_11
    const-class p1, Lcom/sun/jna/platform/win32/WinNT$HRESULT;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 182
    :pswitch_12
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 180
    :pswitch_13
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_14
    return-object v0

    .line 176
    :pswitch_15
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$ULONG;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 174
    :pswitch_16
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$LONG;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 172
    :pswitch_17
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$UINT;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 170
    :pswitch_18
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$USHORT;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 168
    :pswitch_19
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$UCHAR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 166
    :pswitch_1a
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$CHAR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 164
    :pswitch_1b
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$DECIMAL;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 162
    :pswitch_1c
    const-class p1, Lcom/sun/jna/platform/win32/COM/IUnknown;

    const-string p1, "IUnknown"

    return-object p1

    .line 160
    :pswitch_1d
    const-class p1, Lcom/sun/jna/platform/win32/Variant$VARIANT;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 158
    :pswitch_1e
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$BOOL;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 156
    :pswitch_1f
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$SCODE;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 154
    :pswitch_20
    const-class p1, Lcom/sun/jna/platform/win32/COM/IDispatch;

    const-string p1, "IDispatch"

    return-object p1

    .line 152
    :pswitch_21
    const-class p1, Lcom/sun/jna/platform/win32/WTypes$BSTR;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 150
    :pswitch_22
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$DATE;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_23
    const-class p1, Lcom/sun/jna/platform/win32/OaIdl$CURRENCY;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_24
    const-string p1, "double"

    return-object p1

    .line 144
    :pswitch_25
    const-string p1, "float"

    return-object p1

    :pswitch_26
    return-object v0

    .line 140
    :pswitch_27
    const-string p1, "short"

    return-object p1

    .line 138
    :pswitch_28
    const-string p1, "null"

    return-object p1

    :pswitch_29
    return-object v1

    .line 232
    :cond_0
    const-string p1, "illegal"

    return-object p1

    :cond_1
    return-object v1

    .line 228
    :cond_2
    const-class p1, Lcom/sun/jna/platform/win32/WinDef$PVOID;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1

    .line 204
    :cond_4
    const-class p1, Lcom/sun/jna/platform/win32/WinBase$FILETIME;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10
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
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x24
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x42
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

.method protected replaceJavaKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 282
    const-string v0, "final"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "_"

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 284
    :cond_0
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 286
    :cond_1
    const-string v2, "case"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 288
    :cond_2
    const-string v2, "char"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 290
    :cond_3
    const-string v2, "private"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 292
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    return-object p1
.end method
