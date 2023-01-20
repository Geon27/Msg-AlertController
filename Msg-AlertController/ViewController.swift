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
        let cancel = UIAlertAction(title: "취소", style: .cancel) {
            (_) in
            self.result.text = "취소버튼을 클릭했습니다."
        }
        let ok = UIAlertAction(title: "확인", style: .default)  {
            (_) in
            self.result.text = "확인버튼을 클릭했습니다."
        }
        let exec = UIAlertAction(title: "실행", style: .destructive)  {
            (_) in
            self.result.text = "실행버튼을 클릭했습니다."
        }
        let stop = UIAlertAction(title: "중지", style: .default)  {
            (_) in
            self.result.text = "중지버튼을 클릭했습니다."
        }
        
        // 버튼을 컨트롤러에 등록
        alert.addAction(cancel)
        alert.addAction(ok)
        alert.addAction(exec)
        alert.addAction(stop)
        
        // 메시지 창 실행
        self.present(alert, animated: false)
    }
    @IBAction func login(_ sender: Any) {
        let title = "iTunes Store에 로그인"
        let message = "사용자의 Apple ID sqlpro@naver.com의 암호를 입력하십시오"
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancel = UIAlertAction(title: "취소", style: .cancel)
        let ok = UIAlertAction(title: "확인", style: .default) {
            (_) in
        }
        
        alert.addAction(cancel)
        alert.addAction(ok)
        
        self.present(alert, animated: false)
    }
}
