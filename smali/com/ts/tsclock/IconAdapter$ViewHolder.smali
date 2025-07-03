.class public final Lcom/ts/tsclock/IconAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IconAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/tsclock/IconAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation


# instance fields
.field public ivIcon:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/ts/tsclock/IconAdapter;

.field public tvName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/ts/tsclock/IconAdapter;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/ts/tsclock/IconAdapter$ViewHolder;->this$0:Lcom/ts/tsclock/IconAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
