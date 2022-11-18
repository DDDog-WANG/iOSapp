//
//  ContentView.swift
//  EAT
//
//  Created by 啊啊阿澄 on 2022/11/17.
//

import SwiftUI

struct ContentView: View {
    let food = ["炸鸡煲", "麦当当", "韩料", "大户屋" , "吉野家", "丸龟制面"]
    @State private var selectedFood: String?
    
    var body: some View {
        VStack(spacing: 30) {
            Image("food")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("今天吃啥子？")
                .font(.largeTitle)
                .bold()
            
            VStack{
                if selectedFood != .none{
                    Text(selectedFood ?? "")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.green)
                }
                if selectedFood == "炸鸡煲"{
                    Image("freshness")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else if selectedFood == "麦当当"{
                    Image("mcdonalds")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else if selectedFood == "韩料"{
                    Image("korean")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else if selectedFood == "大户屋"{
                    Image("ootoya")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else if selectedFood == "吉野家"{
                    Image("yosinoya")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                else if selectedFood == "丸龟制面"{
                    Image("marukame")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                }
            }
            .animation(.linear, value: selectedFood)
            
            
            Button{
                selectedFood = food.shuffled().filter{$0 != selectedFood}.first
            } label: {
                Text(selectedFood == .none ? "戳我告你" : "再换一个").frame(width: 200)
            }
            .padding(.bottom, -15)
            
            Button{
                selectedFood = .none
            } label: {
                Text("重置").frame(width: 200)
            }
            .buttonStyle(.bordered)
            
        }
//        .frame(maxHeight: .infinity)
//        .background(Color(.secondarySystemBackground))
        .font(.title)
        .padding()
        .animation(.easeInOut, value: selectedFood)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .controlSize(.large)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
