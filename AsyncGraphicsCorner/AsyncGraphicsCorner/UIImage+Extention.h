//
//  UIImage+Extention.h
//  AsyncGraphicsCorner
//
//  Created by 刘宏立 on 16/10/12.
//  Copyright © 2016年 lhl. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Extention)

- (void)hl_cornerImageWithSize:(CGSize)size fillColor:(UIColor *)fillColor completion:(void(^)(UIImage *image))completion;

@end
