.class public Lorg/chromium/base/library_loader/NativeLibraries;
.super Ljava/lang/Object;
.source "NativeLibraries.java"


# annotations
.annotation build Lorg/chromium/base/annotations/SuppressFBWarnings;
.end annotation


# static fields
.field public static final LIBRARIES:[Ljava/lang/String;

.field public static sEnableLinkerTests:Z

.field public static sUseLibraryInZipFile:Z

.field public static sUseLinker:Z

.field static sVersionNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    sput-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLinker:Z

    .line 6
    sput-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sUseLibraryInZipFile:Z

    .line 7
    sput-boolean v2, Lorg/chromium/base/library_loader/NativeLibraries;->sEnableLinkerTests:Z

    .line 8
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "xwalkdummy"

    aput-object v1, v0, v2

    sput-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->LIBRARIES:[Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lorg/chromium/base/library_loader/NativeLibraries;->sVersionNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
