.class Lde/appplant/cordova/plugin/background/BackgroundMode$1;
.super Ljava/lang/Object;
.source "BackgroundMode.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/appplant/cordova/plugin/background/BackgroundMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/background/BackgroundMode;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/background/BackgroundMode;)V
    .locals 0
    .param p1, "this$0"    # Lde/appplant/cordova/plugin/background/BackgroundMode;

    .prologue
    .line 63
    iput-object p1, p0, Lde/appplant/cordova/plugin/background/BackgroundMode$1;->this$0:Lde/appplant/cordova/plugin/background/BackgroundMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 68
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 73
    return-void
.end method
