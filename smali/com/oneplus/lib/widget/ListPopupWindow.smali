.class public Lcom/oneplus/lib/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Lcom/oneplus/lib/menu/ShowableListMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;,
        Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;,
        Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;,
        Lcom/oneplus/lib/widget/ListPopupWindow$PopupDataSetObserver;
    }
.end annotation


# static fields
.field private static sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

.field private static sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

.field private static sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownGravity:I

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mDropDownWindowLayoutType:I

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mForceIgnoreOutsideTouch:Z

.field final mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;

.field private mIsAnimatedFromAnchor:Z

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mMaxHeight:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mOverlapAnchor:Z

.field private mOverlapAnchorSet:Z

.field protected mPopup:Landroid/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field final mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 69
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "setClipToScreenEnabled"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oneplus/lib/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_0
    :try_start_1
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "getMaxAvailableHeight"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/view/View;

    aput-object v5, v4, v0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/oneplus/lib/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 80
    goto :goto_1

    .line 77
    :catch_1
    move-exception v2

    .line 78
    .restart local v2    # "e":Ljava/lang/NoSuchMethodException;
    const-string v3, "ListPopupWindow"

    const-string v4, "Could not find method getMaxAvailableHeight(View, int, boolean) on PopupWindow. Oh well."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1
    :try_start_2
    const-class v2, Landroid/widget/PopupWindow;

    const-string/jumbo v3, "setEpicenterBounds"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v4, Landroid/graphics/Rect;

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    .line 86
    goto :goto_2

    .line 84
    :catch_2
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 215
    const v0, 0x10102ff

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 228
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, -0x2

    iput v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    .line 94
    iput v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    .line 97
    const/16 v0, 0x3ea

    iput v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mIsAnimatedFromAnchor:Z

    .line 104
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownGravity:I

    .line 106
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 107
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 108
    const v2, 0x7fffffff

    iput v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 111
    iput v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptPosition:I

    .line 122
    new-instance v2, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    .line 123
    new-instance v2, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTouchInterceptor:Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 124
    new-instance v2, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mScrollListener:Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;

    .line 125
    new-instance v2, Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHideSelector:Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;

    .line 130
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 242
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 243
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 245
    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 247
    .local v2, "a":Landroid/content/res/TypedArray;
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 249
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 251
    iget v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    if-eqz v1, :cond_0

    .line 252
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 254
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mMaxHeight:I

    .line 256
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 257
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 258
    return-void
.end method

.method private buildDropDown()I
    .locals 15

    .line 1129
    const/4 v0, 0x0

    .line 1131
    .local v0, "otherHeights":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_4

    .line 1132
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1140
    .local v1, "context":Landroid/content/Context;
    new-instance v5, Lcom/oneplus/lib/widget/ListPopupWindow$2;

    invoke-direct {v5, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$2;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1151
    iget-boolean v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mModal:Z

    xor-int/2addr v5, v4

    invoke-virtual {p0, v1, v5}, Lcom/oneplus/lib/widget/ListPopupWindow;->createDropDownListView(Landroid/content/Context;Z)Lcom/oneplus/lib/widget/DropDownListView;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 1152
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 1153
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1155
    :cond_0
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1156
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1157
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/DropDownListView;->setFocusable(Z)V

    .line 1158
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1159
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    new-instance v6, Lcom/oneplus/lib/widget/ListPopupWindow$3;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$3;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1177
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mScrollListener:Lcom/oneplus/lib/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 1179
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v5, :cond_1

    .line 1180
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1183
    :cond_1
    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 1185
    .local v5, "dropDownView":Landroid/view/ViewGroup;
    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1186
    .local v6, "hintView":Landroid/view/View;
    if-eqz v6, :cond_3

    .line 1189
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1190
    .local v7, "hintContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1192
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v8, v2, v3, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1196
    .local v8, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    iget v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v9, :pswitch_data_0

    .line 1208
    const-string v9, "ListPopupWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid hint position "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1198
    :pswitch_0
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1199
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1200
    goto :goto_0

    .line 1203
    :pswitch_1
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1204
    invoke-virtual {v7, v5, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1205
    nop

    .line 1216
    :goto_0
    iget v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ltz v9, :cond_2

    .line 1217
    const/high16 v9, -0x80000000

    .line 1218
    .local v9, "widthMode":I
    iget v10, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    .local v10, "widthSize":I
    goto :goto_1

    .line 1220
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    :cond_2
    const/4 v9, 0x0

    .line 1221
    .restart local v9    # "widthMode":I
    move v10, v3

    .line 1223
    .restart local v10    # "widthSize":I
    :goto_1
    invoke-static {v10, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 1224
    .local v11, "widthSpec":I
    const/4 v12, 0x0

    .line 1225
    .local v12, "heightSpec":I
    invoke-virtual {v6, v11, v3}, Landroid/view/View;->measure(II)V

    .line 1227
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1228
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v14

    .line 1231
    .end local v0    # "otherHeights":I
    .local v13, "otherHeights":I
    move-object v5, v7

    .line 1234
    .end local v7    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v8    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "widthMode":I
    .end local v10    # "widthSize":I
    .end local v11    # "widthSpec":I
    .end local v12    # "heightSpec":I
    move v0, v13

    .end local v13    # "otherHeights":I
    .restart local v0    # "otherHeights":I
    :cond_3
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1235
    .end local v1    # "context":Landroid/content/Context;
    .end local v6    # "hintView":Landroid/view/View;
    goto :goto_2

    .line 1236
    .end local v5    # "dropDownView":Landroid/view/ViewGroup;
    :cond_4
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroid/view/ViewGroup;

    .line 1237
    .restart local v5    # "dropDownView":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 1238
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_5

    .line 1239
    nop

    .line 1240
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 1241
    .local v6, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v7, v8

    .line 1249
    .end local v1    # "view":Landroid/view/View;
    .end local v6    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1250
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_6

    .line 1251
    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1252
    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    .line 1256
    .local v6, "padding":I
    iget-boolean v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v7, :cond_7

    .line 1257
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    neg-int v7, v7

    iput v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_3

    .line 1260
    .end local v6    # "padding":I
    :cond_6
    iget-object v6, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 1261
    move v6, v3

    .line 1265
    .restart local v6    # "padding":I
    :cond_7
    :goto_3
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    .line 1266
    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    move v3, v4

    nop

    .line 1267
    .local v3, "ignoreBottomDecorations":Z
    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v4

    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-direct {p0, v4, v7, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v4

    .line 1269
    .local v4, "maxHeight":I
    iget-boolean v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v7, :cond_b

    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v2, :cond_9

    goto :goto_6

    .line 1274
    :cond_9
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v7, 0x40000000    # 2.0f

    packed-switch v2, :pswitch_data_1

    .line 1288
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .local v8, "childWidthSpec":I
    :goto_4
    move v8, v2

    goto :goto_5

    .line 1282
    .end local v8    # "childWidthSpec":I
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1283
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    sub-int/2addr v2, v8

    .line 1282
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1286
    .local v2, "childWidthSpec":I
    goto :goto_4

    .line 1276
    .end local v2    # "childWidthSpec":I
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1277
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    sub-int/2addr v2, v7

    const/high16 v7, -0x80000000

    .line 1276
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1280
    .restart local v2    # "childWidthSpec":I
    goto :goto_4

    .line 1288
    .end local v2    # "childWidthSpec":I
    .restart local v8    # "childWidthSpec":I
    :goto_5
    nop

    .line 1294
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    const/4 v9, 0x0

    const/4 v10, -0x1

    sub-int v11, v4, v0

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Lcom/oneplus/lib/widget/DropDownListView;->measureHeightOfChildrenCompat(IIIII)I

    move-result v2

    .line 1296
    .local v2, "listContent":I
    if-lez v2, :cond_a

    .line 1297
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/DropDownListView;->getPaddingTop()I

    move-result v7

    iget-object v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 1298
    invoke-virtual {v9}, Lcom/oneplus/lib/widget/DropDownListView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v7, v9

    .line 1299
    .local v7, "listPadding":I
    add-int v9, v6, v7

    add-int/2addr v0, v9

    .line 1302
    .end local v7    # "listPadding":I
    :cond_a
    add-int v7, v2, v0

    return v7

    .line 1270
    .end local v2    # "listContent":I
    .end local v8    # "childWidthSpec":I
    :cond_b
    :goto_6
    add-int v2, v4, v6

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 5
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .line 1415
    sget-object v0, Lcom/oneplus/lib/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1417
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/widget/ListPopupWindow;->sGetMaxAvailableHeightMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 1418
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1417
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1422
    .local v0, "height":I
    goto :goto_0

    .line 1419
    .end local v0    # "height":I
    :catch_0
    move-exception v0

    .line 1420
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call getMaxAvailableHeightMethod(View, int, boolean) on PopupWindow. Using the public version."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1, p2}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    .line 1426
    .local v0, "height":I
    iget v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mMaxHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private static isConfirmKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 1400
    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removePromptView()V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 764
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 765
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 766
    .local v1, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 769
    .end local v0    # "parent":Landroid/view/ViewParent;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private setPopupClipToScreenEnabled(Z)V
    .locals 5
    .param p1, "clip"    # Z

    .line 1404
    sget-object v0, Lcom/oneplus/lib/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 1406
    :try_start_0
    sget-object v0, Lcom/oneplus/lib/widget/ListPopupWindow;->sClipToWindowEnabledMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    goto :goto_0

    .line 1407
    :catch_0
    move-exception v0

    .line 1408
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ListPopupWindow"

    const-string v2, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .line 819
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 820
    .local v0, "list":Lcom/oneplus/lib/widget/DropDownListView;
    if-eqz v0, :cond_0

    .line 822
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 824
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->requestLayout()V

    .line 826
    :cond_0
    return-void
.end method

.method public createDropDownListView(Landroid/content/Context;Z)Lcom/oneplus/lib/widget/DropDownListView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .line 923
    new-instance v0, Lcom/oneplus/lib/widget/DropDownListView;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    .line 745
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 746
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->removePromptView()V

    .line 747
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 748
    iput-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 749
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/oneplus/lib/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 462
    iget v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 919
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    return-object v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .line 868
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 869
    const/4 v0, 0x0

    return-object v0

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedItemId()J
    .locals 2

    .line 894
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 895
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 897
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .line 881
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 882
    const/4 v0, -0x1

    return v0

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .line 907
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 908
    const/4 v0, 0x0

    return-object v0

    .line 910
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 478
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 479
    const/4 v0, 0x0

    return v0

    .line 481
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 520
    iget v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .line 841
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isModal()Z
    .locals 1

    .line 330
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected needInterceptorTouchEvent()Z
    .locals 1

    .line 262
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 10
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 949
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 955
    const/16 v0, 0x3e

    if-eq p1, v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 956
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-gez v0, :cond_0

    .line 957
    invoke-static {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    .line 961
    .local v0, "curIndex":I
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isAboveAnchor()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    .line 963
    .local v2, "below":Z
    iget-object v4, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 966
    .local v4, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 967
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 969
    .local v6, "lastItem":I
    if-eqz v4, :cond_3

    .line 970
    invoke-interface {v4}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v7

    .line 971
    .local v7, "allEnabled":Z
    if-eqz v7, :cond_1

    .line 972
    move v8, v1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v8, v1, v3}, Lcom/oneplus/lib/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_0
    move v5, v8

    .line 973
    if-eqz v7, :cond_2

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v3

    goto :goto_1

    .line 974
    :cond_2
    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-virtual {v8, v9, v1}, Lcom/oneplus/lib/widget/DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v8

    :goto_1
    move v6, v8

    .line 977
    .end local v7    # "allEnabled":Z
    :cond_3
    const/16 v7, 0x13

    if-eqz v2, :cond_4

    if-ne p1, v7, :cond_4

    if-le v0, v5, :cond_5

    :cond_4
    const/16 v8, 0x14

    if-nez v2, :cond_6

    if-ne p1, v8, :cond_6

    if-lt v0, v6, :cond_6

    .line 981
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    .line 982
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 983
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 984
    return v3

    .line 988
    :cond_6
    iget-object v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v9, v1}, Lcom/oneplus/lib/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 991
    iget-object v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    .line 994
    .local v9, "consumed":Z
    if-eqz v9, :cond_8

    .line 997
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1002
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/DropDownListView;->requestFocusFromTouch()Z

    .line 1003
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 1005
    const/16 v7, 0x17

    if-eq p1, v7, :cond_7

    const/16 v7, 0x42

    if-eq p1, v7, :cond_7

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 1012
    :cond_7
    :pswitch_0
    return v3

    .line 1015
    :cond_8
    if-eqz v2, :cond_9

    if-ne p1, v8, :cond_9

    .line 1018
    if-ne v0, v6, :cond_a

    .line 1019
    return v3

    .line 1021
    :cond_9
    if-nez v2, :cond_a

    if-ne p1, v7, :cond_a

    if-ne v0, v5, :cond_a

    .line 1023
    return v3

    .line 1029
    .end local v0    # "curIndex":I
    .end local v2    # "below":Z
    .end local v4    # "adapter":Landroid/widget/ListAdapter;
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    .end local v9    # "consumed":Z
    :cond_a
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1044
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v0

    if-ltz v0, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1046
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->isConfirmKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    .line 1051
    :cond_0
    return v0

    .line 1053
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public performItemClick(I)Z
    .locals 9
    .param p1, "position"    # I

    .line 852
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 853
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 855
    .local v0, "list":Lcom/oneplus/lib/widget/DropDownListView;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 856
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    .line 857
    .local v8, "adapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v5

    move-object v2, v0

    move-object v3, v7

    move v4, p1

    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 859
    .end local v0    # "list":Lcom/oneplus/lib/widget/DropDownListView;
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 861
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_0

    .line 273
    new-instance v0, Lcom/oneplus/lib/widget/ListPopupWindow$PopupDataSetObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/oneplus/lib/widget/ListPopupWindow;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    goto :goto_0

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 277
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 278
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 285
    :cond_3
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .line 455
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 456
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .line 426
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 427
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 417
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 418
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .line 540
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 541
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 542
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 543
    iget-object v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    .line 547
    :goto_0
    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0
    .param p1, "gravity"    # I

    .line 513
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownGravity:I

    .line 514
    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 503
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 504
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .line 565
    if-gez p1, :cond_1

    const/4 v0, -0x2

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid height. Must be a positive value, MATCH_PARENT, or WRAP_CONTENT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_1
    :goto_0
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    .line 571
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .line 471
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 472
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 784
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 785
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 933
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 934
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .line 401
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 402
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .line 320
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mModal:Z

    .line 321
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 322
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 758
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 759
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .line 594
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 595
    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 1
    .param p1, "overlapAnchor"    # Z

    .line 1311
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    .line 1312
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mOverlapAnchor:Z

    .line 1313
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .line 297
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptPosition:I

    .line 298
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .line 615
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 616
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 617
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->removePromptView()V

    .line 619
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 620
    if-eqz v0, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    .line 623
    :cond_1
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .line 803
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    .line 804
    .local v0, "list":Lcom/oneplus/lib/widget/DropDownListView;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 805
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->setListSelectionHidden(Z)V

    .line 806
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/DropDownListView;->setSelection(I)V

    .line 808
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 809
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/DropDownListView;->setItemChecked(IZ)V

    .line 812
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 382
    iget-object v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 383
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 490
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 492
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .line 530
    iput p1, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    .line 531
    return-void
.end method

.method public show()V
    .locals 14

    .line 638
    invoke-direct {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->buildDropDown()I

    move-result v0

    .line 640
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v1

    .line 641
    .local v1, "noInputMethod":Z
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWindowLayoutType:I

    invoke-static {v2, v3}, Landroid/support/v4/widget/PopupWindowCompat;->setWindowLayoutType(Landroid/widget/PopupWindow;I)V

    .line 643
    iget-object v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eqz v2, :cond_c

    .line 644
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 646
    return-void

    .line 649
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_1

    .line 652
    const/4 v2, -0x1

    .local v2, "widthSpec":I
    :goto_0
    goto :goto_1

    .line 653
    .end local v2    # "widthSpec":I
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v4, :cond_2

    .line 654
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    .line 656
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    .line 660
    .restart local v2    # "widthSpec":I
    :goto_1
    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_7

    .line 663
    if-eqz v1, :cond_3

    move v4, v0

    goto :goto_2

    :cond_3
    move v4, v6

    .line 664
    .local v4, "heightSpec":I
    :goto_2
    if-eqz v1, :cond_5

    .line 665
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_4

    .line 666
    nop

    .line 665
    move v8, v6

    goto :goto_3

    .line 666
    :cond_4
    nop

    .line 665
    move v8, v5

    :goto_3
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 667
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 669
    :cond_5
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v8, v6, :cond_6

    .line 670
    nop

    .line 669
    move v8, v6

    goto :goto_4

    .line 670
    :cond_6
    nop

    .line 669
    move v8, v5

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 671
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setHeight(I)V

    goto :goto_5

    .line 673
    .end local v4    # "heightSpec":I
    :cond_7
    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v4, :cond_8

    .line 674
    move v4, v0

    .restart local v4    # "heightSpec":I
    goto :goto_5

    .line 676
    .end local v4    # "heightSpec":I
    :cond_8
    iget v4, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    .line 679
    .restart local v4    # "heightSpec":I
    :goto_5
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_9

    iget-boolean v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_9

    goto :goto_6

    :cond_9
    move v3, v5

    :goto_6
    invoke-virtual {v7, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 681
    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v9

    iget v10, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v11, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 682
    if-gez v2, :cond_a

    .line 683
    move v12, v6

    goto :goto_7

    :cond_a
    move v12, v2

    :goto_7
    if-gez v4, :cond_b

    .line 681
    move v13, v6

    goto :goto_8

    :cond_b
    move v13, v4

    :goto_8
    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 684
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    goto/16 :goto_f

    .line 686
    :cond_c
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v6, :cond_d

    .line 687
    const/4 v2, -0x1

    .restart local v2    # "widthSpec":I
    :goto_9
    goto :goto_a

    .line 689
    .end local v2    # "widthSpec":I
    :cond_d
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v2, v4, :cond_e

    .line 690
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_9

    .line 692
    :cond_e
    iget v2, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownWidth:I

    .line 697
    .restart local v2    # "widthSpec":I
    :goto_a
    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v6, :cond_f

    .line 698
    const/4 v4, -0x1

    .restart local v4    # "heightSpec":I
    :goto_b
    goto :goto_c

    .line 700
    .end local v4    # "heightSpec":I
    :cond_f
    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v7, v4, :cond_10

    .line 701
    move v4, v0

    goto :goto_b

    .line 703
    :cond_10
    iget v4, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHeight:I

    .line 707
    .restart local v4    # "heightSpec":I
    :goto_c
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 708
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 709
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPopupClipToScreenEnabled(Z)V

    .line 713
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_11

    iget-boolean v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_11

    move v8, v3

    goto :goto_d

    :cond_11
    move v8, v5

    :goto_d
    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 714
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->needInterceptorTouchEvent()Z

    move-result v7

    if-eqz v7, :cond_12

    .line 715
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mTouchInterceptor:Lcom/oneplus/lib/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 717
    :cond_12
    iget-boolean v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mOverlapAnchorSet:Z

    if-eqz v7, :cond_13

    .line 718
    iget-object v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mOverlapAnchor:Z

    invoke-static {v7, v8}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    .line 720
    :cond_13
    sget-object v7, Lcom/oneplus/lib/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    if-eqz v7, :cond_14

    .line 722
    :try_start_0
    sget-object v7, Lcom/oneplus/lib/widget/ListPopupWindow;->sSetEpicenterBoundsMethod:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    aput-object v9, v3, v5

    invoke-virtual {v7, v8, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    goto :goto_e

    .line 723
    :catch_0
    move-exception v3

    .line 724
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "ListPopupWindow"

    const-string v7, "Could not invoke setEpicenterBounds on PopupWindow"

    invoke-static {v5, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_14
    :goto_e
    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    iget v7, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    iget v9, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownGravity:I

    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 729
    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/widget/DropDownListView;->setSelection(I)V

    .line 731
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mModal:Z

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mDropDownList:Lcom/oneplus/lib/widget/DropDownListView;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 732
    :cond_15
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    .line 734
    :cond_16
    iget-boolean v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mModal:Z

    if-nez v3, :cond_17

    .line 735
    iget-object v3, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/lib/widget/ListPopupWindow;->mHideSelector:Lcom/oneplus/lib/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 738
    .end local v2    # "widthSpec":I
    .end local v4    # "heightSpec":I
    :cond_17
    :goto_f
    return-void
.end method
