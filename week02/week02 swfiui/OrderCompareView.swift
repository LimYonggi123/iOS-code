//
//  OrderCompareView.swift
//  week02 swfiui
//
//  Created by 559 on 9/14/26.
//

import SwiftUI

struct OrderCompareView: View {
    var body: some View {
        VStack(spacing: 30) {
            
            Text("padding")
                .padding()
                .background(.yellow)
            
            Text("background")
                .background(.yellow)
                .padding()
        }
        .padding()
    }
}

#Preview {
    OrderCompareView()
}

/*
  두 코드는 해당 수식어의 입히는 순서가 다르기에 결과 값이 다르게 출력된다.
  먼저 padding 텍스트는 먼저 입힌 후 background에 색상을 입혔을때 여백까지
  색상이 칠해지고, 반대의 경우는 텍스트에 색상이 칠해진 다음 여백이 입혀지기에 결과값
  다르게 출력되기에 순서는
  첫번째의 텍스트는 background(padding(text))
  두번째의 텍스트는 padding(background(text))
  로 감싸져 출력이 다르다.
 */
