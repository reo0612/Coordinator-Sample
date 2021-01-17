
import UIKit

final class FirstViewController: UIViewController {

    private var secondCoordinator: SecondCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "First"
    }
    
    @IBAction private func next(_ sender: UIButton) {
        secondCoordinator = SecondCoordinator(firstVC: self)
        secondCoordinator?.start()
    }
}
