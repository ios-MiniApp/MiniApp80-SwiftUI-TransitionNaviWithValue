//
//  SecondView.swift
//  MiniApp80-SwiftUI-TransitionNaviWithValue
//
//  Created by 前田航汰 on 2022/08/14.
//

import SwiftUI

struct SecondView: View {
    let str: String

    var body: some View {
        ZStack {
            Color(.green)
            Text(str)
                .font(.title)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(str: "13")
    }
}
