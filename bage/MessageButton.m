//
//  MessageButton.m
//  bage
//
//  Created by zhang on 2018/8/14.
//  Copyright © 2018年 zhang. All rights reserved.
//

#import "MessageButton.h"
@interface MessageButton()
@property(nonatomic,strong)UILabel * bageLabel;
@end
@implementation MessageButton
#define pictuerwidth 30
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.titleLabel.font = [UIFont systemFontOfSize:12.0];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
    
        UILabel * label = [[UILabel alloc]init];
        label.text =_count;
        label.backgroundColor = [UIColor greenColor];
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:12.0];
        label.textAlignment = NSTextAlignmentCenter;
        [label sizeToFit];
        label.layer.cornerRadius = label.frame.size.height*0.5;
        label.layer.masksToBounds = YES;
        [self addSubview:label];
        _bageLabel = label;
    }
    return self;
}
-(void)setCount:(NSString*)count{
    _count = count;
    _bageLabel.text = count;
    [self setNeedsLayout];
}

- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat height = self.frame.size.height;
    CGFloat width =  self.frame.size.width;
   //设置titlelabel的frame
    [self.titleLabel sizeToFit];
    CGRect titleRect = self.titleLabel.frame;
    titleRect = CGRectMake(0, height-self.titleLabel.frame.size.height, width,self.titleLabel.frame.size.height );
    self.titleLabel.frame = titleRect;
   
    //设置按钮图片frame
    CGRect imageRect = self.imageView.frame;
    imageRect = CGRectMake((width-pictuerwidth)*0.5, height-pictuerwidth-self.titleLabel.frame.size.height, pictuerwidth, pictuerwidth);
    self.imageView.frame = imageRect;
   //设置bagelabel的frame
    [_bageLabel sizeToFit];
    _bageLabel.center = CGPointMake((width-pictuerwidth)*0.5+self.imageView.frame.size.width, height-pictuerwidth-self.titleLabel.frame.size.height+3);
  
        CGRect fram = _bageLabel.frame;
        fram.size.height = pictuerwidth*0.5;
    if ([_count integerValue]<99) {
        fram.size.width =  fram.size.height;
    }
        _bageLabel.frame = fram;
        _bageLabel.layer.cornerRadius = 7.5;
    
}
@end
