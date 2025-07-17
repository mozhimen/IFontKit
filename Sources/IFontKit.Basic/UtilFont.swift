//
//  FontRegistration.swift
//  INetKit.Basic
//
//  Created by Taiyou on 2025/7/17.
//
import SwiftUI
import UIKit
import CoreGraphics
import CoreText

//"Fonts/\(name)"
public final class UtilFont{
    public static func registerFont(strFontPathName: String, bundle: Bundle) {
        guard let asset = NSDataAsset(name: strFontPathName, bundle: bundle),
              let dataPRovider = CGDataProvider(data: asset.data as NSData),
              let font = CGFont(dataPRovider),
              CTFontManagerRegisterGraphicsFont(font, nil) else {
            return
        }
    }
}
