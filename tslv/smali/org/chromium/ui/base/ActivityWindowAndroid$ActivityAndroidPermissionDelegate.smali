.class Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;
.super Ljava/lang/Object;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Lorg/chromium/ui/base/AndroidPermissionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/ui/base/ActivityWindowAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActivityAndroidPermissionDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;


# direct methods
.method private constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid;Lorg/chromium/ui/base/ActivityWindowAndroid$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/ui/base/ActivityWindowAndroid;
    .param p2, "x1"    # Lorg/chromium/ui/base/ActivityWindowAndroid$1;

    .prologue
    .line 259
    invoke-direct {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid;)V

    return-void
.end method

.method private requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    const/4 v2, 0x0

    .line 329
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v2

    .line 330
    :cond_1
    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v3}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 331
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 333
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$300(Lorg/chromium/ui/base/ActivityWindowAndroid;)I

    move-result v1

    .line 334
    .local v1, "requestCode":I
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$400(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 336
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canRequestPermission(Ljava/lang/String;)Z
    .locals 7
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 268
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ge v5, v6, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v3

    .line 270
    :cond_1
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v5}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 271
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {p0, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->isPermissionRevokedByPolicy(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v3, v4

    .line 278
    goto :goto_0

    .line 283
    :cond_2
    iget-object v5, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {v5, p1}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$100(Lorg/chromium/ui/base/ActivityWindowAndroid;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "permissionQueriedKey":Ljava/lang/String;
    invoke-static {}, Lorg/chromium/base/ContextUtils;->getAppSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 285
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 262
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    iget-object v0, v0, Lorg/chromium/ui/base/ActivityWindowAndroid;->mApplicationContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 292
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v1

    .line 294
    :cond_1
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-virtual {v2}, Lorg/chromium/ui/base/ActivityWindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 2
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    .prologue
    .line 304
    invoke-direct {p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->requestPermissionsInternal([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v0, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->this$0:Lorg/chromium/ui/base/ActivityWindowAndroid;

    invoke-static {v0}, Lorg/chromium/ui/base/ActivityWindowAndroid;->access$200(Lorg/chromium/ui/base/ActivityWindowAndroid;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;

    invoke-direct {v1, p0, p1, p2}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;-><init>(Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
