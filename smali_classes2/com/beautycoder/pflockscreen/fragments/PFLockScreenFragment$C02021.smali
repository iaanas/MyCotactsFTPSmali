.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;
.super Ljava/lang/Object;
.source "PFLockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C02021"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 58
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 62
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "string":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02021;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->input(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;I)V

    .line 68
    .end local v0    # "string":Ljava/lang/String;
    :cond_0
    return-void
.end method
