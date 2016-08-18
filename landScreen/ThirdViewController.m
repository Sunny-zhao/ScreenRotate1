//
//  ThirdViewController.m
//  landScreen
//
//  Created by jun zhao on 16/8/18.
//  Copyright © 2016年 jun zhao. All rights reserved.
//

#import "ThirdViewController.h"
#import "Masonry.h"
@interface ThirdViewController ()
@property (nonatomic,strong) UILabel *label;

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label = [[UILabel alloc] init];
    self.label.backgroundColor = [UIColor blueColor];
    self.label.text = @"11111111111";
    [self.view addSubview:self.label];
    self.view.backgroundColor = [UIColor redColor];
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.height.equalTo(@100);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewWillAppear:(BOOL)animated
{
    
    if([[UIDevice currentDevice]respondsToSelector:@selector(setOrientation:)]) {
   
          SEL selector = NSSelectorFromString(@"setOrientation:");

           NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:[UIDevice instanceMethodSignatureForSelector:selector]];

           [invocation setSelector:selector];

           [invocation setTarget:[UIDevice currentDevice]];
  
            int val = UIInterfaceOrientationLandscapeRight;//横屏
 
            [invocation setArgument:&val atIndex:2];
       
          [invocation invoke];

    
       }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
