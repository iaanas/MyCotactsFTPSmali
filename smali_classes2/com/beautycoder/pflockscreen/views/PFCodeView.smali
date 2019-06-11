.class public Lcom/beautycoder/pflockscreen/views/PFCodeView;
.super Landroid/widget/LinearLayout;
.source "PFCodeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CODE_LENGTH:I = 0x4


# instance fields
.field private mCode:Ljava/lang/String;

.field private mCodeLength:I

.field mCodeViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 19
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    .line 41
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->init()V

    .line 42
    return-void
.end method

.method private init()V
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090034

    invoke-static {v0, v1, p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setUpCodeViews()V

    .line 47
    return-void
.end method

.method private setUpCodeViews()V
    .locals 6

    .line 55
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->removeAllViews()V

    .line 56
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 58
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ge v1, v2, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f090035

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 60
    .local v2, "view":Landroid/widget/CheckBox;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 61
    .local v3, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05004c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 62
    .local v4, "margin":I
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 65
    invoke-virtual {p0, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->addView(Landroid/view/View;)V

    .line 66
    iget-object v5, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    .end local v2    # "view":Landroid/widget/CheckBox;
    .end local v3    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "margin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v1, :cond_1

    .line 69
    invoke-interface {v1, v0}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public clearCode()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 104
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 106
    .local v1, "codeView":Landroid/widget/CheckBox;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    .end local v1    # "codeView":Landroid/widget/CheckBox;
    goto :goto_0

    .line 108
    :cond_1
    return-void
.end method

.method public delete()I
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeNotCompleted(Ljava/lang/String;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 97
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    return-object v0
.end method

.method public getInputCodeLength()I
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public input(Ljava/lang/String;)I
    .locals 3
    .param p1, "number"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ne v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeViews:Ljava/util/List;

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    if-eqz v1, :cond_1

    .line 83
    iget-object v2, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;->onCodeCompleted(Ljava/lang/String;)V

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    return v1
.end method

.method public setCodeLength(I)V
    .locals 0
    .param p1, "codeLength"    # I

    .line 50
    iput p1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mCodeLength:I

    .line 51
    invoke-direct {p0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->setUpCodeViews()V

    .line 52
    return-void
.end method

.method public setListener(Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 119
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/views/PFCodeView;->mListener:Lcom/beautycoder/pflockscreen/views/PFCodeView$OnPFCodeListener;

    .line 120
    return-void
.end method
