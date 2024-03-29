.class public Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
.super Ljava/lang/Object;
.source "AppCompatDrawableManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;,
        Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    }
.end annotation


# static fields
.field private static final COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

.field private static final COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

.field private static final COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

.field private static final COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

.field private static final DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

.field private static INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

.field private static final TINT_CHECKABLE_BUTTON_LIST:[I

.field private static final TINT_COLOR_CONTROL_NORMAL:[I

.field private static final TINT_COLOR_CONTROL_STATE_LIST:[I


# instance fields
.field private mDelegates:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrawableCacheLock:Ljava/lang/Object;

.field private final mDrawableCaches:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/support/v4/util/LongSparseArray<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mHasCheckedVectorDrawableSetup:Z

.field private mKnownDrawableIdTags:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTintLists:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroid/util/SparseArray<",
            "Landroid/content/res/ColorStateList;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTypedValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 56
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 85
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;-><init>(I)V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    .line 91
    const/4 v0, 0x3

    new-array v2, v0, [I

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_default_mtrl_alpha:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_default_mtrl_alpha:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->abc_ab_share_pack_mtrl_alpha:I

    const/4 v6, 0x2

    aput v3, v2, v6

    sput-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    .line 101
    const/4 v2, 0x7

    new-array v3, v2, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_commit_search_api_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_tick_mark_material:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_share_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_copy_mtrl_am_alpha:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_cut_mtrl_alpha:I

    const/4 v8, 0x4

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_selectall_mtrl_alpha:I

    const/4 v9, 0x5

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_ic_menu_paste_mtrl_am_alpha:I

    aput v7, v3, v1

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    .line 115
    const/16 v3, 0xa

    new-array v3, v3, [I

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_activated_mtrl_alpha:I

    aput v7, v3, v4

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_activated_mtrl_alpha:I

    aput v7, v3, v5

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    aput v7, v3, v6

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_cursor_material:I

    aput v7, v3, v0

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_dark:I

    aput v7, v3, v8

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_dark:I

    aput v7, v3, v9

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_dark:I

    aput v7, v3, v1

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_left_mtrl_light:I

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_middle_mtrl_light:I

    const/16 v2, 0x8

    aput v1, v3, v2

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_text_select_handle_right_mtrl_light:I

    const/16 v2, 0x9

    aput v1, v3, v2

    sput-object v3, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    .line 132
    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_popup_background_mtrl_mult:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    aput v1, v0, v5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_menu_hardkey_panel_mtrl_mult:I

    aput v1, v0, v6

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    .line 142
    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_tab_indicator_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_textfield_search_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    .line 152
    new-array v0, v6, [I

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_check_material:I

    aput v1, v0, v4

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_radio_material:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    return-void
.end method

.method private addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "delegate"    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;

    .line 456
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    if-nez v0, :cond_0

    .line 457
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    return-void
.end method

.method private addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 385
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 386
    .local v0, "cs":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_1

    .line 387
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/util/LongSparseArray;

    .line 389
    .local v2, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    if-nez v2, :cond_0

    .line 390
    new-instance v3, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v3}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    move-object v2, v3

    .line 391
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p2, p3, v3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 394
    .end local v2    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    monitor-exit v1

    .line 395
    const/4 v1, 0x1

    return v1

    .line 394
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 397
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "tintList"    # Landroid/content/res/ColorStateList;

    .line 544
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    if-nez v0, :cond_0

    .line 545
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 548
    .local v0, "themeTints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-nez v0, :cond_1

    .line 549
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    move-object v0, v1

    .line 550
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    :cond_1
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 553
    return-void
.end method

.method private static arrayContains([II)Z
    .locals 4
    .param p0, "array"    # [I
    .param p1, "value"    # I

    .line 469
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 470
    .local v3, "id":I
    if-ne v3, p1, :cond_0

    .line 471
    const/4 v0, 0x1

    return v0

    .line 469
    .end local v3    # "id":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 474
    :cond_1
    return v1
.end method

.method private checkVectorDrawableSetup(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 679
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    if-eqz v0, :cond_0

    .line 681
    return-void

    .line 685
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mHasCheckedVectorDrawableSetup:Z

    .line 686
    return-void
.end method

.method private createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;

    .line 564
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseColor"    # I
    .param p3, "tint"    # Landroid/content/res/ColorStateList;

    .line 575
    const/4 v0, 0x4

    new-array v1, v0, [[I

    .line 576
    .local v1, "states":[[I
    new-array v0, v0, [I

    .line 577
    .local v0, "colors":[I
    const/4 v2, 0x0

    .line 579
    .local v2, "i":I
    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlHighlight:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    .line 580
    .local v3, "colorControlHighlight":I
    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 583
    .local v4, "disabledColor":I
    sget-object v5, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->DISABLED_STATE_SET:[I

    aput-object v5, v1, v2

    .line 584
    const/4 v5, 0x0

    if-nez p3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    :goto_0
    aput v6, v0, v2

    .line 585
    add-int/lit8 v2, v2, 0x1

    .line 587
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->PRESSED_STATE_SET:[I

    aput-object v6, v1, v2

    .line 588
    nop

    .line 589
    if-nez p3, :cond_1

    .line 588
    move v6, p2

    goto :goto_1

    .line 589
    :cond_1
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 588
    :goto_1
    invoke-static {v3, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    .line 590
    add-int/lit8 v2, v2, 0x1

    .line 592
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->FOCUSED_STATE_SET:[I

    aput-object v6, v1, v2

    .line 593
    nop

    .line 594
    if-nez p3, :cond_2

    .line 593
    move v6, p2

    goto :goto_2

    .line 594
    :cond_2
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    .line 593
    :goto_2
    invoke-static {v3, v6}, Landroid/support/v4/graphics/ColorUtils;->compositeColors(II)I

    move-result v6

    aput v6, v0, v2

    .line 595
    add-int/lit8 v2, v2, 0x1

    .line 598
    sget-object v6, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->EMPTY_STATE_SET:[I

    aput-object v6, v1, v2

    .line 599
    if-nez p3, :cond_3

    move v5, p2

    goto :goto_3

    :cond_3
    aget-object v6, v1, v2

    invoke-virtual {p3, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    :goto_3
    aput v5, v0, v2

    .line 600
    add-int/lit8 v2, v2, 0x1

    .line 602
    new-instance v5, Landroid/content/res/ColorStateList;

    invoke-direct {v5, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v5
.end method

.method private static createCacheKey(Landroid/util/TypedValue;)J
    .locals 4
    .param p0, "tv"    # Landroid/util/TypedValue;

    .line 207
    iget v0, p0, Landroid/util/TypedValue;->assetCookie:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/util/TypedValue;->data:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;

    .line 569
    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorAccent:I

    .line 570
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 569
    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customTint"    # Landroid/content/res/ColorStateList;

    .line 557
    sget v0, Lcom/oneplus/commonctrl/R$attr;->colorButtonNormal:I

    .line 558
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 557
    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createButtonColorStateList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method private createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 212
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_0

    .line 213
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 216
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 217
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 219
    .local v3, "key":J
    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 220
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 222
    return-object v1

    .line 226
    :cond_1
    sget v5, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_material:I

    if-ne p2, v5, :cond_2

    .line 227
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    sget v8, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_internal_bg:I

    .line 228
    invoke-virtual {p0, p1, v8}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v6, v7

    sget v7, Lcom/oneplus/commonctrl/R$drawable;->abc_cab_background_top_mtrl_alpha:I

    .line 229
    invoke-virtual {p0, p1, v7}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-direct {v5, v6}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 233
    :cond_2
    if-eqz v1, :cond_3

    .line 234
    iget v2, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 236
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDrawableToCache(Landroid/content/Context;JLandroid/graphics/drawable/Drawable;)Z

    .line 239
    :cond_3
    return-object v1
.end method

.method public static get()Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;
    .locals 1

    .line 64
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    .line 66
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V

    .line 68
    :cond_0
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->INSTANCE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    return-object v0
.end method

.method private getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # J

    .line 361
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 362
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDrawableCaches:Ljava/util/WeakHashMap;

    .line 363
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/util/LongSparseArray;

    .line 364
    .local v1, "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 365
    monitor-exit v0

    return-object v2

    .line 368
    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 369
    .local v3, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v3, :cond_2

    .line 371
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    .line 372
    .local v4, "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v4, :cond_1

    .line 373
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 376
    :cond_1
    invoke-virtual {v1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->delete(J)V

    .line 379
    .end local v1    # "cache":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;>;"
    .end local v3    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    .end local v4    # "entry":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_2
    monitor-exit v0

    .line 380
    return-object v2

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 2
    .param p0, "color"    # I
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 660
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->get(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    .line 662
    .local v0, "filter":Landroid/graphics/PorterDuffColorFilter;
    if-nez v0, :cond_0

    .line 664
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, p0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    .line 665
    sget-object v1, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLOR_FILTER_CACHE:Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;

    invoke-virtual {v1, p0, p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$ColorFilterLruCache;->put(ILandroid/graphics/PorterDuff$Mode;Landroid/graphics/PorterDuffColorFilter;)Landroid/graphics/PorterDuffColorFilter;

    .line 668
    :cond_0
    return-object v0
.end method

.method private getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 535
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTintLists:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 537
    .local v0, "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/ColorStateList;

    nop

    :cond_0
    return-object v1

    .line 539
    .end local v0    # "tints":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/content/res/ColorStateList;>;"
    :cond_1
    return-object v1
.end method

.method static getTintMode(I)Landroid/graphics/PorterDuff$Mode;
    .locals 2
    .param p0, "resId"    # I

    .line 478
    const/4 v0, 0x0

    .line 480
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p0, v1, :cond_0

    .line 481
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 484
    :cond_0
    return-object v0
.end method

.method private static installDefaultInflateDelegates(Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;)V
    .locals 3
    .param p0, "manager"    # Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .local v0, "sdk":I
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 77
    const-string/jumbo v1, "vector"

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$VdcInflateDelegate;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    .line 78
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 80
    const-string v1, "animated-vector"

    new-instance v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$AvdcInflateDelegate;-><init>()V

    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addDelegate(Ljava/lang/String;Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;)V

    .line 83
    :cond_0
    return-void
.end method

.method private loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 289
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 290
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 292
    .local v0, "cachedTagName":Ljava/lang/String;
    const-string v2, "appcompat_skip_skip"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    .line 293
    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 298
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 296
    .restart local v0    # "cachedTagName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v1

    .line 300
    .end local v0    # "cachedTagName":Ljava/lang/String;
    :cond_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    .line 303
    :goto_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    if-nez v0, :cond_3

    .line 304
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 306
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mTypedValue:Landroid/util/TypedValue;

    .line 307
    .local v0, "tv":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 308
    .local v1, "res":Landroid/content/res/Resources;
    const/4 v2, 0x1

    invoke-virtual {v1, p2, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 310
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createCacheKey(Landroid/util/TypedValue;)J

    move-result-wide v3

    .line 312
    .local v3, "key":J
    invoke-direct {p0, p1, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getCachedDrawable(Landroid/content/Context;J)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 313
    .local v5, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_4

    .line 315
    return-object v5

    .line 318
    :cond_4
    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    iget-object v6, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ".xml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 321
    :try_start_0
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .line 322
    .local v6, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v7

    .line 324
    .local v7, "attrs":Landroid/util/AttributeSet;
    :goto_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v8

    move v9, v8

    .local v9, "type":I
    const/4 v10, 0x2

    if-eq v8, v10, :cond_5

    if-eq v9, v2, :cond_5

    .end local v9    # "type":I
    goto :goto_2

    .line 328
    .restart local v9    # "type":I
    :cond_5
    if-ne v9, v10, :cond_8

    .line 332
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 334
    .local v2, "tagName":Ljava/lang/String;
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    invoke-virtual {v8, p2, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 337
    iget-object v8, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mDelegates:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v8, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;

    .line 338
    .local v8, "delegate":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    if-eqz v8, :cond_6

    .line 339
    nop

    .line 340
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    .line 339
    invoke-interface {v8, p1, v6, v7, v10}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;->createFromXmlInner(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v5, v10

    .line 342
    :cond_6
    if-eqz v5, :cond_7

    .line 344
    iget v10, v0, Landroid/util/TypedValue;->changingConfigurations:I

    invoke-virtual {v5, v10}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 347
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v8    # "delegate":Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager$InflateDelegate;
    .end local v9    # "type":I
    :cond_7
    goto :goto_3

    .line 329
    .restart local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "attrs":Landroid/util/AttributeSet;
    .restart local v9    # "type":I
    :cond_8
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v8, "No start tag found"

    invoke-direct {v2, v8}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v6    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "attrs":Landroid/util/AttributeSet;
    .end local v9    # "type":I
    :catch_0
    move-exception v2

    .line 349
    :cond_9
    :goto_3
    if-nez v5, :cond_a

    .line 352
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->mKnownDrawableIdTags:Landroid/util/SparseArray;

    const-string v6, "appcompat_skip_skip"

    invoke-virtual {v2, p2, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 354
    :cond_a
    return-object v5

    .line 357
    .end local v0    # "tv":Landroid/util/TypedValue;
    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v3    # "key":J
    .end local v5    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_b
    return-object v1
.end method

.method private static setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p0, "d"    # Landroid/graphics/drawable/Drawable;
    .param p1, "color"    # I
    .param p2, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 672
    invoke-static {p0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 675
    :cond_0
    if-nez p2, :cond_1

    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-static {p1, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 676
    return-void
.end method

.method private tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z
    .param p4, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 245
    .local v0, "tintList":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_2

    .line 247
    invoke-static {p4}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 250
    :cond_0
    invoke-static {p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 251
    invoke-static {p4, v0}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 254
    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    .line 255
    .local v1, "tintMode":Landroid/graphics/PorterDuff$Mode;
    if-eqz v1, :cond_1

    .line 256
    invoke-static {p4, v1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 258
    .end local v1    # "tintMode":Landroid/graphics/PorterDuff$Mode;
    :cond_1
    goto/16 :goto_1

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_track_material:I

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v1, :cond_3

    .line 259
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 260
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 261
    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 260
    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 262
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 263
    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 262
    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 264
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 265
    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 264
    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 266
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    goto :goto_1

    :cond_3
    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_indicator_material:I

    if-eq p2, v1, :cond_5

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->abc_ratingbar_small_material:I

    if-ne p2, v1, :cond_4

    goto :goto_0

    .line 278
    :cond_4
    invoke-static {p1, p2, p4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z

    move-result v1

    .line 279
    .local v1, "tinted":Z
    if-nez v1, :cond_6

    if-eqz p3, :cond_6

    .line 282
    const/4 p4, 0x0

    .end local v1    # "tinted":Z
    goto :goto_1

    .line 269
    :cond_5
    :goto_0
    move-object v1, p4

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    .line 270
    .local v1, "ld":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 271
    invoke-static {p1, v5}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getDisabledThemeAttrColor(Landroid/content/Context;I)I

    move-result v5

    sget-object v6, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 270
    invoke-static {v4, v5, v6}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 273
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    sget v4, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 274
    invoke-static {p1, v4}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    sget-object v5, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 273
    invoke-static {v3, v4, v5}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 275
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 276
    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v3

    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 275
    invoke-static {v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->setPorterDuffColorFilter(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    .line 277
    .end local v1    # "ld":Landroid/graphics/drawable/LayerDrawable;
    nop

    .line 285
    :cond_6
    :goto_1
    return-object p4
.end method

.method static tintDrawableUsingColorFilter(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 414
    sget-object v0, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->DEFAULT_MODE:Landroid/graphics/PorterDuff$Mode;

    .line 415
    .local v0, "tintMode":Landroid/graphics/PorterDuff$Mode;
    const/4 v1, 0x0

    .line 416
    .local v1, "colorAttrSet":Z
    const/4 v2, 0x0

    .line 417
    .local v2, "colorAttr":I
    const/4 v3, 0x0

    .line 419
    .local v3, "alpha":I
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    .line 421
    const/4 v1, 0x1

    goto :goto_0

    .line 422
    :cond_0
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_CONTROL_ACTIVATED:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlActivated:I

    .line 424
    const/4 v1, 0x1

    goto :goto_0

    .line 425
    :cond_1
    sget-object v4, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->COLORFILTER_COLOR_BACKGROUND_MULTIPLY:[I

    invoke-static {v4, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    const v2, 0x1010031

    .line 427
    const/4 v1, 0x1

    .line 428
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    .line 429
    :cond_2
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_list_divider_mtrl_alpha:I

    if-ne p1, v4, :cond_3

    .line 430
    const v2, 0x1010030

    .line 431
    const/4 v1, 0x1

    .line 432
    const v4, 0x42233333    # 40.8f

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0

    .line 433
    :cond_3
    sget v4, Lcom/oneplus/commonctrl/R$drawable;->abc_dialog_material_background:I

    if-ne p1, v4, :cond_4

    .line 434
    const v2, 0x1010031

    .line 435
    const/4 v1, 0x1

    .line 438
    :cond_4
    :goto_0
    if-eqz v1, :cond_7

    .line 439
    invoke-static {p2}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->canSafelyMutateDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 440
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 443
    :cond_5
    invoke-static {p0, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColor(Landroid/content/Context;I)I

    move-result v4

    .line 444
    .local v4, "color":I
    invoke-static {v4, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getPorterDuffColorFilter(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 446
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 447
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 450
    :cond_6
    const/4 v5, 0x1

    return v5

    .line 452
    .end local v4    # "color":I
    :cond_7
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDrawable(Landroid/content/Context;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "failIfNotKnown"    # Z

    .line 175
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->checkVectorDrawableSetup(Landroid/content/Context;)V

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->loadDrawableFromDelegates(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 178
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 179
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDrawableIfNeeded(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    :cond_0
    if-nez v0, :cond_1

    .line 182
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 185
    :cond_1
    if-eqz v0, :cond_2

    .line 187
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->tintDrawable(Landroid/content/Context;IZLandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    :cond_2
    if-eqz v0, :cond_3

    .line 191
    invoke-static {v0}, Lcom/oneplus/lib/app/appcompat/DrawableUtils;->fixDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 193
    :cond_3
    return-object v0
.end method

.method getTintList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method getTintList(Landroid/content/Context;ILandroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I
    .param p3, "customTint"    # Landroid/content/res/ColorStateList;

    .line 495
    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 498
    .local v0, "useCache":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->getTintListFromCache(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 500
    .local v1, "tint":Landroid/content/res/ColorStateList;
    :goto_1
    if-nez v1, :cond_e

    .line 502
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_edit_text_material:I

    if-ne p2, v2, :cond_2

    .line 503
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_edittext:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    .line 504
    :cond_2
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_track_mtrl_alpha:I

    if-ne p2, v2, :cond_3

    .line 505
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_switch_track:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_3

    .line 506
    :cond_3
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_switch_thumb_material:I

    if-ne p2, v2, :cond_4

    .line 507
    sget v2, Lcom/oneplus/commonctrl/R$color;->op_abc_tint_switch_thumb:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 508
    :cond_4
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_default_mtrl_shape:I

    if-ne p2, v2, :cond_5

    .line 509
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createDefaultButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 510
    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_borderless_material:I

    if-ne p2, v2, :cond_6

    .line 511
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createBorderlessButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 512
    :cond_6
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_btn_colored_material:I

    if-ne p2, v2, :cond_7

    .line 513
    invoke-direct {p0, p1, p3}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->createColoredButtonColorStateList(Landroid/content/Context;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 514
    :cond_7
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_mtrl_am_alpha:I

    if-eq p2, v2, :cond_c

    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_spinner_textfield_background_material:I

    if-ne p2, v2, :cond_8

    goto :goto_2

    .line 517
    :cond_8
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_NORMAL:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 518
    sget v2, Lcom/oneplus/commonctrl/R$attr;->colorControlNormal:I

    invoke-static {p1, v2}, Lcom/oneplus/lib/app/appcompat/ThemeUtils;->getThemeAttrColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 519
    :cond_9
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_COLOR_CONTROL_STATE_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 520
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_default:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 521
    :cond_a
    sget-object v2, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->TINT_CHECKABLE_BUTTON_LIST:[I

    invoke-static {v2, p2}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->arrayContains([II)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 522
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_btn_checkable:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 523
    :cond_b
    sget v2, Lcom/oneplus/commonctrl/R$drawable;->abc_seekbar_thumb_material:I

    if-ne p2, v2, :cond_d

    .line 524
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_seek_thumb:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto :goto_3

    .line 516
    :cond_c
    :goto_2
    sget v2, Lcom/oneplus/commonctrl/R$color;->abc_tint_spinner:I

    invoke-static {p1, v2}, Landroid/support/v7/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 527
    :cond_d
    :goto_3
    if-eqz v0, :cond_e

    if-eqz v1, :cond_e

    .line 528
    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDrawableManager;->addTintListToCache(Landroid/content/Context;ILandroid/content/res/ColorStateList;)V

    .line 531
    :cond_e
    return-object v1
.end method
