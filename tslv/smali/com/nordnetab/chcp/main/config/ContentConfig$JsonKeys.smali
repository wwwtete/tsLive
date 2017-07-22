.class Lcom/nordnetab/chcp/main/config/ContentConfig$JsonKeys;
.super Ljava/lang/Object;
.source "ContentConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nordnetab/chcp/main/config/ContentConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JsonKeys"
.end annotation


# static fields
.field public static final CONTENT_URL:Ljava/lang/String; = "content_url"

.field public static final MINIMUM_NATIVE_VERSION:Ljava/lang/String; = "min_native_interface"

.field public static final UPDATE:Ljava/lang/String; = "update"

.field public static final VERSION:Ljava/lang/String; = "release"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
