
//
//  Soundplay.swift
//  TTO-xcode
//
//  Created by 정현교 on 2017. 6. 2..
//  Copyright © 2017년 kkw. All rights reserved.
//

import Foundation
import AVFoundation

var flag = 0

func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}

class PLAY{
    let ONE = AVPlayer(url: Bundle.main.url(forResource: "한", withExtension: "mp4")!)
    let TWO = AVPlayer(url: Bundle.main.url(forResource: "두", withExtension: "mp4")!)
    let THREE = AVPlayer(url: Bundle.main.url(forResource: "세", withExtension: "mp4")!)
    let FOUR = AVPlayer(url: Bundle.main.url(forResource: "네", withExtension: "mp4")!)
    let FIVE = AVPlayer(url: Bundle.main.url(forResource: "다섯", withExtension: "mp4")!)
    let SIX = AVPlayer(url: Bundle.main.url(forResource: "여섯", withExtension: "mp4")!)
    let SEVEN = AVPlayer(url: Bundle.main.url(forResource: "일곱", withExtension: "mp4")!)
    let EIGHT = AVPlayer(url: Bundle.main.url(forResource: "여덟", withExtension: "mp4")!)
    let NINE = AVPlayer(url: Bundle.main.url(forResource: "아홉", withExtension: "mp4")!)
    let TEN  = AVPlayer(url: Bundle.main.url(forResource: "열", withExtension: "m4a")!)
    
    
    let one = AVPlayer(url: Bundle.main.url(forResource: "일", withExtension: "mp4")!)
    let two = AVPlayer(url: Bundle.main.url(forResource: "이", withExtension: "mp4")!)
    let three = AVPlayer(url: Bundle.main.url(forResource: "삼", withExtension: "mp4")!)
    let four = AVPlayer(url: Bundle.main.url(forResource: "사", withExtension: "mp4")!)
    let five = AVPlayer(url: Bundle.main.url(forResource: "오", withExtension: "mp4")!)
    let six = AVPlayer(url: Bundle.main.url(forResource: "육", withExtension: "mp4")!)
    let seven = AVPlayer(url: Bundle.main.url(forResource: "칠", withExtension: "mp4")!)
    let eight = AVPlayer(url: Bundle.main.url(forResource: "팔", withExtension: "mp4")!)
    let nine = AVPlayer(url: Bundle.main.url(forResource: "구", withExtension: "mp4")!)
    
    
    let ten = AVPlayer(url: Bundle.main.url(forResource: "10", withExtension: "mp4")!)
    let ten2 = AVPlayer(url: Bundle.main.url(forResource: "20", withExtension: "mp4")!)
    let ten3 = AVPlayer(url: Bundle.main.url(forResource: "30", withExtension: "mp4")!)
    let ten4 = AVPlayer(url: Bundle.main.url(forResource: "40", withExtension: "mp4")!)
    let ten5 = AVPlayer(url: Bundle.main.url(forResource: "50", withExtension: "mp4")!)
    let ten6 = AVPlayer(url: Bundle.main.url(forResource: "60", withExtension: "mp4")!)
    let ten7 = AVPlayer(url: Bundle.main.url(forResource: "70", withExtension: "mp4")!)
    let ten8 = AVPlayer(url: Bundle.main.url(forResource: "80", withExtension: "mp4")!)
    let ten9 = AVPlayer(url: Bundle.main.url(forResource: "90", withExtension: "mp4")!)
    
    let GIVE = AVPlayer(url: Bundle.main.url(forResource: "개 주세요", withExtension: "mp4")!)
    
    func Play(COUNT : Int){
        flag = 0
        delayWithSeconds(1) {
            switch (COUNT / 10) {
            case 0 :
                flag = 1
                break
            case 1 :
                if( COUNT % 10 == 0 ){
                    self.TEN.play()
                }else{
                    self.ten.play()
                }
                break
            case 2 :
                self.ten2.play()
                break
            case 3 :
                self.ten3.play()
                break
            case 4 :
                self.ten4.play()
                break
            case 5 :
                self.ten5.play()
                break
            case 6 :
                self.ten6.play()
                break
            case 7 :
                self.ten7.play()
                break
            case 8 :
                self.ten8.play()
                break
            case 9 :
                self.ten9.play()
                break
            default :
                break
            }
        }
        
        delayWithSeconds(1.7) {
            
            if flag == 0 {
                switch (COUNT % 10){
                case 0:
                    break
                case 1:
                    self.one.play()
                    break
                case 2:
                    self.two.play()
                    break
                case 3:
                    self.three.play()
                    break
                case 4:
                    self.four.play()
                    break
                case 5:
                    self.five.play()
                    break
                case 6:
                    self.six.play()
                    break
                case 7:
                    self.seven.play()
                    break
                case 8:
                    self.eight.play()
                    break
                case 9:
                    self.nine.play()
                    break
                default :
                    break
                }
            }
            else{
                switch (COUNT % 10){
                case 0:
                    break
                case 1:
                    self.ONE.play()
                    break
                case 2:
                    self.TWO.play()
                    break
                case 3:
                    self.THREE.play()
                    break
                case 4:
                    self.FOUR.play()
                    break
                case 5:
                    self.FIVE.play()
                    break
                case 6:
                    self.SIX.play()
                    break
                case 7:
                    self.SEVEN.play()
                    break
                case 8:
                    self.EIGHT.play()
                    break
                case 9:
                    self.NINE.play()
                    break
                default :
                    break
                }
            }
        }
        delayWithSeconds(2.2) {
            self.GIVE.play()
        }
        
    }
}
