.class Landroid/widget/FastScroller;
.super Ljava/lang/Object;
.source "FastScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FastScroller$ScrollFade;
    }
.end annotation


# static fields
.field private static final ATTRS:[I = null

.field private static final DEFAULT_STATES:[I = null

.field private static final FADE_TIMEOUT:I = 0x5dc

.field private static MIN_PAGES:I = 0x0

.field private static final OVERLAY_AT_THUMB:I = 0x1

.field private static final OVERLAY_FLOATING:I = 0x0

.field private static final OVERLAY_POSITION:I = 0x5

.field private static final PENDING_DRAG_DELAY:I = 0xb4

.field private static final PRESSED_STATES:[I = null

.field private static final PREVIEW_BACKGROUND_LEFT:I = 0x3

.field private static final PREVIEW_BACKGROUND_RIGHT:I = 0x4

.field private static final STATE_DRAGGING:I = 0x3

.field private static final STATE_ENTER:I = 0x1

.field private static final STATE_EXIT:I = 0x4

.field private static final STATE_NONE:I = 0x0

.field private static final STATE_VISIBLE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FastScroller"

.field private static final TEXT_COLOR:I = 0x0

.field private static final THUMB_DRAWABLE:I = 0x1

.field private static final TRACK_DRAWABLE:I = 0x2


# instance fields
.field private mAlwaysShow:Z

.field private mChangedBounds:Z

.field private final mDeferStartDrag:Ljava/lang/Runnable;

.field private mDrawOverlay:Z

.field private mHandler:Landroid/os/Handler;

.field mInitialTouchY:F

.field private mItemCount:I

.field mList:Landroid/widget/AbsListView;

.field mListAdapter:Landroid/widget/BaseAdapter;

.field private mListOffset:I

.field private mLongList:Z

.field private mMatchDragPosition:Z

.field private mOverlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mOverlayHeight:I

.field private mOverlayPos:Landroid/graphics/RectF;

.field private mOverlayPosition:I

.field private mOverlaySize:I

.field private mOverlayWidth:I

.field private mPaint:Landroid/graphics/Paint;

.field mPendingDrag:Z

.field private mPosition:I

.field private mScaledTouchSlop:I

.field mScrollCompleted:Z

.field private mScrollFade:Landroid/widget/FastScroller$ScrollFade;

.field private mSectionIndexer:Landroid/widget/SectionIndexer;

.field private mSectionText:Ljava/lang/String;

.field private mSections:[Ljava/lang/Object;

.field private mState:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field mThumbH:I

.field mThumbW:I

.field mThumbY:I

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVisibleItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    const/4 v0, 0x4

    sput v0, Landroid/widget/FastScroller;->MIN_PAGES:I

    .line 56
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 60
    new-array v0, v2, [I

    sput-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/FastScroller;->ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x59t 0x3t 0x1t 0x1t
        0x36t 0x3t 0x1t 0x1t
        0x39t 0x3t 0x1t 0x1t
        0x37t 0x3t 0x1t 0x1t
        0x38t 0x3t 0x1t 0x1t
        0x3at 0x3t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/AbsListView;)V
    .locals 1
    .parameter "context"
    .parameter "listView"

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 110
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    .line 134
    new-instance v0, Landroid/widget/FastScroller$1;

    invoke-direct {v0, p0}, Landroid/widget/FastScroller$1;-><init>(Landroid/widget/FastScroller;)V

    iput-object v0, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    .line 156
    iput-object p2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    .line 157
    invoke-direct {p0, p1}, Landroid/widget/FastScroller;->init(Landroid/content/Context;)V

    .line 158
    return-void
.end method

.method private cancelFling()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    .line 698
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 699
    .local v8, cancelFling:Landroid/view/MotionEvent;
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v8}, Landroid/widget/AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 700
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 701
    return-void
.end method

.method private getThumbPositionForListPosition(III)I
    .locals 17
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 637
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v14, :cond_1

    .line 638
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 640
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    if-eqz v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    if-nez v14, :cond_4

    .line 641
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v14, v15

    mul-int v14, v14, p1

    sub-int v15, p3, p2

    div-int v8, v14, v15

    .line 693
    :cond_3
    :goto_0
    return v8

    .line 645
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p1, p1, v14

    .line 646
    if-gez p1, :cond_5

    .line 647
    const/4 v8, 0x0

    goto :goto_0

    .line 649
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/FastScroller;->mListOffset:I

    sub-int p3, p3, v14

    .line 651
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v13, v14, v15

    .line 653
    .local v13, trackHeight:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move/from16 v0, p1

    invoke-interface {v14, v0}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v9

    .line 654
    .local v9, section:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v14, v9}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v11

    .line 655
    .local v11, sectionPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    add-int/lit8 v15, v9, 0x1

    invoke-interface {v14, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v5

    .line 656
    .local v5, nextSectionPos:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    array-length v10, v14

    .line 657
    .local v10, sectionCount:I
    sub-int v7, v5, v11

    .line 659
    .local v7, positionsInSection:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 660
    .local v1, child:Landroid/view/View;
    if-nez v1, :cond_8

    const/4 v2, 0x0

    .line 662
    .local v2, incrementalPos:F
    :goto_1
    int-to-float v14, v11

    sub-float v14, v2, v14

    int-to-float v15, v7

    div-float v6, v14, v15

    .line 667
    .local v6, posWithinSection:F
    int-to-float v14, v9

    add-float v12, v14, v6

    .line 668
    .local v12, selectionOffset:F
    int-to-float v14, v10

    cmpl-float v14, v12, v14

    if-lez v14, :cond_6

    .line 669
    int-to-float v12, v10

    .line 672
    :cond_6
    int-to-float v14, v10

    div-float v14, v12, v14

    int-to-float v15, v13

    mul-float/2addr v14, v15

    float-to-int v8, v14

    .line 677
    .local v8, result:I
    if-lez p1, :cond_3

    add-int v14, p1, p2

    move/from16 v0, p3

    if-ne v14, v0, :cond_3

    .line 678
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    add-int/lit8 v15, p2, -0x1

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 681
    .local v3, lastChild:Landroid/view/View;
    if-nez v3, :cond_7

    .line 682
    const-string v14, "FastScroller"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getThumbPositionForListPosition null lastChild firstVisibleItem="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", visibleItemCount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", totalItemCount="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mList.getChildCount()="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", mList="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", this="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->debug()V

    .line 688
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingBottom()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v15

    sub-int/2addr v14, v15

    int-to-float v14, v14

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v15

    int-to-float v15, v15

    div-float v4, v14, v15

    .line 690
    .local v4, lastItemVisible:F
    int-to-float v14, v8

    sub-int v15, v13, v8

    int-to-float v15, v15

    mul-float/2addr v15, v4

    add-float/2addr v14, v15

    float-to-int v8, v14

    goto/16 :goto_0

    .line 660
    .end local v2           #incrementalPos:F
    .end local v3           #lastChild:Landroid/view/View;
    .end local v4           #lastItemVisible:F
    .end local v6           #posWithinSection:F
    .end local v8           #result:I
    .end local v12           #selectionOffset:F
    :cond_8
    move/from16 v0, p1

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/view/View;->getPaddingTop()I

    move-result v15

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v16

    sub-int v15, v15, v16

    int-to-float v15, v15

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v15, v16

    add-float v2, v14, v15

    goto/16 :goto_1
.end method

.method private init(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 263
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget-object v6, Landroid/widget/FastScroller;->ATTRS:[I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 264
    .local v0, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Landroid/widget/FastScroller;->useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 265
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 267
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 268
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 269
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    .line 271
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 273
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    .line 277
    iget v5, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayWidth:I

    .line 278
    iget v5, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    iput v5, p0, Landroid/widget/FastScroller;->mOverlayHeight:I

    .line 280
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 281
    new-instance v5, Landroid/widget/FastScroller$ScrollFade;

    invoke-direct {v5, p0}, Landroid/widget/FastScroller$ScrollFade;-><init>(Landroid/widget/FastScroller;)V

    iput-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 282
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 283
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 285
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    iget v6, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 287
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 288
    .local v1, textColor:Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    .line 289
    .local v2, textColorNormal:I
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    iget-object v5, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 293
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    if-lez v5, :cond_0

    .line 294
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget-object v6, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6, v4, v4}, Landroid/widget/FastScroller;->onSizeChanged(IIII)V

    .line 297
    :cond_0
    iput v4, p0, Landroid/widget/FastScroller;->mState:I

    .line 298
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 300
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 302
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_1

    :goto_0
    iput-boolean v3, p0, Landroid/widget/FastScroller;->mMatchDragPosition:Z

    .line 307
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getVerticalScrollbarPosition()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/widget/FastScroller;->setScrollbarPosition(I)V

    .line 308
    return-void

    :cond_1
    move v3, v4

    .line 304
    goto :goto_0
.end method

.method private refreshDrawableState()V
    .locals 3

    .prologue
    .line 175
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    sget-object v0, Landroid/widget/FastScroller;->PRESSED_STATES:[I

    .line 177
    .local v0, state:[I
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 180
    :cond_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 183
    :cond_1
    return-void

    .line 175
    .end local v0           #state:[I
    :cond_2
    sget-object v0, Landroid/widget/FastScroller;->DEFAULT_STATES:[I

    goto :goto_0
.end method

.method private resetDraggingState()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 944
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 948
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 949
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 951
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/widget/FastScroller;->setState(I)V

    .line 952
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 953
    .local v0, handler:Landroid/os/Handler;
    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 954
    iget-boolean v1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v1, :cond_1

    .line 955
    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 958
    :cond_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_2

    .line 959
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 961
    :cond_2
    return-void
.end method

.method private resetThumbPos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 234
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 236
    .local v0, viewWidth:I
    iget v1, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 244
    :goto_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v2, 0xd0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 245
    return-void

    .line 238
    :pswitch_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private useThumbDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "context"
    .parameter "drawable"

    .prologue
    .line 248
    iput-object p2, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 249
    instance-of v0, p2, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    .line 258
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 259
    return-void

    .line 255
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    .line 256
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbH:I

    goto :goto_0
.end method


# virtual methods
.method beginDrag()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 714
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 715
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 716
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 718
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 719
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 720
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 723
    :cond_1
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 724
    return-void
.end method

.method cancelPendingDrag()V
    .locals 2

    .prologue
    .line 704
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 706
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v23, v0

    if-nez v23, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbY:I

    move/from16 v22, v0

    .line 326
    .local v22, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getWidth()I

    move-result v21

    .line 327
    .local v21, viewWidth:I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    .line 329
    .local v14, scrollFade:Landroid/widget/FastScroller$ScrollFade;
    const/4 v5, -0x1

    .line 330
    .local v5, alpha:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 331
    invoke-virtual {v14}, Landroid/widget/FastScroller$ScrollFade;->getAlpha()I

    move-result v5

    .line 332
    const/16 v23, 0x68

    move/from16 v0, v23

    if-ge v5, v0, :cond_2

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    mul-int/lit8 v24, v5, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 335
    :cond_2
    const/4 v10, 0x0

    .line 336
    .local v10, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 344
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v25, v0

    add-int v25, v25, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v26, v0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 345
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 348
    .end local v10           #left:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v15

    .line 350
    .local v15, thumbBounds:Landroid/graphics/Rect;
    iget v10, v15, Landroid/graphics/Rect;->left:I

    .line 351
    .restart local v10       #left:I
    iget v0, v15, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    iget v0, v15, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v9, v23, 0x2

    .line 352
    .local v9, halfThumbHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 353
    .local v19, trackWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v23, v23, v10

    div-int/lit8 v24, v19, 0x2

    sub-int v18, v23, v24

    .line 354
    .local v18, trackLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    add-int v24, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    sub-int v25, v25, v9

    move-object/from16 v0, v23

    move/from16 v1, v18

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 359
    .end local v9           #halfThumbHeight:I
    .end local v10           #left:I
    .end local v15           #thumbBounds:Landroid/graphics/Rect;
    .end local v18           #trackLeft:I
    .end local v19           #trackWidth:I
    :cond_4
    const/16 v23, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 361
    const/16 v23, 0x0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/FastScroller;->mDrawOverlay:Z

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayPosition:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 366
    const/4 v10, 0x0

    .line 367
    .restart local v10       #left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mPosition:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 370
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 379
    :goto_2
    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v24, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v24

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 382
    .local v17, top:I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 383
    .local v12, pos:Landroid/graphics/RectF;
    int-to-float v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 384
    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v12, Landroid/graphics/RectF;->right:F

    .line 385
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 386
    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayHeight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v23, v23, v24

    move/from16 v0, v23

    iput v0, v12, Landroid/graphics/RectF;->bottom:F

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    iget v0, v12, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    iget v0, v12, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    iget v0, v12, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    iget v0, v12, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 392
    .end local v10           #left:I
    .end local v12           #pos:Landroid/graphics/RectF;
    .end local v17           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    .line 394
    .local v11, paint:Landroid/graphics/Paint;
    invoke-virtual {v11}, Landroid/graphics/Paint;->descent()F

    move-result v7

    .line 395
    .local v7, descent:F
    invoke-virtual {v11}, Landroid/graphics/Paint;->ascent()F

    move-result v6

    .line 396
    .local v6, asent:F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 397
    .local v13, rectF:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 398
    .local v16, tmpRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 399
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v8, v23, 0x2

    .line 400
    .local v8, hOff:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v20, v23, 0x2

    .line 401
    .local v20, vOff:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    move-object/from16 v23, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    sub-int v24, v24, v8

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v26, v6, v7

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 338
    .end local v6           #asent:F
    .end local v7           #descent:F
    .end local v8           #hOff:I
    .end local v11           #paint:Landroid/graphics/Paint;
    .end local v13           #rectF:Landroid/graphics/RectF;
    .end local v16           #tmpRect:Landroid/graphics/Rect;
    .end local v20           #vOff:I
    .restart local v10       #left:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    mul-int v23, v23, v5

    move/from16 v0, v23

    div-int/lit16 v0, v0, 0xd0

    move/from16 v23, v0

    sub-int v10, v21, v23

    .line 339
    goto/16 :goto_1

    .line 341
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    mul-int v24, v24, v5

    move/from16 v0, v24

    div-int/lit16 v0, v0, 0xd0

    move/from16 v24, v0

    add-int v10, v23, v24

    goto/16 :goto_1

    .line 374
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mOverlayWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto/16 :goto_2

    .line 404
    .end local v10           #left:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mState:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_0

    .line 405
    if-nez v5, :cond_7

    .line 406
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FastScroller;->setState(I)V

    goto/16 :goto_0

    .line 407
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v21, v24

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getHeight()I

    move-result v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v21

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 410
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbW:I

    move/from16 v24, v0

    sub-int v24, v21, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mThumbH:I

    move/from16 v25, v0

    add-int v25, v25, v22

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_0

    .line 336
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 367
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method getSectionIndexer()Landroid/widget/SectionIndexer;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    return-object v0
.end method

.method getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 491
    :cond_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    return-object v0
.end method

.method getSectionsFromIndexer()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 495
    iget-object v2, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 496
    .local v0, adapter:Landroid/widget/Adapter;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 497
    instance-of v2, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 498
    check-cast v2, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    iput v2, p0, Landroid/widget/FastScroller;->mListOffset:I

    .line 499
    check-cast v0, Landroid/widget/HeaderViewListAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    invoke-virtual {v0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 501
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_0
    instance-of v2, v0, Landroid/widget/ExpandableListConnector;

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 502
    check-cast v2, Landroid/widget/ExpandableListConnector;

    invoke-virtual {v2}, Landroid/widget/ExpandableListConnector;->getAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v1

    .line 503
    .local v1, expAdapter:Landroid/widget/ExpandableListAdapter;
    instance-of v2, v1, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_1

    .line 504
    check-cast v1, Landroid/widget/SectionIndexer;

    .end local v1           #expAdapter:Landroid/widget/ExpandableListAdapter;
    iput-object v1, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 505
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 506
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 509
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_2
    instance-of v2, v0, Landroid/widget/SectionIndexer;

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 510
    check-cast v2, Landroid/widget/BaseAdapter;

    iput-object v2, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 511
    check-cast v0, Landroid/widget/SectionIndexer;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    .line 512
    iget-object v2, p0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v2}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    .line 513
    iget-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 514
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0

    .line 517
    .restart local v0       #adapter:Landroid/widget/Adapter;
    :cond_3
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0           #adapter:Landroid/widget/Adapter;
    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 518
    new-array v2, v3, [Ljava/lang/String;

    const-string v3, " "

    aput-object v3, v2, v4

    iput-object v2, p0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    goto :goto_0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Landroid/widget/FastScroller;->mThumbW:I

    return v0
.end method

.method public isAlwaysShowEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    return v0
.end method

.method isPointInside(FF)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 843
    const/4 v0, 0x0

    .line 844
    .local v0, inTrack:Z
    iget v3, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v3, :pswitch_data_0

    .line 847
    iget-object v3, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v0, v1

    .line 855
    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Landroid/widget/FastScroller;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_3

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_3

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 847
    goto :goto_0

    .line 850
    :pswitch_0
    iget v3, p0, Landroid/widget/FastScroller;->mThumbW:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    .line 855
    goto :goto_1

    .line 844
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method isVisible()Z
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 727
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 743
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 729
    :pswitch_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v0

    if-nez v0, :cond_1

    .line 731
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 732
    const/4 v0, 0x1

    goto :goto_1

    .line 734
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 735
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 740
    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto :goto_0

    .line 727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method onItemCountChanged(II)V
    .locals 1
    .parameter "oldCount"
    .parameter "newCount"

    .prologue
    .line 441
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 444
    :cond_0
    return-void
.end method

.method onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 449
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    if-eq v0, p4, :cond_0

    if-lez p3, :cond_0

    .line 450
    iput p4, p0, Landroid/widget/FastScroller;->mItemCount:I

    .line 451
    iget v0, p0, Landroid/widget/FastScroller;->mItemCount:I

    div-int/2addr v0, p3

    sget v3, Landroid/widget/FastScroller;->MIN_PAGES:I

    if-lt v0, v3, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 453
    :cond_0
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-eqz v0, :cond_1

    .line 454
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mLongList:Z

    .line 456
    :cond_1
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mLongList:Z

    if-nez v0, :cond_4

    .line 457
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eqz v0, :cond_2

    .line 458
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 481
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 451
    goto :goto_0

    .line 462
    :cond_4
    sub-int v0, p4, p3

    if-lez v0, :cond_5

    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_5

    .line 463
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/FastScroller;->getThumbPositionForListPosition(III)I

    move-result v0

    iput v0, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 465
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    if-eqz v0, :cond_5

    .line 466
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 467
    iput-boolean v2, p0, Landroid/widget/FastScroller;->mChangedBounds:Z

    .line 470
    :cond_5
    iput-boolean v1, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 471
    iget v0, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    if-eq p2, v0, :cond_2

    .line 474
    iput p2, p0, Landroid/widget/FastScroller;->mVisibleItem:I

    .line 475
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-eq v0, v4, :cond_2

    .line 476
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 477
    iget-boolean v0, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v0, :cond_2

    .line 478
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method public onSectionsChanged()V
    .locals 1

    .prologue
    .line 524
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    .line 525
    return-void
.end method

.method onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v4, 0x0

    .line 416
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 417
    iget v1, p0, Landroid/widget/FastScroller;->mPosition:I

    packed-switch v1, :pswitch_data_0

    .line 420
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, p1, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v2, v4, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 427
    :cond_0
    :goto_0
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayPosition:I

    if-nez v1, :cond_1

    .line 428
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayPos:Landroid/graphics/RectF;

    .line 429
    .local v0, pos:Landroid/graphics/RectF;
    iget v1, p0, Landroid/widget/FastScroller;->mOverlayWidth:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 430
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlayWidth:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 431
    div-int/lit8 v1, p2, 0xa

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 432
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Landroid/widget/FastScroller;->mOverlayHeight:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 433
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 438
    .end local v0           #pos:Landroid/graphics/RectF;
    :cond_1
    return-void

    .line 423
    :pswitch_0
    iget-object v1, p0, Landroid/widget/FastScroller;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    iget v3, p0, Landroid/widget/FastScroller;->mThumbH:I

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 417
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "me"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 747
    iget v7, p0, Landroid/widget/FastScroller;->mState:I

    if-nez v7, :cond_1

    .line 839
    :cond_0
    :goto_0
    return v5

    .line 751
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 753
    .local v0, action:I
    if-nez v0, :cond_3

    .line 754
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Landroid/widget/FastScroller;->isPointInside(FF)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 755
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v7

    if-nez v7, :cond_2

    .line 756
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    move v5, v6

    .line 757
    goto :goto_0

    .line 759
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    .line 760
    invoke-virtual {p0}, Landroid/widget/FastScroller;->startPendingDrag()V

    goto :goto_0

    .line 762
    :cond_3
    if-ne v0, v6, :cond_9

    .line 763
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v7, :cond_5

    .line 765
    invoke-virtual {p0}, Landroid/widget/FastScroller;->beginDrag()V

    .line 767
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 769
    .local v3, viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v7, v8

    add-int/lit8 v2, v7, 0xa

    .line 770
    .local v2, newThumbY:I
    if-gez v2, :cond_8

    .line 771
    const/4 v2, 0x0

    .line 775
    :cond_4
    :goto_1
    iput v2, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 776
    iget v7, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v8, v3, v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/widget/FastScroller;->scrollTo(F)V

    .line 778
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 781
    .end local v2           #newThumbY:I
    .end local v3           #viewHeight:I
    :cond_5
    iget v7, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v7, v9, :cond_0

    .line 782
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v7, :cond_6

    .line 786
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v5}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 787
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v5}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 789
    :cond_6
    invoke-virtual {p0, v10}, Landroid/widget/FastScroller;->setState(I)V

    .line 790
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    .line 791
    .local v1, handler:Landroid/os/Handler;
    iget-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 792
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    if-nez v5, :cond_7

    .line 793
    iget-object v5, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v1, v5, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 796
    :cond_7
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    move v5, v6

    .line 797
    goto/16 :goto_0

    .line 772
    .end local v1           #handler:Landroid/os/Handler;
    .restart local v2       #newThumbY:I
    .restart local v3       #viewHeight:I
    :cond_8
    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v7, v2

    if-le v7, v3, :cond_4

    .line 773
    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v2, v3, v7

    goto :goto_1

    .line 799
    .end local v2           #newThumbY:I
    .end local v3           #viewHeight:I
    :cond_9
    if-ne v0, v10, :cond_11

    .line 800
    iget-boolean v7, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    if-eqz v7, :cond_c

    .line 801
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 802
    .local v4, y:F
    iget v7, p0, Landroid/widget/FastScroller;->mInitialTouchY:F

    sub-float v7, v4, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Landroid/widget/FastScroller;->mScaledTouchSlop:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_c

    .line 803
    invoke-virtual {p0, v9}, Landroid/widget/FastScroller;->setState(I)V

    .line 804
    iget-object v7, p0, Landroid/widget/FastScroller;->mListAdapter:Landroid/widget/BaseAdapter;

    if-nez v7, :cond_a

    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v7, :cond_a

    .line 805
    invoke-virtual {p0}, Landroid/widget/FastScroller;->getSectionsFromIndexer()V

    .line 807
    :cond_a
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v7, :cond_b

    .line 808
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v6}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 809
    iget-object v7, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v7, v6}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 812
    :cond_b
    invoke-direct {p0}, Landroid/widget/FastScroller;->cancelFling()V

    .line 813
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    .line 817
    .end local v4           #y:F
    :cond_c
    iget v7, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v7, v9, :cond_0

    .line 818
    iget-object v5, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 820
    .restart local v3       #viewHeight:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int/2addr v5, v7

    add-int/lit8 v2, v5, 0xa

    .line 821
    .restart local v2       #newThumbY:I
    if-gez v2, :cond_e

    .line 822
    const/4 v2, 0x0

    .line 826
    :cond_d
    :goto_2
    iget v5, p0, Landroid/widget/FastScroller;->mThumbY:I

    sub-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ge v5, v10, :cond_f

    move v5, v6

    .line 827
    goto/16 :goto_0

    .line 823
    :cond_e
    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v5, v2

    if-le v5, v3, :cond_d

    .line 824
    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v2, v3, v5

    goto :goto_2

    .line 829
    :cond_f
    iput v2, p0, Landroid/widget/FastScroller;->mThumbY:I

    .line 831
    iget-boolean v5, p0, Landroid/widget/FastScroller;->mScrollCompleted:Z

    if-eqz v5, :cond_10

    .line 832
    iget v5, p0, Landroid/widget/FastScroller;->mThumbY:I

    int-to-float v5, v5

    iget v7, p0, Landroid/widget/FastScroller;->mThumbH:I

    sub-int v7, v3, v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-virtual {p0, v5}, Landroid/widget/FastScroller;->scrollTo(F)V

    :cond_10
    move v5, v6

    .line 834
    goto/16 :goto_0

    .line 836
    .end local v2           #newThumbY:I
    .end local v3           #viewHeight:I
    :cond_11
    if-ne v0, v9, :cond_0

    .line 837
    invoke-virtual {p0}, Landroid/widget/FastScroller;->cancelPendingDrag()V

    goto/16 :goto_0
.end method

.method resetDraggingStateIfNecessary()V
    .locals 2

    .prologue
    .line 968
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 969
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetDraggingState()V

    .line 971
    :cond_0
    return-void
.end method

.method scrollTo(F)V
    .locals 22
    .parameter "position"

    .prologue
    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AdapterView;->getCount()I

    move-result v2

    .line 529
    .local v2, count:I
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mScrollCompleted:Z

    .line 530
    const/high16 v19, 0x3f80

    int-to-float v0, v2

    move/from16 v20, v0

    div-float v19, v19, v20

    const/high16 v20, 0x4100

    div-float v7, v19, v20

    .line 531
    .local v7, fThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSections:[Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 533
    .local v17, sections:[Ljava/lang/Object;
    if-eqz v17, :cond_b

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_b

    .line 534
    move-object/from16 v0, v17

    array-length v9, v0

    .line 535
    .local v9, nSections:I
    int-to-float v0, v9

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v15, v0

    .line 536
    .local v15, section:I
    if-lt v15, v9, :cond_0

    .line 537
    add-int/lit8 v15, v9, -0x1

    .line 539
    :cond_0
    move v3, v15

    .line 540
    .local v3, exactSection:I
    move/from16 v16, v15

    .line 541
    .local v16, sectionIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v8

    .line 548
    .local v8, index:I
    move v10, v2

    .line 549
    .local v10, nextIndex:I
    move v13, v8

    .line 550
    .local v13, prevIndex:I
    move v14, v15

    .line 551
    .local v14, prevSection:I
    add-int/lit8 v12, v15, 0x1

    .line 553
    .local v12, nextSection:I
    add-int/lit8 v19, v9, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    add-int/lit8 v20, v15, 0x1

    invoke-interface/range {v19 .. v20}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v10

    .line 558
    :cond_1
    if-ne v10, v8, :cond_3

    .line 560
    :cond_2
    if-lez v15, :cond_3

    .line 561
    add-int/lit8 v15, v15, -0x1

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v13

    .line 563
    if-eq v13, v8, :cond_4

    .line 564
    move v14, v15

    .line 565
    move/from16 v16, v15

    .line 580
    :cond_3
    :goto_0
    add-int/lit8 v11, v12, 0x1

    .line 582
    .local v11, nextNextSection:I
    :goto_1
    if-ge v11, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mSectionIndexer:Landroid/widget/SectionIndexer;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v0, v11}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v19

    move/from16 v0, v19

    if-ne v0, v10, :cond_5

    .line 583
    add-int/lit8 v11, v11, 0x1

    .line 584
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 567
    .end local v11           #nextNextSection:I
    :cond_4
    if-nez v15, :cond_2

    .line 570
    const/16 v16, 0x0

    .line 571
    goto :goto_0

    .line 589
    .restart local v11       #nextNextSection:I
    :cond_5
    int-to-float v0, v14

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v6, v19, v20

    .line 590
    .local v6, fPrev:F
    int-to-float v0, v12

    move/from16 v19, v0

    int-to-float v0, v9

    move/from16 v20, v0

    div-float v5, v19, v20

    .line 591
    .local v5, fNext:F
    if-ne v14, v3, :cond_8

    sub-float v19, p1, v6

    cmpg-float v19, v19, v7

    if-gez v19, :cond_8

    .line 592
    move v8, v13

    .line 598
    :goto_2
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_6

    add-int/lit8 v8, v2, -0x1

    .line 600
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 602
    .local v4, expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 626
    .end local v3           #exactSection:I
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    :goto_3
    if-ltz v16, :cond_10

    .line 627
    aget-object v19, v17, v16

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FastScroller;->mSectionText:Ljava/lang/String;

    .line 628
    .local v18, text:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->charAt(I)C

    move-result v19

    const/16 v20, 0x20

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    :cond_7
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_4
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    .line 633
    .end local v18           #text:Ljava/lang/String;
    :goto_5
    return-void

    .line 594
    .restart local v3       #exactSection:I
    .restart local v5       #fNext:F
    .restart local v6       #fPrev:F
    .restart local v9       #nSections:I
    .restart local v10       #nextIndex:I
    .restart local v11       #nextNextSection:I
    .restart local v12       #nextSection:I
    .restart local v13       #prevIndex:I
    .restart local v14       #prevSection:I
    .restart local v15       #section:I
    :cond_8
    sub-int v19, v10, v13

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v20, p1, v6

    mul-float v19, v19, v20

    sub-float v20, v5, v6

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v8, v13, v19

    goto/16 :goto_2

    .line 604
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_3

    .line 607
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AdapterView;->setSelection(I)V

    goto/16 :goto_3

    .line 610
    .end local v3           #exactSection:I
    .end local v5           #fNext:F
    .end local v6           #fPrev:F
    .end local v8           #index:I
    .end local v9           #nSections:I
    .end local v10           #nextIndex:I
    .end local v11           #nextNextSection:I
    .end local v12           #nextSection:I
    .end local v13           #prevIndex:I
    .end local v14           #prevSection:I
    .end local v15           #section:I
    .end local v16           #sectionIndex:I
    :cond_b
    int-to-float v0, v2

    move/from16 v19, v0

    mul-float v19, v19, p1

    move/from16 v0, v19

    float-to-int v8, v0

    .line 612
    .restart local v8       #index:I
    add-int/lit8 v19, v2, -0x1

    move/from16 v0, v19

    if-le v8, v0, :cond_c

    add-int/lit8 v8, v2, -0x1

    .line 614
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ExpandableListView;

    move/from16 v19, v0

    if-eqz v19, :cond_d

    .line 615
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    check-cast v4, Landroid/widget/ExpandableListView;

    .line 616
    .restart local v4       #expList:Landroid/widget/ExpandableListView;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v19, v0

    add-int v19, v19, v8

    invoke-static/range {v19 .. v19}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-virtual {v4, v0, v1}, Landroid/widget/ExpandableListView;->getFlatListPosition(J)I

    move-result v19

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 623
    .end local v4           #expList:Landroid/widget/ExpandableListView;
    :goto_6
    const/16 v16, -0x1

    .restart local v16       #sectionIndex:I
    goto/16 :goto_3

    .line 618
    .end local v16           #sectionIndex:I
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/ListView;

    move/from16 v19, v0

    if-eqz v19, :cond_e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_6

    .line 621
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FastScroller;->mListOffset:I

    move/from16 v20, v0

    add-int v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_6

    .line 628
    .restart local v16       #sectionIndex:I
    .restart local v18       #text:Ljava/lang/String;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 631
    .end local v18           #text:Ljava/lang/String;
    :cond_10
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/FastScroller;->mDrawOverlay:Z

    goto/16 :goto_5
.end method

.method public setAlwaysShow(Z)V
    .locals 4
    .parameter "alwaysShow"

    .prologue
    const/4 v2, 0x2

    .line 161
    iput-boolean p1, p0, Landroid/widget/FastScroller;->mAlwaysShow:Z

    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {p0, v2}, Landroid/widget/FastScroller;->setState(I)V

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget v0, p0, Landroid/widget/FastScroller;->mState:I

    if-ne v0, v2, :cond_0

    .line 166
    iget-object v0, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method setOverlayDrawableSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, -0x1

    .line 906
    if-ne p1, v1, :cond_0

    .line 907
    iget v0, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    iput v0, p0, Landroid/widget/FastScroller;->mOverlayWidth:I

    .line 912
    :goto_0
    if-ne p2, v1, :cond_1

    .line 913
    iget v0, p0, Landroid/widget/FastScroller;->mOverlaySize:I

    iput v0, p0, Landroid/widget/FastScroller;->mOverlayHeight:I

    .line 917
    :goto_1
    return-void

    .line 909
    :cond_0
    iput p1, p0, Landroid/widget/FastScroller;->mOverlayWidth:I

    goto :goto_0

    .line 915
    :cond_1
    iput p2, p0, Landroid/widget/FastScroller;->mOverlayHeight:I

    goto :goto_1
.end method

.method public setScrollbarPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 186
    if-nez p1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 190
    :cond_0
    :goto_0
    iput p1, p0, Landroid/widget/FastScroller;->mPosition:I

    .line 191
    packed-switch p1, :pswitch_data_0

    .line 194
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableRight:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    :goto_1
    return-void

    .line 187
    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    .line 197
    :pswitch_0
    iget-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawableLeft:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Landroid/widget/FastScroller;->mOverlayDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public setState(I)V
    .locals 6
    .parameter "state"

    .prologue
    .line 207
    packed-switch p1, :pswitch_data_0

    .line 225
    :goto_0
    :pswitch_0
    iput p1, p0, Landroid/widget/FastScroller;->mState:I

    .line 226
    invoke-direct {p0}, Landroid/widget/FastScroller;->refreshDrawableState()V

    .line 227
    return-void

    .line 209
    :pswitch_1
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 210
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 213
    :pswitch_2
    iget v1, p0, Landroid/widget/FastScroller;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 214
    invoke-direct {p0}, Landroid/widget/FastScroller;->resetThumbPos()V

    .line 218
    :cond_0
    :pswitch_3
    iget-object v1, p0, Landroid/widget/FastScroller;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/widget/FastScroller;->mScrollFade:Landroid/widget/FastScroller$ScrollFade;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 221
    :pswitch_4
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 222
    .local v0, viewWidth:I
    iget-object v1, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget v2, p0, Landroid/widget/FastScroller;->mThumbW:I

    sub-int v2, v0, v2

    iget v3, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v4, p0, Landroid/widget/FastScroller;->mThumbY:I

    iget v5, p0, Landroid/widget/FastScroller;->mThumbH:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method setTextPaintColor(I)V
    .locals 1
    .parameter "paintColor"

    .prologue
    .line 934
    iget-object v0, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    return-void
.end method

.method setTextPaintSize(I)V
    .locals 2
    .parameter "paintSize"

    .prologue
    .line 925
    iget-object v0, p0, Landroid/widget/FastScroller;->mPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 926
    return-void
.end method

.method startPendingDrag()V
    .locals 4

    .prologue
    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/FastScroller;->mPendingDrag:Z

    .line 710
    iget-object v0, p0, Landroid/widget/FastScroller;->mList:Landroid/widget/AbsListView;

    iget-object v1, p0, Landroid/widget/FastScroller;->mDeferStartDrag:Ljava/lang/Runnable;

    const-wide/16 v2, 0xb4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 711
    return-void
.end method

.method stop()V
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FastScroller;->setState(I)V

    .line 312
    return-void
.end method
