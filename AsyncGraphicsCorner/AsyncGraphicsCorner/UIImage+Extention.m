//
//  UIImage+Extention.m
//  AsyncGraphicsCorner
//
//  Created by 刘宏立 on 16/10/12.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import "UIImage+Extention.h"

@implementation UIImage (Extention)

- (UIImage *)hl_cornerImageWithSize:(CGSize)size {
    
    // 创建上下文
    UIGraphicsBeginImageContextWithOptions(size, YES, 0);
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    
    //贝塞尔路径绘制
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    
    [path addClip];
    
    // 绘制图像
    [self drawInRect:rect];
    
    // 获取绘制结果
    UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    return result;
}

@end
