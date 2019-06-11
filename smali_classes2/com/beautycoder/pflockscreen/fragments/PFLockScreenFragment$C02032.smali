.class Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;
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
    name = "C02032"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;


# direct methods
.method constructor <init>(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    .line 73
    iput-object p1, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 77
    iget-object v0, p0, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment$C02032;->this$0:Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;

    invoke-static {v0}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$000(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;)Lcom/beautycoder/pflockscreen/views/PFCodeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beautycoder/pflockscreen/views/PFCodeView;->delete()I

    move-result v1

    invoke-static {v0, v1}, Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;->access$100(Lcom/beautycoder/pflockscreen/fragments/PFLockScreenFragment;I)V

    .line 78
    return-void
.end method
