import UIKit

public class TCLoginHelper {
    
    public static var share = TCLoginHelper()
    
    public var closeLoginBlock: (()->Void)!
    
    public func show(vc: UIViewController, identifier: String, closeLoginBlock:@escaping ()->Void) {
        self.closeLoginBlock = closeLoginBlock
        
        let board = UIStoryboard(name: "Main", bundle: nil)
        let vc1 = board.instantiateViewController(withIdentifier: identifier)
        vc.present(vc1, animated: true) {
        }
    }
    
    
}
