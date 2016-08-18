//
//  secondViewController.m
//  landScreen
//
//  Created by jun zhao on 16/8/18.
//  Copyright © 2016年 jun zhao. All rights reserved.
//

#import "secondViewController.h"
#import "Masonry.h"

@interface secondViewController ()
@property (nonatomic,strong) UIButton *backBtn;

@end

@implementation secondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    self.backBtn = [[UIButton alloc] init];
    self.backBtn.backgroundColor = [UIColor blueColor];
    [self.backBtn setTitle:@"返回上一级" forState:UIControlStateNormal];
    [self.view addSubview:self.backBtn];
    [self.backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    
    [self.backBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.bottom.equalTo(self.view);
        make.height.equalTo(@100);
    }];
}

- (void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
