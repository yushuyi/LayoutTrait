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
