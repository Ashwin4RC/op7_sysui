.class public Lcom/oneplus/lib/widget/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field private static sCache:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/oneplus/lib/widget/ArrayUtils;->sCache:[Ljava/lang/Object;

    return-void
.end method

.method public static newUnpaddedIntArray(I)[I
    .locals 1
    .param p0, "minLen"    # I

    .line 26
    new-array v0, p0, [I

    return-object v0
.end method
