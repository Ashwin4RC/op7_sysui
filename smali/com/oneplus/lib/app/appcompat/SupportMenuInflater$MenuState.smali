.class Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Landroid/support/v4/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p2, "menu"    # Landroid/view/Menu;

    .line 334
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 335
    iput-object p2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 337
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->resetGroup()V

    .line 338
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    .line 422
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 423
    return v0

    .line 425
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 502
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 503
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 504
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 505
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 506
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SupportMenuInflater"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot instantiate class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 430
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 431
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 432
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 433
    move v1, v2

    goto :goto_0

    .line 432
    :cond_0
    const/4 v1, 0x0

    .line 433
    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 434
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 435
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 436
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 437
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 439
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_1

    .line 440
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    invoke-static {p1, v0}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    .line 443
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 444
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 448
    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    .line 449
    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 445
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    :cond_3
    :goto_1
    instance-of v0, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/support/v7/view/menu/MenuItemImpl;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 453
    .local v0, "impl":Landroid/support/v7/view/menu/MenuItemImpl;
    :goto_2
    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    .line 454
    instance-of v1, p1, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_5

    .line 455
    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_3

    .line 456
    :cond_5
    instance-of v1, p1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    if-eqz v1, :cond_6

    .line 457
    move-object v1, p1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemWrapperICS;

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    .line 461
    :cond_6
    :goto_3
    const/4 v1, 0x0

    .line 462
    .local v1, "actionViewSpecified":Z
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 463
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    sget-object v3, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v4, v4, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v4}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 465
    .local v2, "actionView":Landroid/view/View;
    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    .line 466
    const/4 v1, 0x1

    .line 468
    .end local v2    # "actionView":Landroid/view/View;
    :cond_7
    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v2, :cond_9

    .line 469
    if-nez v1, :cond_8

    .line 470
    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    .line 471
    const/4 v1, 0x1

    goto :goto_4

    .line 473
    :cond_8
    const-string v2, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_9
    :goto_4
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    if-eqz v2, :cond_a

    .line 478
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    invoke-static {p1, v2}, Landroid/support/v4/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Landroid/support/v4/view/ActionProvider;)Landroid/view/MenuItem;

    .line 480
    :cond_a
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    .line 483
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 484
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 485
    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    .line 488
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 489
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    iget v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 490
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 491
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 353
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 355
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    .line 356
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    .line 358
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    .line 359
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 361
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 362
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 364
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 365
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 371
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 374
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemId:I

    .line 375
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_menuCategory:I

    iget v3, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 376
    .local v1, "category":I
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_orderInCategory:I

    iget v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 377
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v5, 0xffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 379
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 380
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 381
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_icon:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 382
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_alphabeticShortcut:I

    .line 383
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 384
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_numericShortcut:I

    .line 385
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 386
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 388
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_0

    .line 392
    :cond_0
    iget v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 394
    :goto_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checked:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 395
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_visible:I

    iget-boolean v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 396
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_enabled:I

    iget-boolean v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 397
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_showAsAction:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 398
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 399
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionLayout:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 400
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 401
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 403
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    .line 404
    .local v4, "hasActionProvider":Z
    :goto_1
    if-eqz v4, :cond_2

    iget v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v5, :cond_2

    .line 405
    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    sget-object v6, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v7, v7, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ActionProvider;

    iput-object v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_2

    .line 409
    :cond_2
    if-eqz v4, :cond_3

    .line 410
    const-string v5, "SupportMenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 416
    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 418
    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 419
    return-void
.end method

.method public resetGroup()V
    .locals 1

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupId:I

    .line 342
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCategory:I

    .line 343
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupOrder:I

    .line 344
    iput v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 345
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 346
    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 347
    return-void
.end method
