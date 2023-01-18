//
//  ViewController.swift
//  Msg-AlertController
//
//  Created by 육건 on 2023/01/13.
//

import UIKit
class ViewController: UIViewController {
    @IBOutlet var result: UILabel!
    @IBAction func alert(_ sender: Any) {
        // 메시지창 객체 생성
        let alert = UIAlertController(title: "선택", message: "항목을 선택해주세요", preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel) // 취소버튼
        
        let ok = UIAlertAction(title: "확인", style: .default) // 확인버튼
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 메시지 창 실행
        self.present(alert, animated: false)
    }
}
