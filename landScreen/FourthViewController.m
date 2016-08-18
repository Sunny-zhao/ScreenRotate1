//
//  secondViewController.m
//  landScreen
//
//  Created by jun zhao on 16/8/18.
//  Copyright © 2016年 jun zhao. All rights reserved.
//

#import "FourthViewController.h"
#import "Masonry.h"
//#import "CustomNavigationController.h"
//#import "AppDelegate.h"

@interface FourthViewController ()
@property (nonatomic,strong) UILabel *label;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.label = [[UILabel alloc] init];
    self.label.backgroundColor = [UIColor blueColor];
    self.label.text = @"11111111111";
    [self.view addSubview:self.label];
    
    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.height.equalTo(@100);
    }];
}

-(void)viewWillAppear:(BOOL)animated{
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    
    NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}



- (BOOL)shouldAutorotate{
    return YES;
}



- (UIInterfaceOrientationMask)supportedInterfaceOrientations

{
    return UIInterfaceOrientationMaskLandscapeRight;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    
    return UIInterfaceOrientationLandscapeRight;
}

//- (void)updateViewConstraints{
////    
////    [self.label mas_makeConstraints:^(MASConstraintMaker *make) {
////        make.left.right.bottom.equalTo(self.view);
////        make.height.equalTo(@20);
////    }];
//    
//    [super updateViewConstraints];
//}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
