//
//  StallDetailView.swift
//  studentCongress-stampCard
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 3/7/22.
//

import SwiftUI

struct StallDetailView: View {
    
    let circleWidth = 53.0
    let frameHeight = 70.0
    
    @State var circle1 = Color.red
    @State var circle2 = Color.red
    @State var circle3 = Color.red
    @State var circle4 = Color.red
    @State var circle5 = Color.red
    @State var circle6 = Color.red
    @State var circle7 = Color.red
    @State var circle8 = Color.red
    @State var circle9 = Color.red
    @State var circle10 = Color.red
    
    @State var stampProgress = 0
    @State var rewardCount = 0
    
    var body: some View {
        VStack {
            Text("*imagine a barcode here*")
                .frame(width: 360, height: 200)
                .background(.black)
                .foregroundColor(.white)
                .onTapGesture {
                    stampProgress += 1
                    if stampProgress == 1 {
                        circle1 = Color.green
                    } else if stampProgress == 2 {
                        circle2 = Color.green
                    } else if stampProgress == 3 {
                        circle3 = Color.green
                    } else if stampProgress == 4 {
                        circle4 = Color.green
                    } else if stampProgress == 5 {
                        circle5 = Color.green
                    } else if stampProgress == 6 {
                        circle6 = Color.green
                    } else if stampProgress == 7 {
                        circle7 = Color.green
                    } else if stampProgress == 8 {
                        circle8 = Color.green
                    } else if stampProgress == 9 {
                        circle9 = Color.green
                    } else if stampProgress % 10 == 0 {
                        circle10 = Color.green
                        rewardCount += 1
                    } else if stampProgress > 10 {
                        circle2 = Color.red
                        circle3 = Color.red
                        circle4 = Color.red
                        circle5 = Color.red
                        circle6 = Color.red
                        circle7 = Color.red
                        circle8 = Color.red
                        circle9 = Color.red
                        circle10 = Color.red
                        stampProgress = 1
                    }
                }
            VStack {
                Text("Rewards Available: \(rewardCount)")
            }
            .frame(height: 350)
//            Spacer()
//                .frame(height: 350)
            VStack {
                HStack {
                    Circle()
                        .foregroundColor(circle1)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle2)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle3)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle4)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle5)
                        .frame(width: circleWidth, height: circleWidth)
                }
                .frame(height: frameHeight)
                HStack {
                    Circle()
                        .foregroundColor(circle6)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle7)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle8)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle9)
                        .frame(width: circleWidth, height: circleWidth)
                    Circle()
                        .foregroundColor(circle10)
                        .frame(width: circleWidth, height: circleWidth)
                }
                .frame(height: frameHeight)
            }
            /*
             HStack {
                 ForEach(0..<5) { _ in
                     Circle()
                         .foregroundColor(.green)
                         .frame(width: circleWidth, height: circleWidth)
                 }
             }
             .frame(height: frameHeight)
             HStack {
                 ForEach(0..<5) { _ in
                     Circle()
                         .foregroundColor(.green)
                         .frame(width: circleWidth, height: circleWidth)
                 }
             }
             .frame(height: frameHeight)
             */
        }
    }
}

struct StallDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StallDetailView()
    }
}
