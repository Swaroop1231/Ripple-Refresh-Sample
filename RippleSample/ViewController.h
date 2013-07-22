//
//  ViewController.h
//  RippleSample
//
//  Created by Satya Swaroop on 7/22/13.
//  Copyright (c) 2013 Satya Swaroop. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *rippleTable;
    NSMutableArray *rippleArray;
    BOOL rippledOnce;
   BOOL isHalfAnimation;
    CATransition *lastAnimation;
}

@property (nonatomic,retain) CATransition *lastAnimation;
@property (nonatomic,retain) CATransition *animation4;

@property(nonatomic,strong) IBOutlet UITableView *rippleTable;
@property(nonatomic,strong)  NSMutableArray *rippleArray;

@end
