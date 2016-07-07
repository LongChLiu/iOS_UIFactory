//
//  UIFactory.swift
//  NanchangWater
//
//  Created by langyue on 16/5/18.
//  Copyright © 2016年 langyue. All rights reserved.
//

import Foundation
import UIKit



extension UIColor{
    
    
    class  func colorWithHexString(stringToConvert:String)->UIColor?{
        var cString:String = stringToConvert.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()).uppercaseString
        
        if (cString.hasPrefix("#")) {
            cString = (cString as NSString).substringFromIndex(1)
        }
        let rString = (cString as NSString).substringToIndex(2)
        let gString = ((cString as NSString).substringFromIndex(2) as NSString).substringToIndex(2)
        let bString = ((cString as NSString).substringFromIndex(4) as NSString).substringToIndex(2)
        
        var r:CUnsignedInt = 0, g:CUnsignedInt = 0, b:CUnsignedInt = 0;
        NSScanner(string: rString).scanHexInt(&r)
        NSScanner(string: gString).scanHexInt(&g)
        NSScanner(string: bString).scanHexInt(&b)
        return UIColor(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: CGFloat(1))
    }
    
  
    
   
    
}


//MARK Create Label
func makeALabel() -> UILabel {
    let label = UILabel()
    return label
}

//MARK Create Label To SuperView
func makeLabel(ToView superView:UIView)->UILabel{
    let label = makeALabel()
    superView.addSubview(label)
    return label
}

//MARK Create Label AlignmentCenter
func makeLabel_TextAlignment(alignment:NSTextAlignment,superView:UIView)->UILabel{
    let label = makeLabel(ToView: superView)
    label.textAlignment = alignment
    return label
}

//MARK Create Label textColor
func makeLabel(textColor color:UIColor,superView:UIView)->UILabel{
    let label = makeLabel(ToView: superView)
    label.textColor = color
    return label
}


//MARK Create Label AlignmentCenter 、 textColor
func makeLabel(textColor color:UIColor,alignment:NSTextAlignment,toView superView:UIView)->UILabel{
    let label = makeLabel(textColor: color, superView: superView)
    label.textAlignment = alignment
    superView.addSubview(label)
    return label
}

//MARK Create Label
func makeLabel(textColor color:UIColor,alignment:NSTextAlignment,Text text:String,BgColor bgColor:UIColor?,toView superView:UIView)->UILabel{
    let label = makeLabel(textColor: color, alignment: alignment, toView: superView)
    label.backgroundColor = bgColor
    label.text = text
    return label
}




//MARK Create Label bgColor
func makeLabel(BgColor color:UIColor,superView:UIView)->UILabel{
    let label = makeLabel(ToView: superView)
    label.backgroundColor = color
    return label
}


//MARK Create Label bgColor 、title 、 superView
func makeLabel(BgColor bgColor:UIColor,title:String,superView:UIView)->UILabel{
    let label = makeLabel(BgColor: bgColor, superView: superView)
    label.text = title
    return label
}

//MARK Create Label cornerRadius
func makeLabel(cornerRadius:CGFloat,ToView superView:UIView)->UILabel{
    let label = makeLabel(ToView: superView)
    label.layer.cornerRadius = cornerRadius
    label.layer.masksToBounds = true
    return label
}

//MARK Create Label Radius , alignmentCenter
func makeLabel(radius:CGFloat,textAlignment:NSTextAlignment,superView:UIView)->UILabel{
    let label = makeLabel(radius, ToView: superView)
    label.textAlignment = .Center
    return label
}


/*
*
*
*
*/


//MARK Create View

func makeAView()->UIView{
    return UIView()
}

//MARK Create View To SuperView
func makeView(toView superView:UIView)->UIView{
    let view = makeAView()
    superView.addSubview(view)
    return view
}


//MARK Create BgColor To SuperView
func makeView(BgColor bgColor:UIColor,toView superView:UIView)->UIView{
    let  view = makeView(toView: superView)
    view.backgroundColor = bgColor
    return view
}


//MARK Create View ,  Radius, To View
func makeView(CornerRadius radius:CGFloat,ToView superView:UIView)->UIView{
    let view = makeView(toView: superView)
    view.layer.cornerRadius = radius
    view.layer.masksToBounds = true
    return view
}


//MARK Create View ,  Radius, To View
func makeView(CornerRadius radius:CGFloat,BgColor bgColor:UIColor,ToView superView:UIView)->UIView{
    let view = makeView(CornerRadius: radius, ToView: superView)
    view.backgroundColor = bgColor
    return view
}



//MARK Create GestureRecognizer  View
func makeView(Target target:AnyObject,TapAction action:Selector)->UIView{
    let view = makeAView()
    view.addGestureRecognizer(UITapGestureRecognizer(target: target,action: action))
    view.userInteractionEnabled = true
    return view
}


//MARK Create Gesture Recognizer View , to View
func makeView(Target target:AnyObject,TapAction action:Selector,ToView superView:UIView)->UIView{
    let view = makeView(Target: target, TapAction: action)
    superView.addSubview(view)
    return view
}

//MARK Create Gesture Recognizer View ,BgColor, to View
func makeView(Target target:AnyObject,TapAction action:Selector,BgColor bgColor:UIColor)->UIView{
    let view = makeView(Target: target, TapAction: action)
    view.backgroundColor = bgColor
    return view
}

//MARK Create Gesture Recognizer View, BgColor,Target,SuperView
func makeView(Target target:AnyObject,TapAction action:Selector,BgColor bgColor:UIColor,ToView superView:UIView)->UIView{
    let view = makeView(Target: target, TapAction: action, BgColor: bgColor)
    superView.addSubview(view)
    return view
}

/*
 *
 *
 *
 */

//Create TabView

func makeATableView(Frame frame:CGRect,Style style:UITableViewStyle)->UITableView{
    let tabView = UITableView(frame: frame,style: style)
    return tabView
}


func makeTableView(Frame frame:CGRect,Style style:UITableViewStyle,Delegate:UITableViewDelegate?,DataSource:UITableViewDataSource?)->UITableView{
    let tabView = makeATableView(Frame: frame, Style: style)
    tabView.delegate = Delegate
    tabView.dataSource = DataSource
    return tabView
}

func makeTableView(Frame frame:CGRect,Style style:UITableViewStyle,Delegate:UITableViewDelegate?,DataSource:UITableViewDataSource?,ToView superView:UIView)->UITableView{
    let tabView = makeTableView(Frame: frame, Style: style, Delegate: Delegate, DataSource: DataSource)
    superView.addSubview(tabView)
    return tabView
}





/*
*
*
*
*/

//Create Button
func makeAButton()->UIButton{
    return UIButton(type:.Custom)
}

//Create Button , BgColor
func makeButton(BgColor bgColor:UIColor)->UIButton{
    let btn = makeAButton()
    btn.backgroundColor = bgColor
    return btn
}

//MARK Create Button , Title
func makeButton(Title title:String)->UIButton{
    let btn = makeAButton()
    btn.setTitle(title, forState: .Normal)
    return btn
}

//MARK Create Button , TitleColor  BgColor
func makeButton(BgColor bgColor:UIColor,TitleColor titleColor:UIColor)->UIButton{
    let btn = makeButton(BgColor: bgColor)
    btn.setTitleColor(titleColor, forState: .Normal)
    return btn
}

//MARK Create Button , Image
func makeButton(Image image:UIImage)->UIButton{
    let  btn = makeAButton()
    btn.setImage(image, forState: .Normal)
    return btn
}

//MARK Create Button, Image 、SelectImage
func makeButton(Image image:UIImage,SelectedImg selectImg:UIImage)->UIButton{
    let btn = makeButton(Image: image)
    btn.setImage(selectImg, forState: .Selected)
    return btn
}




//MARK Create Button to SuperView

func makeButton(ToView superView:UIView)->UIButton{
    let btn = makeAButton()
    superView.addSubview(btn)
    return btn
}


//MARK Create Button   BgColor to SuperView
func makeButton(BgColor bgColor:UIColor,ToView superView:UIView)->UIButton{
    let  btn = makeButton(ToView: superView)
    btn.backgroundColor = bgColor
    return btn
}

//MARK Create Button , Title ToSuperView
func makeButton(Title title:String,ToView superView:UIView)->UIButton{
    let btn = makeButton(ToView: superView)
    btn.setTitle(title, forState: .Normal)
    return btn
}
//MARK Create Button , BgColor TitleColor ToView
func makeButton(BgColor bgColor:UIColor,TitleColor titleColor:UIColor,ToView superView:UIView)->UIButton{
    let btn = makeButton(BgColor: bgColor, ToView: superView)
    btn.setTitleColor(titleColor, forState: .Normal)
    return btn
}


//MARK Create Button, Image
func makeButton(Image img:UIImage?,ToView superView:UIView)->UIButton{
    let btn = makeButton(ToView: superView)
    btn.setImage(img, forState: .Normal)
    return btn
}

//MARK Create Button, Image , SelectImage ToView
func makeButton(Image image:UIImage,SelectedImage selectImg:UIImage,ToView superView:UIView)->UIButton{
    let  btn = makeButton(Image: image, ToView: superView)
    btn.setImage(selectImg, forState: .Selected)
    return btn
}

//MARK Create Click Button
func makeButton(Target target:AnyObject,Selector selector:Selector)->UIButton{
    let btn = makeAButton()
    btn.addTarget(target, action: selector, forControlEvents: .TouchUpInside)
    return btn
}

func makeButton(Target target:AnyObject,Selector selector:Selector,ToView superView:UIView?)->UIButton{
    let btn = makeButton(Target: target, Selector: selector)
    
    if superView != nil {
        superView!.addSubview(btn)
    }
    
    return btn
}


//MARK Create Button, Click\Image\ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,Image img:UIImage?,ToView superView:UIView)->UIButton!{
    let btn = makeButton(Target: target, Selector: selector, ToView: superView)
    btn.setImage(img, forState: .Normal)
    return btn
}


//MARK Create Button, Click\Image\SelectImg\ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,Image img:UIImage,SelectImg selectImg:UIImage,ToView superView:UIView)->UIButton{
    let btn = makeButton(Target: target, Selector: selector, Image: img, ToView: superView)
    btn.setImage(selectImg, forState: .Selected)
    return btn
}


//MARK Create Button, BgColor \Click ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,BgColor bgColor:UIColor?,ToView superView:UIView)->UIButton{
    let  btn = makeButton(Target: target, Selector: selector, ToView: superView)
    btn.backgroundColor = bgColor
    return btn
}


//MARK Create Button  ,Title Button ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,Title title:String,ToView superView:UIView)->UIButton{
    let btn = makeButton(Target: target, Selector: selector, ToView: superView)
    btn.setTitle(title, forState: .Normal)
    return btn
}



//MARK Create Button, Click BgColor ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,Title title:String,BgColor bgColor:UIColor,ToView superView:UIView)->UIButton{
    let btn = makeButton(Target: target, Selector: selector, Title: title, ToView: superView)
    btn.backgroundColor = bgColor
    return btn
}


//MARK Create Button, Title\TitleColor\Click\BgColor ToView
func makeButton(Target target:AnyObject,Selector selector:Selector,Title title:String,TitleColor titleColor:UIColor,BgColor bgColor:UIColor?,ToView superView:UIView)->UIButton{
    let btn = makeButton(Target: target, Selector: selector, BgColor: bgColor, ToView: superView)
    btn.setTitle(title, forState: .Normal)
    btn.setTitleColor(titleColor, forState: .Normal)
    return btn
}



/*
 *   Create ImageView
 *
 */

func makeAImageView()->UIImageView{
    return UIImageView()
}

func makeImageView(ToView superView:UIView)->UIImageView{
    let imgView = makeAImageView()
    superView.addSubview(imgView)
    return imgView
}


func makeImageView(image:UIImage?)->UIImageView{
    let imgView = makeAImageView()
    imgView.image = image
    return imgView
}

func makeImageView(image:UIImage?,ToView superView:UIView)->UIImageView{
    let imgView = makeImageView(image)
    superView.addSubview(imgView)
    return imgView
}



func makeImageView(Image img:UIImage,Target target:AnyObject,TapAction action:Selector)->UIImageView{
    let imgView = makeImageView(img)
    imgView.userInteractionEnabled = true
    imgView.addGestureRecognizer(UITapGestureRecognizer(target: target,action: action))
    return imgView
}



//=======

func makeAScrollView()->UIScrollView{
    let scroll = UIScrollView()
    return scroll
}

func makeScrollView(ToView superView:UIView)->UIScrollView{
    let scroll = makeAScrollView()
    superView.addSubview(scroll)
    return scroll
}






//Interface for dealing with gesture recognizers via native swift closure syntax
extension UIView{
    
    
    typealias tapResponseClosure = (tap:UITapGestureRecognizer)->Void
    typealias panResponseClosure = (pan:UIPanGestureRecognizer)->Void
    typealias swipeResponseClosure = (swipe:UISwipeGestureRecognizer)->Void
    typealias pinchResponseClosure = (pinch:UIPinchGestureRecognizer)->Void
    typealias longPressResponseClosure = (longPress:UILongPressGestureRecognizer)->Void
    typealias rotationResponseClosure = (ratation:UIRotationGestureRecognizer)->Void
    
    
    private struct ClosureStorage{
        static var tapClosureStorage : [UITapGestureRecognizer : tapResponseClosure] = [:]
        static var panClosureStorage : [UIPanGestureRecognizer : panResponseClosure] = [:]
        static var swipeClosureStorage : [UISwipeGestureRecognizer : swipeResponseClosure] = [:]
        static var pinchClosureStorage : [UIPinchGestureRecognizer : pinchResponseClosure] = [:]
        static var longPressClosureStorage : [UILongPressGestureRecognizer: longPressResponseClosure] = [:]
        static var rotationClosureStorage : [UIRotationGestureRecognizer:rotationResponseClosure] = [:]
    }
    
    
    private struct Swizzler{
        
        private static var OnceToken : dispatch_once_t = 0
        static func swizzle(){
            dispatch_once(&OnceToken) {
            
                let UIViewClass : AnyClass! = NSClassFromString("UIView")
                let originalSelector = #selector(UIView.removeFromSuperview)
                let swizzleSelector = #selector(UIView.swizzled_removeFromSuperview)
                let original : Method = class_getInstanceMethod(UIViewClass, originalSelector)
                let swizzle: Method = class_getInstanceMethod(UIViewClass, swizzleSelector)
                method_exchangeImplementations(original, swizzle)
                
            }
        }
    }
    
    
    
    func swizzled_removeFromSuperview(){
        self.removeGestureRecognizersFromStorage()
        self.swizzled_removeFromSuperview()
    }
    
    
    func removeGestureRecognizersFromStorage(){
        
        if let gestureRecognizers = self.gestureRecognizers{
            
            
            for recognizer:UIGestureRecognizer in gestureRecognizers as [UIGestureRecognizer] {
                
                
                if let tap = recognizer as? UITapGestureRecognizer {
                    ClosureStorage.tapClosureStorage[tap] = nil
                }else if let pan = recognizer as? UIPanGestureRecognizer{
                    ClosureStorage.panClosureStorage[pan] = nil
                }else if let swipe = recognizer as? UISwipeGestureRecognizer{
                    ClosureStorage.swipeClosureStorage[swipe] = nil
                }else if let pinch = recognizer as? UIPinchGestureRecognizer {
                    ClosureStorage.pinchClosureStorage[pinch] = nil
                }
                else if let rotation = recognizer as? UIRotationGestureRecognizer {
                    ClosureStorage.rotationClosureStorage[rotation] = nil
                }
                else if let longPress = recognizer as? UILongPressGestureRecognizer {
                    ClosureStorage.longPressClosureStorage[longPress] = nil
                }
                
            }
            
        }
       
    }
    
    
    
    //MARK: Taps
    func addSingleTapGestureRecognizerWithResponder(responder:tapResponseClosure){
        
        self.addTapGestureRecognizerForNumberOfTaps(withResponder: responder)
    }
    
    
    func addDoubleTapGestureRecognizerWithResponder(responder:tapResponseClosure){
        self.addTapGestureRecognizerForNumberOfTaps(2,withResponder:responder)
    }
    
    func addTapGestureRecognizerForNumberOfTaps(numberOfTaps:Int = 1,numberOfTouches: Int = 1,withResponder responder:tapResponseClosure){
        
        let tap = UITapGestureRecognizer()
        tap.numberOfTapsRequired = numberOfTaps
        tap.numberOfTouchesRequired = numberOfTouches
        tap.addTarget(self, action: #selector(UIView.handleTap(_:)))
        self.addGestureRecognizer(tap)
        ClosureStorage.tapClosureStorage[tap] = responder
        Swizzler.swizzle()
    }
    
    
    
    func handleTap(sender:UITapGestureRecognizer){
        if let closureForTap = ClosureStorage.tapClosureStorage[sender] {
                closureForTap(tap: sender)
        }
    }
    
    
    //MARK: Pans
    
    
    func addSingleTouchPanGestureRecognizerWithResponder(responder:panResponseClosure){
        self.addPanGestureRecognizerForNumberOfTouches(1,withResponder:responder)
    }
    
    func addDoubleTouchPanGestureRecognizerWithResponder(responder:panResponseClosure){
        self.addPanGestureRecognizerForNumberOfTouches(2,withResponder:responder)
    }
    
    
    func addPanGestureRecognizerForNumberOfTouches(numberOfTouches:Int,withResponder responder:panResponseClosure){
        
        let pan = UIPanGestureRecognizer()
        pan.minimumNumberOfTouches = numberOfTouches
        pan.addTarget(self, action: #selector(UIView.handlePan(_:)))
        self.addGestureRecognizer(pan)
        ClosureStorage.panClosureStorage[pan] = responder
        Swizzler.swizzle()
    }
    
    
    func handlePan(sender:UIPanGestureRecognizer){
        if let closureForPan = ClosureStorage.panClosureStorage[sender]{
            closureForPan(pan: sender)
        }
    }
    
    
    //MARK: Swipes
    func addLeftSwipeGestureRecognizerWithResponder(responder:swipeResponseClosure){
       self.addLeftSwipeGestureRecognizerForNumberOfTouches(1, withResponder: responder)
    }
    
    
    func addLeftSwipeGestureRecognizerForNumberOfTouches(numberOfTouches:Int,withResponder responder:swipeResponseClosure){
        self.addSwipeGestureRecognizerForNumberOfTouches(numberOfTouches, forSwipeDirection: .Left, withResponder: responder)
    }
    
    func addRightSwipeGestureRecognizerWithResponder(responder:swipeResponseClosure){
        self.addRightSwipeGestureRecognizerForNumberOfTouches(1, withResponder: responder)
    }
    
    func addRightSwipeGestureRecognizerForNumberOfTouches(numberOfTouches:Int,withResponder responder:swipeResponseClosure){
        self.addSwipeGestureRecognizerForNumberOfTouches(numberOfTouches, forSwipeDirection: .Right, withResponder: responder)
    }
    
    
    func addUpSwipeGestureRecognizerWithResponder(responder:swipeResponseClosure){
        self.addUpSwipeGestureRecognizerForNumberOfTouches(1, withResponder: responder)
    }
    
    func addUpSwipeGestureRecognizerForNumberOfTouches(numberOfTouches:Int,withResponder responder:swipeResponseClosure){
        self.addSwipeGestureRecognizerForNumberOfTouches(numberOfTouches, forSwipeDirection: .Up, withResponder: responder)
    }
    
    
    func addDownSwipeGestureRecognizerWithResponder(responder:swipeResponseClosure){
        self.addDownSwipeGestureRecognizerForNUmberOfTouches(1, withResponder: responder)
    }
    
    
    func addDownSwipeGestureRecognizerForNUmberOfTouches(numberOfTouches:Int,withResponder responder:swipeResponseClosure){
        self.addSwipeGestureRecognizerForNumberOfTouches(numberOfTouches, forSwipeDirection: .Down, withResponder: responder)
    }
    
    
    
    func addSwipeGestureRecognizerForNumberOfTouches(numberOfTouches:Int,forSwipeDirection swipeDirection:UISwipeGestureRecognizerDirection,withResponder responder:swipeResponseClosure){
        let swipe = UISwipeGestureRecognizer()
        swipe.direction = swipeDirection
        swipe.numberOfTouchesRequired = numberOfTouches
        swipe.addTarget(self, action: #selector(UIView.handleSwipe(_:)))
        self.addGestureRecognizer(swipe)
        ClosureStorage.swipeClosureStorage[swipe] = responder
        Swizzler.swizzle()
    }
    
    
    
    
    func handleSwipe(sender: UISwipeGestureRecognizer){
        if let closureForSwipe = ClosureStorage.swipeClosureStorage[sender]{
            closureForSwipe(swipe:sender)
        }
    }
    
    
    //MARK: Pinches
    func addPinchGestureRecognizerWithResponder(responder:pinchResponseClosure){
        
        let pinch = UIPinchGestureRecognizer()
        pinch.addTarget(self, action: #selector(UIView.handlePinch(_:)))
        self.addGestureRecognizer(pinch)
        
        
        ClosureStorage.pinchClosureStorage[pinch] = responder
        Swizzler.swizzle()
        
    }
    
    
    func handlePinch(sender:UIPinchGestureRecognizer){
        
        if let closureForPinch = ClosureStorage.pinchClosureStorage[sender]{
            closureForPinch(pinch: sender)
        }
        
    }
    
    
    //MARK: LongPress
    func addLongPressGestureRecognizerWithResponder(responder:longPressResponseClosure){
        
        self.addLongPressGestureRecognizerForNumberOfTouches(1, withResponder: responder)
        
        
    }
    
    func addLongPressGestureRecognizerForNumberOfTouches(numberOfTouches:Int,withResponder responder:longPressResponseClosure){
        
        let longPress = UILongPressGestureRecognizer()
        longPress.numberOfTouchesRequired = numberOfTouches
        longPress.addTarget(self, action: #selector(UIView.handleLongPress(_:)))
        self.addGestureRecognizer(longPress)
        
        ClosureStorage.longPressClosureStorage[longPress] = responder
        Swizzler.swizzle()
    }
    
    func handleLongPress(sender:UILongPressGestureRecognizer){
        
        if let closureForLongPinch = ClosureStorage.longPressClosureStorage[sender]
        {
            closureForLongPinch(longPress: sender)
        }
        
    }
    
    
    
    // MARK: Rotation
    func addRotationGestureRecognizerWithResponder(responder: rotationResponseClosure) {
        let rotation = UIRotationGestureRecognizer()
        rotation.addTarget(self, action: #selector(UIView.handleRotation(_:)))
        self.addGestureRecognizer(rotation)
        
        ClosureStorage.rotationClosureStorage[rotation] = responder
        Swizzler.swizzle()
    }
    
    func handleRotation(sender: UIRotationGestureRecognizer) {
        if let closureForRotation = ClosureStorage.rotationClosureStorage[sender] {
            closureForRotation(ratation: sender)
        }
    }
    
}










/*
*   创建TextField
*
*
*/
func makeTextField(ToView superView:UIView)->UITextField{
    let field = UITextField()
    superView.addSubview(field)
    return field
}


func makeTextField(BorderStyle style:UITextBorderStyle,ToView superView:UIView)->UITextField{
    let textField = makeTextField(ToView: superView)
    textField.borderStyle = style
    return textField
}


func makeTextField(PlaceHolder placeHolder:String,ToView superView:UIView)->UITextField{
    let textField = makeTextField(ToView: superView)
    textField.placeholder = placeHolder
    return textField
}


func makeTextField(PlaceHolder placeHolder:String,BgColor bgColor:UIColor?,ToView superView:UIView)->UITextField{
    let textField = makeTextField(PlaceHolder: placeHolder, ToView: superView)
    if bgColor != nil {
        textField.backgroundColor = bgColor
    }
    return textField
}




/*
*   图片处理方法
*
*
*/

func RGB_Color(red:CGFloat,green:CGFloat,blue:CGFloat)->UIColor{
    return UIColor.init(red: red/255.0, green: green/255.0, blue: blue/255.0, alpha: 1)
}


//MARK: - 生成指定尺寸的纯色图片
func imageWithColor(color: UIColor!, size: CGSize) -> UIImage?{
    var size = size
    if CGSizeEqualToSize(size, CGSizeZero){
        size = CGSizeMake(1, 1)
    }
    let rect = CGRectMake(0, 0, size.width, size.height)
    UIGraphicsBeginImageContext(rect.size)
    let context = UIGraphicsGetCurrentContext()
    CGContextSetFillColorWithColor(context, color.CGColor)
    CGContextFillRect(context, rect)
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image
}


//MARK: - 修改图片尺寸
func imageScaleToSize(image: UIImage, size: CGSize) -> UIImage{
    // 创建一个bitmap的context
    // 并把它设置成为当前正在使用的context
    // Determine whether the screen is retina
    if UIScreen.mainScreen().scale == 2.0{
        UIGraphicsBeginImageContextWithOptions(size, false, 2.0)
    }else{
        UIGraphicsBeginImageContext(size)
    }
    
    // 绘制改变大小的图片
    image.drawInRect(CGRectMake(0, 0, size.width, size.height))
    
    // 从当前context中创建一个改变大小后的图片
    let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
    
    // 使当前的context出堆栈
    UIGraphicsEndImageContext()
    
    // 返回新的改变大小后的图片
    return scaledImage
}

//MARK: - 压缩图片大小
func imageCompress(originalImage: UIImage) -> UIImage{
    guard let imageData = UIImageJPEGRepresentation(originalImage, 0.5) else{
        return originalImage
    }
    
    let compressImage = UIImage(data: imageData)!
    return compressImage
}






/*
 *
 *UIPlaceHolderTextView
 *
 *
 */


//MARK UIPlaceHolderTextView
class UIPlaceHolderTextView:UITextView{
    
    let UI_PlaceHolder_Text_Changed_Animation_Duration = 0.25
    
    //MARK
    private var _placeHolder:String = ""
    var placeHolder:String?{
    
        set{
            if _placeHolder != newValue  && newValue != nil{
                _placeHolder = newValue!
                self.setNeedsDisplay()
            }else{
                _placeHolder = ""
            }
        }
        get{
            return _placeHolder
        }
        
    }
    //MARK
    var placeHolderColor:UIColor?
    var placeHolderLabel:UILabel?
    
    
    
    //MARK
    deinit{
        NSNotificationCenter.defaultCenter().removeObserver(self)
    }
    
    //MARK
    override func awakeFromNib() {
        super.awakeFromNib()
        
        if self.placeHolder != nil {
            placeHolder = ""
        }
        
        if self.placeHolderColor != nil{
            self.placeHolderColor = UIColor.lightGrayColor()
        }
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(UIPlaceHolderTextView.textChanged(_:)), name: UITextViewTextDidChangeNotification, object: nil)
    }
    
    //MARK
    
    override init(frame: CGRect, textContainer: NSTextContainer?) {
        super.init(frame: frame, textContainer: textContainer)
        
        placeHolder = ""
        self.placeHolderColor = (UIColor.lightGrayColor())
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(UIPlaceHolderTextView.textChanged(_:)), name: UITextViewTextDidChangeNotification, object: nil)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK
    func textChanged(notification:NSNotification?){
        
        if self.placeHolder!.characters.count == 0 {
            return;
        }
        
        UIView.animateWithDuration(UI_PlaceHolder_Text_Changed_Animation_Duration) {
            if self.text.characters.count == 0 {
                self.viewWithTag(999)?.alpha = 1
            }else{
                self.viewWithTag(999)?.alpha = 0
            }
        }
        
    }
    //Override the Attribute text
    override var text: String!{
        didSet{
            self.textChanged(nil)
        }
    }
    
    //MARK drawRect
    override func drawRect(rect: CGRect) {
        if self.placeHolder?.characters.count > 0 {
            let insets = self.textContainerInset
            if placeHolderLabel == nil {
                placeHolderLabel = UILabel(frame:CGRectMake(insets.left+5, insets.top, self.bounds.size.width - (insets.left+insets.right+10),1.0))
                placeHolderLabel?.lineBreakMode = .ByWordWrapping
                placeHolderLabel?.font = self.font
                placeHolderLabel?.backgroundColor = UIColor.clearColor()
                placeHolderLabel?.textColor = self.placeHolderColor
                placeHolderLabel?.alpha = 0
                placeHolderLabel?.tag = 999
                self.addSubview(placeHolderLabel!)
            }
            placeHolderLabel?.text = self.placeHolder
            placeHolderLabel?.sizeToFit()
            placeHolderLabel?.frame = CGRectMake(insets.left+5, insets.top, self.bounds.size.width - (insets.left+insets.right+10),CGRectGetHeight(placeHolderLabel!.frame))
            self.sendSubviewToBack(placeHolderLabel!)
        }
        
        if self.text.characters.count == 0  && self.placeHolder?.characters.count > 0{
            self.viewWithTag(999)?.alpha = 1
        }
        super.drawRect(rect)
    }
    
}


/*
 *
 *UIBadgeView
 *
 *
 */


let kMaxBadge : CGFloat = 20.0
let kBadgeTextOffset : CGFloat = 2.0
let kBadgePadding : CGFloat = 2.0






let kBadgeTipStr = "badgeTip"
class UIBadgeView: UIView {
    
    private var _badgeValue : NSString?
    var badgeValue : NSString?{
        set{
            _badgeValue = newValue
            self.frame = self.badgeFrame(WithStr: newValue)
            self.setNeedsDisplay()
        }
        get{
            return _badgeValue
        }
    }
    
    var badgeBgColor : UIColor?
    var badgeTextColor: UIColor?
    var badgeFont : UIFont?
    
    
    
    class func viewWithBadgeTip(badgeValue:NSString?)->UIBadgeView?{
        
        if (badgeValue == nil || badgeValue?.length == 0) {
            return nil
        }
        
        let badgeV  = UIBadgeView(frame:CGRectZero)
        badgeV.frame = badgeV.badgeFrame(WithStr: badgeValue)
        badgeV.badgeValue = badgeValue
        return badgeV
    }
    
    
    
    
    func badgeFrame(WithStr badgeValue:NSString?)->CGRect{
        let badgeSize = self.badgeSize(WithStr: badgeValue)
        
        let badgeFrame = CGRectMake(0, 0, badgeSize.width+8, badgeSize.height+8);
        
        
        
        
        return badgeFrame
    }
    
    
    
    func badgeSize(WithStr badgeValue:NSString?)->CGSize{
        return UIBadgeView.badgeSize(WithStr: badgeValue, font: &self.badgeFont)
    }
    
    
    
    class func badgeSize(WithStr badgeValue:NSString?,inout font:UIFont?)->CGSize{
        
        if badgeValue == nil || badgeValue?.length == 0 {
            return CGSizeZero
        }
        
        if font == nil {
            if kDevice_Is_iPhone6() || kDevice_Is_iPhone6P() {
                font = UIFont.systemFontOfSize(12)
            }else{
                font = UIFont.systemFontOfSize(11)
            }
        }
        
        
        var badgeSize = badgeValue!.getSize(Font: font!, ConstrainedToSize: CGSizeMake(kMaxBadge,20))
        if badgeSize.width < badgeSize.height {
            badgeSize = CGSizeMake(badgeSize.height, badgeSize.height)
        }
        if badgeValue == kBadgeTipStr {
            badgeSize = CGSizeMake(4, 4)
        }
        return badgeSize
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInitialization()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func commonInitialization(){
        self.backgroundColor = UIColor.clearColor()
        badgeBgColor = UIColor.colorWithHexString("0xf75388")
        badgeTextColor = UIColor.whiteColor()
        if kDevice_Is_iPhone6() || kDevice_Is_iPhone6P() {
            badgeFont = UIFont.boldSystemFontOfSize(12)
        }else{
            badgeFont = UIFont.boldSystemFontOfSize(11)
        }
    }
    
    
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        CGContextSaveGState(context)
        
        if self.badgeValue?.length >= 1 {
            
            let badgeSize = self.badgeSize(WithStr: badgeValue)
            let badgeBgFrame = CGRectMake(kBadgeTextOffset, kBadgeTextOffset, badgeSize.width + 2*kBadgePadding, badgeSize.height + 2*kBadgePadding)
            let badgeBgPaddingFrame = CGRectMake(0, 0, badgeBgFrame.size.width + 2*kBadgePadding, badgeBgFrame.size.height + 2*kBadgePadding);
            
            if self.badgeBgColor != nil {
                
                if self.badgeValue != kBadgeTipStr {
                    
                    //外白色描边
                    CGContextSetFillColorWithColor(context, UIColor.whiteColor().CGColor)
                    if badgeSize.width > badgeSize.height {
                        
                        let circle = badgeBgPaddingFrame.size.height
                        let total = badgeBgPaddingFrame.size.width
                        let diffWidth = total - circle
                        let originPoint = badgeBgPaddingFrame.origin
                        
                        let leftCircleFrame = CGRectMake(originPoint.x, originPoint.y, circle, circle);
                        let centerFrame = CGRectMake(originPoint.x + circle/2, originPoint.y, diffWidth, circle);
                        
                        let rightCircleFrame = CGRectMake(originPoint.x + (total - circle), originPoint.y, circle, circle);
                        CGContextFillEllipseInRect(context, leftCircleFrame);
                        CGContextFillRect(context, centerFrame);
                        CGContextFillEllipseInRect(context, rightCircleFrame);
                        
                        
                    }else{
                        CGContextFillEllipseInRect(context, badgeBgPaddingFrame)
                    }
                    
                }
                
                
                //badge 背景色
                //badge 背景色
                CGContextSetFillColorWithColor(context, self.badgeBgColor!.CGColor);
                if (badgeSize.width > badgeSize.height) {
                    
                    let circle = badgeBgFrame.size.height;
                    let total = badgeBgFrame.size.width;
                    let diffWidth = total - circle;
                    let originPoint = badgeBgFrame.origin;
                    
                    
                    
                    let leftCircleFrame = CGRectMake(originPoint.x, originPoint.y, circle, circle);
                    let centerFrame = CGRectMake(originPoint.x + circle/2,originPoint.y ,diffWidth , circle);
                    let rightCircleFrame = CGRectMake(originPoint.x + (total - circle), originPoint.y, circle, circle);
                    CGContextFillEllipseInRect(context, leftCircleFrame);
                    CGContextFillRect(context, centerFrame);
                    CGContextFillEllipseInRect(context, rightCircleFrame);
                    
                }else{
                    CGContextFillEllipseInRect(context, badgeBgFrame);
                }
            }
            
            //badgeValue
            if (self.badgeValue != kBadgeTipStr) {
                
                CGContextSetFillColorWithColor(context,self.badgeTextColor!.CGColor);
                
                let badgeTextStyle : NSMutableParagraphStyle = NSMutableParagraphStyle.defaultParagraphStyle().mutableCopy() as! NSMutableParagraphStyle
                badgeTextStyle.alignment = .Center
                badgeTextStyle.lineBreakMode = .ByWordWrapping
                
                
                let badgeTextAttributes : [String:AnyObject] = [NSFontAttributeName:self.badgeFont!,NSForegroundColorAttributeName:self.badgeTextColor!,NSParagraphStyleAttributeName:badgeTextStyle]
                
                self.badgeValue?.drawInRect(CGRectMake(CGRectGetMinX(badgeBgFrame)+kBadgeTextOffset, CGRectGetMinY(badgeBgFrame) + kBadgeTextOffset, badgeSize.width, badgeSize.height), withAttributes: badgeTextAttributes)
                
            }
            
        }
        
        CGContextRestoreGState(context);
        
    }
    
    
}






//MARK 得到视图的宽和高


extension UIView{
    
    
    func setWidth(width:CGFloat){
        var frame = self.frame
        frame.size.width = width
        self.frame = frame
    }
    
    func width()->CGFloat{
        return self.frame.size.width
    }
    
    
    func setHeight(height:CGFloat){
        var frame = self.frame
        frame.size.height = height
        self.frame = frame
    }
    
    func height()->CGFloat{
        return self.frame.size.height
    }
    
    
    func setX(x:CGFloat){
        var frame = self.frame
        frame.origin.x = x
        self.frame = frame
    }
    
    func x()->CGFloat{
        return self.frame.origin.x
    }
    
    
    func setY(y:CGFloat){
        var frame = self.frame
        frame.origin.y = y
        self.frame = frame
    }
    
    func y()->CGFloat{
        return self.frame.origin.y
    }
    
    
    
    
    
    
    
    
}




//由视图直接得到其控制器
extension UIView{
    
    func viewController()->UIViewController?{
        var next : UIView? = self
        
        
        
        while next != nil {
            
            
            
            
            let nextResponder = next?.nextResponder()
            if nextResponder is UIViewController {
                return nextResponder as? UIViewController
            }
            
            
            next = next?.superview
        }
        return nil
    }
    
    
    
    
}





extension NSObject{
    
    //查看某个控件的内部结构
    public class func seeInsideConstruct(obj:AnyClass){
        var count : UInt32 = 0
        let ivarList = class_copyIvarList(obj.self,&count)
        for idx in 0..<count {
            let ivar : Ivar = ivarList[Int(idx)]
            print("\(ivar_getName(ivar))")
        }
        free(ivarList)
    }
    
    
}

//调用相册

extension UIViewController{
    
    func callSystemPhoneAndCamera(vc:UIViewController,delegateT:protocol<UIImagePickerControllerDelegate,UINavigationControllerDelegate>){
        
        
        
        
        let imgPickerController : UIImagePickerController = UIImagePickerController()
        imgPickerController.delegate = delegateT
        //设置是否可以管理已经存在的图片或者视频
        imgPickerController.allowsEditing = true
        
        // 判断是否支持相机
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)){
            
            let alertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
            let cameraAction: UIAlertAction = UIAlertAction(title: "拍照", style: .Default) { (action: UIAlertAction!) -> Void in
                // 设置类型
                imgPickerController.sourceType = UIImagePickerControllerSourceType.Camera
                vc.presentViewController(imgPickerController, animated: true, completion: nil)
            }
            alertController.addAction(cameraAction)
            
            
            
            
            let photoLibraryAction: UIAlertAction = UIAlertAction(title: "从相册选择", style: .Default) { (action: UIAlertAction!) -> Void in
                // 设置类型
                imgPickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
                vc.presentViewController(imgPickerController, animated: true, completion: nil)
                
            }
            alertController.addAction(photoLibraryAction)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            vc.presentViewController(alertController, animated: true, completion: nil)
            
        }else{
            
            let alertController: UIAlertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
            let photoLibraryAction: UIAlertAction = UIAlertAction(title: "从相册选择", style: .Default) { (action: UIAlertAction!) -> Void in
                // 设置类型
                imgPickerController.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
                vc.presentViewController(imgPickerController, animated: true, completion: nil)
                
            }
            alertController.addAction(photoLibraryAction)
            
            let cancelAction: UIAlertAction = UIAlertAction(title: "取消", style: .Cancel, handler: nil)
            alertController.addAction(cancelAction)
            vc.presentViewController(alertController, animated: true, completion: nil)
            
        }
        
        
        
    }
    
    
}








