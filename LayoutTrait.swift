//
//  LayoutTrait.swift
//  DoudouApp
//
//  Created by yushuyi on 15/7/23.
//  Copyright © 2015年 DoudouApp. All rights reserved.
//

import UIKit

@available(iOS 8.0, *)
extension UITraitCollection {
    
    //MARK: Width Compact
    func wCompact_hCompact() -> Bool {
        return self.horizontalSizeClass == .Compact && self.verticalSizeClass == .Compact
    }
    
    func wCompact_hRegular () -> Bool {
        return self.horizontalSizeClass == .Compact && self.verticalSizeClass == .Regular;
    }
    
    func wCompact_hAny () -> Bool {
        return self.horizontalSizeClass == .Compact;
    }
    
    //MARK: Width Regular
    func wRegular_hRegular () -> Bool {
        return self.horizontalSizeClass == .Regular && self.verticalSizeClass == .Regular;
    }
    
    func wRegular_hCompact () -> Bool {
        return self.horizontalSizeClass == .Regular && self.verticalSizeClass == .Compact;
    }
    
    func wRegular_hAny () -> Bool {
        return self.horizontalSizeClass == .Regular;
    }
    
    func wAny_hAny () -> Bool {
        return true;
    }
}


@available(iOS 8.0, *)
extension UITraitCollection {
    class func wCompact_hCompactTraitCollection () -> UITraitCollection {
        let wCompact = UITraitCollection(horizontalSizeClass: .Compact)
        let hCompact = UITraitCollection(verticalSizeClass: .Compact)
        return UITraitCollection(traitsFromCollections: [wCompact,hCompact])
    }
    
    class func wRegular_hRegularTraitCollection () -> UITraitCollection {
        let wCompact = UITraitCollection(horizontalSizeClass: .Regular)
        let hCompact = UITraitCollection(verticalSizeClass: .Regular)
        return UITraitCollection(traitsFromCollections: [wCompact,hCompact])
    }
}


@available(iOS 9.0, *)
enum LayoutTrait : Int {

    case HorizontalRegular = 0    //横屏 2/3
    case HorizontalCenter         //横屏 1/2
    case HorizontalCompact        //横屏 1/3
    
    case VerticalRegular          //竖屏 2/3
    case VerticalCompact          //竖屏 1/3
    case None
}

@available(iOS 9.0, *)
func currentLayoutTrait() -> LayoutTrait {
    let windowSize = UIApplication.sharedApplication().keyWindow?.bounds.size ?? CGSizeZero
    let sizeTuple = (windowSize.width,windowSize.height)
    switch sizeTuple {
        case (694,768):
            return .HorizontalRegular
        case (507,768):
            return .HorizontalCenter
        case (320,768):
            return .HorizontalCompact
        case (320,1024):
            return .VerticalCompact
        case (438,1024):
            return .VerticalRegular
        default:
            return .None
    }
    
}
