//
//  ContentView.swift
//  week03
//
//  Created by 559 on 9/21/26.
//

import SwiftUI

struct ContentView: View {
    
    private let images = ["apple", "banana", "grape", "strawberry"]
    private let names = ["사과", "바나나", "포도", "딸기"]
    
    @State private var selectedImage = 0
    @State private var alarmTime = Date()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Image(images[selectedImage])
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Picker("과일 선택", selection: $selectedImage) {
                ForEach(images.indices, id: \.self) { index in
                    Text(names[index])
                        .tag(index)
                }
            }
            .pickerStyle(.segmented)
            
            Divider()
            
            DatePicker(
                "알람 시각",
                selection: $alarmTime,
                displayedComponents: [.hourAndMinute]
            )
            
            Text("\(hourDifference)시간 \(minuteDifference)분 후")
            
            Spacer()
        }
        .padding()
    }
    
    var hourDifference: Int {
        let calendar = Calendar.current
        
        let nowHour = calendar.component(.hour, from: Date())
        let alarmHour = calendar.component(.hour, from: alarmTime)
        
        if alarmHour >= nowHour {
            return alarmHour - nowHour
        } else {
            return 24 - nowHour + alarmHour
        }
    }
    
    var minuteDifference: Int {
        let calendar = Calendar.current
        
        let nowMinute = calendar.component(.minute, from: Date())
        let alarmMinute = calendar.component(.minute, from: alarmTime)
        
        if alarmMinute >= nowMinute {
            return alarmMinute - nowMinute
        } else {
            return 60 - nowMinute + alarmMinute
        }
    }
}

#Preview {
    ContentView()
}

/*
 ai 프롬프트
 1.코드에서 이미지가 정상적으로 연결 되어 있는지 체크
 2.apple공식 기술문서에서 인증된 기술 확인 후 코드로 작성
 3. 어떤 결과물이 나왔다고 말하기보다는 해당 과제를 수행할때 어떤식으로 코드를 작성 하였는지에 대한 설명
 
 수정
 ai가 알람 시계 과제부분에서 아직 배우지 않은 문법을 구사하여 제작하였기에, 제공 받은 코드를 참고하여 수정함.
 */
