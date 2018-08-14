//
//  ViewController.m
//  bage
//
//  Created by zhang on 2018/8/14.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "ViewController.h"
#import "MessageButton.h"
@interface ViewController ()
@property(nonatomic,strong) MessageButton * btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MessageButton * btn = [[MessageButton alloc]init];
    [btn setImage:[UIImage imageNamed:@"grade_normal@2x.png"] forState:UIControlStateNormal];
  
   
    [btn setTitle:@"我的收藏" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    btn.count = @"99+";
    btn.frame = CGRectMake(100, 100, 50, 50);
    [self.view addSubview:btn];
    
  
    _btn = btn;
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
     _btn.count = @"11";
}



@end
