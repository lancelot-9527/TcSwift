import UIKit

public extension UILabel {
    
    @IBInspectable var hexColor: String? {
        get {
            return textColor.tc.colorReturnHex()
        }
        set {
            textColor = UIColor.tc.initHexString(hex: newValue!)
        }
    }
    
}


public extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor! {
        get {
            guard let color = layer.borderColor else {
                return nil
            }
            
            return UIColor(cgColor: color)
        }
        set {
            layer.borderColor = newValue.cgColor
        }
    }
    
    @IBInspectable var shadowColor: UIColor! {
        get {
            guard let color = layer.shadowColor else {
                return nil
            }
            
            return UIColor(cgColor: color)
        }
        set {
            layer.shadowColor = newValue.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: CGFloat {
        get {
            return CGFloat(layer.shadowOpacity)
        }
        set {
            layer.shadowOpacity = Float(newValue)
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        }
        set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable var shadowOffset: CGSize {
        get {
            return layer.shadowOffset
        }
        set {
            layer.shadowOffset = newValue
        }
    }
    
    func addBottomBorder(hex: String, borderWidth: CGFloat) {
        
        let bd = CALayer();
        bd.frame = CGRect(x: 0, y: self.tc.height, width: self.tc.width, height: borderWidth);
        bd.backgroundColor = UIColor.tc.initHexString(hex: hex).cgColor;
        self.layer.addSublayer(bd)
        
    }
}



public extension UITabBarItem {
    
    @IBInspectable var nolImage: UIImage? {
        get {
            return image
        }
        set {
            image = newValue!.withRenderingMode(.alwaysOriginal)
        }
    }
    
    @IBInspectable var selImage: UIImage? {
        get {
            return selectedImage
        }
        set {
            selectedImage = newValue!.withRenderingMode(.alwaysOriginal)
        }
    }
        
}


