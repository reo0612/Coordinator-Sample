
import UIKit

//2.Coordinatorプロトコルを準拠させる

//AppCoordinatorはアプリの起動を担当するクラス
final class AppCoordinator: Coordinator {
    //初期化されていない
    let window: UIWindow //クラス内で定義された変数・定数をプロパティと呼ぶ
    
    //init()は、型(class,struct,enum)のインスタンスを初期化する特殊なメソッド
    init(window: UIWindow) {
        // 初期化　インスタンス生成、実体化とも言われる
        self.window = window
    }
    
    //プロトコルを準拠させると必ず、プロトコルで作ったメソッドを実装しなければいけない
    //classだけでなく、structやenumにもプロトコルを準拠できる
    func start() {
        //画面遷移に関するコードをここに書く　ここではアプリ起動時の画面を表示する
        let firstVC = UIStoryboard(name: StoryboardName.first.rawValue, bundle: nil).instantiateInitialViewController() as! FirstViewController
        let navFirstVC = UINavigationController(rootViewController: firstVC)
        window.rootViewController = navFirstVC
        //このメソッドを呼ぶことで、表示中のwindowの上から新たな画面を表示する
        //ここではnavFirstVCを表示
        window.makeKeyAndVisible()
    }

}
