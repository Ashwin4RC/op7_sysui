.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionsDialog"
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

.field private final mContext:Landroid/content/Context;

.field private mDismissStarted:Z

.field private final mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

.field private final mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

.field private mKeyguardShowing:Z

.field private final mListView:Landroid/widget/LinearLayout;

.field private final mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "adapter"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;
    .param p4, "longClickListener"    # Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1413
    const v0, 0x7f12042a

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDismissStarted:Z

    .line 1414
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    .line 1415
    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    .line 1416
    iput-object p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1417
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 1418
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 1419
    const-class v0, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/colorextraction/ColorExtractor;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    .line 1422
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1423
    .local v0, "window":Landroid/view/Window;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 1425
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 1426
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit16 v2, v2, 0x700

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1429
    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 1430
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1431
    const v1, 0x10d0120

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1438
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1439
    const/16 v1, 0x7e4

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1441
    const v1, 0x7f0d0076

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setContentView(I)V

    .line 1442
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    .line 1443
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/HardwareUiLayout;->get(Landroid/view/View;)Lcom/android/systemui/HardwareUiLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    .line 1444
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    new-instance v2, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dQpDVx5ZJSWswwNRJ2NNvfp5RD8;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$dQpDVx5ZJSWswwNRJ2NNvfp5RD8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/HardwareUiLayout;->setOutsideTouchListener(Landroid/view/View$OnClickListener;)V

    .line 1445
    const v1, 0x1040275

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->setTitle(I)V

    .line 1446
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1455
    return-void
.end method

.method static synthetic access$2600(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAnimTranslation()F
    .locals 2

    .line 1558
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static synthetic lambda$dismiss$5(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 0

    .line 1540
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$dismiss$6(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDismissStarted:Z

    .line 1546
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const v0, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 1548
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 1549
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 1444
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    return-void
.end method

.method public static synthetic lambda$show$3(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1518
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1520
    .local v0, "alpha":I
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 1521
    return-void
.end method

.method public static synthetic lambda$show$4(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V
    .locals 1

    .line 1522
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    return-void
.end method

.method public static synthetic lambda$updateList$1(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;ILandroid/view/View;)V
    .locals 1
    .param p1, "pos"    # I
    .param p2, "view"    # Landroid/view/View;

    .line 1462
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$updateList$2(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;ILandroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "pos"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 1464
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mLongClickListener:Landroid/widget/AdapterView$OnItemLongClickListener;

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method private updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animate"    # Z

    .line 1490
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 1491
    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1492
    .local v0, "decorView":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1493
    const/16 v1, 0x2010

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 1496
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1498
    :goto_0
    return-void
.end method

.method private updateList()V
    .locals 4

    .line 1458
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1459
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1460
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1461
    .local v1, "v":Landroid/view/View;
    move v2, v0

    .line 1462
    .local v2, "pos":I
    new-instance v3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$wsWXhl2gpbmXCrLlb4WgO3Hp5Tg;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1463
    new-instance v3, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;

    invoke-direct {v3, p0, v1, v2}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$9T4uyogvs71HPKwgm3VUPqbZAHc;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1465
    iget-object v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mListView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1459
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "pos":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1467
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1529
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mDismissStarted:Z

    if-eqz v0, :cond_0

    .line 1530
    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 1535
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 1536
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1537
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1538
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 1539
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$2QriKiv-fZQGysQ0teAWx7uBxqg;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$2QriKiv-fZQGysQ0teAWx7uBxqg;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1540
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;

    invoke-direct {v1}, Lcom/android/systemui/volume/SystemUIInterpolators$LogAccelerateInterpolator;-><init>()V

    .line 1541
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$_0WJKduv0QvmLhPuj3fXKKiMDpo;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$_0WJKduv0QvmLhPuj3fXKKiMDpo;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1542
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1550
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1551
    return-void
.end method

.method dismissImmediately()V
    .locals 0

    .line 1554
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 1555
    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .locals 3
    .param p1, "extractor"    # Lcom/android/internal/colorextraction/ColorExtractor;
    .param p2, "which"    # I

    .line 1564
    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1565
    const/4 v0, 0x2

    and-int v2, v0, p2

    if-eqz v2, :cond_1

    .line 1566
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    goto :goto_0

    .line 1570
    :cond_0
    and-int v0, v1, p2

    if-eqz v0, :cond_1

    .line 1571
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 1575
    :cond_1
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 1471
    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1472
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 1473
    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateList()V

    .line 1475
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1476
    .local v1, "displaySize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1477
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v2, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1478
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 1479
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    iget-boolean v3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    if-eqz v3, :cond_0

    .line 1480
    const/4 v0, 0x2

    nop

    .line 1479
    :cond_0
    invoke-virtual {v2, v0}, Lcom/android/internal/colorextraction/ColorExtractor;->getColors(I)Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object v0

    .line 1481
    .local v0, "colors":Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->updateColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 1482
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 1502
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 1503
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mColorExtractor:Lcom/android/internal/colorextraction/ColorExtractor;

    invoke-virtual {v0, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->removeOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 1504
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0
    .param p1, "keyguardShowing"    # Z

    .line 1578
    iput-boolean p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mKeyguardShowing:Z

    .line 1579
    return-void
.end method

.method public show()V
    .locals 3

    .line 1508
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 1509
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mGradientDrawable:Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setAlpha(I)V

    .line 1510
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getAnimTranslation()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setTranslationX(F)V

    .line 1511
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/HardwareUiLayout;->setAlpha(F)V

    .line 1512
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHardwareLayout:Lcom/android/systemui/HardwareUiLayout;

    invoke-virtual {v0}, Lcom/android/systemui/HardwareUiLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1513
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1514
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1515
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 1516
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Qe1JHSA7eQR9eTIOptPltFBwKXg;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$Qe1JHSA7eQR9eTIOptPltFBwKXg;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1517
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$X-E8xNR_KVfIqzXznITVrFd13Ek;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$ActionsDialog$X-E8xNR_KVfIqzXznITVrFd13Ek;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    .line 1522
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1523
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1524
    return-void
.end method
