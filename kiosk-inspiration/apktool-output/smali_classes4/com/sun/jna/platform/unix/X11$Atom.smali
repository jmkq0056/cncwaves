.class public Lcom/sun/jna/platform/unix/X11$Atom;
.super Lcom/sun/jna/platform/unix/X11$XID;
.source "X11.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/platform/unix/X11;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Atom"
.end annotation


# static fields
.field public static final None:Lcom/sun/jna/platform/unix/X11$Atom; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/sun/jna/platform/unix/X11$XID;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/sun/jna/platform/unix/X11$XID;-><init>(J)V

    return-void
.end method


# virtual methods
.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 2

    .line 91
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 162
    :pswitch_0
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_TRANSIENT_FOR:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 161
    :pswitch_1
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_CLASS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 160
    :pswitch_2
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CAP_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 159
    :pswitch_3
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_FULL_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 158
    :pswitch_4
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_FAMILY_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 157
    :pswitch_5
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_FONT_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 156
    :pswitch_6
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_NOTICE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 155
    :pswitch_7
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_COPYRIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 154
    :pswitch_8
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RESOLUTION:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 153
    :pswitch_9
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_POINT_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 152
    :pswitch_a
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 151
    :pswitch_b
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_QUAD_WIDTH:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 150
    :pswitch_c
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_X_HEIGHT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 149
    :pswitch_d
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_ITALIC_ANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 148
    :pswitch_e
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_STRIKEOUT_DESCENT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 147
    :pswitch_f
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_STRIKEOUT_ASCENT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 146
    :pswitch_10
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_UNDERLINE_THICKNESS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 145
    :pswitch_11
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_UNDERLINE_POSITION:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 144
    :pswitch_12
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_SUBSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 143
    :pswitch_13
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_SUBSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 142
    :pswitch_14
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_SUPERSCRIPT_Y:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 141
    :pswitch_15
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_SUPERSCRIPT_X:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 140
    :pswitch_16
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_END_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 139
    :pswitch_17
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_MAX_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 138
    :pswitch_18
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_NORM_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 137
    :pswitch_19
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_MIN_SPACE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 136
    :pswitch_1a
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_ZOOM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 135
    :pswitch_1b
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_SIZE_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 134
    :pswitch_1c
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_NORMAL_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 133
    :pswitch_1d
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 132
    :pswitch_1e
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_ICON_SIZE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 131
    :pswitch_1f
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_ICON_NAME:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 130
    :pswitch_20
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_CLIENT_MACHINE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 129
    :pswitch_21
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_HINTS:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 128
    :pswitch_22
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WM_COMMAND:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 127
    :pswitch_23
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_WINDOW:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 126
    :pswitch_24
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_VISUALID:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 125
    :pswitch_25
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_STRING:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 124
    :pswitch_26
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_RED_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 123
    :pswitch_27
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_GREEN_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 122
    :pswitch_28
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_GRAY_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 121
    :pswitch_29
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_DEFAULT_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 120
    :pswitch_2a
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_BLUE_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 119
    :pswitch_2b
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_BEST_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 118
    :pswitch_2c
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RGB_COLOR_MAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 117
    :pswitch_2d
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RESOURCE_MANAGER:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 116
    :pswitch_2e
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_RECTANGLE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 115
    :pswitch_2f
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_POINT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 114
    :pswitch_30
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_PIXMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 113
    :pswitch_31
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_INTEGER:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 112
    :pswitch_32
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_FONT:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 111
    :pswitch_33
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_DRAWABLE:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 110
    :pswitch_34
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER7:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 109
    :pswitch_35
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER6:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 108
    :pswitch_36
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER5:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 107
    :pswitch_37
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER4:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 106
    :pswitch_38
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER3:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 105
    :pswitch_39
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER2:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 104
    :pswitch_3a
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER1:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 103
    :pswitch_3b
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CUT_BUFFER0:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 102
    :pswitch_3c
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CURSOR:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 101
    :pswitch_3d
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_COLORMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 100
    :pswitch_3e
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_CARDINAL:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 99
    :pswitch_3f
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_BITMAP:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 98
    :pswitch_40
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_ATOM:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 97
    :pswitch_41
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_ARC:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 96
    :pswitch_42
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_SECONDARY:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 95
    :pswitch_43
    sget-object p1, Lcom/sun/jna/platform/unix/X11;->XA_PRIMARY:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 94
    :pswitch_44
    sget-object p1, Lcom/sun/jna/platform/unix/X11$Atom;->None:Lcom/sun/jna/platform/unix/X11$Atom;

    return-object p1

    .line 166
    :cond_0
    :goto_0
    new-instance v0, Lcom/sun/jna/platform/unix/X11$Atom;

    invoke-direct {v0, p1, p2}, Lcom/sun/jna/platform/unix/X11$Atom;-><init>(J)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
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
        :pswitch_a
        :pswitch_9
        :pswitch_8
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
