//
//  UtilKFontRessooneRegular.swift
//  IFontKit.Russoone_Regular
//
//  Created by Taiyou on 2025/7/17.
//
import SwiftUI
import IFontKit_Basic

public extension Font {
    static func russoone_regular(size:CGFloat)->Font{
        return Font.custom("russoOne-Regular", size: size)
    }
}

public extension View{
    func load_russoone_regular() ->some View{
        FontRegisterRessooneRegular.register()
        return self
    }
}

public final class FontRegisterRessooneRegular:PFontRegister{
    
    public static func register(){
        guard let url = Bundle.module.url(forResource: "russoone_regular.ttf", withExtension: nil) else {
            print("load font fail russoone_regular")
            return
        }
        CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        print("load font success russoone_regular")
    }
}
