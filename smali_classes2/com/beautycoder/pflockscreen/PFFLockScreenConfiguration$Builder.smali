.class public Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
.super Ljava/lang/Object;
.source "PFFLockScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoShowFingerprint:Z

.field private mClearCodeOnError:Z

.field private mCodeLength:I

.field private mLeftButton:Ljava/lang/String;

.field private mMode:I

.field private mNextButton:Ljava/lang/String;

.field private mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

.field private mTitle:Ljava/lang/String;

.field private mUseFingerprint:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    .line 30
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    .line 31
    const/4 v1, 0x4

    iput v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    .line 32
    const-string v1, ""

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    .line 33
    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    .line 34
    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    .line 35
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 36
    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    .line 37
    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    return v0
.end method

.method static synthetic access$300(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    return v0
.end method

.method static synthetic access$400(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    return v0
.end method

.method static synthetic access$700(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    return v0
.end method

.method static synthetic access$800(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 28
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
    .locals 1

    .line 85
    new-instance v0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;

    invoke-direct {v0}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;-><init>()V

    return-object v0
.end method

.method public setAutoShowFingerprint(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "autoShowFingerprint"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mAutoShowFingerprint:Z

    .line 66
    return-object p0
.end method

.method public setClearCodeOnError(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "clearCodeOnError"    # Z

    .line 80
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mClearCodeOnError:Z

    .line 81
    return-object p0
.end method

.method public setCodeLength(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "codeLength"    # I

    .line 75
    iput p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mCodeLength:I

    .line 76
    return-object p0
.end method

.method public setLeftButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "leftButton"    # Ljava/lang/String;
    .param p2, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 49
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mLeftButton:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 51
    return-object p0
.end method

.method public setMode(I)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "mode"    # I

    .line 70
    iput p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mMode:I

    .line 71
    return-object p0
.end method

.method public setNextButton(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "nextButton"    # Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mNextButton:Ljava/lang/String;

    .line 56
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mTitle:Ljava/lang/String;

    .line 45
    return-object p0
.end method

.method public setUseFingerprint(Z)Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    .locals 0
    .param p1, "useFingerprint"    # Z

    .line 60
    iput-boolean p1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->mUseFingerprint:Z

    .line 61
    return-object p0
.end method
