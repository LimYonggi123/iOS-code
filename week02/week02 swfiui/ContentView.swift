//
//  ContentView.swift
//  week02 swfiui
//
//  Created by 559 on 9/14/26.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    var body: some View {
        VStack {
            
            ZStack {
                HStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    
                    VStack(alignment: .leading, spacing: 12) {
                        Text("임용기")
                        Text("게임공학전공")
                        Text("저는 ios 수업을 듣고 있습니다")
                    }
                    .padding()
                    .background(.yellow)
                    .cornerRadius(16)
                    .foregroundStyle(count >= 5 ? .red : .primary)
                }
            }
            
            Text("\(count)")
            
            HStack {
                Button("+") {
                    count += 1
                }
                
                Button("-") {
                        count -= 1
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
