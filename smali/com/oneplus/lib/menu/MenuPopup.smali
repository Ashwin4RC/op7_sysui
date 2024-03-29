.class abstract Lcom/oneplus/lib/menu/MenuPopup;
.super Ljava/lang/Object;
.source "MenuPopup.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Lcom/oneplus/lib/menu/ShowableListMenu;


# instance fields
.field private mEpicenterBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I
    .locals 9
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "maxAllowedWidth"    # I

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "maxWidth":I
    const/4 v1, 0x0

    .line 146
    .local v1, "itemView":Landroid/view/View;
    const/4 v2, 0x0

    .line 148
    .local v2, "itemType":I
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 149
    .local v4, "widthMeasureSpec":I
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 150
    .local v5, "heightMeasureSpec":I
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 151
    .local v6, "count":I
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_4

    .line 152
    invoke-interface {p0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v7

    .line 153
    .local v7, "positionType":I
    if-eq v7, v2, :cond_0

    .line 154
    move v2, v7

    .line 155
    const/4 v1, 0x0

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object p1, v8

    .line 162
    :cond_1
    invoke-interface {p0, v3, v1, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 163
    invoke-virtual {v1, v4, v5}, Landroid/view/View;->measure(II)V

    .line 165
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 166
    .local v8, "itemWidth":I
    if-lt v8, p3, :cond_2

    .line 167
    return p3

    .line 168
    :cond_2
    if-le v8, v0, :cond_3

    .line 169
    move v0, v8

    .line 151
    .end local v7    # "positionType":I
    .end local v8    # "itemWidth":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 173
    .end local v3    # "i":I
    :cond_4
    return v0
.end method

.method protected static shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z
    .locals 5
    .param p0, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 203
    const/4 v0, 0x0

    .line 204
    .local v0, "preserveIconSpacing":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    .line 206
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 207
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 208
    .local v3, "childItem":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 210
    goto :goto_1

    .line 206
    .end local v3    # "childItem":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method protected static toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/oneplus/lib/menu/MenuAdapter;
    .locals 1
    .param p0, "adapter"    # Landroid/widget/ListAdapter;

    .line 185
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p0

    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    return-object v0

    .line 188
    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/oneplus/lib/menu/MenuAdapter;

    return-object v0
.end method


# virtual methods
.method public abstract addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 116
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public abstract getHorizontalOffset()I
.end method

.method public getId()I
    .locals 1

    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 102
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    .line 127
    .local v0, "outerAdapter":Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/oneplus/lib/menu/MenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/oneplus/lib/menu/MenuAdapter;

    move-result-object v1

    .line 131
    .local v1, "wrappedAdapter":Lcom/oneplus/lib/menu/MenuAdapter;
    iget-object v2, v1, Lcom/oneplus/lib/menu/MenuAdapter;->mAdapterMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 132
    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MenuItem;

    .line 134
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopup;->closeMenuOnSubMenuOpened()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x4

    .line 131
    :goto_0
    invoke-virtual {v2, v3, p0, v4}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    .line 135
    return-void
.end method

.method public abstract setAnchorView(Landroid/view/View;)V
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 74
    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopup;->mEpicenterBounds:Landroid/graphics/Rect;

    .line 75
    return-void
.end method

.method public abstract setForceShowIcon(Z)V
.end method

.method public abstract setGravity(I)V
.end method

.method public abstract setHorizontalOffset(I)V
.end method

.method public abstract setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract setShowTitle(Z)V
.end method

.method public abstract setVerticalOffset(I)V
.end method
