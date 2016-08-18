//
//  ViewController.m
//  landScreen
//
//  Created by jun zhao on 16/8/18.
//  Copyright © 2016年 jun zhao. All rights reserved.
//

#import "ViewController.h"
#import "secondViewController.h"
#import "ThirdViewController.h"
#import "FourthViewController.h"
@interface ViewController ()
@property (nonatomic, strong) NSArray *titleArr;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view,typically from a nib.
    
    self.titleArr = @[@"present",@"push",@"push-invoke"];

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.titleArr.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    cell.textLabel.text = self.titleArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
        case 0:{
            [self presentViewController:[[secondViewController alloc] init] animated:YES completion:nil];
        }
            
            break;
        case 1:{
            [self.navigationController pushViewController:[[FourthViewController alloc] init] animated:YES];
        }
            
            break;
        case 2:{
             [self.navigationController pushViewController:[[ThirdViewController alloc] init] animated:YES];
        }
            break;
            
        default:
            break;
    }
}


#pragma mark -- need

-(BOOL)shouldAutorotate{
    return false;
}

- (UIInterfaceOrientationMask)supportedInterfaceOrientations {
    return UIInterfaceOrientationMaskPortrait;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
