.class public Lcom/googlecode/mp4parser/boxes/mp4/ESDescriptorBox;
.super Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;
.source "ESDescriptorBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "esds"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "esds"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getEsDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->getDescriptor()Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;

    move-result-object v0

    check-cast v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    return-object v0
.end method

.method public setEsDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;)V
    .locals 0
    .param p1, "esDescriptor"    # Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/ESDescriptor;

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/boxes/mp4/AbstractDescriptorBox;->setDescriptor(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/BaseDescriptor;)V

    .line 37
    return-void
.end method
