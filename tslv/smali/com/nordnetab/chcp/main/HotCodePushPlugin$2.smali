.class Lcom/nordnetab/chcp/main/HotCodePushPlugin$2;
.super Ljava/lang/Object;
.source "HotCodePushPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nordnetab/chcp/main/HotCodePushPlugin;->onEvent(Lcom/nordnetab/chcp/main/events/UpdateInstalledEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;


# direct methods
.method constructor <init>(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin$2;->this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/nordnetab/chcp/main/HotCodePushPlugin$2;->this$0:Lcom/nordnetab/chcp/main/HotCodePushPlugin;

    invoke-static {v0}, Lcom/nordnetab/chcp/main/HotCodePushPlugin;->access$000(Lcom/nordnetab/chcp/main/HotCodePushPlugin;)V

    .line 864
    return-void
.end method
