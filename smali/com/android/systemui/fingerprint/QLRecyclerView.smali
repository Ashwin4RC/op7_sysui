.class public Lcom/android/systemui/fingerprint/QLRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "QLRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;,
        Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;,
        Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;
    }
.end annotation


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;


# instance fields
.field private final ANIMATION_DURATION:I

.field private final CHECK_NEXT_SCROLL_DELAY:I

.field private final DEBUG_VIB:Z

.field private final SCALE_AMOUNT:F

.field private final SCROLL_SPEED_MAX:F

.field private final SCROLL_SPEED_MIN:F

.field private final SIMPLY_ANIMATION_DURATION:I

.field private final VIB_TIME:I

.field protected mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

.field private mAnimate:Z

.field mAppMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBarPosition:I

.field private mCancelFalseRunnable:Ljava/lang/Runnable;

.field private mCheckNextScroll:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

.field private mHelper:Lcom/android/systemui/fingerprint/QLHelper;

.field private mInitialized:Z

.field private mIsCancel:Z

.field private mIsQLExit:Z

.field private mLabel:Landroid/widget/TextView;

.field private mLastScrollTime:J

.field mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

.field private mLeaveAnimator:Landroid/animation/ValueAnimator;

.field private mPadding:I

.field private mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field private mPosition:I

.field private final mQLVibTimeObserver:Landroid/database/ContentObserver;

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mScrollSpeed:F

.field private mScrollToPosition:Ljava/lang/Runnable;

.field private mVibTime:I

.field private mView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mZoomAmount:F

.field private final mZoomDistance:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 398
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 399
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 400
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/fingerprint/QLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    .line 398
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 99
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->DEBUG_VIB:Z

    .line 51
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->CHECK_NEXT_SCROLL_DELAY:I

    .line 52
    const/16 v1, 0x12c

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->ANIMATION_DURATION:I

    .line 53
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->SIMPLY_ANIMATION_DURATION:I

    .line 54
    const/16 v1, 0x14

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->VIB_TIME:I

    .line 55
    const v1, 0x3f2b851f    # 0.67f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->SCALE_AMOUNT:F

    .line 56
    const/high16 v1, 0x43eb0000    # 470.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->SCROLL_SPEED_MAX:F

    .line 57
    const/high16 v1, 0x42480000    # 50.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->SCROLL_SPEED_MIN:F

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    .line 66
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    .line 70
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 71
    const/high16 v1, 0x43160000    # 150.0f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 72
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    .line 74
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    .line 75
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPadding:I

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAnimate:Z

    .line 81
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mVibTime:I

    .line 83
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLastScrollTime:J

    .line 87
    new-instance v1, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v1}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    .line 89
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    .line 91
    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsQLExit:Z

    .line 116
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView$1;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mQLVibTimeObserver:Landroid/database/ContentObserver;

    .line 178
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$2;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    .line 209
    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$fviqMsn7q89L1vHSjfNIOlkOwOc;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$fviqMsn7q89L1vHSjfNIOlkOwOc;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    .line 314
    const v1, 0x3ea8f5c2    # 0.32999998f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mZoomAmount:F

    .line 317
    const/high16 v1, 0x3e800000    # 0.25f

    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mZoomDistance:F

    .line 528
    new-instance v1, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$-rJF29kOs52dP5_0hVqUwFt4pOw;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$-rJF29kOs52dP5_0hVqUwFt4pOw;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    .line 100
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    .line 102
    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, v0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/content/Context;IZ)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    .line 104
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 106
    new-instance v1, Lcom/android/systemui/fingerprint/QLHelper;

    invoke-direct {v1, p1}, Lcom/android/systemui/fingerprint/QLHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLHelper;->getQLApps()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setHasFixedSize(Z)V

    .line 110
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setItemViewCacheSize(I)V

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setDrawingCacheEnabled(Z)V

    .line 112
    const/high16 v1, 0x100000

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setDrawingCacheQuality(I)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setNestedScrollingEnabled(Z)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/QLRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mVibTime:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mVibTime:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->vibrate()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/QLRecyclerView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/QLRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPadding:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/QLRecyclerView;FZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->cancelAnimation(FZ)V

    return-void
.end method

.method static synthetic access$1402(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/QLRecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/fingerprint/QLRecyclerView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/fingerprint/QLRecyclerView;)Lcom/android/systemui/fingerprint/QLHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/QLRecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsQLExit:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/QLRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/fingerprint/QLRecyclerView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;
    .param p1, "x1"    # I

    .line 45
    iput p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/QLRecyclerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->scrollToPosition()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/QLRecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateViewScale()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateLabel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/QLRecyclerView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/fingerprint/QLRecyclerView;

    .line 45
    iget v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    return v0
.end method

.method private cancelAnimation(FZ)V
    .locals 8
    .param p1, "fraction"    # F
    .param p2, "isEnter"    # Z

    .line 430
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getIconPadding()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLAdapter;->getIconPadding()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v3, v2, p1

    mul-float/2addr v1, v3

    sub-float/2addr v0, v1

    .line 431
    .local v0, "margin":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 432
    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 433
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 434
    .local v4, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    float-to-int v5, v0

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 435
    float-to-int v5, v0

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 436
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    iget-object v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v6, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 438
    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v6, v5, p1

    add-float/2addr v6, v2

    .line 439
    .local v6, "scale":F
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleX(F)V

    .line 440
    invoke-virtual {v3, v6}, Landroid/view/View;->setScaleY(F)V

    .line 442
    mul-float v7, v5, p1

    add-float/2addr v5, v7

    .line 443
    .local v5, "alpha":F
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 431
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "alpha":F
    .end local v6    # "scale":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    .end local v1    # "i":I
    :cond_1
    if-nez p2, :cond_2

    .line 448
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->x_after:F

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget v2, v2, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->x_before:F

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget v3, v3, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->x_after:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 449
    .local v1, "targetX":F
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v2, v2, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v2

    .line 450
    .local v2, "currentX":F
    sub-float v3, v2, v1

    .line 451
    .local v3, "dx":F
    iget-object v4, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    float-to-int v5, v3

    new-instance v6, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v6, p0}, Landroidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Landroidx/recyclerview/widget/RecyclerView;)V

    new-instance v7, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v7}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->scrollHorizontallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    .line 453
    .end local v1    # "targetX":F
    .end local v2    # "currentX":F
    .end local v3    # "dx":F
    :cond_2
    return-void
.end method

.method private checkBarPosition(F)I
    .locals 2
    .param p1, "x"    # F

    .line 199
    const/4 v0, 0x6

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 200
    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    return v0

    .line 199
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 202
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->scrollToPosition()V

    .line 211
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 2

    .line 529
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "mCancelFalseRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    .line 531
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/systemui/fingerprint/QLRecyclerView;)V
    .locals 4

    .line 134
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, "animateView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 138
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z

    .line 139
    return-void
.end method

.method private scrollToPosition()V
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    new-instance v1, Landroidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V

    .line 207
    return-void
.end method

.method private updateLabel()V
    .locals 2

    .line 421
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;

    iget-object v0, v0, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mLabel:Ljava/lang/String;

    .line 422
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    :cond_0
    return-void
.end method

.method private updateViewScale()V
    .locals 14

    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 321
    .local v0, "midpoint":F
    const/4 v2, 0x0

    .line 322
    .local v2, "d0":F
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float/2addr v3, v0

    .line 323
    .local v3, "d1":F
    const/high16 v4, 0x3f800000    # 1.0f

    .line 324
    .local v4, "s0":F
    const v5, 0x3f2b851f    # 0.67f

    .line 326
    .local v5, "s1":F
    const/4 v6, 0x0

    .line 326
    .local v6, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_3

    .line 327
    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 328
    .local v7, "child":Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {v8, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    invoke-virtual {v9, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v1

    .line 329
    .local v8, "childMidpoint":F
    sub-float v9, v0, v8

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 330
    .local v9, "d":F
    sub-float v10, v5, v4

    sub-float v11, v9, v2

    mul-float/2addr v10, v11

    sub-float v11, v3, v2

    div-float/2addr v10, v11

    add-float/2addr v10, v4

    .line 332
    .local v10, "scale":F
    sget-boolean v11, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_0

    const-string v11, "QuickLaunch.QLRecyclerView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateViewScale mIsCancel "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_0
    iget-boolean v11, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    const/high16 v12, 0x3f000000    # 0.5f

    if-nez v11, :cond_2

    .line 335
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleX(F)V

    .line 336
    invoke-virtual {v7, v10}, Landroid/view/View;->setScaleY(F)V

    .line 338
    const v11, 0x3f666666    # 0.9f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_1

    .line 339
    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v7, v11}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 341
    :cond_1
    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 346
    :cond_2
    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const v13, 0x3f2b851f    # 0.67f

    invoke-virtual {v11, v13}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 326
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "childMidpoint":F
    .end local v9    # "d":F
    .end local v10    # "scale":F
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 350
    .end local v6    # "i":I
    :cond_3
    return-void
.end method

.method private vibrate()V
    .locals 4

    .line 405
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 407
    .local v0, "vib":Landroid/os/Vibrator;
    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mVibTime:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mVibTime:I

    int-to-long v1, v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x14

    :goto_0
    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 412
    .local v1, "effect":Landroid/os/VibrationEffect;
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isSupportLinearVibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 413
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    const/16 v3, 0x3f3

    invoke-static {v2, v0, v3}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    goto :goto_1

    .line 415
    :cond_1
    sget-object v2, Lcom/android/systemui/fingerprint/QLRecyclerView;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 418
    :goto_1
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public launch()V
    .locals 11

    .line 265
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 267
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 272
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 274
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v2, 0x7d0

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    .line 277
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;

    .line 280
    .local v1, "info":Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/app/IActivityManager;->addAppLockerPassedPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    goto :goto_0

    .line 281
    :catch_0
    move-exception v2

    .line 282
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v4, "QuickLaunch.QLRecyclerView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addAppLockerPassedPackage error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_0
    iget-object v2, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v4, "OpenApp"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    const/4 v2, 0x0

    .local v2, "left":I
    const/4 v3, 0x0

    .line 287
    .local v3, "top":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 290
    .local v5, "height":I
    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 291
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 292
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 293
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v8, v4, v8

    div-int/lit8 v2, v8, 0x2

    .line 294
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 295
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 296
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 299
    .end local v7    # "bounds":Landroid/graphics/Rect;
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    iget-object v8, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    .line 300
    invoke-static {v0, v2, v3, v4, v5}, Landroid/app/ActivityOptions;->makeClipRevealAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object v9

    iget v10, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I

    .line 299
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/fingerprint/QLHelper;->startApp(Ljava/lang/String;Landroid/app/ActivityOptions;I)Z

    .line 301
    .end local v2    # "left":I
    .end local v3    # "top":I
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_1

    :cond_2
    iget-object v2, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v4, "OpenShortcut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 302
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    iget-object v4, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPackageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mShortcutId:Ljava/lang/String;

    iget v6, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I

    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/android/systemui/fingerprint/QLHelper;->startShortcut(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_1

    .line 303
    :cond_3
    iget-object v2, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mActionName:Ljava/lang/String;

    const-string v3, "OpenQuickPay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 304
    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    iget v3, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mPaymentWhich:I

    iget v4, v1, Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;->mUid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/fingerprint/QLHelper;->startQuickPay(II)V

    .line 307
    .end local v1    # "info":Lcom/android/systemui/fingerprint/QLAdapter$ActionInfo;
    :cond_4
    :goto_1
    return-void
.end method

.method public declared-synchronized onEnterCancelView()V
    .locals 5

    monitor-enter p0

    .line 457
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "onEnterCancelView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 475
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z

    .line 478
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 480
    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAnimate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 482
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v4, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    .line 483
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v3, v3, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v3

    iput v3, v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->x_before:F

    .line 485
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 489
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 492
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPadding:I

    aput v3, v1, v2

    aput v2, v1, v0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 494
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 496
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$3;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$4;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 516
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 518
    :cond_3
    nop

    .local v2, "i":I
    :goto_0
    move v0, v2

    .end local v2    # "i":I
    .local v0, "i":I
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 520
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    const v3, 0x3f2b851f    # 0.67f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 521
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local v1    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 525
    .end local v2    # "i":I
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/fingerprint/QLRecyclerView;
    throw v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 130
    iput-object p0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getPaddingRight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPadding:I

    .line 133
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$dusoWTp56h0O0LZoMVQ6Om5Adyc;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$QLRecyclerView$dusoWTp56h0O0LZoMVQ6Om5Adyc;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$QuickPayConfigUpdater;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    const-string v4, "QuickPay_APPS_Config"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 143
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 152
    return-void
.end method

.method public declared-synchronized onLeaveCancelView()V
    .locals 4

    monitor-enter p0

    .line 536
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "QuickLaunch.QLRecyclerView"

    const-string v1, "onLeaveCancelView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 538
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAnimate:Z

    if-eqz v0, :cond_3

    .line 539
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iget-object v1, v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getX()F

    move-result v1

    iput v1, v0, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->x_after:F

    .line 541
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 545
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 549
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPadding:I

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    .line 551
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 552
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 554
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$5;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/fingerprint/QLRecyclerView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/QLRecyclerView$6;-><init>(Lcom/android/systemui/fingerprint/QLRecyclerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLeaveAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 579
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 580
    .local v0, "animateView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCancelFalseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 585
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateLabel()V

    .line 588
    .end local v0    # "animateView":Landroid/view/View;
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    monitor-exit p0

    return-void

    .line 535
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/fingerprint/QLRecyclerView;
    throw v0
.end method

.method public onQLExit()V
    .locals 2

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsQLExit:Z

    .line 157
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 158
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 159
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->unregister()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 161
    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/fingerprint/QLAdapter;->onQLExit()V

    .line 164
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    .line 166
    :cond_0
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mView:Landroidx/recyclerview/widget/RecyclerView;

    .line 167
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    .line 168
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    .line 169
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    .line 170
    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    iput-object v0, v1, Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;->view:Landroid/view/View;

    .line 171
    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mFocusedViewData:Lcom/android/systemui/fingerprint/QLRecyclerView$AnimationViewData;

    .line 175
    return-void
.end method

.method public declared-synchronized onScrollProgress(F)V
    .locals 8
    .param p1, "progress"    # F

    monitor-enter p0

    .line 216
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    .line 219
    .local v0, "position":I
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/QLRecyclerView;->checkBarPosition(F)I

    move-result v1

    .line 221
    .local v1, "barPotisiton":I
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_1

    rsub-int/lit8 v1, v1, 0x7

    .line 224
    :cond_1
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    if-eq v1, v2, :cond_8

    .line 225
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    sub-int v2, v1, v2

    .line 226
    .local v2, "diffBarPosition":I
    iput v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    .line 228
    iget-boolean v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mIsCancel:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit p0

    return-void

    .line 230
    :cond_2
    :try_start_2
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    sub-int/2addr v3, v2

    .line 232
    .end local v0    # "position":I
    .local v3, "position":I
    if-gez v3, :cond_3

    .line 233
    const/4 v0, 0x0

    .end local v3    # "position":I
    .restart local v0    # "position":I
    :goto_0
    goto :goto_1

    .line 234
    .end local v0    # "position":I
    .restart local v3    # "position":I
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 238
    :cond_4
    move v0, v3

    .end local v3    # "position":I
    .restart local v0    # "position":I
    :goto_1
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_5

    const-string v3, "QuickLaunch.QLRecyclerView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScrollProgress mBarPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mBarPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mPosition "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 244
    iget v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    if-eq v3, v0, :cond_7

    .line 245
    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLastScrollTime:J

    sub-long/2addr v3, v5

    .line 248
    .local v3, "diffTime":J
    const-wide/16 v5, 0x32

    cmp-long v7, v3, v5

    if-gez v7, :cond_6

    .line 249
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    invoke-virtual {p0, v7}, Lcom/android/systemui/fingerprint/QLRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v7, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollToPosition:Ljava/lang/Runnable;

    sub-long/2addr v5, v3

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 252
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->scrollToPosition()V

    .line 255
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLastScrollTime:J

    .line 258
    .end local v3    # "diffTime":J
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mCheckNextScroll:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/systemui/fingerprint/QLRecyclerView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    .end local v2    # "diffBarPosition":I
    :cond_8
    monitor-exit p0

    return-void

    .line 215
    .end local v0    # "position":I
    .end local v1    # "barPotisiton":I
    .end local p1    # "progress":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/android/systemui/fingerprint/QLRecyclerView;
    throw p1
.end method

.method public onVelocityChanged(F)V
    .locals 4
    .param p1, "velocity"    # F

    .line 353
    const/high16 v0, 0x437a0000    # 250.0f

    .line 354
    .local v0, "a":F
    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    div-float v1, v0, v1

    .line 356
    .local v1, "speed":F
    const/high16 v2, 0x437a0000    # 250.0f

    mul-float/2addr v2, v1

    const v3, 0x3f99999a    # 1.2f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 357
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 358
    iput v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    goto :goto_1

    .line 359
    :cond_1
    iget v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    const/high16 v3, 0x43eb0000    # 470.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 360
    iput v3, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mScrollSpeed:F

    .line 362
    :cond_2
    :goto_1
    return-void
.end method

.method public setLabelView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "label"    # Landroid/widget/TextView;

    .line 310
    iput-object p1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLabel:Landroid/widget/TextView;

    .line 311
    return-void
.end method

.method public setQLConfig(Ljava/lang/String;)V
    .locals 3
    .param p1, "config"    # Ljava/lang/String;

    .line 598
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mHelper:Lcom/android/systemui/fingerprint/QLHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/QLHelper;->parseQLConfig(Ljava/lang/String;)V

    .line 600
    new-instance v0, Lcom/android/systemui/fingerprint/QLAdapter;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAppMap:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/fingerprint/QLAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    .line 601
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 603
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mAdapter:Lcom/android/systemui/fingerprint/QLAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/QLAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    .line 605
    iget-object v0, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mLayoutManager:Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;

    iget v1, p0, Lcom/android/systemui/fingerprint/QLRecyclerView;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/QLRecyclerView$QLLayoutManager;->scrollToPosition(I)V

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/fingerprint/QLRecyclerView;->updateLabel()V

    .line 610
    :cond_0
    return-void
.end method
