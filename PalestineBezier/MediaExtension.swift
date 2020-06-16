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
    palestineBlankPath.move(to: CGPoint(x: 0, y: 315.39))
    palestineBlankPath.addCurve(to: CGPoint(x: 27.32, y: 288.54), controlPoint1: CGPoint(x: 12, y: 304.59), controlPoint2: CGPoint(x: 27.32, y: 288.54))
    palestineBlankPath.addLine(to: CGPoint(x: 36.92, y: 277.23))
    palestineBlankPath.addCurve(to: CGPoint(x: 58.7, y: 239.19), controlPoint1: CGPoint(x: 46.04, y: 263.79), controlPoint2: CGPoint(x: 53.24, y: 250.55))
    palestineBlankPath.addCurve(to: CGPoint(x: 72.22, y: 205.94), controlPoint1: CGPoint(x: 68, y: 219.83), controlPoint2: CGPoint(x: 72.22, y: 205.94))
    palestineBlankPath.addCurve(to: CGPoint(x: 75.3, y: 197.71), controlPoint1: CGPoint(x: 73.59, y: 203.88), controlPoint2: CGPoint(x: 72.91, y: 200.11))
    palestineBlankPath.addCurve(to: CGPoint(x: 80.1, y: 185.72), controlPoint1: CGPoint(x: 77.71, y: 195.31), controlPoint2: CGPoint(x: 80.1, y: 185.72))
    palestineBlankPath.addCurve(to: CGPoint(x: 98.61, y: 99.34), controlPoint1: CGPoint(x: 91.42, y: 158.64), controlPoint2: CGPoint(x: 98.61, y: 99.34))
    palestineBlankPath.addCurve(to: CGPoint(x: 99.98, y: 93.17), controlPoint1: CGPoint(x: 99.3, y: 97.97), controlPoint2: CGPoint(x: 98.95, y: 94.89))
    palestineBlankPath.addCurve(to: CGPoint(x: 102.38, y: 79.8), controlPoint1: CGPoint(x: 101.01, y: 91.46), controlPoint2: CGPoint(x: 100.67, y: 89.4))
    palestineBlankPath.addCurve(to: CGPoint(x: 108.21, y: 73.98), controlPoint1: CGPoint(x: 104.1, y: 70.21), controlPoint2: CGPoint(x: 108.21, y: 73.98))
    palestineBlankPath.addCurve(to: CGPoint(x: 117.81, y: 71.24), controlPoint1: CGPoint(x: 112.32, y: 78.78), controlPoint2: CGPoint(x: 115.75, y: 73.98))
    palestineBlankPath.addCurve(to: CGPoint(x: 120.13, y: 62.29), controlPoint1: CGPoint(x: 119.39, y: 69.12), controlPoint2: CGPoint(x: 119.96, y: 64.35))
    palestineBlankPath.addCurve(to: CGPoint(x: 120.2, y: 61.29), controlPoint1: CGPoint(x: 120.18, y: 61.68), controlPoint2: CGPoint(x: 120.2, y: 61.29))
    palestineBlankPath.addCurve(to: CGPoint(x: 119.86, y: 53.07), controlPoint1: CGPoint(x: 117.12, y: 57.18), controlPoint2: CGPoint(x: 119.18, y: 54.78))
    palestineBlankPath.addCurve(to: CGPoint(x: 125, y: 32.5), controlPoint1: CGPoint(x: 120.55, y: 51.35), controlPoint2: CGPoint(x: 125.69, y: 36.27))
    palestineBlankPath.addCurve(to: CGPoint(x: 124.9, y: 30.8), controlPoint1: CGPoint(x: 124.9, y: 31.94), controlPoint2: CGPoint(x: 124.87, y: 31.37))
    palestineBlankPath.addCurve(to: CGPoint(x: 134.6, y: 32.5), controlPoint1: CGPoint(x: 124.9, y: 30.8), controlPoint2: CGPoint(x: 131.86, y: 32.5))
    palestineBlankPath.addCurve(to: CGPoint(x: 142.48, y: 31.82), controlPoint1: CGPoint(x: 137.34, y: 32.5), controlPoint2: CGPoint(x: 140.43, y: 31.82))
    palestineBlankPath.addCurve(to: CGPoint(x: 151.74, y: 30.79), controlPoint1: CGPoint(x: 144.54, y: 31.82), controlPoint2: CGPoint(x: 149.68, y: 29.42))
    palestineBlankPath.addCurve(to: CGPoint(x: 157.56, y: 35.93), controlPoint1: CGPoint(x: 153.79, y: 32.16), controlPoint2: CGPoint(x: 157.56, y: 35.93))
    palestineBlankPath.addCurve(to: CGPoint(x: 162.71, y: 36.96), controlPoint1: CGPoint(x: 157.56, y: 35.93), controlPoint2: CGPoint(x: 160.31, y: 36.96))
    palestineBlankPath.addCurve(to: CGPoint(x: 169.22, y: 34.56), controlPoint1: CGPoint(x: 165.11, y: 36.96), controlPoint2: CGPoint(x: 167.5, y: 35.59))
    palestineBlankPath.addCurve(to: CGPoint(x: 171.58, y: 33.33), controlPoint1: CGPoint(x: 169.7, y: 34.27), controlPoint2: CGPoint(x: 170.56, y: 33.84))
    palestineBlankPath.addCurve(to: CGPoint(x: 178.81, y: 28.39), controlPoint1: CGPoint(x: 174.19, y: 32.02), controlPoint2: CGPoint(x: 177.83, y: 30.12))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.58, y: 17.08), controlPoint1: CGPoint(x: 180.19, y: 25.99), controlPoint2: CGPoint(x: 182.93, y: 20.17))
    palestineBlankPath.addCurve(to: CGPoint(x: 184.64, y: 4.06), controlPoint1: CGPoint(x: 182.24, y: 14), controlPoint2: CGPoint(x: 184.3, y: 5.09))
    palestineBlankPath.addCurve(to: CGPoint(x: 188.75, y: 0.97), controlPoint1: CGPoint(x: 184.98, y: 3.03), controlPoint2: CGPoint(x: 186.36, y: -2.11))
    palestineBlankPath.addCurve(to: CGPoint(x: 194.92, y: 5.09), controlPoint1: CGPoint(x: 191.15, y: 4.06), controlPoint2: CGPoint(x: 192.87, y: 5.09))
    palestineBlankPath.addCurve(to: CGPoint(x: 201.44, y: 7.83), controlPoint1: CGPoint(x: 196.98, y: 5.09), controlPoint2: CGPoint(x: 203.83, y: 4.74))
    palestineBlankPath.addCurve(to: CGPoint(x: 199.38, y: 14.68), controlPoint1: CGPoint(x: 199.04, y: 10.91), controlPoint2: CGPoint(x: 199.04, y: 13.31))
    palestineBlankPath.addCurve(to: CGPoint(x: 199.04, y: 24.28), controlPoint1: CGPoint(x: 199.72, y: 16.05), controlPoint2: CGPoint(x: 200.75, y: 18.45))
    palestineBlankPath.addCurve(to: CGPoint(x: 196.64, y: 40.73), controlPoint1: CGPoint(x: 197.32, y: 30.11), controlPoint2: CGPoint(x: 196.98, y: 39.36))
    palestineBlankPath.addCurve(to: CGPoint(x: 194.58, y: 56.5), controlPoint1: CGPoint(x: 196.3, y: 42.1), controlPoint2: CGPoint(x: 194.58, y: 56.5))
    palestineBlankPath.addLine(to: CGPoint(x: 194.61, y: 61.59))
    palestineBlankPath.addCurve(to: CGPoint(x: 195.95, y: 63.35), controlPoint1: CGPoint(x: 195.06, y: 61.85), controlPoint2: CGPoint(x: 195.52, y: 62.39))
    palestineBlankPath.addCurve(to: CGPoint(x: 198.69, y: 77.41), controlPoint1: CGPoint(x: 197.67, y: 67.12), controlPoint2: CGPoint(x: 200.07, y: 72.61))
    palestineBlankPath.addCurve(to: CGPoint(x: 200.75, y: 80.15), controlPoint1: CGPoint(x: 198.69, y: 77.41), controlPoint2: CGPoint(x: 201.09, y: 77.75))
    palestineBlankPath.addCurve(to: CGPoint(x: 198.69, y: 92.49), controlPoint1: CGPoint(x: 200.41, y: 82.55), controlPoint2: CGPoint(x: 198.69, y: 92.49))
    palestineBlankPath.addCurve(to: CGPoint(x: 199.72, y: 94.54), controlPoint1: CGPoint(x: 198.69, y: 92.49), controlPoint2: CGPoint(x: 198.35, y: 94.54))
    palestineBlankPath.addLine(to: CGPoint(x: 199.72, y: 94.55))
    palestineBlankPath.addCurve(to: CGPoint(x: 199.38, y: 97.97), controlPoint1: CGPoint(x: 201.09, y: 94.55), controlPoint2: CGPoint(x: 204.52, y: 96.26))
    palestineBlankPath.addCurve(to: CGPoint(x: 192.52, y: 101.4), controlPoint1: CGPoint(x: 194.24, y: 99.69), controlPoint2: CGPoint(x: 194.58, y: 97.97))
    palestineBlankPath.addCurve(to: CGPoint(x: 188.75, y: 107.57), controlPoint1: CGPoint(x: 190.47, y: 104.83), controlPoint2: CGPoint(x: 188.75, y: 104.14))
    palestineBlankPath.addCurve(to: CGPoint(x: 188.41, y: 119.91), controlPoint1: CGPoint(x: 188.75, y: 111), controlPoint2: CGPoint(x: 189.78, y: 117.85))
    palestineBlankPath.addCurve(to: CGPoint(x: 187.38, y: 129.51), controlPoint1: CGPoint(x: 187.04, y: 121.96), controlPoint2: CGPoint(x: 187.38, y: 127.79))
    palestineBlankPath.addCurve(to: CGPoint(x: 187.04, y: 144.58), controlPoint1: CGPoint(x: 187.38, y: 129.51), controlPoint2: CGPoint(x: 188.07, y: 140.82))
    palestineBlankPath.addCurve(to: CGPoint(x: 186.58, y: 150.8), controlPoint1: CGPoint(x: 186.46, y: 146.72), controlPoint2: CGPoint(x: 186.43, y: 148.85))
    palestineBlankPath.addCurve(to: CGPoint(x: 187.04, y: 154.87), controlPoint1: CGPoint(x: 186.69, y: 152.29), controlPoint2: CGPoint(x: 186.89, y: 153.68))
    palestineBlankPath.addCurve(to: CGPoint(x: 188.75, y: 173.03), controlPoint1: CGPoint(x: 187.38, y: 157.61), controlPoint2: CGPoint(x: 189.44, y: 169.95))
    palestineBlankPath.addLine(to: CGPoint(x: 188.76, y: 173.03))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.93, y: 196.68), controlPoint1: CGPoint(x: 188.07, y: 176.12), controlPoint2: CGPoint(x: 183.28, y: 193.26))
    palestineBlankPath.addCurve(to: CGPoint(x: 183.28, y: 208.68), controlPoint1: CGPoint(x: 182.59, y: 200.11), controlPoint2: CGPoint(x: 182.25, y: 205.94))
    palestineBlankPath.addCurve(to: CGPoint(x: 182.59, y: 222.05), controlPoint1: CGPoint(x: 184.3, y: 211.42), controlPoint2: CGPoint(x: 183.28, y: 218.28))
    palestineBlankPath.addCurve(to: CGPoint(x: 184.3, y: 230.96), controlPoint1: CGPoint(x: 182.59, y: 222.05), controlPoint2: CGPoint(x: 184.3, y: 228.56))
    palestineBlankPath.addCurve(to: CGPoint(x: 184.3, y: 239.87), controlPoint1: CGPoint(x: 184.3, y: 233.36), controlPoint2: CGPoint(x: 184.3, y: 239.87))
    palestineBlankPath.addLine(to: CGPoint(x: 182.93, y: 243.3))
    palestineBlankPath.addLine(to: CGPoint(x: 172.05, y: 352.34))
    palestineBlankPath.addCurve(to: CGPoint(x: 167.5, y: 365.66), controlPoint1: CGPoint(x: 172.05, y: 352.34), controlPoint2: CGPoint(x: 168.87, y: 361.54))
    palestineBlankPath.addCurve(to: CGPoint(x: 163.04, y: 380.74), controlPoint1: CGPoint(x: 166.13, y: 369.77), controlPoint2: CGPoint(x: 167.84, y: 376.97))
    palestineBlankPath.addCurve(to: CGPoint(x: 155.85, y: 389.99), controlPoint1: CGPoint(x: 158.25, y: 384.51), controlPoint2: CGPoint(x: 156.53, y: 385.88))
    palestineBlankPath.addCurve(to: CGPoint(x: 152.07, y: 403.02), controlPoint1: CGPoint(x: 155.16, y: 394.1), controlPoint2: CGPoint(x: 155.85, y: 400.27))
    palestineBlankPath.addCurve(to: CGPoint(x: 146.59, y: 419.47), controlPoint1: CGPoint(x: 152.07, y: 403.02), controlPoint2: CGPoint(x: 146.93, y: 416.04))
    palestineBlankPath.addCurve(to: CGPoint(x: 138.02, y: 439.35), controlPoint1: CGPoint(x: 146.59, y: 419.47), controlPoint2: CGPoint(x: 139.39, y: 435.58))
    palestineBlankPath.addCurve(to: CGPoint(x: 131.85, y: 465.74), controlPoint1: CGPoint(x: 136.65, y: 443.12), controlPoint2: CGPoint(x: 130.48, y: 461.63))
    palestineBlankPath.addCurve(to: CGPoint(x: 133.22, y: 478.08), controlPoint1: CGPoint(x: 133.22, y: 469.85), controlPoint2: CGPoint(x: 135.62, y: 473.28))
    palestineBlankPath.addCurve(to: CGPoint(x: 130.14, y: 498.65), controlPoint1: CGPoint(x: 130.82, y: 482.88), controlPoint2: CGPoint(x: 127.74, y: 490.08))
    palestineBlankPath.addCurve(to: CGPoint(x: 131.17, y: 513.38), controlPoint1: CGPoint(x: 132.54, y: 507.21), controlPoint2: CGPoint(x: 133.57, y: 510.98))
    palestineBlankPath.addCurve(to: CGPoint(x: 120.89, y: 534.29), controlPoint1: CGPoint(x: 128.77, y: 515.78), controlPoint2: CGPoint(x: 121.92, y: 530.86))
    palestineBlankPath.addCurve(to: CGPoint(x: 118.15, y: 552.11), controlPoint1: CGPoint(x: 119.86, y: 537.72), controlPoint2: CGPoint(x: 118.49, y: 549.37))
    palestineBlankPath.addCurve(to: CGPoint(x: 115.4, y: 563.08), controlPoint1: CGPoint(x: 117.8, y: 554.86), controlPoint2: CGPoint(x: 117.12, y: 559.65))
    palestineBlankPath.addCurve(to: CGPoint(x: 110.26, y: 580.56), controlPoint1: CGPoint(x: 115.4, y: 563.08), controlPoint2: CGPoint(x: 110.26, y: 575.76))
    palestineBlankPath.addCurve(to: CGPoint(x: 105.81, y: 595.99), controlPoint1: CGPoint(x: 110.26, y: 585.36), controlPoint2: CGPoint(x: 107.52, y: 592.56))
    palestineBlankPath.addLine(to: CGPoint(x: 103.34, y: 602.77))
    palestineBlankPath.addCurve(to: CGPoint(x: 98.95, y: 607.3), controlPoint1: CGPoint(x: 101.78, y: 602.93), controlPoint2: CGPoint(x: 99.98, y: 604.73))
    palestineBlankPath.addCurve(to: CGPoint(x: 96.49, y: 611), controlPoint1: CGPoint(x: 98.39, y: 608.69), controlPoint2: CGPoint(x: 97.55, y: 609.92))
    palestineBlankPath.addCurve(to: CGPoint(x: 90.04, y: 598.73), controlPoint1: CGPoint(x: 96.49, y: 611), controlPoint2: CGPoint(x: 89.7, y: 603.53))
    palestineBlankPath.addCurve(to: CGPoint(x: 89.35, y: 585.02), controlPoint1: CGPoint(x: 90.38, y: 593.93), controlPoint2: CGPoint(x: 90.72, y: 588.45))
    palestineBlankPath.addCurve(to: CGPoint(x: 86.61, y: 572.68), controlPoint1: CGPoint(x: 87.98, y: 581.59), controlPoint2: CGPoint(x: 86.61, y: 574.74))
    palestineBlankPath.addLine(to: CGPoint(x: 74.62, y: 536.69))
    palestineBlankPath.addCurve(to: CGPoint(x: 52.34, y: 471.57), controlPoint1: CGPoint(x: 74.62, y: 536.69), controlPoint2: CGPoint(x: 55.08, y: 474.65))
    palestineBlankPath.addCurve(to: CGPoint(x: 46.96, y: 466.87), controlPoint1: CGPoint(x: 52.34, y: 471.57), controlPoint2: CGPoint(x: 49.5, y: 469.48))
    palestineBlankPath.addCurve(to: CGPoint(x: 43.26, y: 459.23), controlPoint1: CGPoint(x: 44.46, y: 464.32), controlPoint2: CGPoint(x: 42.24, y: 461.27))
    palestineBlankPath.addCurve(to: CGPoint(x: 43.26, y: 448.95), controlPoint1: CGPoint(x: 45.31, y: 455.12), controlPoint2: CGPoint(x: 45.31, y: 452.55))
    palestineBlankPath.addCurve(to: CGPoint(x: 40.69, y: 436.61), controlPoint1: CGPoint(x: 41.2, y: 445.35), controlPoint2: CGPoint(x: 40.69, y: 440.21))
    palestineBlankPath.addCurve(to: CGPoint(x: 24.75, y: 392.39), controlPoint1: CGPoint(x: 40.69, y: 436.61), controlPoint2: CGPoint(x: 28.86, y: 400.1))
    palestineBlankPath.addLine(to: CGPoint(x: 0, y: 315.39))
    palestineBlankPath.close()
    return palestineBlankPath
    
}//palestineBlankLogo
