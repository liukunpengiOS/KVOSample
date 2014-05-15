//
//  KPViewController.m
//  kvo1
//
//  Created by qingyun on 14-5-15.
//  Copyright (c) 2014年 LiuKunPeng. All rights reserved.
//

#import "KPViewController.h"
#import "Walker.h"

@interface KPViewController ()

@property (weak, nonatomic) IBOutlet UILabel *AgeLabel;
@property (nonatomic,retain) Walker *walker;

@end

@implementation KPViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _walker = [[Walker alloc]initWithName:@"坤鹏" age:25];
   
    //在这里注册kvo做为观察者
    [_walker addObserver:self forKeyPath:@"age"
                 options:NSKeyValueObservingOptionNew context:nil];
    
    _AgeLabel.text = @"坤鹏现在的年龄是:25";
    
    
}

- (IBAction)changeAge:(id)sender {

    //在这里触发事件
    _walker.age += 5;
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    //在这里执行回调方法，来同步改变的属性值
    if ([keyPath isEqualToString:@"age"] && object == _walker) {
        
        _AgeLabel.text = [NSString stringWithFormat:@"%@现在的年龄是:%d",_walker.name,_walker.age];

    }
    
}

//最后在这里移除观察
- (void)dealloc
{
    [_walker removeObserver:self forKeyPath:@"age"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
}

@end
