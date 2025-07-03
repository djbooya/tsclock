.class public Lcom/ts/tsclock/AnimatorPath/PathPoint;
.super Ljava/lang/Object;
.source "PathPoint.java"


# static fields
.field public static final LINE:I = 0x1

.field public static final MOVE:I = 0x0

.field public static final SECOND_CURVE:I = 0x2

.field public static final THIRD_CURVE:I = 0x3


# instance fields
.field public mContorl0X:F

.field public mContorl0Y:F

.field public mContorl1X:F

.field public mContorl1Y:F

.field public mOperation:I

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "mContorl0X"    # F
    .param p2, "mContorl0Y"    # F
    .param p3, "mX"    # F
    .param p4, "mY"    # F

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p3, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    .line 55
    iput p4, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    .line 56
    iput p1, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0X:F

    .line 57
    iput p2, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0Y:F

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    .line 59
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 1
    .param p1, "mContorl0x"    # F
    .param p2, "mContorl0Y"    # F
    .param p3, "mContorl1x"    # F
    .param p4, "mContorl1Y"    # F
    .param p5, "mX"    # F
    .param p6, "mY"    # F

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput p5, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    .line 73
    iput p6, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    .line 74
    iput p1, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0X:F

    .line 75
    iput p2, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl0Y:F

    .line 76
    iput p3, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl1X:F

    .line 77
    iput p4, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mContorl1Y:F

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    .line 79
    return-void
.end method

.method public constructor <init>(IFF)V
    .locals 0
    .param p1, "mOperation"    # I
    .param p2, "mX"    # F
    .param p3, "mY"    # F

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mX:F

    .line 41
    iput p3, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mY:F

    .line 42
    iput p1, p0, Lcom/ts/tsclock/AnimatorPath/PathPoint;->mOperation:I

    .line 43
    return-void
.end method

.method public static lineTo(FF)Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 89
    new-instance v0, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, Lcom/ts/tsclock/AnimatorPath/PathPoint;-><init>(IFF)V

    return-object v0
.end method

.method public static moveTo(FF)Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .prologue
    .line 85
    new-instance v0, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Lcom/ts/tsclock/AnimatorPath/PathPoint;-><init>(IFF)V

    return-object v0
.end method

.method public static secondBesselCurveTo(FFFF)Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .locals 1
    .param p0, "c0X"    # F
    .param p1, "c0Y"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 93
    new-instance v0, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ts/tsclock/AnimatorPath/PathPoint;-><init>(FFFF)V

    return-object v0
.end method

.method public static thirdBesselCurveTo(FFFFFF)Lcom/ts/tsclock/AnimatorPath/PathPoint;
    .locals 7
    .param p0, "c0X"    # F
    .param p1, "c0Y"    # F
    .param p2, "c1X"    # F
    .param p3, "c1Y"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 97
    new-instance v0, Lcom/ts/tsclock/AnimatorPath/PathPoint;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ts/tsclock/AnimatorPath/PathPoint;-><init>(FFFFFF)V

    return-object v0
.end method
