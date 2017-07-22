.class Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Landroid/media/MediaDrm$OnKeyStatusChangeListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/media/MediaDrmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyStatusChangeListener"
.end annotation

.annotation build Lorg/chromium/base/annotations/MainDex;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;


# direct methods
.method private constructor <init>(Lorg/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 986
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/media/MediaDrmBridge;Lorg/chromium/media/MediaDrmBridge$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/media/MediaDrmBridge;
    .param p2, "x1"    # Lorg/chromium/media/MediaDrmBridge$1;

    .prologue
    .line 986
    invoke-direct {p0, p1}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;-><init>(Lorg/chromium/media/MediaDrmBridge;)V

    return-void
.end method

.method private getKeysInfo(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/chromium/media/MediaDrmBridge$KeyStatus;",
            ">;"
        }
    .end annotation

    .prologue
    .line 988
    .local p1, "keyInformation":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v2, "keysInfo":Ljava/util/List;, "Ljava/util/List<Lorg/chromium/media/MediaDrmBridge$KeyStatus;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaDrm$KeyStatus;

    .line 990
    .local v1, "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    new-instance v3, Lorg/chromium/media/MediaDrmBridge$KeyStatus;

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyStatus;->getKeyId()[B

    move-result-object v4

    invoke-virtual {v1}, Landroid/media/MediaDrm$KeyStatus;->getStatusCode()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/chromium/media/MediaDrmBridge$KeyStatus;-><init>([BILorg/chromium/media/MediaDrmBridge$1;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 992
    .end local v1    # "keyStatus":Landroid/media/MediaDrm$KeyStatus;
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onKeyStatusChange(Landroid/media/MediaDrm;[BLjava/util/List;Z)V
    .locals 3
    .param p1, "md"    # Landroid/media/MediaDrm;
    .param p2, "sessionId"    # [B
    .param p4, "hasNewUsableKey"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaDrm;",
            "[B",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaDrm$KeyStatus;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p3, "keyInformation":Ljava/util/List;, "Ljava/util/List<Landroid/media/MediaDrm$KeyStatus;>;"
    const-string v0, "cr_media"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KeysStatusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lorg/chromium/media/MediaDrmBridge;->access$1000([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->this$0:Lorg/chromium/media/MediaDrmBridge;

    invoke-direct {p0, p3}, Lorg/chromium/media/MediaDrmBridge$KeyStatusChangeListener;->getKeysInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, p2, v1, p4}, Lorg/chromium/media/MediaDrmBridge;->access$1800(Lorg/chromium/media/MediaDrmBridge;[B[Ljava/lang/Object;Z)V

    .line 1001
    return-void
.end method
