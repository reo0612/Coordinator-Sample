
import UIKit

//SecondCoordinatorはFirst -> Secondの画面遷移を担当するクラス
final class SecondCoordinator: Coordinator {
    
    private var firstVC: FirstViewController?
    
    init(firstVC: FirstViewController) {
        self.firstVC = firstVC
    }
    
    func start() {
        let secondVC = UIStoryboard(name: StoryboardName.second.rawValue, bundle: nil).instantiateInitialViewController() as! SecondViewController
        self.firstVC?.present(secondVC, animated: true, completion: nil)
    }
}
