.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$1;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "index"    # I

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha(F)F
    .locals 4
    .param p1, "busynessFactor"    # F

    .line 69
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mScrimBehindAlphaKeyguard:F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    invoke-static {v1, v2, v0, v3, p1}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    return v0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3
    .param p1, "previousState"    # Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mBlankScreen:Z

    .line 49
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_0

    .line 50
    const-wide/16 v1, 0x1f4

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    .line 51
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mDisplayRequiresBlanking:Z

    if-eqz v1, :cond_1

    .line 55
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mBlankScreen:Z

    goto :goto_0

    .line 58
    :cond_0
    const-wide/16 v1, 0xdc

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimationDuration:J

    .line 60
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mScrimBehindAlphaKeyguard:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentBehindAlpha:F

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mCurrentInFrontAlpha:F

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$1;->mAnimateChange:Z

    .line 65
    return-void
.end method
