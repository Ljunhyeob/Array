//
//  ViewController.swift
//  arrayTest
//
//  Created by 이준협 on 2022/12/30.
//

import UIKit

class ViewController: UIViewController {
    
    //타입 추론으로 생성
    var array = [0,1,2] // 배열에 미리 값을 넣어주었기 때문에 따로 타입을 적지 않아도 int인걸 알기 때문에 괜찮다
    var array1 = [] // 위와 다르게 값이 없기때문에 이 배열이 어떤 타입의 형태인지 알 수 없기 때문에 에러가 난다
    
    
    var array2: [Int] = [0,1,2]
    var array3: [Int] = [] // 타입을 명시 했기때문에 빈 배열로 생성해도 에러가 나지 않음.
    
    
    //생성자로 생성
    var array4 = Array<Int>()
    var array5 = [Int]()
    var array6 = [Int](repeating: 0, count: 10) // 10칸 크기의 배열을 만듬.
    
    
    
    //배열에 여러 타입을 저장하고 싶을때
    var array7: [Any] = [1,"a","test",1.1]
    var array8: NSArray = [1,"a","test",1.1]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //배열 갯수 확인
        print(array.count) //array의 배열 갯수를 확인함
        
        
        //배열이 비었는지 확인
        print(array.isEmpty) //array의 배열이 비어있는지 확인
        
        
        //배열 값 꺼내기
        print(array[0]) // array 배열의 0번째 칸에 있는 값을 출력
        print(array[0...1])// array 배열의 0부터 1번째 칸에 있는 값을 출력
        print(array.first) // array 배열의 첫번째 칸을 출력
        
        
        //배열에 값 추가하기
        array.append(3) //배열 마지막에 값을 추가 (3은 제가 임의로 넣은 숫자임, 원하시는 값을 넣으면 됨)
        //배열에 값 여러개 추가하기
        array.append(contentsOf: [4,5,6]) // 이러면 4,5,6 이 맨뒤부터 차례로 들어간다.
        
        
        //배열 중간에 값을 끼우기
        array.insert(99, at: 0) // array 배열에다가 99라는 값을 0번째에 추가하겠다. -> 그럼 기존 0번에 있던건 1번으로 밀리면서 값 이 들어감
        array.insert(contentsOf: [100, 1000], at: 0) // 100과 1000을 0번째 부터 값을 넣겠다. 그럼 0번 100, 1번 1000 값이 들어가고 나머진 뒤로 밀림
        
        
        //배열 값 변경하기 (값을 추가하는게 아닌 덮어 씌우는거기 때문에 기존에 있던 값은 없어진다.)
        array[0] = 5 // 0번째 값을 5로 변경
        array[0...3] = [0,1,2,3] // 0부터 3번째 칸을 0,1,2,3 으로 넣는다
        array.replaceSubrange(0...2, with: [10,20,30]) // 0부터 2번째 칸에다가 10,20,30 을 넣는다.
        
        
        
        //배열 삭제하기
        array.remove(at: 2) // 2번째 칸을 지우겠다.
        array.removeFirst() // 첫번째 칸을 지우겠다.
        array.removeFirst(2) // 첫번째 칸을 2번 지우겠다.
        array.removeLast() // 마지막 칸을 지우겠다.
        array.removeLast(2) // 마지막 칸을 2번 지우겠다.
        array.removeSubrange(0...1) // 0부터 1번째 칸까지 지우겠다.
        
        
        //배열끼리 비교하기
        var array9 = [1,2,3]
        var array10 = [1,2,3,4]
        
        array9 == array10  // 서로 다르기때문에 false 리턴. 배열안에 든 값이 전부 동일해야 true 리턴
        array9.elementsEqual(array10) // 이것도 위랑 마찬가지
        
        
        
        //배열 값 검색하기
        var array11 = [0,1,2,3,4,5]
        array11.contains(1) // 배열에 1이라는 값이 있는지 확인 -> true 리턴
        array11.contains(6) // 배열에 6이 없기때문에 -> false 리턴
        
        
        //배열에 짝수가 있나 확인.
        array11.contains { num in //짝수가 있으니 true 리턴 -> % 3 을 하면 홀수가 있나 확인
            num % 2 == 0
        }
        
        array11.first { num in // 조건에 맞는 값을 리턴 -> 없다면 nil 리턴
            num % 2 == 0
        }
        
        array11.firstIndex { num in //조건에 만족하는 첫번째 배열 칸을 리턴 (값이 아니라 그 값에 대한 위치를 리턴함)
            num % 2 == 0
        }
        
        
        //배열 정렬하기
        
        array11.sort() // 배열을 오름차순으로 정렬한다.
        array11.sort(by: >) // 내림차순으로 정렬
        
        
        //배열 요소 바꾸기
        array11.swapAt(0, 1) // 배열 0번째값과 1번째 값을 바꾼다
        
    }


}

