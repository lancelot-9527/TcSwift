import Foundation
import MBProgressHUD


public class TCHUD {
    public static let share = TCHUD()
    
    var hud :MBProgressHUD? {
        willSet{
            if hud != nil {
                hud!.removeFromSuperViewOnHide = true
                hud!.removeFromSuperview()
            }
        }
    }
    
    private init() {
    }
    
    func setHud(){
        
        let window: UIWindow = UIApplication.shared.keyWindow! //获取当前window
        hud = MBProgressHUD.showAdded(to: window, animated: true)
        
        //        hud!.mode = MBProgressHUDMode.indeterminate
        
        hud!.mode = MBProgressHUDMode.customView
        
        hud!.activityIndicatorColor = UIColor.white
        //常用设置
        //小矩形的背景色
        hud!.bezelView.color = UIColor(white: 0, alpha: 0.5)
        //显示的文字
        //            hud.label.text = "网络加载中..."
        //            hud.label.textColor = UIColor.white
        //细节文字
        //HUD.detailsLabel.text = "请耐心等待..."
        //设置背景,加遮罩
        hud!.backgroundView.style = .solidColor //或SolidColor
        //        hud!.hide(animated: true, afterDelay: 2)
        //        hud!.hide(animated: false)
    }
    
    
    public func show(text: String ,afterDelay: TimeInterval) {
        show(text: text)
        hide(afterDelay: afterDelay)
    }
    
    func show(text: String) {
        setHud()
        hud!.label.text = text
        hud!.label.textColor = UIColor.white
        hud!.show(animated: true)
    }
    
    func hide() {
        if hud != nil {
            hud!.hide(animated: true)
        }
    }
    
    
    func hide(afterDelay: TimeInterval) {
        hud!.hide(animated: true, afterDelay: afterDelay)
    }
    
    
}

