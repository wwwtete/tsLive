.class public Lorg/chromium/content/browser/ChildProcessCreationParams;
.super Ljava/lang/Object;
.source "ChildProcessCreationParams.java"


# static fields
.field private static final EXTRA_LIBRARY_PROCESS_TYPE:Ljava/lang/String; = "org.chromium.content.common.child_service_params.library_process_type"

.field private static volatile sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;


# instance fields
.field private final mExtraBindFlags:I

.field private final mLibraryProcessType:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "extraBindFlags"    # I
    .param p3, "libraryProcessType"    # I

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mPackageName:Ljava/lang/String;

    .line 37
    iput p2, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mExtraBindFlags:I

    .line 38
    iput p3, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mLibraryProcessType:I

    .line 39
    return-void
.end method

.method public static get()Lorg/chromium/content/browser/ChildProcessCreationParams;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lorg/chromium/content/browser/ChildProcessCreationParams;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;

    return-object v0
.end method

.method public static getLibraryProcessType(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v0, "org.chromium.content.common.child_service_params.library_process_type"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static set(Lorg/chromium/content/browser/ChildProcessCreationParams;)V
    .locals 0
    .param p0, "params"    # Lorg/chromium/content/browser/ChildProcessCreationParams;

    .prologue
    .line 27
    sput-object p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->sChildProcessCreationParams:Lorg/chromium/content/browser/ChildProcessCreationParams;

    .line 28
    return-void
.end method


# virtual methods
.method public addExtraBindFlags(I)I
    .locals 1
    .param p1, "bindFlags"    # I

    .prologue
    .line 53
    iget v0, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mExtraBindFlags:I

    or-int/2addr v0, p1

    return v0
.end method

.method public addIntentExtras(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const-string v0, "org.chromium.content.common.child_service_params.library_process_type"

    iget v1, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mLibraryProcessType:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lorg/chromium/content/browser/ChildProcessCreationParams;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
