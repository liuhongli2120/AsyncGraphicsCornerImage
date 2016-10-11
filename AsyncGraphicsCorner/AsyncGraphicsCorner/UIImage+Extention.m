//
//  UIImage+Extention.m
//  AsyncGraphicsCorner
//
//  Created by 刘宏立 on 16/10/12.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import "UIImage+Extention.h"

@implementation UIImage (Extention)

- (void)hl_cornerImageWithSize:(CGSize)size fillColor:(UIColor *)fillColor completion:(void (^)(UIImage *))completion {
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        // 创建上下文
        UIGraphicsBeginImageContextWithOptions(size, YES, 0);
        
        CGRect rect = CGRectMake(0, 0, size.width, size.height);
        
        // 设置填充颜色
        [fillColor setFill];
        UIRectFill(rect);
        
        //贝塞尔路径绘制
        UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
        
        [path addClip];
        
        // 绘制图像
        [self drawInRect:rect];
        
        // 获取绘制结果
        UIImage *result = UIGraphicsGetImageFromCurrentImageContext();
        
        // 关闭上下文
        UIGraphicsEndImageContext();
        
        // 完成回调
        dispatch_async(dispatch_get_main_queue(), ^{
            if (completion != nil) {
                completion(result);
            }
        });
    });
}

@end
