.class public final Landroidx/slice/Slice;
.super Ljava/lang/Object;
.source "Slice.java"

# interfaces
.implements Landroidx/versionedparcelable/VersionedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/Slice$Builder;
    }
.end annotation


# instance fields
.field mHints:[Ljava/lang/String;

.field mItems:[Landroidx/slice/SliceItem;

.field mSpec:Landroidx/slice/SliceSpec;

.field mUri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 119
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Bundle;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 119
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 150
    const-string v1, "hints"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 151
    const-string v1, "items"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 152
    .local v1, "items":[Landroid/os/Parcelable;
    array-length v2, v1

    new-array v2, v2, [Landroidx/slice/SliceItem;

    iput-object v2, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 153
    nop

    .line 153
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 154
    aget-object v2, v1, v0

    instance-of v2, v2, Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    new-instance v3, Landroidx/slice/SliceItem;

    aget-object v4, v1, v0

    check-cast v4, Landroid/os/Bundle;

    invoke-direct {v3, v4}, Landroidx/slice/SliceItem;-><init>(Landroid/os/Bundle;)V

    aput-object v3, v2, v0

    .line 153
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroidx/slice/SliceSpec;

    const-string/jumbo v2, "type"

    .line 160
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "revision"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 162
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayList;[Ljava/lang/String;Landroid/net/Uri;Landroidx/slice/SliceSpec;)V
    .locals 2
    .param p2, "hints"    # [Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "spec"    # Landroidx/slice/SliceSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/slice/SliceItem;",
            ">;[",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroidx/slice/SliceSpec;",
            ")V"
        }
    .end annotation

    .line 130
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/slice/SliceItem;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    new-array v1, v0, [Landroidx/slice/SliceItem;

    iput-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 119
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 131
    iput-object p2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/slice/SliceItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/slice/SliceItem;

    iput-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    .line 133
    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    .line 134
    iput-object p4, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    .line 135
    return-void
.end method

.method public static addHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "hints"    # [Ljava/lang/String;

    .line 515
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 517
    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 519
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 520
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 523
    .end local v1    # "i":I
    :cond_1
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, ") "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    return-void

    .line 515
    .end local v0    # "end":I
    :cond_2
    :goto_1
    return-void
.end method

.method public static bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 541
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    invoke-static {p0, p1, p2}, Landroidx/slice/Slice;->callBindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 544
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/slice/compat/SliceProviderCompat;->bindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method private static callBindSlice(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Set;)Landroidx/slice/Slice;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceSpec;",
            ">;)",
            "Landroidx/slice/Slice;"
        }
    .end annotation

    .line 551
    .local p2, "supportedSpecs":Ljava/util/Set;, "Ljava/util/Set<Landroidx/slice/SliceSpec;>;"
    const-class v0, Landroid/app/slice/SliceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    .line 552
    invoke-static {p2}, Landroidx/slice/SliceConvert;->unwrap(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/app/slice/SliceManager;->bindSlice(Landroid/net/Uri;Ljava/util/Set;)Landroid/app/slice/Slice;

    move-result-object v0

    .line 551
    invoke-static {v0}, Landroidx/slice/SliceConvert;->wrap(Landroid/app/slice/Slice;)Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSpec()Landroidx/slice/SliceSpec;
    .locals 1

    .line 190
    iget-object v0, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 197
    iget-object v0, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasHint(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hint"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/slice/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .line 169
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "b":Landroid/os/Bundle;
    const-string v1, "hints"

    iget-object v2, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v1, v1

    new-array v1, v1, [Landroid/os/Parcelable;

    .line 172
    .local v1, "p":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .line 172
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 173
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    .end local v2    # "i":I
    :cond_0
    const-string v2, "items"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 176
    const-string/jumbo v2, "uri"

    iget-object v3, p0, Landroidx/slice/Slice;->mUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    iget-object v2, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    if-eqz v2, :cond_1

    .line 178
    const-string/jumbo v2, "type"

    iget-object v3, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "revision"

    iget-object v3, p0, Landroidx/slice/Slice;->mSpec:Landroidx/slice/SliceSpec;

    invoke-virtual {v3}, Landroidx/slice/SliceSpec;->getRevision()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 486
    const-string v0, ""

    invoke-virtual {p0, v0}, Landroidx/slice/Slice;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "indent"    # Ljava/lang/String;

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string/jumbo v1, "slice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v1, p0, Landroidx/slice/Slice;->mHints:[Ljava/lang/String;

    invoke-static {v0, v1}, Landroidx/slice/Slice;->addHints(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 499
    const-string/jumbo v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    .local v1, "nextIndent":Ljava/lang/String;
    const/4 v2, 0x0

    .line 501
    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 502
    iget-object v3, p0, Landroidx/slice/Slice;->mItems:[Landroidx/slice/SliceItem;

    aget-object v3, v3, v2

    .line 503
    .local v3, "item":Landroidx/slice/SliceItem;
    invoke-virtual {v3, v1}, Landroidx/slice/SliceItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .end local v3    # "item":Landroidx/slice/SliceItem;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 505
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
