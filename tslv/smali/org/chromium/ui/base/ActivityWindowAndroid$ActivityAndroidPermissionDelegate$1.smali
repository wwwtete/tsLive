.class Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;
.super Ljava/lang/Object;
.source "ActivityWindowAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->requestPermissions([Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

.field final synthetic val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;[Ljava/lang/String;Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

    iput-object p2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    iput-object p3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 313
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    array-length v2, v2

    new-array v1, v2, [I

    .line 314
    .local v1, "results":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 315
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->this$1:Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;

    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    aput v2, v1, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    .line 319
    :cond_1
    iget-object v2, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$callback:Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;

    iget-object v3, p0, Lorg/chromium/ui/base/ActivityWindowAndroid$ActivityAndroidPermissionDelegate$1;->val$permissions:[Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lorg/chromium/ui/base/WindowAndroid$PermissionCallback;->onRequestPermissionsResult([Ljava/lang/String;[I)V

    .line 320
    return-void
.end method
