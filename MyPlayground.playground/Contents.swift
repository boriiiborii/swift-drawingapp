import Cocoa

var greeting = "Hello, playground"




// 탭 제스처 인식기 생성
let tapGesture = UITapGestureRecognizer(target: self, action: #selector(myFunction))

// 뷰에 탭 제스처 인식기 추가
myView.addGestureRecognizer(tapGesture)

// 탭 제스처 인식기 동작시 호출할 함수
@objc func myFunction() {
    // 특정 함수 구현
}
