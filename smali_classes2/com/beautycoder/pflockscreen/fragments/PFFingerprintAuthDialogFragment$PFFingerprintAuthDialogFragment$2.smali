.class Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$2;
.super Ljava/lang/Object;
.source "PFFingerprintAuthDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PFFingerprintAuthDialogFragment$2"
.end annotation


# static fields
.field static final f9x6a51018e:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    invoke-static {}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->values()[Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$2;->f9x6a51018e:[I

    .line 47
    :try_start_0
    sget-object v0, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$PFFingerprintAuthDialogFragment$2;->f9x6a51018e:[I

    sget-object v1, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->FINGERPRINT:Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/fragments/PFFingerprintAuthDialogFragment$Stage;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 50
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
