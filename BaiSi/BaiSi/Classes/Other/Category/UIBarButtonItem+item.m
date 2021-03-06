//
//  UIBarButtonItem+item.m
//  BaiSi
//
//  Created by 孙磊 on 2016/11/15.
//  Copyright © 2016年 Sun. All rights reserved.
//

#import "UIBarButtonItem+item.h"

@implementation UIBarButtonItem (item)

+(UIBarButtonItem *)creatItemWithImage:(UIImage *)image andHighImage:(UIImage *)high addTarget:(id)target action:(SEL)action;
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:high forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    //包装按钮，不然直接添加按钮的话点击范围会有问题
    UIView * containView = [[UIView alloc] initWithFrame:btn.bounds];
    [containView addSubview:btn];
    return [[UIBarButtonItem alloc] initWithCustomView:containView];
}

+(UIBarButtonItem *)creatItemWithImage:(UIImage *)image andSelImage:(UIImage *)sel addTarget:(id)target action:(SEL)action
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setImage:sel forState:UIControlStateSelected];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    //包装按钮，不然直接添加按钮的话点击范围会有问题
    UIView * containView = [[UIView alloc] initWithFrame:btn.bounds];
    [containView addSubview:btn];
    return [[UIBarButtonItem alloc] initWithCustomView:containView];
}

+(UIBarButtonItem *)creatBackItem:(UIImage *)image andHighImage:(UIImage *)high addTarget:(id)target action:(SEL)action title:(NSString *)title
{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:high forState:UIControlStateHighlighted];
    [btn setImage:image forState:UIControlStateNormal];
    [btn setTitle:title forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    [btn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [btn sizeToFit];
    //按钮内容左移
    btn.contentEdgeInsets = UIEdgeInsetsMake(0, -20, 0, 0 );
    
    UIView * view = [[UIView alloc] initWithFrame:btn.bounds];
    [view addSubview:btn];
    
    return [[UIBarButtonItem alloc] initWithCustomView:view];
}

@end
