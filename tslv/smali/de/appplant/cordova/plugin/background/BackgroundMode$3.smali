.class synthetic Lde/appplant/cordova/plugin/background/BackgroundMode$3;
.super Ljava/lang/Object;
.source "BackgroundMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/appplant/cordova/plugin/background/BackgroundMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$appplant$cordova$plugin$background$BackgroundMode$Event:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 286
    invoke-static {}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->values()[Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$3;->$SwitchMap$de$appplant$cordova$plugin$background$BackgroundMode$Event:[I

    :try_start_0
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$3;->$SwitchMap$de$appplant$cordova$plugin$background$BackgroundMode$Event:[I

    sget-object v1, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v0, Lde/appplant/cordova/plugin/background/BackgroundMode$3;->$SwitchMap$de$appplant$cordova$plugin$background$BackgroundMode$Event:[I

    sget-object v1, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->DEACTIVATE:Lde/appplant/cordova/plugin/background/BackgroundMode$Event;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/background/BackgroundMode$Event;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method
