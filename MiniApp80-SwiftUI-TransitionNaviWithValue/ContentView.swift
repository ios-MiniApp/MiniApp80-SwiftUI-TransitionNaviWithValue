//
//  ContentView.swift
//  MiniApp80-SwiftUI-TransitionNaviWithValue
//
//  Created by 前田航汰 on 2022/08/14.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color.blue)   //背景色
            .foregroundColor(.white)  //文字色
            .font(.body.bold())       //フォントサイズ・スタイル
            .clipShape(Capsule())     //背景の形
            .scaleEffect(configuration.isPressed ? 0.95 : 1)  //ボタンが押された時のエフェクト
            //.animation(.easeOut(duration: 0.2)) //エフェクトのアニメーション
    }
}

struct ContentView: View {
    @State var countNumber = 0

    var body: some View {
        NavigationView{
            VStack {
                Text(String(countNumber))
                    .font(.title)
                    .padding()

                HStack {
                    Button("マイナス"){
                        countNumber -= 1
                    }
                    .buttonStyle(CapsuleButtonStyle())

                    Button("プラス"){
                        countNumber += 1
                    }
                    .buttonStyle(CapsuleButtonStyle())
                }
                .padding()

                NavigationLink(destination: SecondView(str: String(countNumber))
                    .navigationTitle("画面2")){
                        Text("SecondViewへ")
                    }

            }
            .navigationTitle("タイトル")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

