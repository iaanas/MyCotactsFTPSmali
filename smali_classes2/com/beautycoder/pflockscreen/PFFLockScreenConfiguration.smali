.class public Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;
.super Ljava/lang/Object;
.source "PFFLockScreenConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$PFLockScreenMode;,
        Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final MODE_AUTH:I = 0x1

.field public static final MODE_CREATE:I


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
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method private constructor <init>(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const-string v0, ""

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    .line 95
    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    .line 96
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    .line 98
    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    .line 99
    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    .line 101
    const/4 v0, 0x4

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    .line 102
    iput-boolean v1, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    .line 103
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$000(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$100(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$200(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    .line 106
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$300(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    .line 107
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$400(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$500(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iput-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    .line 109
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$600(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    .line 110
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$700(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    .line 111
    invoke-static {p1}, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;->access$800(Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    .line 112
    return-void
.end method


# virtual methods
.method public getCodeLength()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mCodeLength:I

    return v0
.end method

.method public getLeftButton()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mLeftButton:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mMode:I

    return v0
.end method

.method public getNextButton()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mNextButton:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLeftButtonClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mOnLeftButtonClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoShowFingerprint()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mAutoShowFingerprint:Z

    return v0
.end method

.method public isClearCodeOnError()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mClearCodeOnError:Z

    return v0
.end method

.method public isUseFingerprint()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/beautycoder/pflockscreen/PFFLockScreenConfiguration;->mUseFingerprint:Z

    return v0
.end method
