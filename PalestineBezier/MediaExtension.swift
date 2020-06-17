// https://github.com/m760622
//  MediaExtension.swift
//  PalestineBezier
// m7606225@gmail.com
//  Created by Mohammed Abunada on 2020-06-16.
//  Copyright © 2020 NMDS. All rights reserved.
// https://github.com/m760622/PalestineBezier

import UIKit

extension UIColor {
    static func fromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let r,g,b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1: 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
}//UIColor

let colorRed = UIColor.fromHexString("FF0000")
let colorGreen = UIColor.fromHexString("058004")
let colorWhite = UIColor.fromHexString("FFFFFF")
let colorBlack = UIColor.fromHexString("000000")


extension UIBezierPath {
    static func calculateBounds(paths: [UIBezierPath]) -> CGRect {
        let myPaths = UIBezierPath()
        for path in paths {
            myPaths.append(path)
        }
        return (myPaths.bounds)
    }//calculateBounds
    
}//UIBezierPath


var palestineBlankLogo:UIBezierPath{
    let palestineBlankPath = UIBezierPath()
    palestineBlankPath.move(to: CGPoint(x: 0, y: 309.71))
    palestineBlankPath.addCurve(to: CGPoint(x: 27.03, y: 283.35), controlPoint1: CGPoint(x: 11.87, y: 299.11), controlPoint2: CGPoint(x: 27.03, y: 283.35))
    palestineBlankPath.addLine(to: CGPoint(x: 36.53, y: 272.24))
    palestineBlankPath.addCurve(to: CGPoint(x: 58.08, y: 234.88), controlPoint1: CGPoint(x: 45.56, y: 259.04), controlPoint2: CGPoint(x: 52.68, y: 246.04))
    palestineBlankPath.addCurve(to: CGPoint(x: 71.46, y: 202.23), controlPoint1: CGPoint(x: 67.28, y: 215.87), controlPoint2: CGPoint(x: 71.46, y: 202.23))
    palestineBlankPath.addCurve(to: CGPoint(x: 74.52, y: 194.15), controlPoint1: CGPoint(x: 72.82, y: 200.21), controlPoint2: CGPoint(x: 72.14, y: 196.51))
    palestineBlankPath.addCurve(to: CGPoint(x: 79.27, y: 182.37), controlPoint1: CGPoint(x: 76.89, y: 191.8), controlPoint2: CGPoint(x: 79.27, y: 182.37))
    palestineBlankPath.addCurve(to: CGPoint(x: 97.58, y: 97.55), controlPoint1: CGPoint(x: 90.46, y: 155.78), controlPoint2: CGPoint(x: 97.58, y: 97.55))
    palestineBlankPath.addCurve(to: CGPoint(x: 98.94, y: 91.5), controlPoint1: CGPoint(x: 98.26, y: 96.21), controlPoint2: CGPoint(x: 97.92, y: 93.18))
    palestineBlankPath.addCurve(to: CGPoint(x: 101.31, y: 78.37), controlPoint1: CGPoint(x: 99.95, y: 89.81), controlPoint2: CGPoint(x: 99.61, y: 87.79))
    palestineBlankPath.addCurve(to: CGPoint(x: 107.08, y: 72.65), controlPoint1: CGPoint(x: 103.01, y: 68.94), controlPoint2: CGPoint(x: 107.08, y: 72.65))
    palestineBlankPath.addCurve(to: CGPoint(x: 116.57, y: 69.95), controlPoint1: CGPoint(x: 111.15, y: 77.36), controlPoint2: CGPoint(x: 114.54, y: 72.65))
    palestineBlankPath.addCurve(to: CGPoint(x: 118.88, y: 61.16), controlPoint1: CGPoint(x: 118.14, y: 67.87), controlPoint2: CGPoint(x: 118.7, y: 63.19))
    palestineBlankPath.addCurve(to: CGPoint(x: 118.94, y: 60.19), controlPoint1: CGPoint(x: 118.93, y: 60.57), controlPoint2: CGPoint(x: 118.94, y: 60.19))
    palestineBlankPath.addCurve(to: CGPoint(x: 118.61, y: 52.11), controlPoint1: CGPoint(x: 115.89, y: 56.15), controlPoint2: CGPoint(x: 117.93, y: 53.79))
    palestineBlankPath.addCurve(to: CGPoint(x: 123.69, y: 31.92), controlPoint1: CGPoint(x: 119.28, y: 50.43), controlPoint2: CGPoint(x: 124.37, y: 35.62))
    palestineBlankPath.addCurve(to: CGPoint(x: 123.59, y: 30.25), controlPoint1: CGPoint(x: 123.59, y: 31.37), controlPoint2: CGPoint(x: 123.57, y: 30.81))
    palestineBlankPath.addCurve(to: CGPoint(x: 133.19, y: 31.92), controlPoint1: CGPoint(x: 123.59, y: 30.25), controlPoint2: CGPoint(x: 130.48, y: 31.92))
    palestineBlankPath.addCurve(to: CGPoint(x: 140.99, y: 31.24), controlPoint1: CGPoint(x: 135.9, y: 31.92), controlPoint2: CGPoint(x: 138.96, y: 31.24))
    palestineBlankPath.addCurve(to: CGPoint(x: 150.15, y: 30.23), controlPoint1: CGPoint(x: 143.03, y: 31.24), controlPoint2: CGPoint(x: 148.11, y: 28.89))
    palestineBlankPath.addCurve(to: CGPoint(x: 155.91, y: 35.28), controlPoint1: CGPoint(x: 152.18, y: 31.58), controlPoint2: CGPoint(x: 155.91, y: 35.28))
    palestineBlankPath.addCurve(to: CGPoint(x: 161, y: 36.29), controlPoint1: CGPoint(x: 155.91, y: 35.28), controlPoint2: CGPoint(x: 158.63, y: 36.29))
    palestineBlankPath.addCurve(to: CGPoint(x: 167.45, y: 33.94), controlPoint1: CGPoint(x: 163.38, y: 36.29), controlPoint2: CGPoint(x: 165.75, y: 34.95))
    palestineBlankPath.addCurve(to: CGPoint(x: 169.78, y: 32.73), controlPoint1: CGPoint(x: 167.92, y: 33.65), controlPoint2: CGPoint(x: 168.78, y: 33.23))
    palestineBlankPath.addCurve(to: CGPoint(x: 176.94, y: 27.88), controlPoint1: CGPoint(x: 172.36, y: 31.44), controlPoint2: CGPoint(x: 175.97, y: 29.58))
    palestineBlankPath.addCurve(to: CGPoint(x: 180.67, y: 16.77), controlPoint1: CGPoint(x: 178.3, y: 25.53), controlPoint2: CGPoint(x: 181.01, y: 19.8))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.71, y: 3.98), controlPoint1: CGPoint(x: 180.33, y: 13.74), controlPoint2: CGPoint(x: 182.37, y: 4.99))
    palestineBlankPath.addCurve(to: CGPoint(x: 186.78, y: 0.96), controlPoint1: CGPoint(x: 183.05, y: 2.98), controlPoint2: CGPoint(x: 184.4, y: -2.07))
    palestineBlankPath.addCurve(to: CGPoint(x: 192.88, y: 4.99), controlPoint1: CGPoint(x: 189.15, y: 3.98), controlPoint2: CGPoint(x: 190.85, y: 4.99))
    palestineBlankPath.addCurve(to: CGPoint(x: 199.33, y: 7.69), controlPoint1: CGPoint(x: 194.92, y: 4.99), controlPoint2: CGPoint(x: 201.7, y: 4.66))
    palestineBlankPath.addCurve(to: CGPoint(x: 197.29, y: 14.42), controlPoint1: CGPoint(x: 196.95, y: 10.72), controlPoint2: CGPoint(x: 196.95, y: 13.07))
    palestineBlankPath.addCurve(to: CGPoint(x: 196.95, y: 23.84), controlPoint1: CGPoint(x: 197.63, y: 15.77), controlPoint2: CGPoint(x: 198.65, y: 18.12))
    palestineBlankPath.addCurve(to: CGPoint(x: 194.58, y: 40), controlPoint1: CGPoint(x: 195.26, y: 29.56), controlPoint2: CGPoint(x: 194.92, y: 38.65))
    palestineBlankPath.addCurve(to: CGPoint(x: 192.54, y: 55.48), controlPoint1: CGPoint(x: 194.24, y: 41.34), controlPoint2: CGPoint(x: 192.54, y: 55.48))
    palestineBlankPath.addLine(to: CGPoint(x: 192.58, y: 60.48))
    palestineBlankPath.addCurve(to: CGPoint(x: 193.9, y: 62.21), controlPoint1: CGPoint(x: 193.01, y: 60.74), controlPoint2: CGPoint(x: 193.47, y: 61.27))
    palestineBlankPath.addCurve(to: CGPoint(x: 196.61, y: 76.01), controlPoint1: CGPoint(x: 195.6, y: 65.92), controlPoint2: CGPoint(x: 197.97, y: 71.3))
    palestineBlankPath.addCurve(to: CGPoint(x: 198.65, y: 78.71), controlPoint1: CGPoint(x: 196.61, y: 76.01), controlPoint2: CGPoint(x: 198.99, y: 76.35))
    palestineBlankPath.addCurve(to: CGPoint(x: 196.61, y: 90.82), controlPoint1: CGPoint(x: 198.31, y: 81.06), controlPoint2: CGPoint(x: 196.61, y: 90.82))
    palestineBlankPath.addCurve(to: CGPoint(x: 197.63, y: 92.84), controlPoint1: CGPoint(x: 196.61, y: 90.82), controlPoint2: CGPoint(x: 196.28, y: 92.84))
    palestineBlankPath.addLine(to: CGPoint(x: 197.63, y: 92.84))
    palestineBlankPath.addCurve(to: CGPoint(x: 197.29, y: 96.21), controlPoint1: CGPoint(x: 198.99, y: 92.84), controlPoint2: CGPoint(x: 202.38, y: 94.53))
    palestineBlankPath.addCurve(to: CGPoint(x: 190.51, y: 99.57), controlPoint1: CGPoint(x: 192.2, y: 97.89), controlPoint2: CGPoint(x: 192.54, y: 96.21))
    palestineBlankPath.addCurve(to: CGPoint(x: 186.78, y: 105.63), controlPoint1: CGPoint(x: 188.47, y: 102.94), controlPoint2: CGPoint(x: 186.78, y: 102.27))
    palestineBlankPath.addCurve(to: CGPoint(x: 186.44, y: 117.75), controlPoint1: CGPoint(x: 186.78, y: 109), controlPoint2: CGPoint(x: 187.8, y: 115.73))
    palestineBlankPath.addCurve(to: CGPoint(x: 185.42, y: 127.17), controlPoint1: CGPoint(x: 185.08, y: 119.77), controlPoint2: CGPoint(x: 185.42, y: 125.49))
    palestineBlankPath.addCurve(to: CGPoint(x: 185.08, y: 141.98), controlPoint1: CGPoint(x: 185.42, y: 127.17), controlPoint2: CGPoint(x: 186.1, y: 138.28))
    palestineBlankPath.addCurve(to: CGPoint(x: 184.62, y: 148.09), controlPoint1: CGPoint(x: 184.51, y: 144.08), controlPoint2: CGPoint(x: 184.48, y: 146.17))
    palestineBlankPath.addCurve(to: CGPoint(x: 185.08, y: 152.08), controlPoint1: CGPoint(x: 184.73, y: 149.55), controlPoint2: CGPoint(x: 184.94, y: 150.91))
    palestineBlankPath.addCurve(to: CGPoint(x: 186.78, y: 169.92), controlPoint1: CGPoint(x: 185.42, y: 154.77), controlPoint2: CGPoint(x: 187.46, y: 166.89))
    palestineBlankPath.addLine(to: CGPoint(x: 186.78, y: 169.92))
    palestineBlankPath.addCurve(to: CGPoint(x: 181.02, y: 193.14), controlPoint1: CGPoint(x: 186.11, y: 172.95), controlPoint2: CGPoint(x: 181.36, y: 189.78))
    palestineBlankPath.addCurve(to: CGPoint(x: 181.36, y: 204.92), controlPoint1: CGPoint(x: 180.68, y: 196.51), controlPoint2: CGPoint(x: 180.34, y: 202.23))
    palestineBlankPath.addCurve(to: CGPoint(x: 180.68, y: 218.05), controlPoint1: CGPoint(x: 182.37, y: 207.62), controlPoint2: CGPoint(x: 181.36, y: 214.35))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.37, y: 226.8), controlPoint1: CGPoint(x: 180.68, y: 218.05), controlPoint2: CGPoint(x: 182.37, y: 224.45))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.37, y: 235.55), controlPoint1: CGPoint(x: 182.37, y: 229.16), controlPoint2: CGPoint(x: 182.37, y: 235.55))
    palestineBlankPath.addLine(to: CGPoint(x: 181.02, y: 238.92))
    palestineBlankPath.addLine(to: CGPoint(x: 170.25, y: 346))
    palestineBlankPath.addCurve(to: CGPoint(x: 165.75, y: 359.07), controlPoint1: CGPoint(x: 170.25, y: 346), controlPoint2: CGPoint(x: 167.1, y: 355.03))
    palestineBlankPath.addCurve(to: CGPoint(x: 161.34, y: 373.88), controlPoint1: CGPoint(x: 164.39, y: 363.11), controlPoint2: CGPoint(x: 166.08, y: 370.18))
    palestineBlankPath.addCurve(to: CGPoint(x: 154.21, y: 382.97), controlPoint1: CGPoint(x: 156.59, y: 377.59), controlPoint2: CGPoint(x: 154.89, y: 378.93))
    palestineBlankPath.addCurve(to: CGPoint(x: 150.48, y: 395.76), controlPoint1: CGPoint(x: 153.53, y: 387.01), controlPoint2: CGPoint(x: 154.21, y: 393.07))
    palestineBlankPath.addCurve(to: CGPoint(x: 145.06, y: 411.92), controlPoint1: CGPoint(x: 150.48, y: 395.76), controlPoint2: CGPoint(x: 145.4, y: 408.55))
    palestineBlankPath.addCurve(to: CGPoint(x: 136.58, y: 431.44), controlPoint1: CGPoint(x: 145.06, y: 411.92), controlPoint2: CGPoint(x: 137.93, y: 427.74))
    palestineBlankPath.addCurve(to: CGPoint(x: 130.47, y: 457.36), controlPoint1: CGPoint(x: 135.22, y: 435.14), controlPoint2: CGPoint(x: 129.12, y: 453.32))
    palestineBlankPath.addCurve(to: CGPoint(x: 131.83, y: 469.47), controlPoint1: CGPoint(x: 131.83, y: 461.4), controlPoint2: CGPoint(x: 134.2, y: 464.76))
    palestineBlankPath.addCurve(to: CGPoint(x: 128.78, y: 489.67), controlPoint1: CGPoint(x: 129.45, y: 474.18), controlPoint2: CGPoint(x: 126.4, y: 481.25))
    palestineBlankPath.addCurve(to: CGPoint(x: 129.8, y: 504.14), controlPoint1: CGPoint(x: 131.15, y: 498.08), controlPoint2: CGPoint(x: 132.17, y: 501.78))
    palestineBlankPath.addCurve(to: CGPoint(x: 119.62, y: 524.67), controlPoint1: CGPoint(x: 127.42, y: 506.5), controlPoint2: CGPoint(x: 120.64, y: 521.31))
    palestineBlankPath.addCurve(to: CGPoint(x: 116.91, y: 542.18), controlPoint1: CGPoint(x: 118.6, y: 528.04), controlPoint2: CGPoint(x: 117.25, y: 539.48))
    palestineBlankPath.addCurve(to: CGPoint(x: 114.19, y: 552.95), controlPoint1: CGPoint(x: 116.57, y: 544.87), controlPoint2: CGPoint(x: 115.89, y: 549.58))
    palestineBlankPath.addCurve(to: CGPoint(x: 109.11, y: 570.11), controlPoint1: CGPoint(x: 114.19, y: 552.95), controlPoint2: CGPoint(x: 109.11, y: 565.4))
    palestineBlankPath.addCurve(to: CGPoint(x: 104.7, y: 585.26), controlPoint1: CGPoint(x: 109.11, y: 574.82), controlPoint2: CGPoint(x: 106.39, y: 581.89))
    palestineBlankPath.addLine(to: CGPoint(x: 102.25, y: 591.92))
    palestineBlankPath.addCurve(to: CGPoint(x: 97.91, y: 596.36), controlPoint1: CGPoint(x: 100.71, y: 592.07), controlPoint2: CGPoint(x: 98.93, y: 593.84))
    palestineBlankPath.addCurve(to: CGPoint(x: 95.48, y: 600), controlPoint1: CGPoint(x: 97.36, y: 597.74), controlPoint2: CGPoint(x: 96.53, y: 598.94))
    palestineBlankPath.addCurve(to: CGPoint(x: 89.1, y: 587.95), controlPoint1: CGPoint(x: 95.48, y: 600), controlPoint2: CGPoint(x: 88.76, y: 592.66))
    palestineBlankPath.addCurve(to: CGPoint(x: 88.42, y: 574.49), controlPoint1: CGPoint(x: 89.44, y: 583.24), controlPoint2: CGPoint(x: 89.77, y: 577.85))
    palestineBlankPath.addCurve(to: CGPoint(x: 85.7, y: 562.37), controlPoint1: CGPoint(x: 87.06, y: 571.12), controlPoint2: CGPoint(x: 85.7, y: 564.39))
    palestineBlankPath.addLine(to: CGPoint(x: 73.83, y: 527.03))
    palestineBlankPath.addCurve(to: CGPoint(x: 51.79, y: 463.08), controlPoint1: CGPoint(x: 73.83, y: 527.03), controlPoint2: CGPoint(x: 54.5, y: 466.11))
    palestineBlankPath.addCurve(to: CGPoint(x: 46.47, y: 458.47), controlPoint1: CGPoint(x: 51.79, y: 463.08), controlPoint2: CGPoint(x: 48.99, y: 461.02))
    palestineBlankPath.addCurve(to: CGPoint(x: 42.8, y: 450.96), controlPoint1: CGPoint(x: 44, y: 455.96), controlPoint2: CGPoint(x: 41.8, y: 452.97))
    palestineBlankPath.addCurve(to: CGPoint(x: 42.8, y: 440.86), controlPoint1: CGPoint(x: 44.84, y: 446.92), controlPoint2: CGPoint(x: 44.84, y: 444.4))
    palestineBlankPath.addCurve(to: CGPoint(x: 40.26, y: 428.75), controlPoint1: CGPoint(x: 40.77, y: 437.33), controlPoint2: CGPoint(x: 40.26, y: 432.28))
    palestineBlankPath.addCurve(to: CGPoint(x: 24.49, y: 385.33), controlPoint1: CGPoint(x: 40.26, y: 428.75), controlPoint2: CGPoint(x: 28.56, y: 392.9))
    palestineBlankPath.addLine(to: CGPoint(x: 0, y: 309.71))
    palestineBlankPath.close()

    return palestineBlankPath
}//palestineBlankLogo
