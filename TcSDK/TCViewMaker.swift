import UIKit

public class TCCell<T: UIView> {
    
    public class func register(tableView: UITableView){
        tableView.register(UINib(nibName: "\(T.self)", bundle: nil), forCellReuseIdentifier: "\(T.self)")
    }
    
    public class func dequeueReusableCell(tableView: UITableView, indexPath: IndexPath) -> T {
        return tableView.dequeueReusableCell(withIdentifier: "\(T.self)", for: indexPath) as! T
    }
    
    public class func registerHeaderFooter(tableView: UITableView){
        tableView.register(UINib(nibName: "\(T.self)", bundle: nil), forHeaderFooterViewReuseIdentifier: "\(T.self)")
    }
    
    public class func dequeueReusableHeaderFooterView(tableView: UITableView) -> T {
        return tableView.dequeueReusableHeaderFooterView(withIdentifier: "\(T.self)") as! T
    }
    
    public class func register(collectionView: UICollectionView){
        collectionView.register(UINib(nibName: "\(T.self)", bundle: nil), forCellWithReuseIdentifier: "\(T.self)")
    }
    
    public class func dequeueReusableCell(collectionView: UICollectionView, indexPath: IndexPath) -> T {
        return collectionView.dequeueReusableCell(withReuseIdentifier: "\(T.self)", for: indexPath) as! T
    }
    
    
    public class func registerHeader(collectionView: UICollectionView){
        collectionView.register(UINib(nibName: "\(T.self)", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(T.self)")
    }
    
    public class func dequeueHeader(collectionView: UICollectionView, indexPath: IndexPath) -> T {
        return collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "\(T.self)", for: indexPath) as! T
    }

}


public class TCView<T: UIView> {
    public class func loadNibNamed() -> T{
        print(String(describing: T.self))
        let array = Bundle.main.loadNibNamed(String(describing: T.self), owner: nil, options: nil)
        return array!.first! as! T
    }
    
}
