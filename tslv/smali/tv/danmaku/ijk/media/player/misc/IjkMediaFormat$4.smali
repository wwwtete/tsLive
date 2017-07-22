.class Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;
.super Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;
.source "IjkMediaFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;


# direct methods
.method constructor <init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)V
    .locals 1
    .param p1, "this$0"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 124
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$4;->this$0:Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$Formatter;-><init>(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat$1;)V

    return-void
.end method


# virtual methods
.method protected doFormat(Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;)Ljava/lang/String;
    .locals 6
    .param p1, "mediaFormat"    # Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;

    .prologue
    .line 127
    const-string v5, "codec_profile_id"

    invoke-virtual {p1, v5}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    .line 129
    .local v3, "profileIndex":I
    sparse-switch v3, :sswitch_data_0

    .line 170
    const/4 v5, 0x0

    .line 190
    :goto_0
    return-object v5

    .line 131
    :sswitch_0
    const-string v2, "Baseline"

    .line 173
    .local v2, "profile":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v5, "codec_name"

    invoke-virtual {p1, v5}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "codecName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "h264"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    const-string v5, "codec_level"

    invoke-virtual {p1, v5}, Ltv/danmaku/ijk/media/player/misc/IjkMediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 179
    .local v1, "level":I
    const/16 v5, 0xa

    if-ge v1, v5, :cond_0

    .line 180
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 134
    .end local v0    # "codecName":Ljava/lang/String;
    .end local v1    # "level":I
    .end local v2    # "profile":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    :sswitch_1
    const-string v2, "Constrained Baseline"

    .line 135
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 137
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_2
    const-string v2, "Main"

    .line 138
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 140
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_3
    const-string v2, "Extended"

    .line 141
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 143
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_4
    const-string v2, "High"

    .line 144
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 146
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_5
    const-string v2, "High 10"

    .line 147
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 149
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_6
    const-string v2, "High 10 Intra"

    .line 150
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 152
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_7
    const-string v2, "High 4:2:2"

    .line 153
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 155
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_8
    const-string v2, "High 4:2:2 Intra"

    .line 156
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 158
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_9
    const-string v2, "High 4:4:4"

    .line 159
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 161
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_a
    const-string v2, "High 4:4:4 Predictive"

    .line 162
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 164
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_b
    const-string v2, "High 4:4:4 Intra"

    .line 165
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 167
    .end local v2    # "profile":Ljava/lang/String;
    :sswitch_c
    const-string v2, "CAVLC 4:4:4"

    .line 168
    .restart local v2    # "profile":Ljava/lang/String;
    goto :goto_1

    .line 182
    .restart local v0    # "codecName":Ljava/lang/String;
    .restart local v1    # "level":I
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    const-string v5, " Profile Level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    div-int/lit8 v5, v1, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 184
    rem-int/lit8 v5, v1, 0xa

    if-eqz v5, :cond_1

    .line 185
    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    rem-int/lit8 v5, v1, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    .end local v1    # "level":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 129
    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_c
        0x42 -> :sswitch_0
        0x4d -> :sswitch_2
        0x58 -> :sswitch_3
        0x64 -> :sswitch_4
        0x6e -> :sswitch_5
        0x7a -> :sswitch_7
        0x90 -> :sswitch_9
        0xf4 -> :sswitch_a
        0x242 -> :sswitch_1
        0x86e -> :sswitch_6
        0x87a -> :sswitch_8
        0x8f4 -> :sswitch_b
    .end sparse-switch
.end method
