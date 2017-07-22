.class Lcom/matimenich/plugins/nativeclick/NativeClick$1;
.super Ljava/lang/Object;
.source "NativeClick.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/matimenich/plugins/nativeclick/NativeClick;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/matimenich/plugins/nativeclick/NativeClick;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lcom/matimenich/plugins/nativeclick/NativeClick;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .param p1, "this$0"    # Lcom/matimenich/plugins/nativeclick/NativeClick;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/matimenich/plugins/nativeclick/NativeClick$1;->this$0:Lcom/matimenich/plugins/nativeclick/NativeClick;

    iput-object p2, p0, Lcom/matimenich/plugins/nativeclick/NativeClick$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/matimenich/plugins/nativeclick/NativeClick$1;->this$0:Lcom/matimenich/plugins/nativeclick/NativeClick;

    iget-object v2, v2, Lcom/matimenich/plugins/nativeclick/NativeClick;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 22
    .local v1, "view":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->playSoundEffect(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v1    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "ex":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/matimenich/plugins/nativeclick/NativeClick$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    goto :goto_0
.end method
