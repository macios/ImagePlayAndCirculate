//
//  ViewController.m
//  ImagePlayAndCirculate
//
//  Created by huawen on 15/9/22.
//  Copyright © 2015年 oc. All rights reserved.
//

#define XWide self.view.frame.size.width

#import "ViewController.h"
#import "ImageCircleView.h"

@interface ViewController ()<UIScrollViewDelegate>
{
    NSMutableArray *_dataArr;//存放图片的数组
}
@property (strong, nonatomic)UIScrollView *scrollview;
@property (strong, nonatomic)UIPageControl *pageControl;
@property (nonatomic, strong)NSTimer *timer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    ImageCircleView *imageView = [[ImageCircleView alloc]initWithFrame:CGRectMake(0, 64, XWide, 100) andImageType:ImageData andImageArr:@[UIImageJPEGRepresentation([UIImage imageNamed:@"火影01"],0.5) ,UIImageJPEGRepresentation([UIImage imageNamed:@"火影02"],0.5),UIImageJPEGRepresentation([UIImage imageNamed:@"火影03"],0.5),UIImageJPEGRepresentation([UIImage imageNamed:@"火影04"],0.5)] andCurrentPageColor:[UIColor blueColor] andOtherPageColor:[UIColor lightGrayColor] andTime:2 andFather:self.view];
    
    imageView.chickBtn = ^(int index){
        [self process:index];
    };
}

-(void)process:(int)index{
    NSLog(@"%d",index);
}

@end