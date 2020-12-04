//
//  Coordinator.swift
//  Coordinator-Sample
//
//  Created by 今西玲巳 on 2020/12/03.
//

import Foundation

//CoordinatorパターンはVCをスリムにするパターンを指す
//VCはどうしても複雑になりがちなので画面遷移を切り離す事でスッキリする
//つまり、VCで画面遷移はせず、代わりにdelegate等で外に画面遷移を委譲する

//1.まず、Coordinatorパターンを実装するにあたってプロトコルを用意

//プロトコルとは「手続き・手順」という意味でこういう約束があるよというもの
//中身のないクラスのようなものでクラスに継承されることが前提なので、これだけだと使えない
//クラスの継承よりも柔軟
protocol Coordinator {
    func start() //これを呼ぶと画面遷移する
}

//なので次は新しく「AppCoordinator」クラスを作る
