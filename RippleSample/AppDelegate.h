//
//  AppDelegate.h
//  RippleSample
//
//  Created by Satya Swaroop on 7/22/13.
//  Copyright (c) 2013 Satya Swaroop. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate,UINavigationControllerDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) ViewController *viewController;

@property (strong, nonatomic) UINavigationController *navController;
@end
