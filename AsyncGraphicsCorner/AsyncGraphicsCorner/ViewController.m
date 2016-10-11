//
//  ViewController.m
//  AsyncGraphicsCorner
//
//  Created by 刘宏立 on 16/10/12.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import "ViewController.h"
#import "UIImage+Extention.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupUI];
}


- (void)setupUI {
    
    
    UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    
    iv.center = self.view.center;
    
    [self.view addSubview:iv];
    
    UIImage *image = [UIImage imageNamed:@"28"];
    iv.image = [image hl_cornerImageWithSize:iv.bounds.size fillColor:[UIColor whiteColor]];
    
}

@end
