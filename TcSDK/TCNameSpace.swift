 
 import UIKit
 
 //创建结构体
 public struct TCNameSpace<Base> {
    public let base: Base
    init(base: Base) {
        self.base = base
    }
 }
 
 //命名空间协议
 public protocol NameSpaceWrappable {
    associatedtype T
    var tc: T {get set}
    static var tc: T.Type { get }
 }
 
 //默认实现方法
 public extension NameSpaceWrappable {
    var tc: TCNameSpace<Self> {//实例
        
        get{
            return TCNameSpace<Self>(base: self)
        }        
        set {}
    }
    
    static var tc: TCNameSpace<Self>.Type {//类属性
        return TCNameSpace<Self>.self
    }
 }
 
 //独立不同类型添加方法
 
 public extension TCNameSpace where Base: UIView {
    
 }
 
 
 extension UIView: NameSpaceWrappable {}
 
 extension UIColor: NameSpaceWrappable {}
 
 extension String: NameSpaceWrappable {}
