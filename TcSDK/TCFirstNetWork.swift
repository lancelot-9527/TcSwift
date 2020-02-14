import Foundation
import Alamofire

public class TCFirstNetWork: NSObject {
    
    public static let share = TCFirstNetWork()
    var manager: NetworkReachabilityManager?
    public var ngBlock: (()-> Void)!
    
    override init() {
        super.init()
        
        self.manager = NetworkReachabilityManager(host: "www.apple.com")
        
        self.manager?.listener = {[unowned self] status in
            
            if status == NetworkReachabilityManager.NetworkReachabilityStatus.notReachable{
                
            }else if status == NetworkReachabilityManager.NetworkReachabilityStatus.unknown{
                
            }else{
                self.ngBlock()
            }
            
            print("Network Status Changed: \(status)")
        }
        
        self.manager?.startListening()
    }
    
    
}

