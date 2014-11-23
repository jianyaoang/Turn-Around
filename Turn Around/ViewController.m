//
//  ViewController.m
//  Turn Around
//
//  Created by Jian Yao Ang on 11/23/14.
//  Copyright (c) 2014 Jian Yao Ang. All rights reserved.
//

#import "ViewController.h"
#import <QuartzCore/QuartzCore.h>

#define pi 3.142

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIImageView *theImageView;
@property (strong, nonatomic) IBOutlet UIView *theView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.theImageView.image = [UIImage imageNamed:@"jlaw"];
}

- (IBAction)onTurnAroundButtonPressed:(id)sender
{
    CATransform3D transform = CATransform3DIdentity;
    
    transform.m34 = 1.0 / -700;
    
    transform = CATransform3DRotate(transform, 70 * pi / 180, 0.0, 1, 0.0);
    
    self.theImageView.layer.transform = transform;
}


@end
