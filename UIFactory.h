//
//  UIFactory.h
//  iHouse
//
//  Created by langyue on 16/3/31.
//  Copyright © 2016年 langyue. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>



typedef void (^actionBlock)(UIImageView* imgView);





@interface UIFactory : NSObject



/*
 *
 *   UILabel
 *
 *
 */

//创建Label
+(UILabel*)makeLabel;
//创建Label到某个父视图
+(UILabel*)makeLabelToView:(UIView*)superView;
//文字居中Label
+(UILabel*)makeLabel_TextAlignment:(NSTextAlignment)alignment ToView:(UIView*)superView;
//创建特定文字颜色Label
+(UILabel*)makeLabel_TextColor:(UIColor*)color ToView:(UIView*)superView;
//创建 文字居中、特定文字颜色Label
+(UILabel*)makeLabel_TextColor:(UIColor*)color Alignment:(NSTextAlignment)alignment ToView:(UIView*)superView;
//创建背景颜色Label
+(UILabel*)makeLabel_BgColor:(UIColor*)color ToView:(UIView*)superView;
//创建背景颜色、文字颜色Label
+(UILabel*)makeLabel_BgColor:(UIColor*)bgColor TextColor:(UIColor*)textColor ToView:(UIView*)superView;
//创建圆角Label
+(UILabel*)makeLabel_cornerRadius:(CGFloat)radius ToView:(UIView*)superView;
//创建圆角 文字居中Label
+(UILabel*)makeLabel_cornerRadiusAndTextCenter:(CGFloat)radius ToView:(UIView*)superView;




/*
 *
 *   UIView
 *
 *
 */



//创建View
+(UIView*)makeView;
//创建View到某个父视图
+(UIView*)makeView_ToView:(UIView*)superView;
//创建背景颜色View 到某个父视图
+(UIView*)makeView_BgColor:(UIColor*)bgColor toView:(UIView*)superView;
//创建  圆角View  到某个视图
+(UIView*)makeView_CornerRadius:(CGFloat)radius ToView:(UIView*)superView;
//创建 圆角 + 背景色 View 到某个父视图
+(UIView*)makeView_CornerRadius:(CGFloat)radius BgColor:(UIColor*)bgColor ToView:(UIView*)superView;




/*
*
*   UIButton
*
*
*/





+(UIButton*)makeBtn;
//背景颜色Button
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor;
//title  Button
+(UIButton*)makeBtn_Title:(NSString*)title;
// 背景颜色+title   Button
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor TitleColor:(UIColor*)titleColor;
// Image   Button
+(UIButton*)makeBtn_Image:(UIImage*)image;
// Image + SelectedImage   Button
+(UIButton*)makeBtn_Image:(UIImage*)image selectedImage:(UIImage*)selectImage;
//创建按钮到父视图
+(UIButton*)makeButton_ToView:(UIView*)superView;
//创建 背景色按钮 到父视图
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor ToView:(UIView*)superView;
//创建 title按钮 到父视图
+(UIButton*)makeBtn_Title:(NSString*)title ToView:(UIView*)superView;
//创建 背景色 标题颜色 按钮 到父视图
+(UIButton*)makeBtn_BgColor:(UIColor*)bgColor TitleColor:(UIColor*)titleColor ToView:(UIView*)superView;
//创建 图片按钮 到父视图
+(UIButton*)makeBtn_Image:(UIImage*)image ToView:(UIView*)superView;
//创建 图片按钮+选中图片 按钮 到父视图
+(UIButton*)makeBtn_Image:(UIImage*)image selectedImage:(UIImage*)selectImage ToView:(UIView*)superView;
//创建 点击事件 按钮
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector;
//创建点击事件按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector ToView:(UIView*)superView;
//创建 点击事件+带图片 按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Image:(UIImage*)image ToView:(UIView*)superView;
//创建 点击事件+图片+选中图片  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Image:(UIImage*)image SelectedImage:(UIImage*)selectImage ToView:(UIView*)superView;
//创建 背景色+点击事件  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector BgColor:(UIColor*)bgColor ToView:(UIView*)superView;
//创建 Title+点击事件  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title ToView:(UIView*)superView;
//创建 Title+点击事件+背景色  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title BgColor:(UIColor*)bgColor ToView:(UIView*)superView;

//创建 Title+TitleColor+点击事件+背景色  按钮到 某个父视图
+(UIButton*)makeBtn_Target:(id)target Selector:(SEL)selector Title:(NSString*)title TitleColor:(UIColor*)titleColor BgColor:(UIColor*)bgColor ToView:(UIView*)superView;





/*
*   创建一个UIImageView
*
*/

//创建一个ImageView
+(UIImageView*)makeImageView;
//创建一个图片 ImageView
+(UIImageView*)makeImageView_Image:(UIImage*)image;
//创建一个 手势+事件+图片 UIImageView
+(UIImageView*)makeImageView_Image:(UIImage*)image Target:(id)target TapAction:(SEL)action;
//创建一个 手势+事件+图片 UIImageVie  Block
+(UIImageView*)makeImageView_Image:(UIImage *)image TapActionBlock:(void(^)(UIImageView* imgView))action;
//创建有一个 视图 到 父视图
+(UIImageView*)makeImageView_ToView:(UIView*)superView;
//创建一个ImageView 到父视图
+(UIImageView*)makeImageView_Image:(UIImage *)image ToView:(UIView*)superView;


/*
 *创建ScrollView
 *
 */
+(UIScrollView*)makeAScrollView;
+(UIScrollView*)makeScrollView_ToView:(UIView*)superView;




@end
