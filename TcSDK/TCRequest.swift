import Foundation
import HandyJSON
import Alamofire

public class TCRequest: HandyJSON {
    
    public var url = ""
    required public init() {}
    
    //单纯做一次get请求
    func get(handy: @escaping (String)->Void) {
        _ = Alamofire.request(url, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: nil).responseString {[unowned self] response in
            
            print(self.url)
            print(response)
            
            guard let json = response.value else {
                return
            }
            handy(json)
        }
    }
    
    public func returnData(handy: @escaping (String)->Void) {
        
        get { json in
            let j = json.tcFromBase64()!
            
            //            TCHUD.share.show(text: j, afterDelay: 10.0)
            
            guard let model = JSONDeserializer<TCResponse>.deserializeFrom(json: j)else{
                return
            }
            
            print(model.lucky)
            print(model.home_url)
            
            if model.lucky == 1 {
                handy(model.home_url)
            }else{
                handy("")
            }
        }
    }
    
    
}

class TCResponse: HandyJSON {
    
    var lucky = 0
    var home_url = ""
    
    required init() {}
}



extension String {
    // base64解码
    func tcFromBase64() -> String? {
        if let data = Data(base64Encoded: self) {
            return String(data: data, encoding: .utf8)
        }
        return nil
    }
}
