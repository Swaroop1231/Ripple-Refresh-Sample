//
//  ViewController.m
//  RippleSample
//
//  Created by Satya Swaroop on 7/22/13.
//  Copyright (c) 2013 Satya Swaroop. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@end

@implementation ViewController
@synthesize rippleTable;
@synthesize rippleArray;
@synthesize lastAnimation;
@synthesize animation4;

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title=@"Ripple Refresh";
   
    rippleArray=[[NSMutableArray alloc]initWithObjects:@"USA",@"Malyasia",@"Canada",@"Singapor",@"Russia",@"Pakisthan",@"Turkey",@"Israil",@"Egypt",nil];
    
    UIBarButtonItem *anotherButton = [[UIBarButtonItem alloc] initWithTitle:@"Ripple" style:UIBarButtonItemStylePlain target:self action:@selector(refreshPropertyList)];
    self.navigationItem.rightBarButtonItem = anotherButton;
    rippledOnce=NO;
    
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
   {
    
        return [rippleArray count];
   
   }

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 60;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //5
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [rippleArray objectAtIndex:indexPath.row];
    
    return cell;

}


-(void)refreshPropertyList
{
    if (rippledOnce==NO)
    {
        
       animation4 = [CATransition animation];
    animation4.delegate = self;
    animation4.duration = 2.0f ;
    animation4.timingFunction = UIViewAnimationCurveEaseInOut;
	animation4.fillMode = kCAFillModeForwards;
	animation4.endProgress = 0.8f;
	animation4.removedOnCompletion = NO;
    animation4.type = @"rippleEffect";
    rippleArray=[[NSMutableArray alloc]initWithObjects:@"China",@"Japan",@"Brazil",@"South Africa",@"Italy",@"South Korea",@"Indonesia",nil];
 
 
        
        rippledOnce=YES;
    
     }
    else
    {
      
    rippleArray=[[NSMutableArray alloc]initWithObjects:@"USA",@"Malyasia",@"Canada",@"Singapor",@"Russia",@"Pakisthan",@"Turkey",@"Israil",@"Egypt",@"Dubai",@"Brune",@"England",nil];
         rippledOnce=NO;
        
        
    }
      
    [self.view.layer addAnimation:animation4 forKey:@"animation"];
	self.lastAnimation = animation4;
    [self.view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
				isHalfAnimation = YES;
    
    [rippleTable reloadData];

}


/*
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
	if (isHalfAnimation)
    {
		self.lastAnimation.duration = 0.5f - self.lastAnimation.duration;
		self.lastAnimation.startProgress = lastAnimation.endProgress;
		self.lastAnimation.endProgress = 1;
		self.lastAnimation.fillMode = kCAFillModeRemoved;
		[self.view.layer removeAnimationForKey:@"animation"];
		[self.view.layer addAnimation:self.lastAnimation forKey:@"animation"];
		[self.view exchangeSubviewAtIndex:1 withSubviewAtIndex:0];
		isHalfAnimation = NO;
		
		for (int i = 0; i < [self.view.subviews count]; i++)
        {
			[[self.view.subviews objectAtIndex:i] setUserInteractionEnabled:YES];
		}
	}
}
*/



@end
