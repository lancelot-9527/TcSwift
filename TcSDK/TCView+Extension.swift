import UIKit

public extension TCNameSpace where Base: UIView {
    /** 重用的标示，默认以类名为标示 */
    static func reuseIdentify() -> String {
        return String(describing: self)
    }
     
    var left: CGFloat {
        get {
            return self.base.frame.origin.x
        }
        set (newValue){
            self.base.frame.origin.x = newValue
        }
    }
    
    var right: CGFloat {
        get {
            return self.base.frame.origin.x + self.base.frame.size.width
        }
        set (newValue){
            self.base.frame.origin.x = newValue - self.base.frame.size.width
        }
    }
    
    var top: CGFloat {
        get {
            return self.base.frame.origin.y
        }
        set (newValue){
            self.base.frame.origin.y = newValue
        }
    }
    
    var bottom: CGFloat {
        get {
            return self.base.frame.origin.y + self.base.frame.size.height
        }
        set (newValue){
            self.base.frame.origin.y = newValue - self.base.frame.size.height
        }
    }
    
    var width: CGFloat {
        get {
            return self.base.frame.size.width
        }
        set (newValue) {
            self.base.frame.size.width = newValue
        }
    }
    
    var height: CGFloat {
        get {
            return self.base.frame.size.height
        }
        set (newValue) {
            self.base.frame.size.height = newValue
        }
    }
    
    var centerX: CGFloat {
        get {
            return self.base.center.x
        }
        set (newValue) {
            self.base.center.x = newValue
        }
    }
    
    var centerY: CGFloat {
        get {
            return self.base.center.y
        }
        set (newValue) {
            self.base.center.y = newValue
        }
    }
    
    
    
}
