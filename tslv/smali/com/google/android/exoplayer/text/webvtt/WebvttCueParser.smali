.class public final Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;
.super Ljava/lang/Object;
.source "WebvttCueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    }
.end annotation


# static fields
.field private static final CHAR_AMPERSAND:C = '&'

.field private static final CHAR_GREATER_THAN:C = '>'

.field private static final CHAR_LESS_THAN:C = '<'

.field private static final CHAR_SEMI_COLON:C = ';'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final COMMENT:Ljava/util/regex/Pattern;

.field public static final CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

.field private static final CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENTITY_AMPERSAND:Ljava/lang/String; = "amp"

.field private static final ENTITY_GREATER_THAN:Ljava/lang/String; = "gt"

.field private static final ENTITY_LESS_THAN:Ljava/lang/String; = "lt"

.field private static final ENTITY_NON_BREAK_SPACE:Ljava/lang/String; = "nbsp"

.field private static final SPACE:Ljava/lang/String; = " "

.field private static final STYLE_BOLD:I = 0x1

.field private static final STYLE_ITALIC:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WebvttCueParser"

.field private static final TAG_BOLD:Ljava/lang/String; = "b"

.field private static final TAG_CLASS:Ljava/lang/String; = "c"

.field private static final TAG_ITALIC:Ljava/lang/String; = "i"

.field private static final TAG_LANG:Ljava/lang/String; = "lang"

.field private static final TAG_UNDERLINE:Ljava/lang/String; = "u"

.field private static final TAG_VOICE:Ljava/lang/String; = "v"


# instance fields
.field private final textBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "^(\\S+)\\s+-->\\s+(\\S+)(.*)?$"

    .line 37
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^NOTE(( |\t).*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->COMMENT:Ljava/util/regex/Pattern;

    .line 40
    const-string v0, "(\\S+?):(\\S+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    .line 71
    return-void
.end method

.method private static applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V
    .locals 3
    .param p0, "entity"    # Ljava/lang/String;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    .line 317
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 331
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring unsupported entity: \'&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :goto_1
    return-void

    .line 317
    :sswitch_0
    const-string v1, "lt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "gt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "nbsp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "amp"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 319
    :pswitch_0
    const/16 v0, 0x3c

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 322
    :pswitch_1
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 325
    :pswitch_2
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 328
    :pswitch_3
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 317
    :sswitch_data_0
    .sparse-switch
        0xced -> :sswitch_1
        0xd88 -> :sswitch_0
        0x179c4 -> :sswitch_3
        0x337f11 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V
    .locals 6
    .param p0, "startTag"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    .param p1, "spannedText"    # Landroid/text/SpannableStringBuilder;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/16 v5, 0x21

    .line 351
    iget-object v3, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 367
    :goto_1
    return-void

    .line 351
    :sswitch_0
    const-string v4, "b"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "u"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 353
    :pswitch_0
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 354
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 353
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 357
    :pswitch_1
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    iget v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 358
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 357
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 361
    :pswitch_2
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iget v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->position:I

    .line 362
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 361
    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 351
    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x69 -> :sswitch_1
        0x75 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static findEndOfTag(Ljava/lang/String;I)I
    .locals 2
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "startPos"    # I

    .prologue
    .line 312
    const/16 v1, 0x3e

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 313
    .local v0, "idx":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method public static findNextCueHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/regex/Matcher;
    .locals 3
    .param p0, "input"    # Lcom/google/android/exoplayer/util/ParsableByteArray;

    .prologue
    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 132
    sget-object v2, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->COMMENT:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 136
    :cond_1
    sget-object v2, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->CUE_HEADER_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 137
    .local v0, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    .end local v0    # "cueHeaderMatcher":Ljava/util/regex/Matcher;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static isSupportedTag(Ljava/lang/String;)Z
    .locals 4
    .param p0, "tagName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 337
    const/4 v2, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 346
    :pswitch_0
    return v0

    .line 337
    :sswitch_0
    const-string v3, "b"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "c"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "i"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "lang"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "u"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "v"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_1
        0x69 -> :sswitch_2
        0x75 -> :sswitch_4
        0x76 -> :sswitch_5
        0x3291ee -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static parseCue(Ljava/util/regex/Matcher;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;)Z
    .locals 8
    .param p0, "cueHeaderMatcher"    # Ljava/util/regex/Matcher;
    .param p1, "webvttData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .param p3, "textBuilder"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 220
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p2, v4, v5}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setStartTime(J)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    move-result-object v4

    const/4 v5, 0x2

    .line 221
    invoke-virtual {p0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parseTimestampUs(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setEndTime(J)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V

    .line 230
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer/util/ParsableByteArray;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 233
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    const-string v3, "\n"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    .end local v1    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "WebvttCueParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping cue with bad header: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 239
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1
    return v2

    .line 238
    .restart local v1    # "line":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseCueText(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_1
.end method

.method static parseCueSettingsList(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V
    .locals 7
    .param p0, "cueSettingsList"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .prologue
    .line 99
    sget-object v4, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->CUE_SETTING_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 100
    .local v0, "cueSettingMatcher":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 101
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "name":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 104
    .local v3, "value":Ljava/lang/String;
    :try_start_0
    const-string v4, "line"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 105
    invoke-static {v3, p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping bad cue setting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    const-string v4, "align"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    invoke-static {v3}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setTextAlignment(Landroid/text/Layout$Alignment;)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 108
    :cond_1
    const-string v4, "position"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-static {v3, p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V

    goto :goto_0

    .line 110
    :cond_2
    const-string v4, "size"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 111
    invoke-static {v3}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setWidth(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 113
    :cond_3
    const-string v4, "WebvttCueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown cue setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 119
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    return-void
.end method

.method static parseCueText(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V
    .locals 16
    .param p0, "markup"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .prologue
    .line 152
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 153
    .local v9, "spannedText":Landroid/text/SpannableStringBuilder;
    new-instance v11, Ljava/util/Stack;

    invoke-direct {v11}, Ljava/util/Stack;-><init>()V

    .line 155
    .local v11, "startTagStack":Ljava/util/Stack;, "Ljava/util/Stack<Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;>;"
    const/4 v6, 0x0

    .line 156
    .local v6, "pos":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v6, v13, :cond_c

    .line 157
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 158
    .local v1, "curr":C
    sparse-switch v1, :sswitch_data_0

    .line 204
    invoke-virtual {v9, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 205
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 160
    :sswitch_0
    add-int/lit8 v13, v6, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v14

    if-lt v13, v14, :cond_1

    .line 161
    add-int/lit8 v6, v6, 0x1

    .line 162
    goto :goto_0

    .line 164
    :cond_1
    move v5, v6

    .line 165
    .local v5, "ltPos":I
    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_3

    const/4 v3, 0x1

    .line 166
    .local v3, "isClosingTag":Z
    :goto_1
    add-int/lit8 v13, v5, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->findEndOfTag(Ljava/lang/String;I)I

    move-result v6

    .line 167
    add-int/lit8 v13, v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x2f

    if-ne v13, v14, :cond_4

    const/4 v4, 0x1

    .line 169
    .local v4, "isVoidTag":Z
    :goto_2
    if-eqz v3, :cond_5

    const/4 v13, 0x2

    :goto_3
    add-int v14, v5, v13

    if-eqz v4, :cond_6

    add-int/lit8 v13, v6, -0x2

    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->tokenizeTag(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "tagTokens":[Ljava/lang/String;
    if-eqz v12, :cond_0

    const/4 v13, 0x0

    aget-object v13, v12, v13

    invoke-static {v13}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->isSupportedTag(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 174
    if-eqz v3, :cond_7

    .line 177
    :cond_2
    invoke-virtual {v11}, Ljava/util/Stack;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_0

    .line 180
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    .line 181
    .local v10, "startTag":Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    invoke-static {v10, v9}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V

    .line 182
    iget-object v13, v10, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;->name:Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    goto :goto_0

    .line 165
    .end local v3    # "isClosingTag":Z
    .end local v4    # "isVoidTag":Z
    .end local v10    # "startTag":Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;
    .end local v12    # "tagTokens":[Ljava/lang/String;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 167
    .restart local v3    # "isClosingTag":Z
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 169
    .restart local v4    # "isVoidTag":Z
    :cond_5
    const/4 v13, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v13, v6, -0x1

    goto :goto_4

    .line 183
    .restart local v12    # "tagTokens":[Ljava/lang/String;
    :cond_7
    if-nez v4, :cond_0

    .line 184
    new-instance v13, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-direct {v13, v14, v15}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v11, v13}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 188
    .end local v3    # "isClosingTag":Z
    .end local v4    # "isVoidTag":Z
    .end local v5    # "ltPos":I
    .end local v12    # "tagTokens":[Ljava/lang/String;
    :sswitch_1
    const/16 v13, 0x3b

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 189
    .local v7, "semiColonEnd":I
    const/16 v13, 0x20

    add-int/lit8 v14, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 190
    .local v8, "spaceEnd":I
    const/4 v13, -0x1

    if-ne v7, v13, :cond_9

    move v2, v8

    .line 192
    .local v2, "entityEnd":I
    :goto_5
    const/4 v13, -0x1

    if-eq v2, v13, :cond_b

    .line 193
    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v9}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applyEntity(Ljava/lang/String;Landroid/text/SpannableStringBuilder;)V

    .line 194
    if-ne v2, v8, :cond_8

    .line 195
    const-string v13, " "

    invoke-virtual {v9, v13}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 197
    :cond_8
    add-int/lit8 v6, v2, 0x1

    goto/16 :goto_0

    .line 190
    .end local v2    # "entityEnd":I
    :cond_9
    const/4 v13, -0x1

    if-ne v8, v13, :cond_a

    move v2, v7

    goto :goto_5

    .line 191
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_5

    .line 199
    .restart local v2    # "entityEnd":I
    :cond_b
    invoke-virtual {v9, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 200
    add-int/lit8 v6, v6, 0x1

    .line 202
    goto/16 :goto_0

    .line 210
    .end local v1    # "curr":C
    .end local v2    # "entityEnd":I
    .end local v7    # "semiColonEnd":I
    .end local v8    # "spaceEnd":I
    :cond_c
    :goto_6
    invoke-virtual {v11}, Ljava/util/Stack;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_d

    .line 211
    invoke-virtual {v11}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;

    invoke-static {v13, v9}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->applySpansForTag(Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser$StartTag;Landroid/text/SpannableStringBuilder;)V

    goto :goto_6

    .line 213
    :cond_d
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 214
    return-void

    .line 158
    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_1
        0x3c -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseLineAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V
    .locals 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 246
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 247
    .local v0, "commaPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 248
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 249
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 253
    :goto_0
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    invoke-static {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLine(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLineType(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 258
    :goto_1
    return-void

    .line 251
    :cond_0
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLineAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    goto :goto_0

    .line 256
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLine(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setLineType(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    goto :goto_1
.end method

.method private static parsePositionAnchor(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 273
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 282
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid anchor value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/high16 v0, -0x80000000

    :goto_1
    :pswitch_0
    return v0

    .line 273
    :sswitch_0
    const-string v4, "start"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "center"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string v4, "middle"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    :sswitch_3
    const-string v4, "end"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 278
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 280
    goto :goto_1

    .line 273
    nop

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_1
        -0x4009266b -> :sswitch_2
        0x188db -> :sswitch_3
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static parsePositionAttribute(Ljava/lang/String;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 262
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 263
    .local v0, "commaPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 264
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parsePositionAnchor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 265
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 269
    :goto_0
    invoke-static {p0}, Lcom/google/android/exoplayer/text/webvtt/WebvttParserUtil;->parsePercentage(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setPosition(F)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .line 270
    return-void

    .line 267
    :cond_0
    const/high16 v1, -0x80000000

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;->setPositionAnchor(I)Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    goto :goto_0
.end method

.method private static parseTextAlignment(Ljava/lang/String;)Landroid/text/Layout$Alignment;
    .locals 3
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 288
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 299
    const-string v0, "WebvttCueParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid alignment value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    :goto_1
    return-object v0

    .line 288
    :sswitch_0
    const-string v1, "start"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v1, "middle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v1, "end"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 291
    :pswitch_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 294
    :pswitch_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 297
    :pswitch_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    .line 288
    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_2
        -0x4009266b -> :sswitch_3
        0x188db -> :sswitch_4
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_5
        0x68ac462 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static tokenizeTag(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "fullTagExpression"    # Ljava/lang/String;

    .prologue
    .line 377
    const-string v0, "\\s+"

    const-string v1, " "

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 379
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    .line 381
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    const/4 v0, 0x0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 384
    :cond_1
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method parseNextValidCue(Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;)Z
    .locals 2
    .param p1, "webvttData"    # Lcom/google/android/exoplayer/util/ParsableByteArray;
    .param p2, "builder"    # Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;

    .prologue
    .line 82
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->findNextCueHeader(Lcom/google/android/exoplayer/util/ParsableByteArray;)Ljava/util/regex/Matcher;

    move-result-object v0

    .local v0, "cueHeaderMatcher":Ljava/util/regex/Matcher;
    if-eqz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->textBuilder:Ljava/lang/StringBuilder;

    invoke-static {v0, p1, p2, v1}, Lcom/google/android/exoplayer/text/webvtt/WebvttCueParser;->parseCue(Ljava/util/regex/Matcher;Lcom/google/android/exoplayer/util/ParsableByteArray;Lcom/google/android/exoplayer/text/webvtt/WebvttCue$Builder;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
