//
//  UIFactory.m
//  iHouse
//
//  Created by langyue on 16/3/31.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import "UIFactory.h"
#import <objc/runtime.h>

@implementation UIFactory


//创建Label
+(UILabel*)makeLabel{
    UILabel * label = [UILabel new];
    return label;
}

//创建Label到某个父视图
+(UILabel*)makeLabelToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabel];
    [superView addSubview:label];
    return label;
}

//文字居中Label
+(UILabel*)makeLabel_TextAlignment:(NSTextAlignment)alignment ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabelToView:superView];
    label.textAlignment = alignment;
    return label;
}

//创建特定文字颜色Label
+(UILabel*)makeLabel_TextColor:(UIColor*)color ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabelToView:superView];
    label.textColor = color;
    return label;
}


//创建 文字居中、特定文字颜色Label
+(UILabel*)makeLabel_TextColor:(UIColor*)color Alignment:(NSTextAlignment)alignment ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabel_TextColor:color ToView:superView];
    label.textAlignment = alignment;
    return label;
}


//创建背景颜色Label
+(UILabel*)makeLabel_BgColor:(UIColor*)color ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabelToView:superView];
    label.backgroundColor = color;
    return label;
}


//创建背景颜色、文字颜色Label
+(UILabel*)makeLabel_BgColor:(UIColor*)bgColor TextColor:(UIColor*)textColor ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabel_BgColor:bgColor ToView:superView];
    label.textColor = textColor;
    return label;
}


//创建圆角Label
+(UILabel*)makeLabel_cornerRadius:(CGFloat)radius ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabelToView:superView];
    label.layer.cornerRadius = radius;
    label.layer.masksToBounds = YES;
    return label;
}
//创建圆角 文字居中Label
+(UILabel*)makeLabel_cornerRadiusAndTextCenter:(CGFloat)radius ToView:(UIView*)superView{
    UILabel * label = [UIFactory makeLabel_cornerRadius:radius ToView:superView];
    label.textAlignment = NSTextAlignmentCenter;
    return label;
}
/*
*
*   创建UIView
*
*/

+(UIView*)makeView{
    return [UIView new];
}

+(UIView*)makeView_ToView:(UIView*)superView{
    UIView * view = [UIFactory makeView];
    [superView addSubview:view];
    return view;
}


+(UIView*)makeView_BgColor:(UIColor*)bgColor toView:(UIView*)superView{
    UIView * view = [UIFactory makeView_ToView:superView];
    view.backgroundColor = bgColor;
    return view;
}


+(UIView*)makeView_CornerRadius:(CGFloat)radius ToView:(UIView*)superView{
    UIView * view = [UIFactory makeView_ToView:superView];
    view.layer.cornerRadius = radius;
    view.layer.masksToBounds = YES;
    return view;
}

+(UIView*)makeView_CornerRadius:(CGFloat)radius BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    UIView * view = [UIFactory makeView_CornerRadius:radius ToView:superView];
    view.backgroundColor = bgColor;
    return view;
}


//创建手势View
+(UIView*)makeView_Target:(id)target TapAction:(SEL)action{
    
    UIView * view = [UIFactory makeView];
    [view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:target action:action]];
    view.userInteractionEnabled = YES;
    return view;
}

//创建手势View 到某个父视图
+(UIView*)makeView_Target:(id)target TapAction:(SEL)action ToView:(UIView*)superView{
    UIView * view = [UIFactory makeView_ToView:superView];
    view.userInteractionEnabled = YES;
    [view addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:target action:action]];
    return view;
}


//创建手势View
+(UIView*)makeView_Target:(id)target TapAction:(SEL)action BgColor:(UIColor*)bgColor{
    UIView * view = [UIFactory makeView_Target:target TapAction:action];
    view.backgroundColor = bgColor;
    return view;
}

//创建 背景色 + 手势View 到某个父视图
+(UIView*)makeView_Target:(id)target TapAction:(SEL)action BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    UIView * view = [UIFactory makeView_Target:target TapAction:action ToView:superView];
    view.backgroundColor = bgColor;
    return view;
}






/*
 *
 *   创建UIButton
 *
 */


+(UIButton*)makeBtn{
    return [UIButton buttonWithType:UIButtonTypeCustom];
}


//背景颜色Button
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor{
    UIButton * btn = [UIFactory makeBtn];
    btn.backgroundColor = bgColor;
    return btn;
}

//title  Button
+(UIButton*)makeBtn_Title:(NSString*)title{
    UIButton * btn = [UIFactory makeBtn];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}
// 背景颜色+title   Button
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor TitleColor:(UIColor*)titleColor{
    UIButton * btn = [UIFactory makeBtn_BgColor:bgColor];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return btn;
}

// Image   Button
+(UIButton*)makeBtn_Image:(UIImage*)image{
    UIButton * btn = [UIFactory makeBtn];
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}
// Image + SelectedImage   Button
+(UIButton*)makeBtn_Image:(UIImage*)image selectedImage:(UIImage*)selectImage{
    UIButton * btn = [UIFactory makeBtn_Image:image];
    [btn setImage:selectImage forState:UIControlStateSelected];
    return btn;
}



//创建按钮到父视图
+(UIButton*)makeButton_ToView:(UIView*)superView{
    
    UIButton * btn = [UIFactory makeBtn];
    [superView addSubview:btn];
    return btn;
}
//创建 背景色按钮 到父视图
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeButton_ToView:superView];
    btn.backgroundColor = bgColor;
    return btn;
}

//创建 title按钮 到父视图
+(UIButton*)makeBtn_Title:(NSString*)title ToView:(UIView*)superView{
    
    UIButton * btn = [UIFactory makeButton_ToView:superView];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
    
}

//创建 背景色 标题颜色 按钮 到父视图
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor TitleColor:(UIColor*)titleColor ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_BgColor:bgColor ToView:superView];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return btn;
}


//创建 图片按钮 到父视图
+(UIButton*)makeBtn_Image:(UIImage*)image ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeButton_ToView:superView];
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}



//创建 图片按钮+选中图片 按钮 到父视图
+(UIButton*)makeBtn_Image:(UIImage*)image selectedImage:(UIImage*)selectImage ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Image:image ToView:superView];
    [btn setImage:selectImage forState:UIControlStateSelected];
    return btn;
}

//创建 点击事件 按钮
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector{
    UIButton * btn = [UIFactory makeBtn];
    [btn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    return btn;
}

//创建点击事件按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector];
    [superView addSubview:btn];
    return btn;
}


//创建 点击事件+带图片 按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Image:(UIImage*)image ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector ToView:superView];
    [btn setImage:image forState:UIControlStateNormal];
    return btn;
}


//创建 点击事件+图片+选中图片  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Image:(UIImage*)image SelectedImage:(UIImage*)selectImage ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector Image:image ToView:superView];
    [btn setImage:selectImage forState:UIControlStateSelected];
    return btn;
}



//创建 背景色+点击事件  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector ToView:superView];
    [btn setBackgroundColor:bgColor];
    return btn;
}




//创建 Title+点击事件  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector ToView:superView];
    [btn setTitle:title forState:UIControlStateNormal];
    return btn;
}


//创建 Title+点击事件+背景色  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    UIButton * btn = [UIFactory makeBtn_Target:target Selector:selector Title:title ToView:superView];
    [btn setBackgroundColor:bgColor];
    return btn;
}




//创建 Title+TitleColor+点击事件+背景色  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title TitleColor:(UIColor*)titleColor BgColor:(UIColor*)bgColor ToView:(UIView*)superView{
    
    UIButton* btn = [UIFactory makeBtn_Target:target Selector:selector Title:title BgColor:bgColor ToView:superView];
    [btn setTitleColor:titleColor forState:UIControlStateNormal];
    return btn;
}

/*
 *创建ScrollView
 *
 */
+(UIScrollView*)makeAScrollView{
    UIScrollView * scroll = [[UIScrollView alloc] init];
    return scroll;
}


+(UIScrollView*)makeScrollView_ToView:(UIView*)superView{
    UIScrollView * scroll = [UIFactory makeAScrollView];
    [superView addSubview:scroll];
    return scroll;
}



/*
*   创建ImageView
*
*/


//创建一个ImageView
+(UIImageView*)makeImageView{
    UIImageView * imageV = [[UIImageView alloc] init];
    return imageV;
}


+(UIImageView*)makeImageView_ToView:(UIView*)superView{
    UIImageView * imgView = [[UIImageView alloc] init];
    [superView addSubview:imgView];
    return imgView;
}



//创建一个图片 ImageView
+(UIImageView*)makeImageView_Image:(UIImage*)image{
    UIImageView * imgView = [UIFactory makeImageView];
    imgView.image = image;
    return imgView;
}


+(UIImageView*)makeImageView_Image:(UIImage *)image ToView:(UIView*)superView{
    UIImageView * imgV = [UIFactory makeImageView_Image:image];
    [superView addSubview:imgV];
    return imgV;
}



//创建一个 手势+事件+图片 UIImageView
+(UIImageView*)makeImageView_Image:(UIImage*)image Target:(id)target TapAction:(SEL)action{
    
    UIImageView * imgView = [UIFactory makeImageView_Image:image];
    imgView.userInteractionEnabled = YES;
    [imgView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:target action:action]];
    return imgView;
}


+(UIImageView*)makeImageView_Image:(UIImage *)image TapActionBlock:(void(^)(UIImageView* imgView))action{
    
    UIImageView * imgView = [UIFactory makeImageView_Image:image];
    imgView.userInteractionEnabled = YES;
    objc_setAssociatedObject(imgView, "ActionObject", action, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    [imgView addGestureRecognizer:[[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(imgAction:)]];
    
    return imgView;
}


+(void)imgAction:(UITapGestureRecognizer*)tap{
    actionBlock action = objc_getAssociatedObject(tap.view, "ActionObject");
    action((UIImageView*)tap.view);
}






@end
